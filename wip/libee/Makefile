# $NetBSD$
#

DISTNAME=		libee-0.4.1
CATEGORIES=		sysutils
MASTER_SITES=		http://www.libee.org/files/download/

MAINTAINER=		bartosz.kuzma@gmail.com
HOMEPAGE=		http://www.libee.org/
COMMENT=		Event Expression Library inspired by CEE
LICENSE=		gnu-gpl-v2

GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-testbench

MAKE_JOBS_SAFE=		no

USE_LIBTOOL=		yes
USE_TOOLS+=		bash pkg-config

PKGCONFIG_OVERRIDE+=	libee.pc.in

.include "../../wip/libestr/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
