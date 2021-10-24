#counts words lines and characters of a file

file = open("sample.txt", "r")

lines = 0
words = 1
chars = 0

for line in file:
    lines += 1
    line = line.strip("\n")
    words += len(line.split())
    chars += len(line)

print("lines:", lines, "words:", words, "characters:", chars) 