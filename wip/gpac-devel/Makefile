# $NetBSD: Makefile,v 1.10 2010/06/13 22:45:05 wiz Exp $

DISTNAME=	gpac-0.4.6
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gpac/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gpac.sourceforge.net/
COMMENT=	Open source multimedia framework

MAKE_JOBS_SAFE=		no

SVN_REPOSITORIES=	gpac
SVN_ROOT.gpac=		http://gpac.svn.sourceforge.net/svnroot/gpac/trunk/gpac

WRKSRC=		${WRKDIR}/gpac
USE_TOOLS+=	gmake pkg-config
USE_LANGUAGES=	c c++
# not really GNU configure, but close enough
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--disable-wx

pre-install:
	${FIND} ${WRKSRC}/gui/extensions -name .svn -type d -print | ${XARGS} ${RM} -rf

.include "../../audio/faad2/buildlink3.mk"
.include "../../audio/liba52/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
.include "../../audio/pulseaudio/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
# doesn't work yet
#.include "../../lang/spidermonkey/buildlink3.mk"
.include "../../multimedia/ffmpeg1/buildlink3.mk"
.include "../../multimedia/libogg/buildlink3.mk"
.include "../../multimedia/xvidcore/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXv/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../wip/mk/svn-package.mk"
.include "../../mk/bsd.pkg.mk"
