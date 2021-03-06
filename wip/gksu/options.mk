# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.gksu
PKG_SUPPORTED_OPTIONS=	nls
PKG_SUGGESTED_OPTIONS+=	nls # doesn't install locale files

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mnls)
.include "../../devel/gettext-lib/buildlink3.mk"
CONFIGURE_ENV+=		USE_NLS=yes
.else
CONFIGURE_ARGS+=	--disable-nls
.endif
