# $NetBSD$

DISTNAME=	pa_ounit-${VERS}
VERS=		112.17.00
CATEGORIES=     devel
MASTER_SITES=   https://github.com/janestreet/pa_ounit/archive/
DISTFILES=      ${VERS}${EXTRACT_SUFX}
DIST_SUBDIR=    ocaml-pa_ounit

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/janestreet/pa_ounit/
COMMENT=	OCaml inline testing
LICENSE=	apache-2.0

OCAML_USE_OASIS=	yes

.include "../../wip/ocaml-ounit/buildlink3.mk"
.include "../../lang/camlp4/buildlink3.mk"
.include "../../mk/ocaml.mk"
.include "../../mk/bsd.pkg.mk"
