# $NetBSD$
#

DATESTAMP=	20140105
DISTNAME=	libcthreads-experimental-${DATESTAMP}
PKGNAME=	${DISTNAME:S/experimental-//1}
CATEGORIES=	sysutils
MASTER_SITES=	https://googledrive.com/host/0B3fBvzttpiiSdlBOeGZJeml1T1k/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/libcthreads/
COMMENT=	Library for cross-platform C threads functions
LICENSE=	gnu-lgpl-v3

WRKSRC=		${WRKDIR}/libcthreads-${DATESTAMP}
GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	msgfmt msgmerge pkg-config xgettext

PKGCONFIG_OVERRIDE+=	libcthreads.pc.in

.include "options.mk"

.include "../../mk/pthread.buildlink3.mk"
.include "../../wip/libcerror/buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
