.data
	message: .asciiz "Frase de testes"
	
.text
main:
	jal displayMessage   #pula para o displayMessage, colocando o valor do PC no $ra
	li $v0,10
	syscall
	
displayMessage:
	li $v0, 4
	la $a0, message
	syscall
	jr  $ra #pula para o endereço de ra, nesse caso referente ao jal da main
			