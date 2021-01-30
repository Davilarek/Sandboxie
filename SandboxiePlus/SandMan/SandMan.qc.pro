
TEMPLATE = app
TARGET = SandMan
PRECOMPILED_HEADER = stdafx.h

QT += core gui network widgets winextras concurrent

win32:{
CONFIG(debug, debug|release):LIBS += -L../Debug/
CONFIG(release, debug|release):LIBS += -L../Release/
}

LIBS += -lNtdll -lAdvapi32 -lOle32 -lUser32 -lShell32 -lGdi32 -lQSbieAPI -lMiscHelpers -lqtsingleapp


CONFIG(release, debug|release):{
QMAKE_CXXFLAGS_RELEASE = $$QMAKE_CFLAGS_RELEASE_WITH_DEBUGINFO
QMAKE_LFLAGS_RELEASE = $$QMAKE_LFLAGS_RELEASE_WITH_DEBUGINFO
}
CONFIG(debug, debug|release):DESTDIR = ../Debug
CONFIG(release, debug|release):DESTDIR = ../Release
INCLUDEPATH += .
DEPENDPATH += .
MOC_DIR += .
OBJECTS_DIR += debug
UI_DIR += .
RCC_DIR += .



include(SandMan.pri)
win32:RC_FILE = SandMan.rc

TRANSLATIONS += sandman_de.ts \
    sandman_pt.ts \
    sandman_ru.ts \
    sandman_tr.ts \
    sandman_zh.ts \
    sandman_zh-TW.ts