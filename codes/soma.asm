.data
	Numero1: .asciiz "Informe o primeiro numero:"
	Numero2: .asciiz "Informe o segundo numero:"
	Resultado: .asciiz "O resultado da soma será:"

.text
	li $v0,4 #carregando serv~ço de printar string no registrador v0
	la $a0, Numero1 #carregando o argumento no registrador a0
	syscall #chamada de sistema que pede ao SO para realizar o processo acima
	li $v0,5 # carregando o servico de ler inteiro no reg v0
	syscall
	move $t0,$v0 # pega o valor de v0 que contem o inteiro lido e carregue no registrador t0
	
	
	li $v0,4 #carregando serv~ço de printar string no registrador v0
	la $a0, Numero2 #carregando o argumento no registrador a0
	syscall
	li $v0,5 # carregando o servico de ler inteiro no reg v0
	syscall
	move $t1,$v0 # pega o valor de v0 que contem o inteiro lido e carregue no registrador t0
		
	add $t2, $t1, $t0  #soma t1 e t0 e coloca em t2, é uma soma com overflow
	
	li $v0, 4  #carregando serv~ço de printar string no registrador v0
	la $a0, Resultado #carregando o argumento no registrador a0
	syscall
	
	li $v0, 1 #carregando serv~ço de printar inteiro no registrador v0
	move $a0, $t2 #m
	syscall