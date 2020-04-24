function  [optheta,functionVal,exitFlag] = classmincostfun()
intialtheta=zeros(2,1);
option=optimset('GradObHj','on','MaxIter','100');
[optheta,functionVal,exitFlag]= fminunc(@costfunction,intialtheta,option);

