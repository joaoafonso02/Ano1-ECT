import random
secretNumber = random.randint(0,100) #gera um número aleatório entre 0 e 100 
guess = None
attempts = 0
maxTries = 6

while guess != secretNumber:
    if(attempts == maxTries): 
        break
    guess = int(input("\nAdivinhe o número secreto: "))

    if (secretNumber > guess ): print("O número introduzido está abaixo do número secreto, tente novamente!")
    elif(secretNumber < guess): print("O número introduzido está acima do número secreto, tente novamente!")

    print("Pretende desistir?(s/n)")
    desitencia = input()
    if(desitencia == 's'): break
    
    attempts += 1

if(attempts == maxTries): 
    print("\nINSUCESSO, Atingiu o número máximo de tentativas, boa sorte na próxima vez!")
elif(desitencia == 's'):
    print("DESISTÊNCIA, boa sorte na próxima vez!")
else: 
    print("SUCESSO, adivinhaste o número secreto em exatamente %d tentativa(s)!" % attempts)
