FLAKE8 = python3 -m flake8

pyprogs = $(shell file -F $$'\t' bin/* tests/*/bin/* | awk '/Python script/{print $$1}')

all:

lint:
	${FLAKE8} lib/xspecies ${pyprogs}

test:
	cd tests && ${MAKE} test

clean:
	cd tests && ${MAKE} clean
