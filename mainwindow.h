#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QTimer>
#include <QRandomGenerator>
#include <QString>
#include <QLabel>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QThread>
#include <QCloseEvent>

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
    QTimer *timerExternal;
    QTimer *timerWan;
    QTimer *timerLan;
    QLabel* ExternalIP;
    QLabel* WanIP;
    QLabel* LanIP;
    QThread* networkThread;

private slots:
    void fetchIP();
    void updateText(QLabel* label);
signals:
    void startFetchingIP(const QUrl& url);
private:
    void onExternalIPFetched(const QString& ip);
    void onErrorExternalIPOccurred();
    void onLANIPFetched(const QString& ip);
    void onErrorLANIPOccurred();
    void onWANIPFetched(const QString& ip);
    void onErrorWANIPOccurred();
protected:
    void closeEvent(QCloseEvent *event) override;
};
#endif // MAINWINDOW_H
