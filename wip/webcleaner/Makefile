# $NetBSD$

DISTNAME=		webcleaner-2.8
CATEGORIES=		www
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=webcleaner/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://webcleaner.sourceforge.net/
COMMENT=		Filtering HTTP proxy

DEPENDS+=		${PYPKGPREFIX}-crypto>=2.0:../../security/py-crypto
DEPENDS+=		${PYPKGPREFIX}-imaging>=0:../../graphics/py-imaging

PKG_DESTDIR_SUPPORT=    none

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
LIBTOOL_OVERRIDE=	${WRKSRC}/libtool
GNU_CONFIGURE=		yes
PY_PATCHPLIST=		yes
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-imaging

do-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_FLAGS}
	cd ${WRKSRC} && ${SETENV} PREFIX=${PREFIX} ${PYTHONBIN} setup.py build

do-install:
	cd ${WRKSRC} && ${PYTHONBIN} setup.py install

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
