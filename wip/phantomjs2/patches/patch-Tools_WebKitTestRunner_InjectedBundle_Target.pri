$NetBSD: patch-Tools_WebKitTestRunner_InjectedBundle_Target.pri,v 1.1 2014/12/30 17:23:48 adam Exp $

* Treat NetBSD like Linux

--- src/qt/qtwebkit/Tools/WebKitTestRunner/InjectedBundle/Target.pri.orig	2015-01-24 02:19:52.000000000 +0000
+++ src/qt/qtwebkit/Tools/WebKitTestRunner/InjectedBundle/Target.pri
@@ -67,6 +67,6 @@ INCLUDEPATH += \
 PREFIX_HEADER = $$PWD/../WebKitTestRunnerPrefix.h
 *-g++*:QMAKE_CXXFLAGS += "-include $$PREFIX_HEADER"
 
-linux-* {
+linux-*|netbsd-* {
     QMAKE_LFLAGS += -Wl,--no-undefined
 }
