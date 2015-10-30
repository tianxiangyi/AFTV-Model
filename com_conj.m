function y = com_conj(x)

%----------------¹²éî¸´Êý¾ØÕó---------------
%     Complex conjugate.
%     conj(X) is the complex conjugate of X.
%     For a complex X, conj(X) = REAL(X) - i*IMAG(X).
%  
%     See also real, imag, i, j.
% 
%     Overloaded methods:
%        codistributed/conj
% 
%     Reference page in Help browser
%        doc conj

% x = double(x);
y = real(x) - i*imag(x);