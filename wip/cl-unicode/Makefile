# $NetBSD$
#

VERSION=        0.1.2
SHORTNAME=	cl-unicode
DISTNAME=	${SHORTNAME}
CATEGORIES=	devel
MASTER_SITES=	http://weitz.de/files/

MAINTAINER=     ddeus.pkgsrc@mailnull.com
HOMEPAGE=	http://weitz.de/cl-fad/
COMMENT=        CL-UNICODE - A portable Unicode library for Common Lisp
LICENSE=        modified-bsd
DEPENDS+=	${LISP_PREFIX}-ppcre-[0-9]*:../../wip/cl-ppcre
DEPENDS+=	${LISP_PREFIX}-flexi-streams-[0-9]*:../../wip/cl-flexi-streams

WRKSRC=			${WRKDIR}/${DISTNAME}-${VERSION}
COMMON_LISP_DOCFILES=	CHANGELOG.txt doc/index.html

.include "options.mk"
.include "../../wip/mk/cl-package.mk"
.include "../../mk/bsd.pkg.mk"
