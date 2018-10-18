.data
	myArray: .space 12 # 3 valores

.text
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12	
	
	#Index
	addi $t0, $zero, 0
	
	#Store word  grava o valor do registrador na memoria
	sw $s0, myArray($t0)
		addi $t0, $t0, 4
	sw $s1, myArray($t0)
		addi $t0, $t0, 4
	sw $s2, myArray($t0)
			
	# carrega o valor da memoria no registrador t6
	lw $t6, myArray($t0)
	
	li $v0, 1
	addi $a0, $t6, 0
	syscall
			