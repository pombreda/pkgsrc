# $NetBSD: Makefile,v 1.18 2014/10/09 14:06:20 wiz Exp $
#

DISTNAME=		IO-Multiplex-1.13
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		3
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/IO-Multiplex/
COMMENT=		Perl module to manage IO on many file handles
LICENSE=		${PERL5_LICENSE}

PERL5_PACKLIST=		auto/IO/Multiplex/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
