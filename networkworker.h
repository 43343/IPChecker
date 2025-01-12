#ifndef NETWORKWORKER_H
#define NETWORKWORKER_H
#include <QThread>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QString>
#include <upnpcommands.h>
#include <upnperrors.h>
#include <miniupnpc.h>

class NetworkWorker : public QObject {
    Q_OBJECT
public:
    explicit NetworkWorker(QObject* parent = nullptr);

public slots:
    void fetchExternalIP(const QUrl& url);

signals:
    void externalIPFetched(const QString& ip);
    void errorExternalIPOccurred();
    void LANIPFetched(const QString& ip);
    void errorLANIPOccurred();
    void WANIPFetched(const QString& ip);
    void errorWANIPOccurred();

private slots:
    void onReplyFinished(QNetworkReply* reply);

private:
    QNetworkAccessManager* manager;
};
#endif // NETWORKWORKER_H
