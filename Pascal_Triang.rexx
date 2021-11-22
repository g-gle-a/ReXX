/**** REXX: 
		Pascal Triangle Calculation
		by Gerardo González  Aguilar Nov 2021
*/

/*arg x */

/* Pascal: Later...*/
say "..........Pascal Triangle by Gerardo González.........."
say "Number of rows"
pull cols 
  do row=1 to cols 
	string.row=""
    do elem=1 to row 
       call Binomial row elem
       string.row=string.row' '|| result
    end
  end
  len = length(string.cols)
  do i=1 to cols 
    say CENTER(string.i, len)
  end 
exit  

Binomial: procedure
  arg row  elem 
  res = Factorial(row-1)/(Factorial(row-elem) * Factorial(elem-1))
  /* say '.' res */
  return res

/* Recursive factorial. 
    The correct factorial returns 0!=1 and I let it be instead of finishing at 1!= 1  */
Factorial: procedure
  arg n
  if n=0 then return 1
  call Factorial(n-1)
return result*n