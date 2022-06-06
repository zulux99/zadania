def compress_string(myString):
    n = len(myString)
    compressedString = {}
    while n > 0:
        i = 0
        temp = myString[i : i + 1]
        i += 1
        if myString[i : i + 1] == temp:
            if temp not in compressedString:
                compressedString[temp] = 1
            else:
                compressedString[temp] += 1
        else:
            break
        n -= 1
    return compressedString


myString = "aaabbbbbbbdddddddddeeeeeefffgggggggjjjjjjjjjmmmmmmm"
print(compress_string(myString))