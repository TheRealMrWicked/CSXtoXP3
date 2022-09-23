import platform  # Imports the various libraries for use in the program.
import os
import sys
import re
import shutil
import textwrap


def fileCleaner():
    for file in [file for file in os.listdir(os.getcwd()) if file.endswith(".txt")]:
        os.remove(os.path.join(os.getcwd(), file))


def dependencies():  # Checks for the program's dependencies, if they are not all found it halts execution and informs the user to add the files.
    if not os.path.exists("dependencies/"):
        print("The dependencies folder could not be found, please download it from GitHub and relaunch the program.")
        print("Ensure that the folder name is correct.")
        input("Press any key to end program.")
        quit()

    if not os.path.exists("yosuga.csx") and not os.path.exists("Haruka.csx"):
        print("The yosuga.csx or Haruka.csx file could not be found, please download it and relaunch the program.")
        print("Ensure that the file name is correct.")
        input("Press any key to end program.")
        quit()


def csxDecrypter(choice):  # Decrypts the csx file for the specific games using Xilexio's CSXtool.
    mainDirectory = os.getcwd()
    os.chdir("dependencies")
    if platform.system() == "Windows":
        if choice == 1:
            os.system("csxtool.exe" + " export " + mainDirectory + "/yosuga.csx")
            os.chdir("..")
            os.rename("yosuga.txt", "temp.txt")
        elif choice == 2:
            os.system("csxtool.exe" + " export " + mainDirectory + "/Haruka.csx")
            os.chdir("..")
            os.rename("Haruka.txt", "temp.txt")
    elif platform.system() == "Linux" or platform.system() == "Linux2":
        if choice == 1:
            os.system("./csxtool" + " export " + mainDirectory + "/yosuga.csx")
            os.chdir("..")
            os.rename("yosuga.txt", "temp.txt")
        elif choice == 2:
            os.system("./csxtool" + " export " + mainDirectory + "/Haruka.csx")
            os.chdir("..")
            os.rename("Haruka.txt", "temp.txt")


def xp3pack():
    mainDirectory = os.getcwd()
    os.chdir("dependencies")
    if platform.system() == "Windows":
        os.system("xp3pack.exe " + mainDirectory + "/patch")
    elif platform.system() == "Linux" or platform.system() == "Linux2":
        print(mainDirectory + "/patch")
        os.system("mono xp3pack.exe " + mainDirectory + "/patch/")
    shutil.move("patch.xp3", "../patch.xp3")
    os.chdir("..")



def langFolder(language):
    if language == 1:
        langFolder = "en"
    if language == 2:
        langFolder = "es"
    if language == 3:
        langFolder = "fr"
    if language == 4:
        langFolder = "pt"
    if language == 5:
        langFolder = "cz"
    if language == 6:
        langFolder = "de"
    if language == 7:
        langFolder = "vn"

    shutil.copyfile(f"dependencies/yosuga/{langFolder}/00_z005.ks", "dependencies/yosuga/00_z005.ks")
    shutil.copyfile(f"dependencies/yosuga/{langFolder}/00_z008.ks", "dependencies/yosuga/00_z008.ks")
    shutil.copyfile(f"dependencies/yosuga/{langFolder}/00_z012.ks", "dependencies/yosuga/00_z012.ks")
    shutil.copyfile(f"dependencies/yosuga/{langFolder}/00_z014.ks", "dependencies/yosuga/00_z014.ks")


def textFormatter(choice, language):  # Formats the file so the data is easily manipulatable by the rest of the program.
    fileLanguage = language
    textReplace = open("temp.txt", "r", encoding="UTF-8")  # Opens the new file into the file stream.
    data = textReplace.read()  # Declaring the data variable used to store the changes to the text.

    data = re.sub("《.*》", "", string=data)
    data = re.sub("\[EN.*\] ", "", string=data)  # Removes the blank EN text boxes.
    data = re.sub("\n\[JP.*\] \[", "[", string=data)  # Removes the text boxes before lines with names.
    data = re.sub("\n\[JP.*\] ", " ", string=data)  # Removes the JP text boxes.
    data = re.sub("\[JP.*\] ", "", string=data)  # Removes the text box at the top of the file.
    data = re.sub("\n\n\n\n\n\n", "\n", string=data)  # Removes whitespaces.
    data = re.sub("\n\n\n\n\n", "\n", string=data)  # Removes whitespaces.
    data = re.sub("\n\n\n\n", "\n", string=data)  # Removes whitespaces.
    data = re.sub("\n\n\n", "\n", string=data)  # Removes whitespaces.
    data = re.sub("\n\n", "\n", string=data)  # Removes whitespaces.
    data = re.sub("\n ", "\n", string=data)  # Removes whitespaces.
    data = re.sub(r"\[[\w'\s]+\]", lambda matchobj: matchobj.group(0).replace(" ", "　"), data, flags=re.MULTILINE)  # Replaces the normal space symbol with an alternative unicode symbol.
    data = re.sub("\[.*\] ", "", string=data)  # Removes the names, only temporary.
    data = data.replace("[", "(") # Replaces the brackets, only temporary.
    data = data.replace("]", ")") # Replaces the brackets, only temporary.
    data = data.replace("…", ".")  # Replaces the '…' symbol with '.'.
    data = data.replace("’", "'")  # Replaces the "’" symbol with "'".
    data = data.replace("— ", "")  # Replaces the '— ' symbol with nothing.
    data = data.replace("—", "-")  # Replaces the '—' symbol with '-'.
    data = data.replace("－", "-")  # Replaces the '－' symbol with '-'.
    data = data.replace("*", "＊")  # Replaces the '*' symbol with ⋆.

    textReplace = open("temp.txt", "w", encoding="UTF-8")  # Reopens the file for writing the new data to the file.
    textReplace.write(data)  # Writes the variable into the file.
    textReplace.close()  # Closes the file stream.

    if choice == 1:  # Removes the first 4 lines that contain the choices.
        with open("temp.txt", "r", encoding="UTF-8") as file:
            lines = file.readlines()
            file.close()
            lineNumber = 1
            with open("temp.txt", "w", encoding="UTF-8") as file:
                for line in lines:
                    if lineNumber == 1:
                        pass
                    elif lineNumber == 2:
                        pass
                    elif lineNumber == 3:
                        pass
                    elif lineNumber == 4:
                        pass
                    else:
                        file.write(line)
                    lineNumber += 1
        yosugaSectionDivider(fileLanguage)  # Calls the yosugaSectionDivider function, to divide the file into chapters.

    elif choice == 2:
        harukaSectionDivider()  # Calls the harukaSectionDivider function, to divide the file into chapters.


def chapterCreator():  # Turns the single temp.txt file into the respective chapter files.
    file = open("temp.txt", "r", encoding="UTF-8")
    data = file.readlines()
    temp = []
    fileNumber = 1
    for i in range(1, len(data)):
        if "----------" in data[i]:
            fn = os.path.join(os.getcwd(), f"{fileNumber}.txt")
            with open(fn, "w", encoding="UTF-8") as file:
                file.writelines(temp)
            temp = []
            fileNumber += 1
        else:
            temp.append(data[i])


def fileImporter(choice):  # Retrieves the file names for use in the fileConverter function.
    if choice == 1:  # Used to set the amount of files so the function knows how many to search for.
        fileAmount = 306
        gameFolder = "yosuga"
    elif choice == 2:
        fileAmount = 114
        gameFolder = "Haruka"
    for count in range(1, fileAmount + 1):  # Used to iterate through the files.
        if ((choice == 1) and (count == 114)):   # Used to skip the file that has Nao's extra chapter, which isnt in the new game.
            pass
        elif count <= fileAmount:
            if choice == 1:
                formattedFileName = yosugaFileNames(count)  # Calls the function and stores the current value in a variable.
            elif choice == 2:
                formattedFileName = harukaFileNames(count)  # Calls the function and stores the current value in a variable.
            unformattedFileName = str(count) + ".txt"  # Increases the value of the unformatted file that is called.

            newFile = open(f"dependencies/{gameFolder}/{formattedFileName}", "r", encoding="UTF-8")  # Opens the file stream for the formatted (new) file.
            formatted = newFile.readlines()  # Reads the lines from the file and inserts it into a variable.
            newFile.close()  # Closes the file stream for the formatted (new) file.

            oldFile = open(f"{unformattedFileName}", "r", encoding="UTF-8")  # Opens the file stream for the unformatted (old) file.
            unformatted = oldFile.readlines()  # Reads the lines from the file and inserts it into a variable.
            oldFile.close()  # Closes the file stream for the unformatted (old) file.

            fileConverter(formatted, unformatted, formattedFileName)  # Calls the fileConverter function to move the data between files.


def fileConverter(formatted, unformatted, formattedFileName):  # Converts the chapter files into KiriKiri files.
    if '\n' in unformatted[len(unformatted) - 1]:
        pass
    else:
        unformatted[len(unformatted) - 1] = unformatted[len(unformatted) - 1] + "\n"
    count = 0
    for x in range(0, len(formatted)):
        if x > len(formatted) - 1:
            break
        tempcount = 1
        if "@Hit" in formatted[x]:
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

        if "@Talk name=" in formatted[y] and "@Hit" in formatted[y + 1]:
            val = unformatted[count]
            wrapper = textwrap.TextWrapper(width=60)
            word_list = wrapper.wrap(text=val)
            word_list[len(word_list) - 1] = str(word_list[len(word_list) - 1] + "\n")
            formatted.insert(y + 1, "\n".join(word_list))
            count += 1
        else:
            pass
        y += 1

    file = open(f"patch/{formattedFileName}", "w", encoding="UTF-16")  # Opens the file stream for the final file.
    file.write(str(''.join(formatted)))  # Writes the data from the variable to the file.
    file.close()


def yosugaFileNames(count):  # A function used to give the specific names of the new files for Yosuga no Sora.
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
            pass
        case 115:
            return "00_c001.ks"  # Start of Akira's Route
        case 116:
            return "00_c002.ks"
        case 117:
            return "00_c002b.ks"
        case 118:
            return "00_c003.ks"
        case 119:
            return "00_c004.ks"
        case 120:
            return "00_c005.ks"
        case 121:
            return "00_c006.ks"
        case 122:
            return "00_c006b.ks"
        case 123:
            return "00_c007.ks"
        case 124:
            return "00_c008.ks"
        case 125:
            return "00_c008b.ks"
        case 126:
            return "00_c008c.ks"
        case 127:
            return "00_c009.ks"
        case 128:
            return "00_c009b.ks"
        case 129:
            return "00_c010.ks"
        case 130:
            return "00_c010b.ks"
        case 131:
            return "00_c011.ks"
        case 132:
            return "00_c012.ks"
        case 133:
            return "00_c012b.ks"
        case 134:
            return "00_c013.ks"
        case 135:
            return "00_c013b.ks"
        case 136:
            return "00_c013c.ks"
        case 137:
            return "00_c013d.ks"
        case 138:
            return "00_c013e.ks"
        case 139:
            return "00_c014.ks"
        case 140:
            return "00_c014b.ks"
        case 141:
            return "00_c014c.ks"
        case 142:
            return "00_c014d.ks"
        case 143:
            return "00_c014e.ks"
        case 144:
            return "00_c014f.ks"
        case 145:
            return "00_c015.ks"
        case 146:
            return "00_c015b.ks"
        case 147:
            return "00_c016.ks"
        case 148:
            return "00_c016b.ks"
        case 149:
            return "00_c016c.ks"
        case 150:
            return "00_c017.ks"
        case 151:
            return "00_c018.ks"
        case 152:
            return "00_c019.ks"
        case 153:
            return "00_c019b.ks"
        case 154:
            return "00_c020.ks"
        case 155:
            return "00_c020b.ks"
        case 156:
            return "00_c021.ks"
        case 157:
            return "00_c022.ks"
        case 158:
            return "00_c022b.ks"
        case 159:
            return "00_c022c.ks"
        case 160:
            return "00_c023.ks"
        case 161:
            return "00_c024.ks"
        case 162:
            return "00_c025.ks"
        case 163:
            return "00_c025b.ks"
        case 164:
            return "00_c026.ks"
        case 165:
            return "00_c027.ks"
        case 166:
            return "00_c028.ks"
        case 167:
            return "00_c029.ks"
        case 168:
            return "00_c029b.ks"
        case 169:
            return "00_c030.ks"
        case 170:
            return "00_c031.ks"
        case 171:
            return "00_c031b.ks"
        case 172:
            return "00_c032.ks"
        case 173:
            return "00_c032b.ks"
        case 174:
            return "00_c033.ks"
        case 175:
            return "00_c033b.ks"
        case 176:
            return "00_c033c.ks"
        case 177:
            return "00_c034.ks"
        case 178:
            return "00_c035.ks"
        case 179:
            return "00_c035b.ks"
        case 180:
            return "00_c036.ks"
        case 181:
            return "00_d001.ks"  # Start of Kazuha's Route
        case 182:
            return "00_d002.ks"
        case 183:
            return "00_d003.ks"
        case 184:
            return "00_d004.ks"
        case 185:
            return "00_d005.ks"
        case 186:
            return "00_d006.ks"
        case 187:
            return "00_d007.ks"
        case 188:
            return "00_d008.ks"
        case 189:
            return "00_d009.ks"
        case 190:
            return "00_d010.ks"
        case 191:
            return "00_d010b.ks"
        case 192:
            return "00_d011.ks"
        case 193:
            return "00_d011b.ks"
        case 194:
            return "00_d012.ks"
        case 195:
            return "00_d013.ks"
        case 196:
            return "00_d014.ks"
        case 197:
            return "00_d014b.ks"
        case 198:
            return "00_d015.ks"
        case 199:
            return "00_d016.ks"
        case 200:
            return "00_d017.ks"
        case 201:
            return "00_d017b.ks"
        case 202:
            return "00_d018.ks"
        case 203:
            return "00_d019.ks"
        case 204:
            return "00_d019b.ks"
        case 205:
            return "00_d019c.ks"
        case 206:
            return "00_d020.ks"
        case 207:
            return "00_d021.ks"
        case 208:
            return "00_d022.ks"
        case 209:
            return "00_d023.ks"
        case 210:
            return "00_d023b.ks"
        case 211:
            return "00_d024.ks"
        case 212:
            return "00_d024b.ks"
        case 213:
            return "00_d025.ks"
        case 214:
            return "00_d025b.ks"
        case 215:
            return "00_d026.ks"
        case 216:
            return "00_d027.ks"
        case 217:
            return "00_d028.ks"
        case 218:
            return "00_d028b.ks"
        case 219:
            return "00_d029.ks"
        case 220:
            return "00_d030.ks"
        case 221:
            return "00_d030b.ks"
        case 222:
            return "00_d031.ks"
        case 223:
            return "00_d032.ks"
        case 224:
            return "00_d033.ks"
        case 225:
            return "00_d034.ks"
        case 226:
            return "00_d035.ks"
        case 227:
            return "00_d036.ks"
        case 228:
            return "00_d037.ks"
        case 229:
            return "00_d038.ks"
        case 230:
            return "00_d039.ks"
        case 231:
            return "00_d040.ks"
        case 232:
            return "00_d041.ks"
        case 233:
            return "00_d042.ks"
        case 234:
            return "00_d042b.ks"
        case 235:
            return "00_d043.ks"
        case 236:
            return "00_d044.ks"
        case 237:
            return "00_e000.ks"  # Start of Motoka's Route
        case 238:
            return "00_e001.ks"
        case 239:
            return "00_e002.ks"
        case 240:
            return "00_e003a.ks"
        case 241:
            return "00_e003b.ks"
        case 242:
            return "00_e004.ks"
        case 243:
            return "00_e005.ks"
        case 244:
            return "00_e006.ks"
        case 245:
            return "00_e007.ks"
        case 246:
            return "00_e008.ks"
        case 247:
            return "00_e009a.ks"
        case 248:
            return "00_e009b.ks"
        case 249:
            return "00_e010.ks"
        case 250:
            return "00_e011.ks"
        case 251:
            return "00_e012a.ks"
        case 252:
            return "00_e012b.ks"
        case 253:
            return "00_e013a.ks"
        case 254:
            return "00_e013b.ks"
        case 255:
            return "00_e013c.ks"
        case 256:
            return "00_e014.ks"
        case 257:
            return "00_e015.ks"
        case 258:
            return "00_e016.ks"
        case 259:
            return "00_e017a.ks"
        case 260:
            return "00_e018.ks"
        case 261:
            return "00_e018b.ks"
        case 262:
            return "00_e018c.ks"
        case 263:
            return "00_e019.ks"
        case 264:
            return "00_e020.ks"
        case 265:
            return "00_e021.ks"
        case 266:
            return "00_e022.ks"
        case 267:
            return "00_e023.ks"
        case 268:
            return "00_e024.ks"
        case 269:
            return "00_e024b.ks"
        case 270:
            return "00_e025.ks"
        case 271:
            return "00_e026.ks"
        case 272:
            return "00_e027.ks"
        case 273:
            return "00_e028.ks"
        case 274:
            return "00_e028b.ks"
        case 275:
            return "00_e029.ks"
        case 276:
            return "00_e030.ks"
        case 277:
            return "00_e031.ks"
        case 278:
            return "00_e032.ks"
        case 279:
            return "00_e032b.ks"
        case 280:
            return "00_e033.ks"
        case 281:
            return "00_e034.ks"
        case 282:
            return "00_e034b.ks"
        case 283:
            return "00_e035.ks"
        case 284:
            return "00_e036.ks"
        case 285:
            return "00_e036b.ks"
        case 286:
            return "00_e037.ks"
        case 287:
            return "00_g000.ks"  # Start of ??? Route
        case 288:
            return "00_g001.ks"
        case 289:
            return "00_g002.ks"
        case 290:
            return "00_g003.ks"
        case 291:
            return "00_z000.ks"  # Start of Common Route
        case 292:
            return "00_z001.ks"
        case 293:
            return "00_z002.ks"
        case 294:
            return "00_z003.ks"
        case 295:
            return "00_z004.ks"
        case 296:
            return "00_z005.ks"
        case 297:
            return "00_z006.ks"
        case 298:
            return "00_z007.ks"
        case 299:
            return "00_z008.ks"
        case 300:
            return "00_z009.ks"
        case 301:
            return "00_z010.ks"
        case 302:
            return "00_z011.ks"
        case 303:
            return "00_z012.ks"
        case 304:
            return "00_z013.ks"
        case 305:
            return "00_z014.ks"
        case 306:
            return "00_z015.ks"
        case _:
            return "Error! Make sure you are in the scenario folder, a file should look something like 00_a001.ks"


def yosugaSectionDivider(language):
    with open("temp.txt", "r", encoding="UTF-8") as f:
        sectiondivider = f.readlines()

    sectiondivider.insert(0, "----------\n")
    sectiondivider.insert(206, "----------\n")
    sectiondivider.insert(360, "----------\n")
    sectiondivider.insert(530, "----------\n")
    sectiondivider.insert(758, "----------\n")
    sectiondivider.insert(864, "----------\n")
    sectiondivider.insert(939, "----------\n")
    sectiondivider.insert(1074, "----------\n")
    sectiondivider.insert(1268, "----------\n")
    sectiondivider.insert(1425, "----------\n")
    sectiondivider.insert(1484, "----------\n")
    sectiondivider.insert(1636, "----------\n")
    sectiondivider.insert(1911, "----------\n")
    sectiondivider.insert(2038, "----------\n")
    sectiondivider.insert(2309, "----------\n")
    if language == 1:
        sectiondivider.insert(2319, "Although we still haven't heard any news on what we should do.\n")  # English
    elif language == 2:
        sectiondivider.insert(2319, "Aunque aún no habíamos oído qué debíamos hacer.\n")  # Spanish
    elif language == 3:
        sectiondivider.insert(2319, "Même si nous n'avons toujours pas eu de nouvelles sur ce que nous devrions faire.\n")  # French
    elif language == 4:
        sectiondivider.insert(2319, "Apesar que nós ainda não escutamos nada do que fazer.\n")  # Portuguese
    elif language == 5:
        sectiondivider.insert(2319, "I když jsme pořád neslyšeli nic o tom, co bychom měli dělat.\n")  # Czech
    elif language == 6:
        sectiondivider.insert(2319, "Obwohl wir noch keine Neuigkeiten darüber gehört haben, was wir tun sollten.\n")  # German
    elif language == 7:
        sectiondivider.insert(2319, "Mặc dù chúng tôi vẫn chưa nghe bất kỳ tin tức nào về những gì chúng tôi nên làm.\n")  # Vietnamese
    sectiondivider.insert(2595, "----------\n")
    sectiondivider.insert(2752, "----------\n")
    sectiondivider.insert(2999, "----------\n")
    sectiondivider.insert(3214, "----------\n")
    sectiondivider.insert(3337, "----------\n")
    sectiondivider.insert(3547, "----------\n")
    sectiondivider.insert(3825, "----------\n")
    sectiondivider.insert(3940, "----------\n")
    sectiondivider.insert(4132, "----------\n")
    sectiondivider.insert(4229, "----------\n")
    sectiondivider.insert(4313, "----------\n")
    sectiondivider.insert(4450, "----------\n")
    sectiondivider.insert(4675, "----------\n")
    sectiondivider.insert(5009, "----------\n")
    sectiondivider.insert(5123, "----------\n")
    sectiondivider.insert(5321, "----------\n")
    sectiondivider.insert(5474, "----------\n")
    sectiondivider.insert(5540, "----------\n")
    sectiondivider.insert(5695, "----------\n")
    sectiondivider.insert(5730, "----------\n")
    sectiondivider.insert(5980, "----------\n")
    sectiondivider.insert(6300, "----------\n")
    sectiondivider.insert(6524, "----------\n")
    sectiondivider.insert(6671, "----------\n")
    sectiondivider.insert(6710, "----------\n")
    sectiondivider.insert(6862, "----------\n")
    sectiondivider.insert(6920, "----------\n")
    sectiondivider.insert(7141, "----------\n")
    sectiondivider.insert(7487, "----------\n")  # The change point where the count increases by 1
    sectiondivider.insert(7729, "----------\n")
    sectiondivider.insert(8051, "----------\n")
    sectiondivider.insert(8156, "----------\n")
    sectiondivider.insert(8334, "----------\n")
    sectiondivider.insert(8367, "----------\n")
    sectiondivider.insert(8445, "----------\n")
    sectiondivider.insert(8539, "----------\n")
    sectiondivider.insert(8622, "----------\n")
    sectiondivider.insert(8806, "----------\n")
    sectiondivider.insert(8922, "----------\n")
    sectiondivider.insert(8942, "----------\n")
    sectiondivider.insert(9089, "----------\n")
    sectiondivider.insert(9172, "----------\n")
    sectiondivider.insert(9424, "----------\n")
    sectiondivider.insert(9636, "----------\n")
    sectiondivider.insert(9714, "----------\n")
    sectiondivider.insert(9920, "----------\n")
    sectiondivider.insert(9958, "----------\n")
    sectiondivider.insert(9989, "----------\n")
    sectiondivider.insert(10027, "----------\n")
    sectiondivider.insert(10154, "----------\n")
    sectiondivider.insert(10228, "----------\n")
    sectiondivider.insert(10345, "----------\n")
    sectiondivider.insert(10432, "----------\n")
    sectiondivider.insert(10518, "----------\n")
    sectiondivider.insert(10597, "----------\n")
    sectiondivider.insert(10847, "----------\n")
    sectiondivider.insert(10901, "----------\n")
    sectiondivider.insert(10987, "----------\n")
    sectiondivider.insert(11030, "----------\n")
    sectiondivider.insert(11220, "----------\n")
    sectiondivider.insert(11286, "----------\n")
    sectiondivider.insert(11332, "----------\n")
    sectiondivider.insert(11421, "----------\n")
    sectiondivider.insert(11439, "----------\n")
    sectiondivider.insert(11657, "----------\n")
    sectiondivider.insert(11714, "----------\n")
    sectiondivider.insert(11747, "----------\n")
    sectiondivider.insert(11957, "----------\n")
    sectiondivider.insert(12051, "----------\n")
    sectiondivider.insert(12108, "----------\n")
    sectiondivider.insert(12149, "----------\n")
    sectiondivider.insert(12229, "----------\n")
    sectiondivider.insert(12383, "----------\n")
    sectiondivider.insert(12455, "----------\n")
    sectiondivider.insert(12555, "----------\n")
    sectiondivider.insert(12907, "----------\n")
    sectiondivider.insert(13035, "----------\n")
    sectiondivider.insert(13255, "----------\n")
    sectiondivider.insert(13345, "----------\n")
    sectiondivider.insert(13420, "----------\n")
    sectiondivider.insert(13545, "----------\n")
    sectiondivider.insert(13878, "----------\n")
    sectiondivider.insert(13904, "----------\n")
    sectiondivider.insert(14010, "----------\n")
    sectiondivider.insert(14229, "----------\n")
    sectiondivider.insert(14297, "----------\n")
    sectiondivider.insert(14340, "----------\n")
    sectiondivider.insert(14478, "----------\n")
    sectiondivider.insert(14497, "----------\n")
    sectiondivider.insert(14599, "----------\n")
    sectiondivider.insert(14631, "----------\n")
    sectiondivider.insert(14696, "----------\n")
    sectiondivider.insert(14712, "----------\n")
    sectiondivider.insert(14837, "----------\n")
    sectiondivider.insert(14981, "----------\n")
    sectiondivider.insert(14990, "----------\n")
    sectiondivider.insert(15412, "----------\n")
    sectiondivider.insert(15539, "----------\n")
    sectiondivider.insert(15673, "----------\n")
    sectiondivider.insert(15712, "----------\n")
    sectiondivider.insert(15918, "----------\n")
    sectiondivider.insert(16062, "----------\n")
    sectiondivider.insert(16114, "----------\n")
    sectiondivider.insert(16222, "----------\n")
    sectiondivider.insert(16375, "----------\n")
    sectiondivider.insert(16470, "----------\n")
    sectiondivider.insert(16548, "----------\n")
    sectiondivider.insert(16724, "----------\n")
    sectiondivider.insert(16866, "----------\n")
    sectiondivider.insert(16928, "----------\n")
    sectiondivider.insert(16969, "----------\n")
    sectiondivider.insert(17103, "----------\n")
    sectiondivider.insert(17171, "----------\n")
    sectiondivider.insert(17396, "----------\n")
    sectiondivider.insert(17427, "----------\n")
    sectiondivider.insert(17571, "----------\n")
    sectiondivider.insert(17766, "----------\n")
    sectiondivider.insert(17983, "----------\n")
    sectiondivider.insert(18098, "----------\n")
    sectiondivider.insert(18153, "----------\n")
    sectiondivider.insert(18241, "----------\n")
    sectiondivider.insert(18326, "----------\n")
    sectiondivider.insert(18455, "----------\n")
    sectiondivider.insert(18584, "----------\n")
    sectiondivider.insert(18655, "----------\n")
    sectiondivider.insert(18769, "----------\n")
    sectiondivider.insert(18932, "----------\n")
    sectiondivider.insert(19035, "----------\n")
    sectiondivider.insert(19087, "----------\n")
    sectiondivider.insert(19126, "----------\n")
    sectiondivider.insert(19221, "----------\n")
    sectiondivider.insert(19413, "----------\n")
    sectiondivider.insert(19590, "----------\n")
    sectiondivider.insert(19657, "----------\n")
    sectiondivider.insert(19715, "----------\n")
    sectiondivider.insert(19849, "----------\n")
    sectiondivider.insert(20085, "----------\n")
    sectiondivider.insert(20166, "----------\n")
    sectiondivider.insert(20461, "----------\n")
    sectiondivider.insert(20488, "----------\n")
    sectiondivider.insert(20708, "----------\n")
    sectiondivider.insert(20993, "----------\n")
    sectiondivider.insert(21037, "----------\n")
    sectiondivider.insert(21183, "----------\n")
    sectiondivider.insert(21288, "----------\n")
    sectiondivider.insert(21582, "----------\n")
    sectiondivider.insert(21856, "----------\n")
    sectiondivider.insert(21898, "----------\n")
    sectiondivider.insert(22166, "----------\n")
    sectiondivider.insert(22234, "----------\n")
    sectiondivider.insert(22374, "----------\n")
    sectiondivider.insert(22516, "----------\n")
    sectiondivider.insert(22773, "----------\n")
    sectiondivider.insert(22868, "----------\n")
    sectiondivider.insert(23056, "----------\n")
    sectiondivider.insert(23134, "----------\n")
    sectiondivider.insert(23247, "----------\n")
    sectiondivider.insert(23353, "----------\n")
    sectiondivider.insert(23432, "----------\n")
    sectiondivider.insert(23657, "----------\n")
    sectiondivider.insert(23854, "----------\n")
    sectiondivider.insert(23956, "----------\n")
    sectiondivider.insert(24270, "----------\n")
    sectiondivider.insert(24353, "----------\n")
    sectiondivider.insert(24447, "----------\n")
    sectiondivider.insert(24572, "----------\n")
    sectiondivider.insert(24682, "----------\n")
    sectiondivider.insert(24820, "----------\n")
    sectiondivider.insert(24931, "----------\n")
    sectiondivider.insert(25130, "----------\n")
    sectiondivider.insert(25230, "----------\n")
    sectiondivider.insert(25416, "----------\n")
    sectiondivider.insert(25473, "----------\n")
    sectiondivider.insert(25535, "----------\n")
    sectiondivider.insert(25580, "----------\n")
    sectiondivider.insert(25669, "----------\n")
    sectiondivider.insert(25821, "----------\n")
    sectiondivider.insert(25902, "----------\n")
    sectiondivider.insert(25992, "----------\n")
    sectiondivider.insert(26120, "----------\n")
    sectiondivider.insert(26194, "----------\n")
    sectiondivider.insert(26240, "----------\n")
    sectiondivider.insert(26283, "----------\n")
    sectiondivider.insert(26470, "----------\n")
    sectiondivider.insert(26635, "----------\n")
    sectiondivider.insert(26768, "----------\n")
    sectiondivider.insert(26865, "----------\n")
    sectiondivider.insert(26993, "----------\n")
    sectiondivider.insert(27118, "----------\n")
    sectiondivider.insert(27227, "----------\n")
    sectiondivider.insert(27376, "----------\n")
    sectiondivider.insert(27647, "----------\n")
    sectiondivider.insert(27699, "----------\n")
    sectiondivider.insert(28093, "----------\n")
    sectiondivider.insert(28144, "----------\n")
    sectiondivider.insert(28296, "----------\n")
    sectiondivider.insert(28426, "----------\n")
    sectiondivider.insert(28521, "----------\n")
    sectiondivider.insert(28696, "----------\n")
    sectiondivider.insert(28993, "----------\n")
    sectiondivider.insert(29113, "----------\n")
    sectiondivider.insert(29266, "----------\n")
    sectiondivider.insert(29348, "----------\n")
    sectiondivider.insert(29638, "----------\n")
    sectiondivider.insert(29702, "----------\n")
    sectiondivider.insert(29810, "----------\n")
    sectiondivider.insert(29935, "----------\n")
    sectiondivider.insert(30027, "----------\n")
    sectiondivider.insert(30062, "----------\n")
    sectiondivider.insert(30161, "----------\n")
    sectiondivider.insert(30189, "----------\n")
    sectiondivider.insert(30239, "----------\n")
    sectiondivider.insert(30300, "----------\n")
    sectiondivider.insert(30449, "----------\n")
    sectiondivider.insert(30547, "----------\n")
    sectiondivider.insert(30575, "----------\n")
    sectiondivider.insert(30662, "----------\n")
    sectiondivider.insert(30765, "----------\n")
    sectiondivider.insert(30825, "----------\n")
    sectiondivider.insert(31091, "----------\n")
    sectiondivider.insert(31215, "----------\n")
    sectiondivider.insert(31262, "----------\n")
    sectiondivider.insert(31352, "----------\n")
    sectiondivider.insert(31485, "----------\n")
    sectiondivider.insert(31573, "----------\n")
    sectiondivider.insert(31630, "----------\n")
    sectiondivider.insert(31736, "----------\n")
    sectiondivider.insert(31847, "----------\n")
    sectiondivider.insert(32047, "----------\n")
    sectiondivider.insert(32118, "----------\n")
    sectiondivider.insert(32274, "----------\n")
    sectiondivider.insert(32349, "----------\n")
    sectiondivider.insert(32464, "----------\n")
    sectiondivider.insert(32606, "----------\n")
    sectiondivider.insert(32732, "----------\n")
    sectiondivider.insert(32957, "----------\n")
    sectiondivider.insert(33079, "----------\n")
    sectiondivider.insert(33207, "----------\n")
    sectiondivider.insert(33307, "----------\n")
    sectiondivider.insert(33468, "----------\n")
    sectiondivider.insert(33734, "----------\n")
    sectiondivider.insert(33848, "----------\n")
    sectiondivider.insert(34047, "----------\n")
    sectiondivider.insert(34221, "----------\n")
    sectiondivider.insert(34533, "----------\n")
    sectiondivider.insert(34589, "----------\n")
    sectiondivider.insert(34693, "----------\n")
    sectiondivider.insert(34750, "----------\n")
    sectiondivider.insert(34831, "----------\n")
    sectiondivider.insert(34922, "----------\n")
    if language == 1:
        sectiondivider.insert(35154, "At this point, Sora was projecting her annoyance so clearly that, were at it directed at Motoka-san, it would've had her stumbling over her words. It didn't seem to bother her mother, though.\n")  # English
    elif language == 2:
        sectiondivider.insert(35154, "Llegados a ese punto, Sora estaba mostrando su enfado de forma tan clara que, si fuera dirigida a Motoka-san, le habría hecho tropezarse con sus palabras. Sin embargo, a su madre no parecía molestarle.\n")  # Spanish
    elif language == 3:
        sectiondivider.insert(35154, "À ce stade, Sora projetait son agacement tellement clairement que, s'il était dirigé vers Motoka, elle en buterait sur ses mots. Cela ne semblait pas déranger sa mère cependant.\n")  # French
    elif language == 4:
        sectiondivider.insert(35154, "Nesse momento, Sora estava planejando anunciar claramente que, fosse direcionado à Makoto-san, isso teria feito ela tremer com suas palavras. Apesar que não parecia ter incômoda sua mãe.\n")  # Portuguese
    elif language == 5:
        sectiondivider.insert(35154, "Teď Sora ukazovala její rozčílení tak jasně, že kdyby to bylo mířeno na Motoku, začala by z toho koktat. Její mamce to ale asi nevadilo.\n")  # Czech
    elif language == 6:
        sectiondivider.insert(35154, "Jetzt, Sora projektiert Ihre Verärgerung so klar dass, wenn es wird an Motoka-san gerichtet, Sie würde an Ihre Wörter gefallen. Ihre Mutter war nicht ärgert von dass.\n")  # German
    elif language == 7:
        sectiondivider.insert(35154, "Tại thời điểm này, Sora đã thể hiện sự khó chịu của mình một cách rõ ràng đến nỗi, nó nhắm thẳng vào Motoka-san, chắc chắn cô ấy sẽ vấp phải những lời nói của mình. Tuy nhiên, điều đó dường như không làm mẹ cô bận tâm.\n")  # Vietnamese
    sectiondivider.insert(35179, "----------\n")
    sectiondivider.insert(35262, "----------\n")
    sectiondivider.insert(35407, "----------\n")
    sectiondivider.insert(35454, "----------\n")
    sectiondivider.insert(35687, "----------\n")
    sectiondivider.insert(35707, "----------\n")
    sectiondivider.insert(35805, "----------\n")
    sectiondivider.insert(35966, "----------\n")
    sectiondivider.insert(36043, "----------\n")
    sectiondivider.insert(36154, "----------\n")
    sectiondivider.insert(36195, "----------\n")
    sectiondivider.insert(36271, "----------\n")
    sectiondivider.insert(36332, "----------\n")
    sectiondivider.insert(36427, "----------\n")
    sectiondivider.insert(36498, "----------\n")
    sectiondivider.insert(36530, "----------\n")
    sectiondivider.insert(36551, "----------\n")
    sectiondivider.insert(36645, "----------\n")
    sectiondivider.insert(36692, "----------\n")
    sectiondivider.insert(36895, "----------\n")
    sectiondivider.insert(36974, "----------\n")
    sectiondivider.insert(37044, "----------\n")
    sectiondivider.insert(37107, "----------\n")
    sectiondivider.insert(37181, "----------\n")
    sectiondivider.insert(37297, "----------\n")
    sectiondivider.insert(37432, "----------\n")
    sectiondivider.insert(37545, "----------\n")
    sectiondivider.insert(37729, "----------\n")
    if language == 1:
        sectiondivider.insert(37759, "Given the circumstance, you'll just have to put up with bread and milk for now.\n")  # English
    elif language == 2:
        sectiondivider.insert(37759, "Dadas las circunstancias, tendrás que aguantar con pan y leche por ahora.\n")  # Spanish
    elif language == 3:
        sectiondivider.insert(37759, "Étant donné les circonstances, tu devras te contenter de pain et de lait pour l'instant.\n")  # French
    elif language == 4:
        sectiondivider.insert(37759, "Dados as circunstâncias, você terá que tolerar com pão e leite por agora.\n")  # Portuguese
    elif language == 5:
        sectiondivider.insert(37759, "Vzhledem k situaci si zatím budeš muset vystačit s chlebem a mlékem.\n")  # Czech
    elif language == 6:
        sectiondivider.insert(37759, "Weil die Situation, du nur Milch und Brot isst wird.\n")  # German
    elif language == 7:
        sectiondivider.insert(37759, "Trong hoàn cảnh này, bây giờ bạn sẽ chỉ phải ăn với bánh mì và sữa.\n")  # Vietnamese
    sectiondivider.insert(37807, "----------\n")
    sectiondivider.insert(37957, "----------\n")
    sectiondivider.insert(38020, "----------\n")
    sectiondivider.insert(38166, "----------\n")
    sectiondivider.insert(38467, "----------\n")
    sectiondivider.insert(38567, "----------\n")
    sectiondivider.insert(38718, "----------\n")
    sectiondivider.insert(38807, "----------\n")
    sectiondivider.insert(38970, "----------\n")
    sectiondivider.insert(39120, "----------\n")
    sectiondivider.insert(39286, "----------\n")
    sectiondivider.insert(39409, "----------\n")
    sectiondivider.insert(39543, "----------\n")
    sectiondivider.insert(39688, "----------\n")

    with open("temp.txt", "w", encoding="UTF-8") as f:
        sectiondivider = "".join(sectiondivider)
        f.write(sectiondivider)


def harukaFileNames(count):  # A function used to give the specific names of the new files for Haruka na Sora.
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
            return "00_a007a.ks"
        case 8:
            return "00_a007b.ks"
        case 9:
            return "00_a007c.ks"
        case 10:
            return "00_a008.ks"
        case 11:
            return "00_a009.ks"
        case 12:
            return "00_a010a.ks"
        case 13:
            return "00_a010b.ks"
        case 14:
            return "00_a011.ks"
        case 15:
            return "00_a012.ks"
        case 16:
            return "00_a013a.ks"
        case 17:
            return "00_a013b.ks"
        case 18:
            return "00_a013c.ks"
        case 19:
            return "00_a013d.ks"
        case 20:
            return "00_a013e.ks"
        case 21:
            return "00_a014a.ks"
        case 22:
            return "00_a014b.ks"
        case 23:
            return "00_a014c.ks"
        case 24:
            return "00_a015a.ks"
        case 25:
            return "00_a015b.ks"
        case 26:
            return "00_a016.ks"
        case 27:
            return "00_a017.ks"
        case 28:
            return "00_a017b.ks"
        case 29:
            return "00_a017c.ks"
        case 30:
            return "00_a018.ks"
        case 31:
            return "00_a019a.ks"
        case 32:
            return "00_a019b.ks"
        case 33:
            return "00_a020.ks"
        case 34:
            return "00_a021.ks"
        case 35:
            return "00_a022.ks"
        case 36:
            return "00_g001.ks"  # Start of Yahiro's Route
        case 37:
            return "00_g002.ks"
        case 38:
            return "00_g002b.ks"
        case 39:
            return "00_g003.ks"
        case 40:
            return "00_g004.ks"
        case 41:
            return "00_g005.ks"
        case 42:
            return "00_g006.ks"
        case 43:
            return "00_g007.ks"
        case 44:
            return "00_g008.ks"
        case 45:
            return "00_g009.ks"
        case 46:
            return "00_g010.ks"
        case 47:
            return "00_g010b.ks"
        case 48:
            return "00_g011.ks"
        case 49:
            return "00_g012.ks"
        case 50:
            return "00_g013.ks"
        case 51:
            return "00_g014.ks"
        case 52:
            return "00_g015.ks"
        case 53:
            return "00_g015b.ks"
        case 54:
            return "00_g016.ks"
        case 55:
            return "00_g017.ks"
        case 56:
            return "00_g017b.ks"
        case 57:
            return "00_g018.ks"
        case 58:
            return "00_g019.ks"
        case 59:
            return "00_g020.ks"
        case 60:
            return "00_g021.ks"
        case 61:
            return "00_g022.ks"
        case 62:
            return "00_g023.ks"
        case 63:
            return "00_g024.ks"
        case 64:
            return "00_g025.ks"
        case 65:
            return "00_h001.ks"  # Start of Kozue's Route
        case 66:
            return "00_h002.ks"
        case 67:
            return "00_h003.ks"
        case 68:
            return "00_h004.ks"
        case 69:
            return "00_h005.ks"
        case 70:
            return "00_h006.ks"
        case 71:
            return "00_h007.ks"
        case 72:
            return "00_h008.ks"
        case 73:
            return "00_h009.ks"
        case 74:
            return "00_h010a.ks"
        case 75:
            return "00_h010b.ks"
        case 76:
            return "00_h011a.ks"
        case 77:
            return "00_h011b.ks"
        case 78:
            return "00_h012.ks"
        case 79:
            return "00_h013a.ks"
        case 80:
            return "00_h013b.ks"
        case 81:
            return "00_h014.ks"
        case 82:
            return "00_h015a.ks"
        case 83:
            return "00_h015b.ks"
        case 84:
            return "00_h015c.ks"
        case 85:
            return "00_h015d.ks"
        case 86:
            return "00_h016.ks"
        case 87:
            return "00_h017.ks"
        case 88:
            return "00_h018a.ks"
        case 89:
            return "00_h018b.ks"
        case 90:
            return "00_h019a.ks"
        case 91:
            return "00_h019b.ks"
        case 92:
            return "00_h020.ks"
        case 93:
            return "00_h021.ks"
        case 94:
            return "00_h022.ks"
        case 95:
            return "00_h023.ks"
        case 96:
            return "00_h024.ks"
        case 97:
            return "00_h025.ks"
        case 98:
            return "00_h026.ks"
        case 99:
            return "00_h027.ks"
        case 100:
            return "00_h028.ks"
        case 101:
            return "00_h029.ks"
        case 102:
            return "00_h030a.ks"
        case 103:
            return "00_h030b.ks"
        case 104:
            return "00_h031a.ks"
        case 105:
            return "00_h031b.ks"
        case 106:
            return "00_h032.ks"
        case 107:
            return "countdown.ks"  # Countdown Scenario
        case 108:
            return "karaoke.ks"  # Rappa Sushi Karaoke Scenario
        case 109:
            return "web01.ks"  # Start of Web Scenario
        case 110:
            return "web02.ks"
        case 111:
            return "web03.ks"
        case 112:
            return "web04.ks"
        case 113:
            return "web05.ks"
        case 114:
            return "web06.ks"


def harukaSectionDivider():
    with open("temp.txt", "r", encoding="UTF-8") as f:
        sectiondivider = f.readlines()

    sectiondivider.insert(0, "----------\n")
    sectiondivider.insert(184, "----------\n")
    sectiondivider.insert(242, "----------\n")
    sectiondivider.insert(373, "----------\n")
    sectiondivider.insert(498, "----------\n")
    sectiondivider.insert(640, "----------\n")
    sectiondivider.insert(710, "----------\n")
    sectiondivider.insert(851, "----------\n")
    sectiondivider.insert(894, "----------\n")
    sectiondivider.insert(930, "----------\n")
    sectiondivider.insert(985, "----------\n")
    sectiondivider.insert(1118, "----------\n")
    sectiondivider.insert(1188, "----------\n")
    sectiondivider.insert(1377, "----------\n")
    sectiondivider.insert(1833, "----------\n")
    sectiondivider.insert(2035, "----------\n")
    sectiondivider.insert(2107, "----------\n")
    sectiondivider.insert(2161, "----------\n")
    sectiondivider.insert(2257, "----------\n")
    sectiondivider.insert(2353, "----------\n")
    sectiondivider.insert(2421, "----------\n")
    sectiondivider.insert(2544, "----------\n")
    sectiondivider.insert(2622, "----------\n")
    sectiondivider.insert(2871, "----------\n")
    sectiondivider.insert(3091, "----------\n")
    sectiondivider.insert(3209, "----------\n")
    sectiondivider.insert(3669, "----------\n")  # The change point.
    sectiondivider.insert(3900, "----------\n")
    sectiondivider.insert(4232, "----------\n")
    sectiondivider.insert(4340, "----------\n")
    sectiondivider.insert(4521, "----------\n")
    sectiondivider.insert(4618, "----------\n")
    sectiondivider.insert(4729, "----------\n")
    sectiondivider.insert(5166, "----------\n")
    sectiondivider.insert(5363, "----------\n")
    sectiondivider.insert(5569, "----------\n")
    sectiondivider.insert(5670, "----------\n")
    sectiondivider.insert(5761, "----------\n")
    sectiondivider.insert(5874, "----------\n")
    sectiondivider.insert(5988, "----------\n")
    sectiondivider.insert(6060, "----------\n")
    sectiondivider.insert(6130, "----------\n")
    sectiondivider.insert(6230, "----------\n")
    sectiondivider.insert(6488, "----------\n")
    sectiondivider.insert(6557, "----------\n")
    sectiondivider.insert(6631, "----------\n")
    sectiondivider.insert(6788, "----------\n")
    sectiondivider.insert(6828, "----------\n")
    sectiondivider.insert(6973, "----------\n")
    sectiondivider.insert(7038, "----------\n")
    sectiondivider.insert(7194, "----------\n")
    sectiondivider.insert(7405, "----------\n")
    sectiondivider.insert(7491, "----------\n")
    sectiondivider.insert(7606, "----------\n")
    sectiondivider.insert(8034, "----------\n")
    sectiondivider.insert(8096, "----------\n")
    sectiondivider.insert(8194, "----------\n")
    sectiondivider.insert(8513, "----------\n")
    sectiondivider.insert(8854, "----------\n")
    sectiondivider.insert(8982, "----------\n")
    sectiondivider.insert(9100, "----------\n")
    sectiondivider.insert(9268, "----------\n")
    sectiondivider.insert(9399, "----------\n")
    sectiondivider.insert(9700, "----------\n")
    sectiondivider.insert(9795, "----------\n")
    sectiondivider.insert(9849, "----------\n")
    sectiondivider.insert(9907, "----------\n")
    sectiondivider.insert(10008, "----------\n")
    sectiondivider.insert(10099, "----------\n")
    sectiondivider.insert(10182, "----------\n")
    sectiondivider.insert(10319, "----------\n")
    sectiondivider.insert(10403, "----------\n")
    sectiondivider.insert(10474, "----------\n")
    sectiondivider.insert(10525, "----------\n")
    sectiondivider.insert(10602, "----------\n")
    sectiondivider.insert(10666, "----------\n")
    sectiondivider.insert(10752, "----------\n")
    sectiondivider.insert(10858, "----------\n")
    sectiondivider.insert(10897, "----------\n")
    sectiondivider.insert(10985, "----------\n")
    sectiondivider.insert(11139, "----------\n")
    sectiondivider.insert(11263, "----------\n")
    sectiondivider.insert(11346, "----------\n")
    sectiondivider.insert(11459, "----------\n")
    sectiondivider.insert(11597, "----------\n")
    sectiondivider.insert(11726, "----------\n")
    sectiondivider.insert(11822, "----------\n")
    sectiondivider.insert(11955, "----------\n")
    sectiondivider.insert(12038, "----------\n")
    sectiondivider.insert(12232, "----------\n")
    sectiondivider.insert(12351, "----------\n")
    sectiondivider.insert(12545, "----------\n")
    sectiondivider.insert(12609, "----------\n")
    sectiondivider.insert(12719, "----------\n")
    sectiondivider.insert(12817, "----------\n")
    sectiondivider.insert(12864, "----------\n")
    sectiondivider.insert(12930, "----------\n")
    sectiondivider.insert(13081, "----------\n")
    sectiondivider.insert(13189, "----------\n")
    sectiondivider.insert(13348, "----------\n")
    sectiondivider.insert(13803, "----------\n")
    sectiondivider.insert(13937, "----------\n")
    sectiondivider.insert(14014, "----------\n")
    sectiondivider.insert(14264, "----------\n")
    sectiondivider.insert(14348, "----------\n")
    sectiondivider.insert(14675, "----------\n")
    sectiondivider.insert(14781, "----------\n")
    sectiondivider.insert(15123, "----------\n")
    sectiondivider.insert(15489, "----------\n")
    sectiondivider.insert(15590, "----------\n")
    sectiondivider.insert(15702, "----------\n")
    sectiondivider.insert(15820, "----------\n")
    sectiondivider.insert(15941, "----------\n")
    sectiondivider.insert(16042, "----------\n")
    sectiondivider.insert(16201, "----------\n")

    with open("temp.txt", "w", encoding="UTF-8") as f:
        sectiondivider = "".join(sectiondivider)
        f.write(sectiondivider)


try:  # This function removes the folders that this program usually generates, if they somehow remain.
    shutil.rmtree("patch")
except OSError:
    pass

fileCleaner()
dependencies()

try:  # Ensures the correct arguments are passed and gives the appropriate error messages.
    if sys.argv[1] == "yosuga.csx":
        choice = 1
        shutil.copytree(f"dependencies/yosugaExtras", "patch")  # Copies the extras folder which creates the patch folder.
    elif sys.argv[1] == "Haruka.csx":
        choice = 2
        shutil.copytree(f"dependencies/harukaExtras", "patch")  # Copies the extras folder which creates the patch folder.
    else:
        print("This csx file is not compatible, if you are sure the file is correct please rename it to yosuga.csx or Haruka.csx.")
        quit()
except IndexError:
    print("Usage: patchconvertor file.csx [language]")
    print("Current language options are: en, es, fr, pt, cz, de, vn\n")
    quit()

if choice == 1:
    try:
        if sys.argv[2] == "en":
            language = 1
        elif sys.argv[2] == "es":
            language = 2
        elif sys.argv[2] == "fr":
            language = 3
        elif sys.argv[2] == "pt":
            language = 4
        elif sys.argv[2] == "cz":
            language = 5
        elif sys.argv[2] == "de":
            language = 6
        elif sys.argv[2] == "vn":
            language = 7
        else:
            print("Please enter one of the listed language options.")
            quit()
    except IndexError:
        print("What language is the yosuga.csx file?")
        print("1. English")
        print("2. Spanish")
        print("3. French")
        print("4. Portuguese")
        print("5. Czech")
        print("6. German")
        print("7. Vietnamese")

        while True:
            try:
                language = int(input("Enter your choice: "))
            except ValueError:
                print("Please enter a valid number.")
                continue
            if language >= 8:
                print("Please enter a valid choice.")
                continue
            else:
                break
    langFolder(language)

if choice == 2:
    language = 1

csxDecrypter(choice)
textFormatter(choice, language)
chapterCreator()
fileImporter(choice)
fileCleaner()
xp3pack()

try:
    shutil.rmtree("patch")
except OSError:
    pass

print("Success patch.xp3 has been created.")