# $NetBSD$

DISTNAME=	django-nose-0.1.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel www
MASTER_SITES=	http://pypi.python.org/packages/source/d/django-nose/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://pypi.python.org/packages/source/d/django-nose/
COMMENT=	Django test runner that uses nose
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-nose>=0.11.3:../../devel/py-nose
DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.1.2

USE_LANGUAGES=	# none

do-test:
	cd ${WRKSRC}/testapp && ${PYTHONBIN} runtests.py

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
