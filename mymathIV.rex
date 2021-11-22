/* REXX EXERCISE  MYMATH   
        Coded by Gerardo GonzálezAguilar Nov 19 2021
*/
  Signal ON error
  Signal ON SYNTAX

 Do forever
 Say "--------------------------------------------------------------------"
   Say "   Do you want to Add, (Subs)tract, (Mult)iply or (Div)ide?) or Exit"
   Parse Upper Pull  oper  
   If oper = "EXIT" | oper = "E"  then Do
        Say "Exiting..."
        Exit 0
   END  
   Do Forever
   		SAY "ENTER TWO NUMBERS"
   		PULL numbers
   		if  SubWord(numbers, 3, 1) = '' then Do
   		   N1 = SubWord(numbers, 1,1)
   	       N2 = SubWord(numbers,2,1)
   	      /* if  N1 \= '' & N2 \=''   then 
   	            if DataType(N1,'N')=0 | DataType(N2,'N')=0 then  iterate*/
   	       SAY "YOU ENTERED: " N1 " AND " N2 "and you want to " oper "them"
  		   SELECT
    			When oper = "ADD" | oper = "A" then
       				SAY N1 " + " N2 " = " N1 + N2   
    			When oper = "SUBS" | oper ="S" then
                	SAY N1 " - " N2 " = " N1 - N2	      
    			When oper = "MULT" | oper = "M" then
            		SAY N1 " * " N2 " = " N1 * N2      
    			When oper = "DIV" | oper ="D" then 
    			Do
        			/*IF N2 = 0 THEN   
      		      		SAY "N2 IS ZERO, THE DIVISION CAN NOT BE MADE "
        			Else   */
	    				SAY N1 " / " N2 " = " N1 / N2  
      			End /* Division */
    			Otherwise   Say "Unrecognized option. Please entar a valid one!" 
  			END  /* Select  */
  		    leave
  		End /* If word(,3)='' */ 
  	End /*Do	 forever*/
 End /* Do	Forever*/
 Exit 0

SYNTAX:
  Say "You did'nt enter two numbers or divisions by zero was attempted!!!"
  exit 999 

ERROR:
    Say "UNEXPECTED eRROR!!!"
  exit 998