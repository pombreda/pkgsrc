# $NetBSD$
#

DISTNAME=	regexxer-0.9
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=regexxer/}

MAINTAINER=	dhowland@users.sourceforge.net
HOMEPAGE=	http://regexxer.sourceforge.net/
COMMENT=	Interactive tool for performing search and replace operations
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake perl intltool pkg-config

LDFLAGS+=		${EXPORT_SYMBOLS_LDFLAGS}
MAKE_ENV+=		EXPORT_SYMBOLS_LDFLAGS=${EXPORT_SYMBOLS_LDFLAGS:M*:Q}

CONFIGURE_ENV+=		GCONF_SCHEMA_FILE_DIR="${PREFIX}/share/gconf/schemas/"
MAKE_ENV+=		GCONF_SCHEMA_FILE_DIR="${PREFIX}/share/gconf/schemas/"
GCONF_SCHEMAS=		regexxer.schemas

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/GConf/schemas.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/gconfmm/buildlink3.mk"
.include "../../devel/libglademm/buildlink3.mk"
.include "../../devel/libsigc++1/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../x11/gtkmm/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
