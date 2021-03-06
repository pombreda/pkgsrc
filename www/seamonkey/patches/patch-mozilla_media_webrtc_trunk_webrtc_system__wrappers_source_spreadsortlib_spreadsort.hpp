$NetBSD: patch-mozilla_media_webrtc_trunk_webrtc_system__wrappers_source_spreadsortlib_spreadsort.hpp,v 1.4 2015/02/15 02:11:03 ryoon Exp $

--- mozilla/media/webrtc/trunk/webrtc/system_wrappers/source/spreadsortlib/spreadsort.hpp.orig	2015-02-05 04:39:00.000000000 +0000
+++ mozilla/media/webrtc/trunk/webrtc/system_wrappers/source/spreadsortlib/spreadsort.hpp
@@ -14,6 +14,13 @@ Cygwin fix provided by:
 Scott McMurray
 */
 
+#ifdef __FreeBSD__
+# include <osreldate.h>
+# if __FreeBSD_version < 900506
+#  define getchar boost_getchar
+# endif
+#endif
+
 #ifndef BOOST_SPREAD_SORT_H
 #define BOOST_SPREAD_SORT_H
 #include <algorithm>
@@ -21,6 +28,13 @@ Scott McMurray
 #include <vector>
 #include "webrtc/system_wrappers/source/spreadsortlib/constants.hpp"
 
+#ifdef __FreeBSD__
+# include <osreldate.h>
+# if __FreeBSD_version < 900506
+#  define getchar boost_getchar
+# endif
+#endif
+
 namespace boost {
   namespace detail {
   	//This only works on unsigned data types
