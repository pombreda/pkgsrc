# $NetBSD$

DISTNAME=	libsoap-1.1.0
PKGNAME=	csoap-1.1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=csoap/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://csoap.sourceforge.net/
COMMENT=	SOAP C Framework C API functions

GNU_CONFIGURE=	YES
USE_LIBTOOL=	YES
USE_TOOLS+=	pkg-config



.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
