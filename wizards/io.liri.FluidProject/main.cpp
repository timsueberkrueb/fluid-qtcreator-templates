%{Cpp:LicenseTemplate}\
%{JS: QtSupport.qtIncludes([], ["QtGui/QGuiApplication", "QtQml/QQmlApplicationEngine", "QtQuickControls2/QQuickStyle"])}
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQuickStyle::setStyle(QLatin1String("%{ControlsStyle}"));

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/ui/Main.qml")));

    return app.exec();
}
