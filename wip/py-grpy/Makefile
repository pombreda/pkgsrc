# $NetBSD$

VERSION=	0.2
DISTNAME=	GRPy0.2
PKGNAME=       ${PYPKGPREFIX}-grpy-${VERSION}
CATEGORIES=	wip
MASTER_SITES=	https://pypi.python.org/packages/source/G/GRPy/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://pypi.python.org/pypi?%3Aaction=search&term=GRPy&submit=search
COMMENT=	Small GR-oriented package which uses sympy
LICENSE=	gnu-gpl-v3

WRKSRC=		${WRKDIR} # More than one possibility -- please check manually.

USE_LANGUAGES=	# none

NO_BUILD=       yes
GRPy_FILES=	Christoffel.py Riemann.py Tensor.py
PLIST_SUBST+=		PYPKGPREFIX=${PYPKGPREFIX:Q}
PY_PATCHPLIST=		yes

INSTALLATION_DIRS=	${PYSITELIB}

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} testtensor.py

do-install:
	for a in ${GRPy_FILES}; do \
		${INSTALL_SCRIPT} ${WRKSRC}/$$a ${DESTDIR}${PREFIX}/${PYSITELIB}/$$a; \
	done

DEPENDS+=	${PYPKGPREFIX}-sympy>=0.6.7:../../math/py-sympy
.include "../../lang/python/application.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
