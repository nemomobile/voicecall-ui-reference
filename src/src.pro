TARGET = voicecall-ui
TEMPLATE = app
QT += quick qml network dbus

CONFIG += link_pkgconfig

packagesExist(qdeclarative5-boostable) {
    message("Building with qdeclarative5-boostable support")
    DEFINES += HAS_BOOSTER
    PKGCONFIG += qdeclarative5-boostable
} else {
    warning("qdeclarative5-boostable not available; startup times will be slower")
}

#DEFINES += WANT_TRACE

DEFINES += APPLICATION_NAME=\\\"voicecall-ui\\\"
DEFINES += APPLICATION_VERSION=\\\"0.1.0\\\"
DEFINES += APPLICATION_ORGANISATION=\\\"stage.rubyx.co.uk\\\"
DEFINES += APPLICATION_DOMAIN=\\\"stage.rubyx.co.uk\\\"

HEADERS += \
    declarativeview.h \
    dbusadaptor.h

SOURCES += \
    main.cpp \
    declarativeview.cpp \
    dbusadaptor.cpp

target.path = /usr/bin

INSTALLS += target
