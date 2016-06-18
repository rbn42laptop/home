#include <QApplication>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    //QGuiApplication app(argc, argv);
    QApplication a(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("/dev/shm/qmlterm/qmlterm.qml")));

    return a.exec();
    //return app.exec();
}
