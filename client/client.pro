#-------------------------------------------------
#
# Project created by QtCreator 2017-09-13T14:16:40
#
#-------------------------------------------------
include(../pedestrian.pri)
QT       += core gui network opengl
CONFIG +=qml c++11
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = client
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        mainwindow.cpp \
    client.cpp \
    videohandler.cpp

HEADERS += \
        mainwindow.h \
    client.h \
    common.h \
    config.h \
    protocol.h \
    yuvrender.h \
    camera.h \
    protocol.h \
    videohandler.h \
    videosrc.h

FORMS += \
        mainwindow.ui

#QMAKE_LIBDIR+="C:/Users/root/Desktop/opencv-2.4.9/opencv/build/x64/vc12/lib/"
#DEPENDPATH+="C:/Users/root/Desktop/opencv-2.4.9/opencv/build/x64/vc12/bin/"

win32{
INCLUDEPATH +="$$CVPATH\cv\opencv-vs2013-x86\include"
CONFIG(release, debug|release){
LIBS+=-L$$CVPATH\cv\opencv-vs2013-x86\include -lopencv_core249 -lopencv_highgui249 -lopencv_objdetect249 -lopencv_imgproc249 -lopencv_ml249 -lopencv_video249
}else{

LIBS+=-L$$CVPATH\cv\opencv-vs2013-x86\lib -lopencv_core249d -lopencv_highgui249d -lopencv_objdetect249d -lopencv_imgproc249d -lopencv_ml249d -lopencv_video249d
}
}
unix{
QMAKE_CXXFLAGS+="-std=c++11"
INCLUDEPATH +="$$CVPATH/cv/opencv-249-linux32/include"
LIBS+=-L$$CVPATH/cv/opencv-249-linux32/lib -lopencv_core -lopencv_highgui -lopencv_objdetect -lopencv_imgproc -lopencv_ml -lopencv_video -lX11
}
DEFINES+=CLIENT
