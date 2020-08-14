QT += widgets
requires(qtConfig(filedialog))
qtHaveModule(printsupport): QT += printsupport
QMAKE_CXXFLAGS+= -openmp

HEADERS       = mainwindow.h \
                acedialog.h \
                embossfilterdialog.h \
                fdfilterdialog.h \
                fftw3.h \
                floatslider.h \
                imageprocess.h \
                mdichild.h \
                padding.h \
                sdfilterdialog.h \
                transform.h
SOURCES       = main.cpp \
                acedialog.cpp \
                embossfilterdialog.cpp \
                fdfilterdialog.cpp \
                imagepocess.cpp \
                mainwindow.cpp \
                mdichild.cpp \
                padding.cpp \
                sdfilterdialog.cpp \
                transform.cpp
RESOURCES     = \
    dip.qrc

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/mainwindows/mdi
INSTALLS += target

win32: LIBS += -L$$PWD/./ -llibfftw3-3 -llibfftw3f-3 -llibfftw3l-3

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

TRANSLATIONS += $$PWD/languages/zh_CN.ts \
               $$PWD/languages/en_US.ts



# 运行依赖环境
INCLUDEPATH += "C:/Program Files (x86)/Windows Kits/10/Include/10.0.17763.0/ucrt"
INCLUDEPATH += "C:/Program Files (x86)/Windows Kits/10/Include/10.0.17763.0/um"
INCLUDEPATH += "C:/Program Files (x86)/Windows Kits/10/Include/10.0.17763.0/shared"
INCLUDEPATH += "C:/Program Files (x86)/Windows Kits/10/Include/10.0.17763.0/winrt"
LIBS += -L"C:/Program Files (x86)/Windows Kits/10/Lib/10.0.17763.0/ucrt/x64"
LIBS += -L"C:/Program Files (x86)/Windows Kits/10/Lib/10.0.17763.0/um/x64"
