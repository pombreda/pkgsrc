# $NetBSD: Makefile,v 1.90 2012/10/08 11:06:33 wiz Exp $

DISTNAME=	ghostscript-${GS_VERSION}
PKGNAME=	${DISTNAME:S/ghostscript/ghostscript-gpl/}
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ghostscript/}
MASTER_SITES+=	http://ghostscript.com/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ghostscript.sourceforge.net/
COMMENT=	Postscript interpreter

# Plus adobe verbatim for Resources/CMap.
LICENSE=	gnu-gpl-v3

.include	"Makefile.common"

DEPENDS+=		ghostscript-fonts>=6.0:../../fonts/ghostscript-fonts

CONFLICTS+=		ghostscript-afpl-[0-9]*
# To avoid flag from pkglint
CONFLICTS+=		ghostscript-esp-[0-9]*
CONFLICTS+=		ghostscript-esp-nox11-[0-9]*
CONFLICTS+=		ghostscript-gnu-x11-[0-9]*
CONFLICTS+=		ghostscript-gnu-nox11-[0-9]*

USE_TOOLS+=		gmake perl:run lex pkg-config
USE_LANGUAGES+=		c c++
GNU_CONFIGURE=		yes
UNLIMIT_RESOURCES+=	datasize	# gsromfs1.c

BUILD_TARGET=		so
INSTALL_TARGET=		soinstall
CONFIGURE_ARGS+=	--with-omni=no	# otherwise pulls in libstdc++

REPLACE_PERL+=		toolbin/localcluster/clusterpush.pl
REPLACE_PERL+=		toolbin/checkdeps.pl
REPLACE_PERL+=		toolbin/pscet_status.pl
REPLACE_PERL+=		toolbin/performance.pl
REPLACE_PERL+=		toolbin/squeeze2html.pl
REPLACE_PERL+=		toolbin/bugsByEngineer.pl
REPLACE_PERL+=		toolbin/htmldiff.pl

GS_RESOURCEDIR=		${PREFIX}/share/ghostscript/${PKGVERSION}/Resource
# MESSAGE file substitution
MESSAGE_SUBST+=		GS_RESOURCEDIR=${GS_RESOURCEDIR}

# XXX make sure the local jpeg headers are found before those pulled
# in indirectly by cups bl3
CPPFLAGS+=		-Ijpeg

.include "../../mk/bsd.prefs.mk"
.include "../../mk/compiler.mk"

.if defined(PAPERSIZE) && (${PAPERSIZE} == "A4" || ${PAPERSIZE} == "a4")
CFLAGS+=		-DA4
.endif

REQD_DIRS+=		share/ghostscript

SUBST_CLASSES+=		resdir
SUBST_STAGE.resdir=	post-extract
SUBST_MESSAGE.resdir=	Fixing resource directory path
SUBST_FILES.resdir=	Resource/Init/gs_res.ps
SUBST_SED.resdir=	-e "s|/Resource/|${GS_RESOURCEDIR}/|g"

.if ${OPSYS} == "HPUX"
CONFIGURE_ENV+=		ac_cv_func_fopen64=no
.endif

# On Linux-*-x86_64, there was an error message:
# gp_unix.o: relocation R_X86_64_32 against `a local symbol' can not be
# used when making a shared object; recompile with -fPIC
.if !empty(PKGSRC_COMPILER:Mgcc) || !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=		-fPIC
.endif

# Interim IRIX build fix, the real problem is that fontconfig.pc doesn't
# require linking against libiconv when it should do so.
.if ${OPSYS} == "IRIX"
BUILDLINK_TRANSFORM+=	l:fontconfig:fontconfig:iconv
.endif

CONFIGURE_ENV+=	LPLIBDIR=${PREFIX}/lib

# On OpenBSD 5.3, libxcb is required libXt.
LDFLAGS.OpenBSD+=	-lxcb

.include "options.mk"

post-extract:
	${MKDIR} ${WRKSRC}/bin
	${MKDIR} ${WRKSRC}/obj
#	${RM} -rf ${WRKSRC}/jasper
	${RM} -rf ${WRKSRC}/libpng
#	${RM} -rf ${WRKSRC}/tiff
#	${RM} -rf ${WRKSRC}/zlib
	${RM} -rf ${WRKSRC}/freetype
#
#  To allow outside customization, rename cidfmap
#	 (if you look at inside of the file, it is logically empty)
.if !empty(PKG_OPTIONS:Mdisable-compile-inits)
	(cd  ${WRKSRC}/Resource/Init/; ${MV} cidfmap cidfmap.dist)
.endif

post-install:
	${LN} -sf gsc ${DESTDIR}${PREFIX}/bin/gs

.include "../../print/libpaper/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
# pkgsrc jasper is too new
#.include "../../graphics/jasper/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
