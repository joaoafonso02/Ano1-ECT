# def maxNumb(num1, num2, num3):
#     if num1 >= num2 and num1 >= num3: return num1
#     elif num2 >= num1 and num2 >= num3: return num2
#     else: return num3

# def minNumb(num1, num2, num3):
#    if num1 <= num2 and num1 <= num3: return num1
#    elif num2 <= num1 and num2 <= num3: return num2
#    else: return num3

# print("MAX NUMBER:")
# print(maxNumb(int(input("number 1: ")),int(input("number 2: ")),int(input("number 3: "))))
# print("\nMIN NUMBER:")
# print(minNumb(int(input("number 1: ")),int(input("number 2: ")),int(input("number 3: "))))

# monthConversions = {
#     "Jan" : "January",
#     "Feb" : "February",
#     "Mar" : "March",
#     "Apr" : "April",
#     "May" : "May",
#     "Jun" : "June",
#     "Jul" : "July",
#     "Aug" : "August",
#     "Sep" : "September",
#     "Nov" : "November",
#     "Dec" : "December",
# }

# print(monthConversions[input("Enter: ")])

# i = 0
# n = 5
#     while i <= 5:
#         print(" " * (n-i) + "* " * i
#         i += 1

# secretWord = "bruh"
# guess = ""
# while guess != secretWord:
#     guess = input("Guess the word: ")
#     if guess != secretWord: print("Wrong word! Try again!")
# print("\nCONGRATS!!!  Well done!")

# name = input("Your name: ")

# if(name.isalpha or name.isspace):
#     print(name)

# numero = int(input("Fatorial de: ") )

# resultado=1
# count=1

# while count <= numero:
#     resultado *= count
#     count += 1

# print(resultado)


# def smth(a, b) :
#     counter = 0
#     i = a
#     while i < b:
#         if i % 3 == 0: 
#             counter += 1
#         i +=1
#     return counter

# print(smth(a = int(input("from: ")), b = int(input("to: "))))

# file = open("sample.txt", "r")

# lines, words, characters = 0, 0, 0

# for line in file:
#     lines += 1
#     somth = line.strip("\n")
#     words += len(somth.split())
#     characters += len(line)

# print("Number of lines: ", lines)

# print("Number of words: ", words)

# print("Number of characters: ", characters)

# import os.path
# import sys

# fname = "python"
# if not os.path.exists(fname):
#     print("Não existe")
# if os.path.exists(fname):
#     print("Existe")
# if os.path.isdir(fname):
#     print("É diretório")
# if not os.path.isfile(fname):
#     sys.exit("Não é ficheiro")
# f = open(fname,"r")

# def primo(n): 
#     if(n > 0):
#         isPrime = True
#         if(n == 1): isPrime = False
#         for i in range(2,n):
#             if(n % i == 0):
#                 isPrime = False
#                 break
#         if(isPrime): print("Prime!\n")
#         else: print("Not prime!\n")
#     else: print("Negative numbers are not prime numbers\n")
# while True:
#    primo(int(input("number: ")))

# lista = list()
# soma, media, count = 0, 0, 1
# for i in range(0,50): 
#     n = int(input("number: "))
#     if(n == 0): break
#     else: lista.append(n)
#     soma += n
#     count +=1
# media = soma / (count-1)
# print(lista, soma, media) 

# def swaplist(newList):
#     print("ur list: ", newList) 
#     size = len(newList)

#     first = newList[0]
#     newList[0] = newList[size - 1]
#     newList[size - 1] = first

#     print("ur new list below: ") 
#     return newList
# newList  = [1,2,3,4,5,6,7]

# print(swaplist(newList))

# def orderlist(newList):
#     size = len(newList)
#     for i in range(0, size):
#         for j in range(i+1, size):
#             if(newList[j] < newList[i]):
#                 first = newList[i]
#                 newList[i] = newList[j]
#                 newList[j] = first
#     newList.sort()
#     print(newList)
#     print("Your list in crescent order:", newList)

#     for i in range(0, size):
#         for j in range(i+1, size):
#             if(newList[j] > newList[i]):
#                 first = newList[i]
#                 newList[i] = newList[j]
#                 newList[j] = first
#     newList.sort(reverse  = True)
#     print(newList)
#     print("\nYour list in decrescent order:")
#     return newList

# newList  = [2,1,5,34,7,4,9,3,10]

# print(orderlist(newList))


# name = input("Enter your name: ")

# while not( name.isalpha or name.isspace):
#     name = input("Enter your name: ")

# age = int(input("Enter your age: "))

from datetime import date

today = date.today()

# Year = today.year
# for i in range(age, 100 -1):
#     Year += 1 
# print("You, %s, will do 100 years of your life in %d" % (name, Year))


# def evenOdd(number):
#     if number % 2 == 0: print("%d is an even number" % number )
#     else: print("%d is an odd number" % number )
#     if number % 4 == 0: print("%d is also multiple of 4" % number ) 

# #evenOdd(int(input("Enter a number: ")))

# num = int(input("number: "))
# check = int(input("Divides for: "))

# if(num % check == 0): print("%d is divisible by %d" % (check, num))
# else: print("not possible")

# a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
# print([i for i in a if i < 5])

# b = [1, 3, 4, 5, 41, 64, 3, 6, 10 , 352]
# j = int(input("all numbers bellow: "))
# print([i for i in b if i < j])

# num = int(input("number: "))

# listRange = list(range(1, num+1 ))

# lista = []

# for i in listRange:
#     if num % i == 0: lista.append(i)
# print(lista)

# a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
# b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

# lista = []
# for i in a:
#     if i in b: lista.append(i)
# print(lista)

# smth = input("word: ")
# x = ""
# for i in range(len(smth)):
#     x += smth[len(smth) - i -1]

# if smth == x: print("Capicua")
# else: print("Não é uma capicua")

# a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# print([i for i in a if i % 2 == 0])

# import random 

# generated = random.randint(25,482)
# print(generated)

# while number1to100 != generated:
#     number1to100 = int(input("number: "))
#     if number1to100 > generated: print("Above, try again")
#     if number1to100 < generated: print("Below, try again")
#     if number1to100 == generated: 
#         print("\nCongrats, u guessed the number!")
#         break
