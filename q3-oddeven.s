	 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
;program to find whether a number is odd or even
;if result is a 1, it indicates odd number
;if it is 0,the number is even

__main  FUNCTION	
input RN 1;first number
result RN 3;second number
divisor RN 2;divide by 2

	MOV input,#12
	MOV divisor,#2
    UDIV result,input,divisor;divide the number by two and store in result
	MLS result,result,divisor,input;perform modulus mod=input-result*2
	
stop B stop ; stop program
     ENDFUNC
     END