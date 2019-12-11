Include Irvine32.inc

.data
X real4 5.0
Y real4 2.0 
Z tbyte 0.0

.code
calPower proto, X: real4, Y:real4, Z:tbyte
main proc
	
	invoke calPower, X, Y, Z

	call writefloat
	call waitmsg
	exit
main endp
calPower proc,  X1: real4, Y1:real4, Z1:tbyte
FLD Y1
FBSTP Z1

mov ecx, dword ptr Z1
FLD X1

L1:
FMUL X1
loop L1
ret
calPower endp

end main
