# $NetBSD$

DISTNAME=	v3.4.1
PKGNAME=	${DISTNAME:S/v/sipp-/}
CATEGORIES=	net
MASTER_SITES=	https://github.com/SIPp/sipp/archive/

MAINTAINER=	schwarz@NetBSD.org
HOMEPAGE=	http://sipp.sourceforge.net/
COMMENT=	SIPp is a free Open Source SIP test tool/traffic generator
LICENSE=	gnu-gpl-v2

USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
GNU_CONFIGURE=	yes

WRKSRC=		${WRKDIR}/${PKGNAME}
INSTALLATION_DIRS=	bin

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
