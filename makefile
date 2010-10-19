FLAGS = -I/usr/pkg/include -fconstant-string-class=NSConstantString \
	-L/usr/pkg/lib -lobjc -lgnustep-base

all:helloworld

helloworld:helloworld.m Callte.m Bull.m
	gcc $(FLAGS) -o helloworld helloworld.m Callte.m Bull.m -Wall

clean:
	rm -f helloworld
