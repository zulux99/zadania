def compress_string(myString):
    n = len(myString)
    i = 0
    compressedString = ""
    countForEach = 0
    while n > 0:
        temp = myString[i : i + 1]
        i += 1
        if myString[i : i + 1] == temp:
            countForEach += 1
        elif myString[i : i + 1] != temp:
            countForEach += 1
            compressedString += temp + str(countForEach)
            countForEach = 0
        n -= 1
    return compressedString


myString = "aaabbbbbbbdddddddddeeeeeaaaeeeefffgggggggjjjjjjjjjmmmmmmm"
print(compress_string(myString))