import glob  # Imports the various libraries for use in the program.
import os
import re
import shutil
import textwrap
import time

# --- GLOBAL CONSTANTS ---
TEXT_REPLACE_TARGET = ["/", "\=", "…", "’", "–", "—", "—", "－", "[", "]", "*", "ä", "é", "ō"]
TEXT_REPLACE_WITH = [" ", "", ".", "'", "-", "", "-", "-", "(", ")", "＊", "a", "e", "o"]
TEXT_REPLACE_YNS_SKIPLINES = [38120, 38121, 38618, 38619, 39282]
FILE_ENDS_DEL_CHECK = [".txt", ".utf", ".cji", "yosuga_original.csx", "Haruka_original.csx"]

if len(TEXT_REPLACE_TARGET) != len(TEXT_REPLACE_WITH):
        print("Bruh you forgor to add a replace target or with in the const list :skull: or you added one or more extra. In textReplacer().") # This is for people working on this project when running program. Users shouldn't see this if program works correctly :thumbsup:
        quit()

# --- GLOBAL VARS ---
justYosuga = False
justHaruka = False
choice = 0
filenames = []

def dependencies():  # Checks for the program's dependencies, if they are not all found it halts execution and informs the user to add the files.
    global justYosuga
    global justHaruka

    if not os.path.exists("dependencies/"):
        print("The \"dependencies\" folder could not be found, please download it from GitHub and relaunch the program.")
        print("Ensure that the folder name is correct.")
        input("Press any key to end program.")
        quit()

    if not os.path.exists("yosuga.csx") and not os.path.exists("Haruka.csx"):
        print("The \"yosuga.csx\" or \"Haruka.csx\" file could not be found, please download it and relaunch the program.")
        print("Ensure that the file name is correct.")
        input("Press any key to end program.")
        quit()

    elif os.path.exists("yosuga.csx") and not os.path.exists("Haruka.csx"):
        justYosuga = True
        print("\"yosuga.csx\" has been found!\n")

    elif not os.path.exists("yosuga.csx") and os.path.exists("Haruka.csx"):
        justHaruka = True
        print("\"Haruka.csx\" has been found!\n")

def loadFileNamesCfg(choice):   # Loads filenames from one of the ".cfg" files in /dependencies/ into global list var "filenames"
    global filenames
    if choice == 1:
        cfg = open("dependencies/yosuga.cfg", "r", encoding="UTF-8")
        filenames = cfg.readlines()
        cfg.close()

    elif choice == 2:
        cfg = open("dependencies/Haruka.cfg", "r", encoding="UTF-8")
        filenames = cfg.readlines()
        cfg.close()

    while True:
        if "PASS" in filenames:
            filenames.remove("PASS")
        else:
            break


def csxDecrypter(choice):  # Decrypts the csx file for the specific games using Proger's CSX Importer/Exporter.
    mainDirectory = os.getcwd()
    os.chdir("dependencies")
    print("\n--- Please press the ENTER key to after you see 'Success.' to continue program execution. ---\n")
    input("Press any key to continue.")
    if choice == 1:
        os.system("csx " + mainDirectory + "\yosuga.csx export-no-names")
    elif choice == 2:
        os.system("csx " + mainDirectory + "\Haruka.csx export-no-names")
    os.chdir("..")


def utfCombiner():  # Combines the .utf files into 1 file for easier processing.
    with open("temp.txt", "wb") as outfile:
        for filename in glob.glob('*.utf'):
            #if filename == "temp.txt": # Unnecessary conditional check? glob.glob() shouldn't return "temp.txt" within list with parameter "*.utf"
            #    continue
            with open(filename, 'rb') as readfile:
                shutil.copyfileobj(readfile, outfile)


def textReplacer(choice):  # Removes random pieces of text that are added in the conversion process.
    textReplace = open("temp.txt", "r", encoding="UTF-8")  # Opens the new file into the file stream.
    data = textReplace.read()  # Declaring the data variable used to store the changes to the text.

    data = re.sub("<.*>", "", string=data)  # Replaces the numbers in <> before each line with nothing.
    
    x = 0
    while x < len(TEXT_REPLACE_TARGET):
        data = data.replace(TEXT_REPLACE_TARGET[x], TEXT_REPLACE_WITH[x])
        x += 1

    textReplace = open("temp.txt", "w", encoding="UTF-8")  # Reopens the file for writing the new data to the file.
    textReplace.write(data)  # Writes the variable into the file.
    textReplace.close()  # Closes the file stream.

    if choice == 1:
        with open("temp.txt", "r", encoding="UTF-8") as file:  # Adds the missed data from the csx file, this must be added because the csx file is encoded weirdly at these lines and skips the text for the choices.
            lines = file.readlines()
            file.close()
        lineNumber = 1
        with open("temp.txt", "w", encoding="UTF-8") as file:
            for line in lines:
                if lineNumber == 2320:
                    file.write("Even though, we still haven't heard from her what should we do.\n")
                elif lineNumber == 35154:
                    file.write("At this point, Sora was projecting her annoyance so clearly that, were at it directed at Motoka-san, it would've had her stumbling over her words. It didn't seem to bother her mother, though.\n")
                elif lineNumber in TEXT_REPLACE_YNS_SKIPLINES:
                    pass
                else:
                    file.write(line)
                lineNumber += 1
        file.close()
    elif choice == 2:
        with open("temp.txt", "r", encoding="UTF-8") as file:  # Removes the additional line that was inserted into file 34.txt accidentally.
            lines = file.readlines()
            file.close()
        lineNumber = 1
        with open("temp.txt", "w", encoding="UTF-8") as file:
            for line in lines:
                if lineNumber == 5357:
                    pass
                else:
                    file.write(line)
                lineNumber += 1
        file.close()


def chapterCreator():
    file = open("temp.txt", "a", encoding="UTF-8")
    file.write("\n ~ AdvScreen ~ ")
    file.close()

    file = open("temp.txt", "r", encoding="UTF-8")
    data = file.readlines()
    temp = []
    fileNumber = 1
    for i in range(1, len(data)):
        if ' ~ ' not in data[i]:    # Swapped these two. Easier to understand what code does when reading imo :thumbsup: - Gee
            temp.append(data[i])
        else:
            fn = os.path.join(os.getcwd(), f"{fileNumber}.txt")
            with open(fn, "w", encoding="UTF-8") as file:
                file.writelines(temp)
            temp = []
            fileNumber += 1


def deleteMiscFiles():  # Deletes the miscellaneous files generated by the conversion of the csx file into chapter files.   # New ver does same as previous, made it prettier :thumbsup: - Gee
    for file in os.listdir(os.getcwd()):
        for fileEnd in FILE_ENDS_DEL_CHECK:
            if file.endswith(fileEnd):
                os.remove(os.path.join(os.getcwd(), file))
                break


def fileImporter(choice):  # Retrieves the file names for use in the fileConverter function.
    if os.path.isdir("compile"):
        shutil.rmtree("compile")  # Removes the "compile" folder if it exists.
    os.mkdir("compile")   # Recreate a new compile folder for the data to be inserted into.
    os.mkdir("compile/scenario")

    if choice == 1:  # Used to import the files for Yosuga no Sora
        with open("306.txt", "r", encoding="UTF-8") as file:  # Removes the additional line that was inserted into file 306.txt accidentally.
            lines = file.readlines()
            file.close()
        del lines[144]  # Line to delete
        with open("306.txt", "w", encoding="UTF-8") as file:
            for line in lines:
                    file.write(line)
        shutil.copyfile(f"dependencies/yosuga/macro.ks", f"compile/scenario/macro.ks")  # Copies the macro.ks file that doesn't need to be changed.
        for count in range(1, 306 + 1):  # Used to iterate through the files.
            if count == 114:  # Used to skip the file that has Nao's extra chapter.
                pass
            elif count <= 306:
                formattedFileName = yosugaFileNames(count)  # Calls the function and stores the current value in a variable.
                unformattedFileName = str(count) + ".txt"  # Increases the value of the unformatted file that is called.

                newFile = open(f"dependencies/yosuga/{formattedFileName}", "r", encoding="Shift_JIS")  # Opens the file stream for the formatted (new) file.
                formatted = newFile.readlines()  # Reads the lines from the file and inserts it into a variable.
                newFile.close()  # Closes the file stream for the formatted (new) file.

                oldFile = open(f"{unformattedFileName}", "r", encoding="UTF-8")  # Opens the file stream for the unformatted (old) file.
                unformatted = oldFile.readlines()  # Reads the lines from the file and inserts it into a variable.
                oldFile.close()  # Closes the file stream for the unformatted (old) file.

                fileConverter(formatted, unformatted, formattedFileName)  # Calls the fileConverter function to move the data between files.
    elif choice == 2:
        with open("114.txt", "r", encoding="UTF-8") as file:  # Removes the additional line that was inserted into file 114.txt accidentally.
            lines = file.readlines()
            file.close()
        del lines[158]
        with open("114.txt", "w", encoding="UTF-8") as file:
            for line in lines:
                    file.write(line)
        file.close()

        shutil.copyfile(f"dependencies/haruka/macro.ks", f"compile/scenario/macro.ks")  # Copies the macro.ks file that doesn't need to be changed.
        for count in range(1, 114 + 1):  # Used to iterate through the files.
            formattedFileName = harukaFileNames(count)  # Calls the function and stores the current value in a variable.
            unformattedFileName = str(count) + ".txt"  # Increases the value of the unformatted file that is called.

            newFile = open(f"dependencies/haruka/{formattedFileName}", "r", encoding="Shift_JIS")  # Opens the file stream for the formatted (new) file.
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

    for x in range(0, len(formatted)):
        if x > len(formatted) - 1:  # For whatever reason, not having this here causes an attempt to access content of formatted[] beyond its max index. "x" should never be greater than (len(formatted) - 1) here. ??? - Gee
            break
        tempcount = 1
        if "@Hit" in formatted[x]:  # Deletes a chunk of lines between "@Hit" and "@Talk name=".
            while True:
                if not "@Talk name=" in formatted[x - tempcount]:   # Swapped contents of this if block and else block below it (inverted conditional check), looks prettier imo :thumbsup: - Gee
                    del formatted[x - tempcount]    # When "del" removes an element in a list, all of indexes of the elements with an index greater than it get subtracted by one. So this works. Nice. - Gee
                    tempcount += 1
                else:
                    break

    count = 0   # Moved this down to above the loop in which it is used in this function :thumbsup: - Gee
    y = 0
    while count <= len(unformatted) - 1:    # Removed conditional loop break check under loop, replaced "True" in loop with check.

        if "@Talk name=" in formatted[y] and "@Hit" in formatted[y + 1]:
            val = unformatted[count]
            wrapper = textwrap.TextWrapper(width=60)
            word_list = wrapper.wrap(text=val)
            word_list[len(word_list) - 1] = str(word_list[len(word_list) - 1] + "\n")
            formatted.insert(y + 1, "\n".join(word_list))
            count += 1

        y += 1

    file = open(f"compile/scenario/{formattedFileName}", "w", encoding='UTF-16')  # Opens the file stream for the final file.
    file.write(str(''.join(formatted)))  # Writes the data from the variable to the file.
    file.close()


def yosugaFileNames(count):  # A function used to give the specific names of the new files for Yosuga no Sora.
    return filenames[count - 1].strip("\n")

def harukaFileNames(count):  # A function used to give the specific names of the new files for Haruka na Sora.
    return filenames[count - 1].strip("\n")


# ------------------------ MAIN PROGRAM ------------------------


print("Yosuga no Sora/Haruka na Sora EntisGLS to KiriKiri Convertor")
print("Created by MrWicked @ https://github.com/TheRealMrWicked/Yosuga-no-Sora-Patch-Conversion\n")

dependencies()

if justYosuga:
    choice = 1

elif justHaruka:
    choice = 2

else:
    print("Which game do you want to convert?\n")
    print("1. Yosuga no Sora. (yosuga.csx)")
    print("2. Haruka na Sora. (Haruka.csx)")

    while True:
        try:
            choice = int(input("Enter your choice: "))
        except ValueError:  # Apparently "ValueError" works here and not "TypeError". Lol.
            print("Please enter a valid choice.")
            continue
        if choice >= 3 or choice <= 0:
            print("Please enter a valid choice.")
            continue
        else:
            break

loadFileNamesCfg(choice)
csxDecrypter(choice)
utfCombiner()
textReplacer(choice)
chapterCreator()
fileImporter(choice)
deleteMiscFiles()

if choice == 1:
    shutil.copyfile(f"dependencies/yosuga/begin.tjs", f"compile/begin.tjs")
    shutil.copyfile(f"dependencies/yosuga/startup.tjs", f"compile/startup.tjs")
    shutil.copytree(f"dependencies/yosuga/system", f"compile/system")
elif choice == 2:
    shutil.copyfile(f"dependencies/haruka/begin.tjs", f"compile/begin.tjs")
    shutil.copyfile(f"dependencies/haruka/startup.tjs", f"compile/startup.tjs")
    shutil.copytree(f"dependencies/haruka/system", f"compile/system")

input("Success, the compile folder has been created.")
print("Gee was here :eyes:")    # Easter egg which shows up before program ends if user presses key lol.