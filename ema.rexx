/**** REXX: 
		Exponential Moving Average Calculation
		by Gerardo González  Aguilar Nov 2021
*/

/*arg x */

Signal on syntax

Say '-------------------------------------------'
say "..........EMA by Gerardo González.........."
say "Number of random measurements"
pull nTotal

say "Max value (minimun is zero):"
pull nMax

say "Value of alpha 0[..]1:"
pull alpha

Say "===>>"random(nMax)
ema.1 = random(nMax)
say " 1 -->" ema.1
do i=2 to nTotal
  j=i-1
  now = random(nMax)
  ema.i = (1-alpha)*ema.j+ alpha * now
  Say i": " now" --> " ema.i
end

exit 0

syntax: 
 say "Something was wrong"
 exit -1