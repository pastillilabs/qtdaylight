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

include(platform/platform.pri)
