# $NetBSD$

DISTNAME=		pySpeex-0.2
PKGNAME=		${PYPKGPREFIX}-speex-0.2
WRKSRC=			${WRKDIR}/${DISTNAME:S/-0.2//}
CATEGORIES=		audio
MASTER_SITES=		http://www.freenet.org.nz/python/pySpeex/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.freenet.org.nz/python/pySpeex/
COMMENT=		Speex bindings for Python; see speex package for details

BUILD_DEPENDS+=		${PYPKGPREFIX}-pyrex>=0:../../lang/py-pyrex

PY_PATCHPLIST=		yes
PYDISTUTILSPKG=		yes
PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-pyrex

.include "../../lang/python/extension.mk"
.include "../../audio/speex/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
