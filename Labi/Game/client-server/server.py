#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
import csv
import random
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
gamers = {}

# return the client_id of a socket or None
def find_client_id (client_sock):
	for id in gamers:
		if gamers[id]["socket"] == client_sock:
			return id
	return None


# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (client_id, data):
	# cipher = AES.new(cipherkey, AES.MODE_ECB, "UTF-8")
	# data_encrypt = cipher.encrypt( bytes("%16d" % data))
	# data_encoder = str(base64.b64decode(data_encrypt))
	# return data_encoder
	return None


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (client_id, data):
	# cipher = AES.new(cipherkey, AES.MODE_ECB, "UTF-8")
	# data_decoder = base64.b64decode(data)
	# data_decrypt = cipher.decrypt(data_decoder)
	# return int(str(data_decrypt, "utf-8"))
	return None


#
# Incomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Outcomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock): #2nd place

	request = recv_dict(client_sock) # read the client request
	
	response = None # iniciatlize response variable

	# detect the operation requested by the client
	# execute the operation and obtain the response (consider also operations not available)
	if request["op"]   == "START":
		response = new_client(client_sock, request) # search for new client and starts
	elif request["op"] == "QUIT": 
		response = quit_client(client_sock, request) # quit client
	elif request["op"] == "GUESS": 
		response = guess_client(client_sock, request) # guess operation
	elif request["op"] == "STOP": 
		response = stop_client(client_sock, request) # stop operation
	else: 
		response = {"op": request["op"], "status" : False, "error" : "Invalid operation!"} # not an operation

	send_dict(client_sock, response) # send the response to the client
	return None

#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, request): #1st place
	print(request)

	player = request["client_id"] # detect the client in the request

	# verify the appropriate conditions for executing this operation
	if player in gamers:
		return {"op": "START", "status": False, "error": "Nonexistent client" } # detects if client exists or not

	
	# obtain the secret number and number of attempts
	attempts = random.randint(10,30) # random value for attempts between 10 and 30,, using import random in line 9
	secretNumber = random.randint(0,100) # random value for secret number between 0 and 100,, using import random in line 9

	# process the client in the dictionary
	gamers[player] = {
		"socket": client_sock,
		"cypher": None,
		"guess": secretNumber,
		"max_attempts": attempts,
		"attempts": 0
	}
	
	print({"op": "START", "status": True, "max_attempts": attempts })

	# return response message with results or error message
	return {"op": "START", "status": True, "max_attempts": attempts }

#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
	player = find_client_id(client_sock)  # obtain the client_id from his socket and delete from the dictionary
	
	if player: # if player exists
		del gamers[player] # deletes client 
		return True
	return False

#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock, request):
	player = find_client_id(client_sock) # obtain the client_id from his socket

	# verify the appropriate conditions for executing this operation
	if player:
		update_file(player, "QUIT") # process the report file with the QUIT result

		clean_client(client_sock) # eliminate client from dictionary
		print(request)

		# return response message with result message
		return {"op" : "QUIT", "status" : True}
	else: 
		print(request)

		# return response message with error message
		return {"op" : "QUIT", "status" : False, "error" : "Nonexistent client!"}

#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
	file_csv = open("report.csv", 'w') # opens csv file
	#header = ['id', 'secret number', 'conceded plays', 'plays', 'last operation']

	with file_csv as file:
		writer = csv.DictWriter(file_csv, delimiter = "\t", fieldnames = ["id", "secret number", "conceded plays", "plays", "result"])
		
	return writer
# create report csv file with header


#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, result):
	player = gamers[client_id] # obtain the client_id 

	with open("report.csv", "a+", newline='') as file:
		writer = csv.writer(file) # writes

		# update report csv file with the result from the client
		writer.writerow([client_id, player["guess"], player["max_attempts"], player["attempts"], result])

#
# Suporte da jogada de um cliente - operação GUESS
#
def guess_client (client_sock, request):

	player = find_client_id(client_sock) # obtain the client_id from his socket

	# verify the appropriate conditions for executing this operation
	if not player:
		return {"op": "GUESS", "status": False, "error": "Nonexistent client!"}

	gamers[player]["attempts"] += 1
	num = request["number"]
	secretNum = gamers[player]["guess"]

	response = "equals"

	if num > 100 or num < 0: # verify if number is between 0 and 100
		response = "out" # out of bounds
	else: 
		if num < secretNum:
			response = "larger" # secret number is larger
		elif num > secretNum:
			response = "smaller" # secret number is smaller
		
	print(request)

	# return response message with result or error message
	return {"op" : "GUESS", "status" : True, "result" : response}

#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock, request):
	player = find_client_id(client_sock) # obtain the client_id from his socket

	# verify the appropriate conditions for executing this operation
	if player:
		update_file(player, "STOP")

		clean_client(client_sock) # eliminate client from dictionary

		# return response message with result or error message
		print(request)

		return {"op" : "STOP", "status" : True, "result": "SUCCESS!"} # process the report file with the SUCCESS result
	else: 
		print(request)

		return {"op" : "STOP", "status" : False, "error": "FAILURE!"} # process the report file with the FAILURE result

def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	
	port = int(sys.argv[1])
	
	if(len(sys.argv) != 1+1): print("Incorrect number of arguments!")
	elif(port < 0 or port > 65535): print("Incorrect port number!")

	server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind (("127.0.0.1", port))
	server_socket.listen (10)

	clients = []
	create_file ()

	while True:
		try:
			available = select.select ([server_socket] + clients, [], [])[0]
		except ValueError:
			# Sockets may have been closed, check for that
			for client_sock in clients:
				if client_sock.fileno () == -1: client_sock.remove (client) # closed
			continue # Reiterate select

		for client_sock in available:
			# New client?
			if client_sock is server_socket:
				newclient, addr = server_socket.accept ()
				clients.append (newclient)
			# Or an existing client
			else:
				# See if client sent a message
				if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
					# client socket has a message
					##print ("server" + str (client_sock))
					new_msg (client_sock)
				else: # Or just disconnected
					clients.remove (client_sock)
					clean_client (client_sock)
					client_sock.close ()
					break # Reiterate select

if __name__ == "__main__":
	main()
