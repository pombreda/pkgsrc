# $NetBSD: Makefile,v 1.11 2005/12/05 20:50:09 rillig Exp $

DISTNAME=	xtrace_1.3.1.orig
PKGNAME=	${DISTNAME:S/_/-/:S/.orig//}
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_DEBIAN:=pool/main/x/xtrace/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://packages.qa.debian.org/x/xtrace.html
COMMENT=	Trace communication between X11 client and server
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

post-extract:
	${CP} ${FILESDIR}/tdestroy.c ${WRKSRC}

.include "../../mk/bsd.pkg.mk"
