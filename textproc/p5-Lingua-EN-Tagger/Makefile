# $NetBSD: Makefile,v 1.10 2015/01/26 14:25:49 mef Exp $
#

DISTNAME=	Lingua-EN-Tagger-0.24
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Lingua/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Lingua-EN-Tagger/
COMMENT=	Part-of-speech tagger for English natural language processing
LICENSE=	gnu-gpl-v3

DEPENDS+=	p5-HTML-Parser>=3.45:../../www/p5-HTML-Parser
DEPENDS+=	p5-HTML-Tagset>=3.20:../../www/p5-HTML-Tagset
DEPENDS+=	p5-Lingua-Stem>=0.81:../../textproc/p5-Lingua-Stem
DEPENDS+=	p5-Memoize-ExpireLRU>=0.55:../../devel/p5-Memoize-ExpireLRU

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/Lingua/EN/Tagger/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
