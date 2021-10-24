#!/usr/bin/python3

import os
import sys
import socket
import json
import base64
from typing import get_args
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Função para encriptar valores a enviar em formato jsos com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipherkey, data):
	cipher = AES.new(cipherkey, AES.MODE_ECB, "UTF-8")
	data_encrypt = cipher.encrypt( bytes("%16d" % data))
	data_encoder = str(base64.b64encode(data_encrypt)) # encodes a binary string to text
	return data_encoder


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipherkey, data):
	cipher = AES.new(cipherkey, AES.MODE_ECB, "UTF-8")
	data_decoder = base64.b64decode(data) # decodes a binary string to text
	data_decrypt = cipher.decrypt(data_decoder)
	return int(str(data_decrypt, "utf-8"))


# verify if response from server is valid or is an error message and act accordingly
def validate_response (client_sock, response):
	if response["status"] == False:
		print("Error" + response["error"] + "\n") # returns error message
		quitOperation = sendrecv_dict(client_sock, {"op", "QUIT"}) # returns to the server the quit operation
		validate_response(client_sock, quitOperation) # Validation
		client_sock.close()  # closes client_sock
		sys.exit(1) # program closes if #quit_action's function is used

	return None


# process QUIT operation
def quit_action (client_sock, attempts):
	quitOP = sendrecv_dict(client_sock, {"op", "QUIT"})  # returns to the server the quit operation
	validate_response(client_sock, quitOP) # Validation
	client_sock.close() # closes client_sock
	sys.exit(4) # program closes if #quit_action's function is used
	return None
	

def run_client (client_sock, client_id):
    #START
	startRes = sendrecv_dict(client_sock,{"op":"START","client_id":client_id})  # returns to the server the start operation
	#validate_response(client_sock, startRes) # Validation
	#print(startRes)
	
	# Welcome Message To The Client
	print("\nConnected to port " + sys.argv[2])
	print("\nWELCOME TO ----------GUESS--GAME----------, " + client_id + "!")
	print("\n(guess a number between 0-100!)\n")
	print("(if you want to give up, type: quit)\n")
    #GUESS
	
	# encypt
	# tcp_s = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	# cipherkey = os.urandom(16)
	# cipherkey_tosend = str (base64.b64encode (cipherkey), 'utf8'	) 
	# cipher = AES.new (cipherkey, AES.MODE_ECB)
	# request = { 'op': 'START', 'cipher': cipherkey_tosend } 
	# send_dict (tcp_s, request)


	# opens guess dictionary
	guess = {}
	attempts = 0
	i = 0
	print("max attempts: " , startRes["max_attempts"])
	
	while  int(startRes["max_attempts"]) != 0:
		attempts +=1
		n = input("number: ")
		if (n == 'quit'): 
			quitOP = sendrecv_dict(client_sock, {"op":"QUIT"}) # returns to the server the quit operation
			#validate_response(client_sock, quitOP) # Validation
			sys.exit(4)

		else:
			guess = sendrecv_dict(client_sock, {"op":"GUESS","number": int(n)}) # returns to the server the number the client types
			#validate_response(client_sock, guess) # Validation

			result = ""

			if guess["result"]=="smaller": # secret number < guess number
				result = "Secret number is smaller!" # returns to the client number is smaller
				print(result)

				startRes["max_attempts"] -= 1 # each play counts as 1 attempt
				print("\nRemaining attempts: " , startRes["max_attempts"], " attempts") # returns to the client remaining attempts
			
			elif guess["result"]=="larger": # secret number > guess number
				result = "Secret number is larger!" # returns to the client number is larger
				print(result)

				startRes["max_attempts"] -= 1 # each play counts as 1 attempt
				print("\nRemaining attempts: " , startRes["max_attempts"] , " attempts") # returns to the client remaining attempts
 
			elif guess["result"]=="out": # guess number is out of bounds (0-100)
				result = "number is out of bounds (0-100)!\n\n----------WARNING!----------\nNext time it will count as an attempt!" # WARNING
				print(result)

				if i > 0 : 
					startRes["max_attempts"] -= 1 # each play counts as 1 attempt
				print("\nRemaining attempts: " , startRes["max_attempts"] , " attempts") # returns to the client remaining attempts
				
				i +=1

			
			else:
				result = "Congratulations, u guessed the secret number!" # client guessed the number
				print(result)
				stopOP = sendrecv_dict(client_sock, {"op":"STOP","number": n,"attempts": attempts}) # returns to the server the stop operation
				#validate_response(client_sock, stopOP) # Validation
				
				if startRes["status"]==True:
					quitOP = sendrecv_dict(client_sock, {"op":"QUIT"})
					#validate_response(client_sock, quitOP) # Validation
				break	
				# OP stop
				# OP quit

			if (int(startRes["max_attempts"]) == 0): # When the client exceed all the given attempts
				print("You don't have remaining attempts, good luck next time!")
				quitOP = sendrecv_dict(client_sock, {"op": "QUIT", "status": False, "error": "Nonexistent client/ Inconsistent number of plays!"})
				validate_response(client_sock, quitOP)
			
	return None

# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Incomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error

	port = int(sys.argv[2])

	if(len(sys.argv) < 3 or len(sys.argv) > 4): print("Incorrect number of arguments!")
	elif(port < 0 or port > 65535): print("Incorrect port number!")

	hostname = ''
	# if(len(sys.argv)== 4):
    #     hostname =  sys.argv[3]  

    #     ipString = hostname.split(".")
    #     if (len(ipString) == 4):
    #         for i in ipString:
    #             if int(ipString[i]) > 255 or int(ipString[i]) < 0:
    #                 print("Invalid hostname, using default!")
    #                 hostname = '127.0.0.1'
    #     else: 
    #         print("Invalid hostname, using default!")
    #         hostname = '127.0.0.1'
    # else: hostname = '127.0.0.1'
	if(len(sys.argv)== 4):
		hostname =  sys.argv[3]  
		ipString = hostname.split(".")
		if (len(ipString) == 4):
			for i in ipString:
				if int(i) > 255 or int(i) < 0:
					print("Invalid hostname, using default!")
					hostname = '127.0.0.1'
		else:
			print("Invalid hostname, using default!")
			hostname = '127.0.0.1'

	else: hostname = '127.0.0.1'

	client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	client_sock.connect ((hostname, port))

	run_client (client_sock, sys.argv[1])

	client_sock.close ()
	sys.exit (0)

if __name__ == "__main__":
    main()
