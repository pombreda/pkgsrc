# $NetBSD$

DISTNAME=	rk-1.5
CATEGORIES=	math
MASTER_SITES=	http://www.hepforge.org/archive/rk/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://rk.hepforge.org/
COMMENT=	Relativistic Kinematics
LICENSE=	gnu-lgpl-v3

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	rk.pc.in

.include "../../mk/bsd.pkg.mk"
