 function Ndot=logistic(t,N,h)
       %     right hand side of logistic equation for a matlab numerical
       %     solution.

       %     r is the intrinsic growth rate (parameter)
       %     N is population size (variable)
       %     t is time
       
       r=.015;
      
       Ndot=r*N.*(1-N)-h;

 end