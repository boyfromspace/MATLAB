%function works as follows %
function[diferential]=fprim(x0,deltax)
prim=(f(x0+deltax)-f(x0))/(deltax);
diferential=prim;
end
