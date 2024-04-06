TEMPLATE = lib
TARGET = $$qtLibraryTarget(qtdaylight)

QT -= core gui

CONFIG -= console
CONFIG -= app_bundle
CONFIG += plugin

DEFINES += DAYLIGHT_LIBRARY

INCLUDEPATH += $$PWD/daylight/include
DEPENDPATH += $$PWD/daylight/include

HEADERS += $$files($$PWD/daylight/include/*, true)
SOURCES += $$files($$PWD/daylight/source/*, true)

OTHER_FILES += \
    .gitignore \
    AUTHORS \
    LICENSE \
    README.md \

android: include(android/android.pri)
sailfish: include(sailfish/sailfish.pri)
win32: include(win/win.pri)
linux_desktop: include(linux/linux.pri)
