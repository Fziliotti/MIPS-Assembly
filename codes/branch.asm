.data
	message: .asciiz "O numero é menor que o outro!"
	
.text
	main:
	addi $t0, $zero, 1000
	addi $t1, $zero, 200
	
	slt $s0, $t0, $t1 #se t0 é menor que t1, coloca 1 em s0, senao coloca 0
	beq $s0, $zero, printMessage
	
	li $v0, 10
	syscall
	
	
	printMessage:
	li $v0,4
	la $a0, message
	syscall