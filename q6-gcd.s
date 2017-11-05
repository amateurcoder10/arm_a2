	 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
;program to find GCD of two numbers
;GCD is present in both a and b i.e R1 and R2

__main  FUNCTION	
a RN 1;first number
b RN 2;second number
	MOV a,#26
	MOV b,#13
	
loop
	CMP a,b;compare a and b
	BEQ stop;if equal break out of the loop
	
	SUBGT a,a,b;if a greater than b do a=a-b
	SUBLE b,b,a;else b=b-a
	B loop;back to loop
	
stop B stop ; stop program
     ENDFUNC
     END