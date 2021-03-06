$NetBSD$

--- programs/dtmail/libDtMail/Common/Session.C.orig	2012-09-29 12:05:56.000000000 +0000
+++ programs/dtmail/libDtMail/Common/Session.C
@@ -1618,7 +1618,7 @@ char *from_cs, char *to_cs)
    DtMailEnv error;
    iconv_t cd;
    size_t ileft = (size_t) bp_len, oleft = (size_t) bp_len, ret = 0;
-#if defined(_AIX) || defined(sun) || defined(__FreeBSD__) || defined(__NetBSD__)
+#if defined(_AIX) || defined(sun) || defined(CSRG_BASED)
    const char *ip = (const char *) *bp;
 #else
    char *ip = *bp;
