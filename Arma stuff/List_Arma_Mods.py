class stripper:
    def strip_header():
        with open("source.html", "r") as modfile:
            lines_combined = []
            i = 83 # End of header
            lines = modfile.readlines()
            while True:
                if lines[i:i+1] == []:
                    break
                lines_combined.append(lines[i:i+1])
                i += 9 #9 lines in between mod names
            lines_combined = ''.join(str(lines_combined)).replace("[", "").replace("'          ", "").replace('<td data-type=\"DisplayName\">', "").replace("</td>", "").replace("\\n'], ", "\n")
            lines_combined = lines_combined[:lines_combined.rfind('\n')]
            return lines_combined

with open("Arma 3 modpack.txt", "w") as mods_writefile:
    mods_writefile.write(str(stripper.strip_header()))
# fuck you and your square brackets

# add numbwers
#with open('Arma 3 modpack.txt', 'r') as program:
#    data = program.readlines()
#
#with open('Arma 3 modpack.txt', 'w') as program:
#    for (number, line) in enumerate(data):
#        if number < 9:
#                program.write('%d %s' % (number + 1, "  " + line))
#        else:
#            program.write('%d %s' % (number + 1, " " + line))