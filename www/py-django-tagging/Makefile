# $NetBSD: Makefile,v 1.5 2014/12/31 13:57:31 wiz Exp $

DISTNAME=	django-tagging-0.3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	http://django-tagging.googlecode.com/files/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/django-tagging/
COMMENT=	Generic tagging application for Django
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

USE_LANGUAGES=		# none
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.3.1

INSTALLATION_DIRS+=	share/doc/py-django-tagging

do-test:
	${RUN} cd ${WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHONBIN} tagging/tests/tests.py

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/overview.txt \
		${DESTDIR}${PREFIX}/share/doc/py-django-tagging

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
