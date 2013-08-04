TEMPLATE = subdirs
SUBDIRS = src

OTHER_FILES += qml/*.qml
OTHER_FILES += LICENSE voicecall-ui.yaml *.desktop *.service

desktopfile_entry.files = voicecall-ui.desktop
desktopfile_entry.path = /usr/share/applications

systemd_dbus_service.path = $${INSTALL_ROOT}/usr/share/dbus-1/services
systemd_dbus_service.files = org.nemomobile.voicecall.ui.service

systemd_ui_prestart_service.path = $${INSTALL_ROOT}/usr/lib/systemd/user
systemd_ui_prestart_service.files = voicecall-ui-prestart.service

qml.files = qml
qml.path = /usr/share/voicecall-ui

INSTALLS += qml desktopfile_entry autostart_entry systemd_dbus_service systemd_ui_prestart_service
