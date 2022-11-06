.model small
.stack 4096
.data
username db 50 dup('$'), '$'
str1 db 'Super Mario','$'
str2 db 'Enter Your Name: ','$'
str3 db 'Press any key to continue ','$'
msg1 db 'You Loose', '$'
msg2 db 'YOU WIN', '$'
msg3 db 'Level: ', '$'
msg4 db 'Name: ','$'
msg5 db 'Score: ','$'
msg6 db 'YOU WIN', '$'
levels dw 1
score1 db '0','$'
score2 db '100','$'
score3 db '200','$'
score4 db '500','$'
;	str1 db ' Level # 01 Complete$'
  mar db 0,0,11,4,4,4,4,4,11,11,11,11,11
  db 11,11,4,4,4,4,4,4,4,4,4,11,11
  db 11,0,6,6,6,15,15,6,15,11,11,11,11
  db 11,6,15,6,15,15,15,6,15,15,15,11,11
  db 11,6,15,6,6,15,15,15,6,15,15,6,11
  db 11,6,6,15,15,15,15,6,6,6,6,11,11
  db 11,11,11,15,15,15,15,15,15,15,11,11,11
  db 11,11,4,4,1,4,4,4,4,11,11,11,11
  db 11,4,4,4,1,4,4,1,4,4,4,11,11
  db 4,4,4,4,1,1,1,1,4,4,4,4,11
  db 15,15,4,1,14,1,1,14,1,4,15,15,11
  db 15,15,15,1,1,1,1,1,1,15,15,15,11
  db 15,15,1,1,1,1,1,1,1,1,15,15,11
  db 11,11,1,1,1,11,11,1,1,1,11,11,11
  db 11,6,6,6,11,11,11,11,6,6,6,11,11
  db 6,6,6,6,11,11,11,11,6,6,6,6,11
marioX word 0
marioy word 185
tampCx word 0




enemy db 11,11,11,11,11,11,6,6,6,6,11,11,11,11,11,11,11
  db 11,11,11,11,11,6,6,6,6,6,6,11,11,11,11,11,11
  db 11,11,11,11,6,6,6,6,6,6,6,6,11,11,11,11,11
  db 11,11,11,6,6,6,6,6,6,6,6,6,6,11,11,11,11
  db 11,11,6,0,0,6,6,6,6,6,6,0,0,6,11,11,11
  db 11,6,6,6,13,0,6,6,6,6,0,13,6,6,6,11,11
  db 11,6,6,6,13,0,0,0,0,0,0,13,6,6,6,11,11
  db 6,6,6,6,13,0,13,6,6,13,0,13,6,6,6,6,11
  db 6,6,6,6,13,0,13,13,13,13,0,13,6,6,6,6,11
  db 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,11
  db 11,6,6,6,6,13,13,13,13,13,13,6,6,6,6,11,11
  db 11,11,11,11,13,13,13,13,13,13,13,13,11,11,11,11,11
  db 11,11,0,0,13,13,13,13,13,13,13,13,0,0,11,11,11
  db 11,0,0,0,0,0,13,13,13,13,0,0,0,0,0,11,11
  db 11,0,0,0,0,0,0,13,13,0,0,0,0,0,0,11,11
  db 11,11,0,0,0,0,0,11,11,0,0,0,0,0,11,11,11
  enemyX1 word 70
  enemyY1 word 184
  enemyX2 word 150
  enemyY2 word 184
  Enemy_Counter byte 0
  Enemy_Counter2 byte 1

monster db 11,11,11,11,11,11,11,11,11,11,11,11,0,0,11,0,0,11,0,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,14,0,0,15,0,14,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,14,6,14,15,15,14,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,0,6,0,6,14,12,6,0,11,11,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,0,0,0,15,15,15,15,15,15,0,0,0,11,11,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,0,0,15,15,15,15,15,15,15,15,15,15,15,15,0,0,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,0,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11,11
  db 11,11,11,11,11,0,7,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11
  db 11,11,11,11,11,0,7,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,0,8,7,15,15,0,0,7,15,15,0,15,0,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,7,0,0,0,0,7,7,0,0,0,15,15,0,11,11,11,11,11
  db 11,11,11,11,0,7,7,15,15,15,15,15,15,15,15,15,7,7,8,8,15,15,8,8,15,15,15,0,11,11,11,11,11
  db 11,11,11,0,15,7,7,15,15,15,15,15,15,15,15,15,15,15,8,15,15,15,15,8,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,15,15,15,15,15,15,15,15,15,15,8,8,15,15,8,8,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,15,15,15,15,15,15,15,15,15,15,0,0,15,15,0,0,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,7,7,7,15,15,15,15,15,15,0,15,15,15,15,15,15,15,15,15,15,15,15,0,11,11,11,11
  db 11,11,11,0,15,7,0,15,7,7,15,15,15,15,15,4,0,0,15,15,15,15,15,15,0,4,15,7,0,11,11,11,11
  db 11,11,11,0,0,0,15,15,15,15,7,7,15,15,15,4,9,7,0,0,0,0,0,0,7,4,7,0,15,0,11,11,11
  db 0,0,0,15,0,15,15,15,15,15,7,7,7,7,15,4,7,15,4,7,4,7,4,7,15,7,7,0,7,15,0,11,11
  db 0,15,15,0,15,15,15,15,15,15,7,7,7,7,7,7,4,15,4,4,4,4,4,4,15,7,7,0,7,7,15,0,11
  db 0,7,7,0,15,15,15,15,0,0,7,7,7,7,7,7,12,13,13,13,12,4,4,4,7,7,0,7,7,7,15,0,11
  db 11,0,15,7,15,15,15,15,7,7,7,7,7,7,7,7,7,13,13,13,13,12,4,7,7,7,0,0,0,0,0,11,11
  db 11,11,0,0,7,7,0,15,15,15,7,7,7,7,7,7,7,7,13,13,13,7,7,7,7,0,11,11,11,11,11,11,11
  db 11,11,11,11,0,0,0,0,15,15,15,15,7,7,7,7,7,7,7,7,7,7,7,7,0,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,0,0,15,15,15,15,15,7,7,7,7,7,7,7,0,0,11,11,11,11,11,11,11,11,11
  db 11,11,11,11,11,11,11,11,11,11,11,11,11,0,0,0,0,0,0,11,11,11,11,11,11,11,11,11,11,11,11,11,11
  MonsterX word 30
  MonsterY word 5
  counter_Monster byte 1
bomb db 11,11,11,11,0,0,0,0,11,11,11,11,11,11,11,11
  db 11,11,11,0,0,0,0,0,0,0,0,11,11,11,11,11,11
  db 11,11,0,0,0,0,0,0,0,0,0,0,11,11,11,11,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,11
  db 11,0,15,0,15,0,0,0,0,0,0,0,0,0,15,0,11
  db 0,0,15,0,15,0,0,0,0,0,0,0,0,0,15,0,11
  db 0,0,15,0,15,0,0,0,0,0,0,0,15,15,15,0,11
  db 0,0,0,0,0,0,0,0,0,0,0,0,14,14,15,0,11
  db 0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,0,14,0,11
  db 11,0,0,0,0,0,0,0,0,0,0,0,0,11,0,0,11
  db 11,11,0,0,0,0,0,0,0,0,0,0,11,11,11,11,11
  db 11,0,15,15,0,0,0,0,0,0,14,14,0,11,11,11,11
  db 11,0,14,14,14,0,0,0,0,0,14,14,0,11,11,11,11
  db 11,11,0,14,14,0,11,11,0,15,14,0,11,11,11,11,11
  db 11,11,11,0,0,11,11,11,11,0,0,11,11,11,11,11,11
BombX word 15
BombY word 30

kingDom     db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11,11, 0,11,11,11,11,11,11,11,11
			db 11,11,11,11,11,11,11,11,14,14,14,11,11,11,11,14,14,14, 0,14,14,11,11,11,14,14,14
			db 11,11,11,11,11,11,11,11, 6, 6,14,11,11,11,11,14, 6, 6, 6, 6,14,11,11,11,14, 6, 6
			db 11,11,11,11,11,11,11,11, 6, 6,14,11,11,11,11,14, 6, 6, 6, 6,14,11,11,11,14, 6, 6
			db 11,11,11,11,11,11,11,11, 6, 6,14,11,11,11,11,14, 6, 6, 6, 6,14,11,11,11,14, 6, 6
			db 11,11,11,11,11,11,11,11, 6, 6,14,11,11,11,11,14, 6, 6, 6, 6,14,11,11,11,14, 6, 6
			db 11,11,11,11,11,11,11,11, 0, 0,14,14,14,14,14,14, 0, 0, 0, 0,14,14,14,14,14, 0, 0
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 0, 6, 6, 0
			db 11,11,11,11,11,11,11,11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 0, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 0
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 0, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 0
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 0, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 6, 6, 6, 0
			db 11,11,11,11,11,11,11,11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			db 11,11,11,11,11,11,11,11, 6, 6, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 6, 6, 6, 0, 6, 6, 0
			db  6,15,15,15,15,11,11,11, 6, 6, 6, 6,15,15,15,15,15,15,15,15, 6, 6, 6, 0, 6, 6,15
			db  6, 6, 6, 6,15,11,11,11, 6, 6, 6, 6,15, 6, 6, 6, 6, 6, 6,15, 6, 6, 6, 0, 6, 6,15
			db  6, 6, 6, 6,15,11,11,11, 0, 0, 0, 0,15, 6, 6, 6, 6, 6, 6,15, 0, 0, 0, 0, 0, 0,15
			db  6, 6, 6, 6,15,11,11,11, 6, 6, 6, 6,15, 6, 6, 6, 6, 6, 6,15, 6, 6, 6, 6, 6, 6,15
			db  6, 6, 6, 6,15,11,11,11, 6, 6, 6, 6,15, 6, 6, 6, 6, 6, 6,15, 6, 6, 6, 6, 6, 6,15
			db  6, 0, 0, 0,15,15,15,15,15,15,15,15,15, 0, 0, 0, 0, 0, 0,15,15,15,15,15,15,15,15
			db  6, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6
			db  4, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6
			db  4, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6
			db  4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			db  4, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6,6 ,6 , 6
			db  4, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6
			db  4, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6
			db  4 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			db  4, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 0, 0, 0, 0, 0, 6, 6
			db  4, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 6

	kx dw 293
	ky dw 157

.code

	
	
	
	
	BackGround macro

	mov ah,06h
	mov al,0
	mov ch,0
	mov cl,0
	mov dh,24
	mov dl,39
	mov bh,11
	int 10h

	endm 	;End BackGround

	sleep macro		;Sleep Macro

	push dx
	mov cx,1
	mov dx,000fh
	mov ah,86h
	int 15h
	pop dx

	endm		;End Sleep
	
	
;;;;;;;;;;;;;;;;;;;;;;;MAIN PROC;;;;;;;;;;;;;;;;;;;;;;

	main proc	

	mov ax,@data
	mov ds,ax

	mov ah,0h
	mov al,13h
	int 10h
	mov dx, offset str1				;Displaying Game Name
	mov ah, 09h
	int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	mov dx, offset str2				;Displaying Input prompt
	mov ah, 09h
	int 21h
	mov dx, offset username			;Taking Input
	mov ah, 3fh
	int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	mov dx, offset str3				;Displaying Continue prompt
	mov ah, 09h
	int 21h
	
	mov ah,0
	int 16h
	;cmp ah,1c
	mov ah,0h
	mov al,13h
	int 10h
	
	mov bh,5
	E:						;Running Game in Loop
	;clear
	cmp levels, 2
	jb Displ1
	cmp levels, 3
	jb Displ2

	
	
	Displ3:							;display level 3
	
	BackGround
	;	call BombDisplay
	;call WinFlag
	call HurdleDisplay
	call MainChar
	call EnemyDisplay
	call MONSTER_Display
	call BombDisplay
	call kingdome
	jmp p

	Displ1:										;display level 1
	BackGround
	call WinFlag
	call HurdleDisplay
	call MainChar
	
	jmp p
	Displ2:							;display level2
	BackGround
	call WinFlag
	call HurdleDisplay
	call MainChar
	call EnemyDisplay

p:

;;;;;;;;;;;;;;;;;;;;;;Detecting Bomb Collision;;;;;;;;;;;;;;;;;;;;;;;;;
cmp levels, 3
jb BombOutOfRange			;level 1 aur 2 main bomb collision ni honi
mov ax, BombY
sub ax, 10
cmp marioy, ax
jbe BombOutOfRange				;Down side sy out of range
add ax, 20
cmp marioy, ax
jae BombOutOfRange				;up side sy out of range
mov ax, BombX
sub ax, 10
cmp marioX, ax
jbe BombOutOfRange				;left side sy out of range
add ax, 20
cmp marioX, ax
jae BombOutOfRange				;Right side sy out of range

jmp gameOver

BombOutOfRange:
;;;;;;;;;;;;;;;;Detecting Collision with Enemy;;;;;;;;;;;;;;
 mov ax, enemyX1
	sub ax, 10
	cmp marioX, ax				;left side sy collision detect kr rhy
    jbe EnemyOneOUtOfRange
	add ax, 20
	cmp marioX, ax				;right side sy collision detect kr rhy
	jae EnemyOneOUtOfRange					;agr enemy1 ki range main na rha ho

   ;cmp ax, marioX
	;jbe collisionE1

    collisionE1:
	cmp levels, 1				;level 1 main koi enemy ni to collision detect ni krni
	je EnemyTwoOUtOfRange
    mov ax, enemyY1
	cmp marioy, ax
    je gameOver
EnemyOneOUtOfRange:								;agr enemy1 sy collision na ho rhi hoi to yahan aa jae ga
	
    mov ax, enemyX2
	sub ax, 10
	cmp marioX, ax					;left side sy collision detect kr rhy
    jbe EnemyTwoOUtOfRange
	add ax, 20
	cmp marioX, ax					;right side sy collision detect kr rhy
    jae EnemyTwoOUtOfRange						;agr enemy2 ki range main na rha ho
   
    collisionE2:
	cmp levels, 1				;level 1 main koi enemy ni to collision detect ni krni
	je EnemyTwoOUtOfRange
    mov ax, enemyY2
	cmp marioy, ax
    je gameOver
EnemyTwoOUtOfRange:			;agr collision na ho rhi hoi to yahan aa jae ga
	sleep
	mov ah,01h
	int 16h
	jz E
	
cmp marioX, 300					;extreme right prr level complete aur agr 3rd level to win
jae win

   
						
	mov ah,0
	int 16h
	
	
	cmp ah, 48h					; for Up Arrow key
	je upMove

	cmp ah, 50h					; for Down Arrow key
	je downMove
	
	cmp ah, 4bh					; for Left Arrow key
	je leftMove
	
	cmp ah,4dh					; for Right Arrow key
	je rightMove
	cmp ah, 01h					; for terminating game
	je Exit

	;;;;;;;;;;;;;;;;;;Code when any arrow key s pressed;;;;;;;;;;;;;;;
	upMove:
	
		cmp marioy, 135
		jbe E
		sub marioy,25
		jmp E		;call Display 
	
	
	downMove:
	
		cmp marioy, 184
		je E
		cmp marioX, 34
		jbe hDown2
		cmp marioX,72
		jae hDown2
		cmp marioy,159
		jbe NextDown
		jmp E
		
		hDown2:
		
		cmp marioX,204
		jbe hDown3
		cmp marioX, 238
		jae hDown3
		cmp marioy,151
		jbe NextDown
		jmp E

hDown3:
		
		cmp marioX,115
		jbe NextDown
		cmp marioX, 152
		jae NextDown
		cmp marioy,143
		jbe NextDown
		jmp E

		
		

		NextDown:
	add marioy,1
		
		jmp E
	
	
	leftMove:
	cmp marioX, 0
	je E 					;extreme left py hoa to left ni jana
	
		cmp marioX, 34
		jbe hLeft2
		cmp marioX,68
		jae hLeft2
		cmp marioy,160
		jbe NextLeft1
			;mov marioy, 160
			;ADD marioX,1
			;mov marioy, 184
		jmp E
		
		hLeft2:
		
		cmp marioX,204
		jbe hLeft3
		cmp marioX, 238
		jae hLeft3
		cmp marioy,152
		jbe NextLeft2
			;mov marioy, 152
		;	ADD marioX,1
		;	mov marioy, 184
		jmp E

hLeft3:
		
		cmp marioX,115
		jbe NextLeft
		cmp marioX, 152
		jae NextLeft
		cmp marioy,144
		jbe NextLeft3
			;mov marioy, 144

		;	ADD marioX,1
		;	mov marioy, 184
		;jmp E
;jmp E
		NextLeft:
		sub marioX,1
		cmp marioy, 184
		jae E
		sub marioX, 10
			mov marioy, 184
			jmp E
		

		NextLeft1:
			sub marioX,1
			cmp marioy, 160
			jae E

			mov marioy, 160
			jmp E
		NextLeft2:
			sub marioX,1
			cmp marioy, 152
			jae E
			mov marioy, 152
			jmp E
		NextLeft3:
			sub marioX,1
			cmp marioy, 144
			jae E
			mov marioy, 144
			jmp E
	
	
	rightMove:
	
	
		
		
		cmp marioX, 34
		jbe h2
		cmp marioX,68
		jae h2
		cmp marioy,160
		jbe Next1
			;mov marioy, 160
			;ADD marioX,1
			;mov marioy, 184
		jmp E
		
		h2:
		
		cmp marioX,204
		jbe h3
		cmp marioX, 238
		jae h3
		cmp marioy,152
		jbe Next2
			;mov marioy, 152
		;	ADD marioX,1
		;	mov marioy, 184
		jmp E

h3:
		
		cmp marioX,115
		jbe Next
		cmp marioX, 152
		jae Next
		cmp marioy,144
		jbe Next3
			;mov marioy, 144

		;	ADD marioX,1
		;	mov marioy, 184
		jmp E
;jmp E
		Next:
		ADD marioX,1
		cmp marioy, 184
		jae E
		add marioX, 10
			mov marioy, 184
			jmp E
		

		Next1:
			ADD marioX,1
			cmp marioy, 160
			jae E
			;ADD marioX,10
			mov marioy, 160
			jmp E
		Next2:
			ADD marioX,1
			cmp marioy, 152
			jae E
			;ADD marioX,10
			mov marioy, 152
			jmp E
		Next3:
			ADD marioX,1
			cmp marioy, 144
			jae E
			;ADD marioX,10			
			mov marioy, 144
			jmp E

		
	

	Exit:					;jb excape press ho ga to yahan aa jae ga
    	mov al,03
	mov ah,0
	int 10h
	mov ah,4ch
	int 21h

	win:
	cmp levels, 3				;agr level 3 hoa to game end
	je endgame
	inc levels					; agr level 3 na hoa to agla level
	mov marioX, 0					;maria k a x axis set ho rhy
	mov marioy, 185					;mario k y axis set ho rhy
	jmp E
endgame:
	mov al,03
	mov ah,0
	int 10h
    mov dx, offset msg2				;Win message
    mov ah, 09h
    int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	jmp O4
Go:	 mov dx, offset msg3			;Level Dislay
    mov ah, 09h
    int 21h
	mov dx, levels
	add dx, 48
	mov ah, 02h
	int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	 mov dx, offset msg4			;username Display
    mov ah, 09h
    int 21h
	mov dx, offset username
    mov ah, 09h
    int 21h

    mov ah,4ch
	int 21h
    gameOver:						;agr collision ho gai to yahan aa jae ga
    mov al,03
	mov ah,0
	int 10h
    mov dx, offset msg1				;lose message
    mov ah, 09h
    int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	mov dx, offset msg3				;level display
    mov ah, 09h
    int 21h
	mov dx, levels
	add dx, 48
	mov ah, 02h
	int 21h
	mov dx, 10
	mov ah, 02h
	int 21h
	 mov dx, offset msg4			;username display
    mov ah, 09h
    int 21h
	mov dx, offset username
    mov ah, 09h
    int 21h
	mov dx,offset msg5			;score display
    mov ah, 09h
    int 21h
	cmp levels,1				;calculating score
    je O1
	cmp levels,2
    je O2
	cmp levels,3
    je O3

    jmp done
	O1:
    	mov dx,offset score1
	mov ah,09
	int 21h
	jmp done

	O2:
	mov dx,offset score2
	mov ah,09
	int 21h
	jmp done

	O3:
	mov dx,offset score3
	mov ah,09
	int 21h
	jmp done

	O4:
	mov dx,offset msg5		
   	mov ah, 09h
    	int 21h
	mov dx,offset score4
	mov ah,09
	int 21h
	mov dx, 10
	mov ah, 02h
	int 21h 
	jmp Go
	
    done:
    mov ah,4ch
	int 21h
    
	ret
;}
	main endp	;=====END MAIN PROC=====
	


MainChar proc	;=-~~~~MainChar Proc~~~~-=

	push bx
		mov bx,marioX
	
	mov si,offset mar
	mov cx,16
	Loop1:
	
		push cx

		mov cx,12
		mov dx,marioy
		Loop2:
		
			push cx
			mov ah,0CH
			mov cx,marioX
			mov al,[si]
			int 10h
			inc marioX
			inc si
			pop cx
		
		Loop Loop2
	
		mov marioX,bx
		add marioy,1
		inc si
		pop cx
	
	Loop Loop1
	sub marioy,16
	pop bx
	ret

	MainChar endp		;MainChar End

EnemyDisplay proc		

	
	push bx
	mov bx,enemyX1							;displaying enemy 1
	mov si,offset enemy
	mov cx,16
	Loop3:
	
		mov tampCx,cx
		mov cx,16
		Loop4:
	
			push cx
			mov cx,enemyX1
			mov dx,enemyY1
			mov al,[si]
			mov ah,0CH
			int 10h
			inc enemyX1
			inc si
			pop cx
		
		Loop Loop4
		mov enemyX1,bx
		inc enemyY1
		inc si
		mov cx,tampCx
	
	Loop Loop3
	sub enemyY1,16
	
	cmp Enemy_Counter,0					;counter main 0 hoa to agy ko jae ga.....x main increment aur 1 hoa to pichy ae ga.....x main decrement
	jne ENext
	
	inc enemyX1
	cmp enemyX1,119
	jne enem2
	
	mov Enemy_Counter,1
	jmp enem2
	ENext:
	cmp Enemy_Counter,1
	jne enem2
	
	dec enemyX1
	cmp enemyX1,75
	jne enem2
	
	mov Enemy_Counter,0
	
	
	enem2:
	mov bx,enemyX2							;displaying enemy 2
	mov si,offset enemy
	mov cx,16
	Loop1:
	
		mov tampCx,cx
		mov cx,16
		Loop2:
		
			push cx
			mov cx,enemyX2
			mov dx,enemyY2
			mov al,[si]
			mov ah,0CH
			int 10h
			inc enemyX2
			inc si
			pop cx
		
		Loop Loop2
		mov enemyX2,bx
		inc enemyY2
		inc si
		mov cx,tampCx
	
	Loop Loop1
	sub enemyY2,16
	
	cmp Enemy_Counter2,0				;counter main 0 hoa to agy ko jae ga.....x main increment aur 1 hoa to pichy ae ga.....x main decrement
	jne EnemyNext
	
	inc enemyX2
	cmp enemyX2,208
	jne Exit
	
	mov Enemy_Counter2,1
	jmp Exit
	EnemyNext:
	cmp Enemy_Counter2,1
	jne Exit
	
	dec enemyX2
	cmp enemyX2,145
	jne Exit
	
	mov Enemy_Counter2,0
	Exit:
	pop bx
	ret

	EnemyDisplay endp		
	
	
	
	MONSTER_Display proc	

	push bx
	mov bx,MonsterX
	mov si,0
	mov cx,27
	Loop1:
	
		mov tampCx,cx
		mov cx,32
		Loop2:
		
			push cx
			mov cx,MonsterX
			mov dx,MonsterY
			mov al,monster[si]
			mov ah,0CH
			int 10h
			inc MonsterX
			inc si
			pop cx
		
		Loop Loop2
		mov MonsterX,bx
		inc MonsterY
		inc si
		mov cx,tampCx
	
	Loop Loop1
	sub MonsterY,27
	
	
	cmp counter_Monster,0
	jne ENext
	
	inc MonsterX
	cmp MonsterX,225
	jne ENext
	
	mov counter_Monster,1
	jmp Exit
	ENext:
	cmp counter_Monster,1
	jne Exit
	
	dec MonsterX
	cmp MonsterX,0
	jne Exit
	
	mov counter_Monster,0
	
	
	Exit:
	pop bx
	ret
	

	MONSTER_Display endp 	;=-~~~~END MONSTER PROC~~~~-=
	
	BombDisplay proc 	;=-~~~~BombDisplay PROC~~~~-=

	push bx
	Jmp l2
	
	l1:
	mov BombY,20
	l2:
	mov bx,MonsterX
	mov si,0
	mov cx,16
	Loop1:
	
		mov tampCx,cx
		mov cx,16
		Loop2:
		
			push cx
			mov cx,BombX
			mov dx,BombY
			mov al,bomb[si]
			mov ah,0CH
			int 10h
			inc BombX
			inc si
			pop cx
		
		Loop Loop2
		mov BombX,bx
		inc BombY
		inc si
		mov cx,tampCx
	
	Loop Loop1
	sub BombY,16
	add BombY,1
	cmp BombY,185
	je l1 
	
	pop bx

	BombDisplay endp 	;;;;;;;;;;;END BombDisplay;;;;;;;;;;;
	
	HurdleDisplay proc		;;;;;;;;;;HurdleDisplay;;;;;;;;

	mov ch,22				;Hurdle_1
	mov cl,6
	mov dh,22
	mov dl,8
	
	mov bh,10101010b
	int 10h
	
	mov ch,23
	mov cl,7
	mov dh,24
	mov dl,7
	
	mov bh,10101010b
	int 10h

	mov ch,20					;Hurdle_2
	mov cl,16
	mov dh,20
	mov dl,18
	
	mov bh,10011010b
	int 10h
	
	mov ch,21
	mov cl,17
	mov dh,24
	mov dl,17
	
	mov bh,10011010b
	int 10h

	mov ch,21				;Hurdle_3 
	mov cl,27
	mov dh,21
	mov dl,29
	
	mov bh,11001010b
	int 10h
	
	mov ch,22
	mov cl,28
	mov dh,24
	mov dl,28
	
	mov bh,11001010b
	int 10h
	ret

	HurdleDisplay endp		;;;;;;;;;;;HurdleDisplay End;;;;;;;;;;
	
	
	
		
	
	

	WinFlag proc		;;;;;;;;;;WinFlag Proc;;;;;;;;;

	

	mov ah,06h
	mov al,0
	
	mov ch,12               
	mov cl,39
	mov dh,24
	mov dl,39
	
	mov bh,11111010b
	int 10h
	
	
	
	mov ch,11                ;green WinFlag
	mov cl,32
	mov dh,15
	mov dl,38	
	
	mov bh,2
	int 10h
	
	mov ch,11                 ;white WinFlag
	mov cl,39
	mov dh,15
	mov dl,39
	
	mov bh,15
	int 10h

	
	ret

	WinFlag endp		;;;;;;;;;;End WinFlag;;;;;;;;

	kingdome proc
	mov bx,kx
	
	mov si,0
	mov cx,43
	Loop3:
	
		push cx

		mov cx,27
		Loop4:
		
			push cx
			mov cx,kx
			mov dx,ky
			mov al,kingDom[si]
			mov ah,0CH
			int 10h
			inc kx
			inc si
			pop cx
		
		Loop Loop4
	
		mov kx,bx
		inc ky
		pop cx
	
	Loop Loop3
	mov ky,157
	ret
	kingdome endp
	
	end