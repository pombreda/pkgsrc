# $NetBSD: Makefile,v 1.8 2015/02/09 15:14:52 mef Exp $
#

DISTNAME=	Locale-PO-0.27
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Locale/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Locale-PO/
COMMENT=	Perl 5 module for manipulating .po entries from GNU gettext
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		# empty

PERL5_PACKLIST=	auto/Locale/PO/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
