Create a Ruby program that prints the sample line of text provided above no matter what arguments are provided from the command line.
Update your existing program so that the name of the file that it prints out changes based on the second input that the user provides from the command line.
Further update your program so that the number of characters it prints out changes based on the number of characters in the file that the user provides as the first argument that the user provides from the command line.




How the program runs:

Enter cmd line
Run program
User provides file to read (existing in project folder) and file name to write to (designated spot in project folder)
Program runs and creates new file
Program provides confirmation of creation


Suggested order of operation:

I1: Build the runner --> implement user input w/ 2 unique file paths --> Update with reading the number of characters from initial file.

I2: Translation: Take user input file and save a copy as the the export file (no translation). Create a dictionary that matches english letters to braille. Get the translation to work with 1 letter. Update to take multiple letters ---> CHECK WITH CLASSMATE ---> Update to make sure braille lines are only 80 char long.

  Problems to overcome:
    How do I store a string that has line breaks. How does exporting to a txt affect this?
    How do I input with multiple lines?
    How do I handle line breaks in the input txt file? I need to convert it back in the exact same format but it will also throw off my character count.

  Design ideas:
    Library = hash
    Convert txt to an array or keep as string? Does string iteration exist? yes but output values could be limited.
      current thought:  -Make an array of strings.
                        -New array for every line (add them in a variable with line break char denoting the separation): Warning: total char denotion should not be calculated from this variable







I3: Create night_reader.rb in lib. Build confirmation message that has file location of the original message. Create a dictionary that matches braille to english letters. Get the translation to work with 1 letter. Update to take multiple letters

Nightwriter --------- night_reader


    Lib                message 


Project presentation:

  - Talk about all the edge cases you worked through with the code.
  - Grade 1 – a letter-by-letter transcription used for basic literacy
