# $NetBSD: Makefile,v 1.2 2014/08/18 02:16:13 schmonz Exp $

.include "../../textproc/highlight/Makefile.common"

PKGNAME=		p5-highlight-${VERSION}
COMMENT+=		 (Perl bindings)

BUILD_DEPENDS+=		swig-[0-9]*:../../devel/swig
DEPENDS+=		highlight-[0-9]*:../../textproc/highlight

BUILD_DIRS=		examples/swig
BUILD_TARGET=		perl

USE_TOOLS+=		perl:run
CFLAGS+=		-fPIC

INSTALLATION_DIRS=	${PERL5_SUB_INSTALLVENDORARCH}/auto/highlight

do-install:
	cd ${WRKSRC}/examples/swig && \
	${INSTALL_DATA} highlight.pm ${DESTDIR}${PREFIX}/${PERL5_SUB_INSTALLVENDORARCH}/ && \
	${INSTALL_DATA} highlight.so ${DESTDIR}${PREFIX}/${PERL5_SUB_INSTALLVENDORARCH}/auto/highlight/

.include "../../lang/perl5/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
