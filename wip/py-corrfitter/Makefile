# $NetBSD$

DISTNAME=	corrfitter-3.7
PKGNAME=        ${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/c/corrfitter/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://github.com/gplepage/corrfitter.git
COMMENT=	Utilities for fitting correlators in lattice QCD
LICENSE=	gnu-gpl-v3

DEPENDS+=       ${PYPKGPREFIX}-lsqfit>=4.8:../../wip/py-lsqfit

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"