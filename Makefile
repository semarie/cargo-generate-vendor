NOMAN=	

SCRIPT=	cargo-generate-checksum.pl

BINDIR?=	/usr/local/bin
MANDIR?=	/usr/local/man/man

realinstall:
	${INSTALL} ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${.CURDIR}/${SCRIPT} ${DESTDIR}${BINDIR}/cargo-generate-vendor

.include <bsd.prog.mk>
