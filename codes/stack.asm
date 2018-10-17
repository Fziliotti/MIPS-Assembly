.data
	newLine: .asciiz "\n"

.text
	main:
		addi $s0, $zero, 10
		
		jal increaseMyRegister
		
		li $v0, 1
		move $a0, $s0
		syscall
	
	li $v0, 10
	syscall
	
	
	increaseMyRegister:
		#aumenta a pilha, a qual "cresce" de cima pra baixo
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30
		
		#printa na tela a adição de 30 com 10
		li $v0,1
		move $a0, $s0
		syscall
		
		#carrega a variavel que estava na pilha para s0, volta a ser 10
		lw $s0, 0($sp)
		addi $sp, $sp, 4
		
		jr $ra
		
		
			