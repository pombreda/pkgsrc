# $NetBSD$
#

DISTNAME=		owl-2.1.11
CATEGORIES=		chat
MASTER_SITES=		http://www.ktools.org/dist/owl/

MAINTAINER=		jdw-pkgsrc@menelos.com
HOMEPAGE=		http://www.ktools.org/dist/owl/
COMMENT=		Curses-based instant messaging client

PKG_DESTDIR_SUPPORT=	none

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

INSTALLATION_DIRS+=	share/doc/owl

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/intro.txt ${PREFIX}/share/doc/owl/

.include "../../lang/perl5/buildlink3.mk"
.include "../../chat/zephyr/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
