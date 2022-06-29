import glob  # Imports the various libraries for use in the program.
import os
import re
import shutil


def utfToChapters():  # Combines the .utf files into 1 file for easier processing.
    outfilename = f"scenario/Combined.txt"  # Sets the name of the file to be output after concatenation.

    filenames = glob.glob('*.utf')

    with open(outfilename, 'wb') as outfile:
        for filename in glob.glob('*.utf'):
            if filename == outfilename:
                continue
            with open(filename, 'rb') as readfile:
                shutil.copyfileobj(readfile, outfile)


def textReplace():  # Removes random pieces of text that are added in the conversion process.
    textReplace = open(f"scenario/Combined.txt", "r", encoding="UTF-8")  # Opens the new file into the file stream.
    data = textReplace.read()  # Declaring the data variable used to store the changes to the text.

    data = data.replace('／', ' ')  # Replaces the '／' symbol with a space.
    data = data.replace('\=', '')  # Replaces the '\=' symbol with nothing.
    data = data.replace('～', '')  # Replaces the '～' symbol with nothing.
    data = data.replace('—', '')  # Replaces the '—' symbol with nothing.
    data = data.replace('— ', '')  # Replaces the '— ' symbol with nothing.
    data = data.replace('ä', 'a')  # Replaces the 'ä' symbol with a.
    data = data.replace('é', 'e')  # Replaces the 'é' symbol with e.
    data = re.sub("<.*>", "", string=data)  # Replaces the numbers in <> before each line with nothing.

    textReplace = open(f"scenario/Combined.txt", "w", encoding="UTF-8")  # Reopens the file for writing the new data to the file.
    textReplace.write(data)  # Writes the variable into the file.
    textReplace.close()  # Closes the file stream.


def chapterToKiriKiri():
    shutil.move("files/00_b001c.ks", "scenario/00_b001c.ks")
    n = 305  # The number of files to be transcribed.
    for count in range(1, n + 1):  # Used to iterate through the files.
        if count == 295:
            shutil.move("files/00_z005.ks", "scenario/00_z005.ks")  # Manually replaces the broke files that cannot be currently transcribed by the program.
        elif count == 298:
            shutil.move("files/00_z008.ks", "scenario/00_z008.ks")  # Manually replaces the broke files that cannot be currently transcribed by the program.
        elif count == 302:
            shutil.move("files/00_z012.ks", "scenario/00_z012.ks")  # Manually replaces the broke files that cannot be currently transcribed by the program.
        elif count == 304:
            shutil.move("files/00_z014.ks", "scenario/00_z014.ks")  # Manually replaces the broke files that cannot be currently transcribed by the program.
        elif count <= 305:
            formattedFile = yosugaFileNames(count)  # Calls the function and stores the current value in a variable.
            unformattedFile = str(count) + ".txt"  # Increases the value of the unformatted file that is called.

            formatted = []
            f = open(f"scenario/{formattedFile}", "r", encoding='Shift_JIS')  # Opens the file stream for the formatted (new) file.
            formatted = f.readlines()

            f2 = open(f"scenario/{unformattedFile}", "r", encoding='UTF-8')  # Opens the file stream for the unformatted (old) file.
            unformatted = f2.readlines()

            if '\n' in unformatted[len(unformatted) - 1]:
                pass
            else:
                unformatted[len(unformatted) - 1] = unformatted[len(unformatted) - 1] + "\n"
            finalFile = []
            count = 0
            for x in range(0, len(formatted)):
                if x > len(formatted) - 1:
                    break
                tempcount = 1
                if "@Hitret id=" in formatted[x]:
                    while True:
                        if "@Talk name=" in formatted[x - tempcount]:
                            break
                        else:
                            del formatted[x - tempcount]
                            tempcount += 1
                else:
                    pass

            y = 0
            while True:
                if count > len(unformatted) - 1:
                    break

                if "@Talk name=" in formatted[y] and "@Hitret id=" in formatted[y + 1]:
                    formatted.insert(y + 1, unformatted[count])
                    count += 1
                else:
                    pass
                y += 1

            file = open(f"scenario/{formattedFile}", "w", encoding='Shift_JIS')  # Opens the file stream for the final file.
            file.write(str(''.join(formatted)))  # Writes the data from the variable to the file.
            f.close()  # Closes the file stream.

            # Replaces the names of the person talking from Japanese to English.
            nameReplace = open(f"scenario/{formattedFile}", "r", encoding="Shift_JIS")  # Opens the new file into the file stream.
            data = nameReplace.read()  # Declaring the data variable used to store the changes to the text.

            data = data.replace('@Talk name=悠', '@Talk name=Haruka')  # Replaces the name 悠 with Haruka.
            data = data.replace('@Talk name=穹', '@Talk name=Sora')  # Replaces the name 穹 with Sora.
            data = data.replace('@Talk name=奈緒', '@Talk name=Nao')  # Replaces the name 奈緒 with Nao.
            data = data.replace('@Talk name=瑛', '@Talk name=Akira')  # Replaces the name 瑛 with Akira.
            data = data.replace('@Talk name=一葉', '@Talk name=Kazuha')  # Replaces the name 一葉 with Kazuha.
            data = data.replace('@Talk name=初佳', '@Talk name=Motoka')  # Replaces the name 初佳 with Motoka.
            data = data.replace('@Talk name=亮平', '@Talk name=Ryouhei')  # Replaces the name 亮平 with Ryouhei.
            data = data.replace('@Talk name=委員長', '@Talk name=Kozue')  # Replaces the name 委員長 with Kozue.
            data = data.replace('@Talk name=やひろ', '@Talk name=Yahiro')  # Replaces the name やひろ with Yahiro.

            nameReplace = open(f"scenario/{formattedFile}", "w", encoding="Shift_JIS")  # Reopens the file for writing the new data to a file.
            nameReplace.write(data)  # Writes the variable into the file.
            nameReplace.close()  # Closes the file stream.

    os.rmdir("files/")  # Deletes the files folder since all the files have been moved.


def deleteTxTFiles():  # Deletes the .txt files in the scenario folder.
    directory = ("scenario/")

    filesInDirectory = os.listdir(directory)

    removedFiles = [file for file in filesInDirectory if file.endswith(".txt")]

    for file in removedFiles:
        path_to_file = os.path.join(directory, file)

        os.remove(path_to_file)


def deleteUTFFiles():  # Deletes the .utf files generated by the conversion of the csx file.
    directory = os.getcwd()

    filesInDirectory = os.listdir(directory)

    removedFiles = [file for file in filesInDirectory if file.endswith(".utf")]

    for file in removedFiles:
        path_to_file = os.path.join(directory, file)

        os.remove(path_to_file)


def deleteCJIFiles():  # Deletes the .cji files generated by the conversion of the csx file.
    directory = os.getcwd()

    filesInDirectory = os.listdir(directory)

    removedFiles = [file for file in filesInDirectory if file.endswith(".cji")]

    for file in removedFiles:
        path_to_file = os.path.join(directory, file)

        os.remove(path_to_file)


def deleteCSXFiles():  # Deletes the .csx files.
    directory = os.getcwd()

    filesInDirectory = os.listdir(directory)

    removedFiles = [file for file in filesInDirectory if file.endswith(".csx")]

    for file in removedFiles:
        path_to_file = os.path.join(directory, file)

        os.remove(path_to_file)


def yosugaFileNames(count):  # A function used to give the specific names of the new files.
    match count:
        case 1:
            return "00_a001.ks"  # Start of Sora's Route
        case 2:
            return "00_a002.ks"
        case 3:
            return "00_a003.ks"
        case 4:
            return "00_a004.ks"
        case 5:
            return "00_a005.ks"
        case 6:
            return "00_a006.ks"
        case 7:
            return "00_a007.ks"
        case 8:
            return "00_a008.ks"
        case 9:
            return "00_a009.ks"
        case 10:
            return "00_a010.ks"
        case 11:
            return "00_a011.ks"
        case 12:
            return "00_a012.ks"
        case 13:
            return "00_a013.ks"
        case 14:
            return "00_a014.ks"
        case 15:
            return "00_a015a.ks"
        case 16:
            return "00_a015b.ks"
        case 17:
            return "00_a015c.ks"
        case 18:
            return "00_a016a.ks"
        case 19:
            return "00_a016b.ks"
        case 20:
            return "00_a016c.ks"
        case 21:
            return "00_a017.ks"
        case 22:
            return "00_a018a.ks"
        case 23:
            return "00_a018b.ks"
        case 24:
            return "00_a018c.ks"
        case 25:
            return "00_a019.ks"
        case 26:
            return "00_a020.ks"
        case 27:
            return "00_a021.ks"
        case 28:
            return "00_a022.ks"
        case 29:
            return "00_a023a.ks"
        case 30:
            return "00_a023b.ks"
        case 31:
            return "00_a024.ks"
        case 32:
            return "00_a025a.ks"
        case 33:
            return "00_a025b.ks"
        case 34:
            return "00_a025c.ks"
        case 35:
            return "00_a026.ks"
        case 36:
            return "00_a027.ks"
        case 37:
            return "00_a028a.ks"
        case 38:
            return "00_a028b.ks"
        case 39:
            return "00_a028c.ks"
        case 40:
            return "00_a028d.ks"
        case 41:
            return "00_a029a.ks"
        case 42:
            return "00_a029b.ks"
        case 43:
            return "00_a030.ks"
        case 44:
            return "00_a031.ks"
        case 45:
            return "00_a032.ks"
        case 46:
            return "00_a033.ks"
        case 47:
            return "00_a034.ks"
        case 48:
            return "00_b001.ks"  # Start of Nao's Route
        case 49:
            return "00_b001b.ks"
        case 50:
            return "00_b001c.ks"
        case 51:
            return "00_b001d.ks"
        case 52:
            return "00_b002.ks"
        case 53:
            return "00_b003.ks"
        case 54:
            return "00_b003b.ks"
        case 55:
            return "00_b003c.ks"
        case 56:
            return "00_b004.ks"
        case 57:
            return "00_b005.ks"
        case 58:
            return "00_b006.ks"
        case 59:
            return "00_b007.ks"
        case 60:
            return "00_b007b.ks"
        case 61:
            return "00_b007c.ks"
        case 62:
            return "00_b007d.ks"
        case 63:
            return "00_b008.ks"
        case 64:
            return "00_b008b.ks"
        case 65:
            return "00_b008c.ks"
        case 66:
            return "00_b009.ks"
        case 67:
            return "00_b009b.ks"
        case 68:
            return "00_b010.ks"
        case 69:
            return "00_b011.ks"
        case 70:
            return "00_b012.ks"
        case 71:
            return "00_b013.ks"
        case 72:
            return "00_b013b.ks"
        case 73:
            return "00_b013c.ks"
        case 74:
            return "00_b013d.ks"
        case 75:
            return "00_b014.ks"
        case 76:
            return "00_b015.ks"
        case 77:
            return "00_b015b.ks"
        case 78:
            return "00_b015c.ks"
        case 79:
            return "00_b015d.ks"
        case 80:
            return "00_b015e.ks"
        case 81:
            return "00_b016.ks"
        case 82:
            return "00_b016b.ks"
        case 83:
            return "00_b017.ks"
        case 84:
            return "00_b018.ks"
        case 85:
            return "00_b018b.ks"
        case 86:
            return "00_b019.ks"
        case 87:
            return "00_b020.ks"
        case 88:
            return "00_b020b.ks"
        case 89:
            return "00_b020c.ks"
        case 90:
            return "00_b021.ks"
        case 91:
            return "00_b022.ks"
        case 92:
            return "00_b022b.ks"
        case 93:
            return "00_b023.ks"
        case 94:
            return "00_b024.ks"
        case 95:
            return "00_b024b.ks"
        case 96:
            return "00_b025.ks"
        case 97:
            return "00_b026.ks"
        case 98:
            return "00_b026b.ks"
        case 99:
            return "00_b026c.ks"
        case 100:
            return "00_b027.ks"
        case 101:
            return "00_b027b.ks"
        case 102:
            return "00_b027c.ks"
        case 103:
            return "00_b028.ks"
        case 104:
            return "00_b028b.ks"
        case 105:
            return "00_b029.ks"
        case 106:
            return "00_b029b.ks"
        case 107:
            return "00_b029c.ks"
        case 108:
            return "00_b030.ks"
        case 109:
            return "00_b031.ks"
        case 110:
            return "00_b031b.ks"
        case 111:
            return "00_b032.ks"
        case 112:
            return "00_b033.ks"
        case 113:
            return "00_b034.ks"
        case 114:
            return "00_c001.ks"  # Start of Akira's Route
        case 115:
            return "00_c002.ks"
        case 116:
            return "00_c002b.ks"
        case 117:
            return "00_c003.ks"
        case 118:
            return "00_c004.ks"
        case 119:
            return "00_c005.ks"
        case 120:
            return "00_c006.ks"
        case 121:
            return "00_c006b.ks"
        case 122:
            return "00_c007.ks"
        case 123:
            return "00_c008.ks"
        case 124:
            return "00_c008b.ks"
        case 125:
            return "00_c008c.ks"
        case 126:
            return "00_c009.ks"
        case 127:
            return "00_c009b.ks"
        case 128:
            return "00_c010.ks"
        case 129:
            return "00_c010b.ks"
        case 130:
            return "00_c011.ks"
        case 131:
            return "00_c012.ks"
        case 132:
            return "00_c012b.ks"
        case 133:
            return "00_c013.ks"
        case 134:
            return "00_c013b.ks"
        case 135:
            return "00_c013c.ks"
        case 136:
            return "00_c013d.ks"
        case 137:
            return "00_c013e.ks"
        case 138:
            return "00_c014.ks"
        case 139:
            return "00_c014b.ks"
        case 140:
            return "00_c014c.ks"
        case 141:
            return "00_c014d.ks"
        case 142:
            return "00_c014e.ks"
        case 143:
            return "00_c014f.ks"
        case 144:
            return "00_c015.ks"
        case 145:
            return "00_c015b.ks"
        case 146:
            return "00_c016.ks"
        case 147:
            return "00_c016b.ks"
        case 148:
            return "00_c016c.ks"
        case 149:
            return "00_c017.ks"
        case 150:
            return "00_c018.ks"
        case 151:
            return "00_c019.ks"
        case 152:
            return "00_c019b.ks"
        case 153:
            return "00_c020.ks"
        case 154:
            return "00_c020b.ks"
        case 155:
            return "00_c021.ks"
        case 156:
            return "00_c022.ks"
        case 157:
            return "00_c022b.ks"
        case 158:
            return "00_c022c.ks"
        case 159:
            return "00_c023.ks"
        case 160:
            return "00_c024.ks"
        case 161:
            return "00_c025.ks"
        case 162:
            return "00_c025b.ks"
        case 163:
            return "00_c026.ks"
        case 164:
            return "00_c027.ks"
        case 165:
            return "00_c028.ks"
        case 166:
            return "00_c029.ks"
        case 167:
            return "00_c029b.ks"
        case 168:
            return "00_c030.ks"
        case 169:
            return "00_c031.ks"
        case 170:
            return "00_c031b.ks"
        case 171:
            return "00_c032.ks"
        case 172:
            return "00_c032b.ks"
        case 173:
            return "00_c033.ks"
        case 174:
            return "00_c033b.ks"
        case 175:
            return "00_c033c.ks"
        case 176:
            return "00_c034.ks"
        case 177:
            return "00_c035.ks"
        case 178:
            return "00_c035b.ks"
        case 179:
            return "00_c036.ks"
        case 180:
            return "00_d001.ks"  # Start of Kazuha's Route
        case 181:
            return "00_d002.ks"
        case 182:
            return "00_d003.ks"
        case 183:
            return "00_d004.ks"
        case 184:
            return "00_d005.ks"
        case 185:
            return "00_d006.ks"
        case 186:
            return "00_d007.ks"
        case 187:
            return "00_d008.ks"
        case 188:
            return "00_d009.ks"
        case 189:
            return "00_d010.ks"
        case 190:
            return "00_d010b.ks"
        case 191:
            return "00_d011.ks"
        case 192:
            return "00_d011b.ks"
        case 193:
            return "00_d012.ks"
        case 194:
            return "00_d013.ks"
        case 195:
            return "00_d014.ks"
        case 196:
            return "00_d014b.ks"
        case 197:
            return "00_d015.ks"
        case 198:
            return "00_d016.ks"
        case 199:
            return "00_d017.ks"
        case 200:
            return "00_d017b.ks"
        case 201:
            return "00_d018.ks"
        case 202:
            return "00_d019.ks"
        case 203:
            return "00_d019b.ks"
        case 204:
            return "00_d019c.ks"
        case 205:
            return "00_d020.ks"
        case 206:
            return "00_d021.ks"
        case 207:
            return "00_d022.ks"
        case 208:
            return "00_d023.ks"
        case 209:
            return "00_d023b.ks"
        case 210:
            return "00_d024.ks"
        case 211:
            return "00_d024b.ks"
        case 212:
            return "00_d025.ks"
        case 213:
            return "00_d025b.ks"
        case 214:
            return "00_d026.ks"
        case 215:
            return "00_d027.ks"
        case 216:
            return "00_d028.ks"
        case 217:
            return "00_d028b.ks"
        case 218:
            return "00_d029.ks"
        case 219:
            return "00_d030.ks"
        case 220:
            return "00_d030b.ks"
        case 221:
            return "00_d031.ks"
        case 222:
            return "00_d032.ks"
        case 223:
            return "00_d033.ks"
        case 224:
            return "00_d034.ks"
        case 225:
            return "00_d035.ks"
        case 226:
            return "00_d036.ks"
        case 227:
            return "00_d037.ks"
        case 228:
            return "00_d038.ks"
        case 229:
            return "00_d039.ks"
        case 230:
            return "00_d040.ks"
        case 231:
            return "00_d041.ks"
        case 232:
            return "00_d042.ks"
        case 233:
            return "00_d042b.ks"
        case 234:
            return "00_d043.ks"
        case 235:
            return "00_d044.ks"
        case 236:
            return "00_e000.ks"  # Start of Motoka's Route
        case 237:
            return "00_e001.ks"
        case 238:
            return "00_e002.ks"
        case 239:
            return "00_e003a.ks"
        case 240:
            return "00_e003b.ks"
        case 241:
            return "00_e004.ks"
        case 242:
            return "00_e005.ks"
        case 243:
            return "00_e006.ks"
        case 244:
            return "00_e007.ks"
        case 245:
            return "00_e008.ks"
        case 246:
            return "00_e009a.ks"
        case 247:
            return "00_e009b.ks"
        case 248:
            return "00_e010.ks"
        case 249:
            return "00_e011.ks"
        case 250:
            return "00_e012a.ks"
        case 251:
            return "00_e012b.ks"
        case 252:
            return "00_e013a.ks"
        case 253:
            return "00_e013b.ks"
        case 254:
            return "00_e013c.ks"
        case 255:
            return "00_e014.ks"
        case 256:
            return "00_e015.ks"
        case 257:
            return "00_e016.ks"
        case 258:
            return "00_e017a.ks"
        case 259:
            return "00_e018.ks"
        case 260:
            return "00_e018b.ks"
        case 261:
            return "00_e018c.ks"
        case 262:
            return "00_e019.ks"
        case 263:
            return "00_e020.ks"
        case 264:
            return "00_e021.ks"
        case 265:
            return "00_e022.ks"
        case 266:
            return "00_e023.ks"
        case 267:
            return "00_e024.ks"
        case 268:
            return "00_e024b.ks"
        case 269:
            return "00_e025.ks"
        case 270:
            return "00_e026.ks"
        case 271:
            return "00_e027.ks"
        case 272:
            return "00_e028.ks"
        case 273:
            return "00_e028b.ks"
        case 274:
            return "00_e029.ks"
        case 275:
            return "00_e030.ks"
        case 276:
            return "00_e031.ks"
        case 277:
            return "00_e032.ks"
        case 278:
            return "00_e032b.ks"
        case 279:
            return "00_e033.ks"
        case 280:
            return "00_e034.ks"
        case 281:
            return "00_e034b.ks"
        case 282:
            return "00_e035.ks"
        case 283:
            return "00_e036.ks"
        case 284:
            return "00_e036b.ks"
        case 285:
            return "00_e037.ks"
        case 286:
            return "00_g000.ks"  # Start of ??? Route
        case 287:
            return "00_g001.ks"
        case 288:
            return "00_g002.ks"
        case 289:
            return "00_g003.ks"
        case 290:
            return "00_z000.ks"  # Start of Common Route
        case 291:
            return "00_z001.ks"
        case 292:
            return "00_z002.ks"
        case 293:
            return "00_z003.ks"
        case 294:
            return "00_z004.ks"
        case 295:
            return "00_z005.ks"
        case 296:
            return "00_z006.ks"
        case 297:
            return "00_z007.ks"
        case 298:
            return "00_z008.ks"
        case 299:
            return "00_z009.ks"
        case 300:
            return "00_z010.ks"
        case 301:
            return "00_z011.ks"
        case 302:
            return "00_z012.ks"
        case 303:
            return "00_z013.ks"
        case 304:
            return "00_z014.ks"
        case 305:
            return "00_z015.ks"
        case _:
            return "Error! Make sure you are in the scenario folder, a file should look something like 00_a001.ks"


print("Yosuga no Sora/Haruka na Sora EntisGLS to KiriKiri Convertor\n")
print("This program was created by MrWicked @ https://github.com/TheRealMrWicked/Yosuga-no-Sora-Patch-Conversion\n")
print("Ensure that you read the GitHub wiki before running this program and have placed the yosuga.csx or Haruka.csx file and the scenario folder into the same directory with this program.\n")

while True:
    print("What are you trying to do?\n")
    print("1. Decrypt a csx file into the respective chapter files.")
    print("2. Convert the chapter files into KiriKiri files.")
    print("3. Exit program.\n")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        print("Which game are you converting?")
        print("1. Yosuga no Sora (yosuga.csx)")
        print("2. Haruka na Sora (Haruka.csx)\n")
        print("NOTE: Please press Enter after the program says 'Success' to continue execution.")
        game = int(input("Enter your choice: "))
        if game == 1:
            os.system("csx.exe yosuga.csx export-no-names")
        elif game == 2:
            os.system("csx.exe Haruka.csx export-no-names")
        utfToChapters()
        textReplace()
        deleteUTFFiles()
        deleteCJIFiles()
        deleteCSXFiles()
        print("Success the .txt chapter files have been created.\n")
    elif choice == 2:
        chapterToKiriKiri()
        deleteTxTFiles()
        print("Success the scenario folder has been updated.\n")
    elif choice == 3:
        quit()
