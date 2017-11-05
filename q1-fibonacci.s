	 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
;program to find the first n fibonacci numbers
;the series is stored in memory starting from address 0x2000000
__main  FUNCTION	
prev RN 1;pointer to 1st
current RN 2;pointer to 2nd

n RN 3;length of the series required
element1 RN 4;first element
element2 RN 5;second element
newel RN 6;new element 

	MOV prev,#0x2000000;start address
	ADD current,prev,#4
	
	MOV n,#10;number of elements
	MOV element1,#0;series initialisation--1st element
	MOV element2,#1;series initialisation--2nd element
	
	STR element1,[prev];store first 2 elements into memory
	STR element2,[current]
	
loop
	CMP n,#2;loop till n reaches two accounting for initialisations
	BEQ stop
	ADD newel,element1,element2;new=el1+el2
	ADD current,#4;update pointers
	ADD prev,#4
	STR newel,[current];store the new element
	LDR element1,[prev];update the contents of el1 and 2
	LDR element2,[current]
	
	SUB n,#1;decrement loop counter
	B loop
    
stop B stop ; stop program
     ENDFUNC
     END