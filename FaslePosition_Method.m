function []=FaslePosition_Method(func,a,b,n)
c=0;
if func(a)*func(b)<0
  for i=1:n
    c=(a*func(b)-b*func(a))/(func(b)-func(a));
    if(func(c)*func(a)<0)
        b=c;
    else
        a=c;
    end
  end
  fprintf("Xr = %4f. \n",c);
else
    disp('No roots between given brakets.')
end
end