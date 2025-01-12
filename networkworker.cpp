#include "networkworker.h"

NetworkWorker::NetworkWorker(QObject* parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(this);
    connect(manager, &QNetworkAccessManager::finished, this, &NetworkWorker::onReplyFinished);
}
void NetworkWorker::fetchExternalIP(const QUrl& url)
{
    QNetworkRequest request(url);
    manager->get(request);
}
void NetworkWorker::onReplyFinished(QNetworkReply* reply)
{
    if (reply->error() == QNetworkReply::NoError) {
        QByteArray response = reply->readAll();
        QJsonDocument jsonDoc = QJsonDocument::fromJson(response);
        if (!jsonDoc.isNull() && jsonDoc.isObject()) {
            QString ip = jsonDoc.object().value("ip").toString();
            emit externalIPFetched(ip);
        } else {
            emit errorExternalIPOccurred();
        }
    } else {
        emit errorExternalIPOccurred();
    }
    reply->deleteLater();
    struct UPNPDev* deviceList = nullptr;
    struct UPNPUrls urls;
    struct IGDdatas data;
    char lanAddress[40];
    char externalIPAddress[40];
    char wanAddress[40];
    int error = 0;
    deviceList = upnpDiscover(2000, nullptr, nullptr, 0, 0, 2, &error);
    if (!deviceList) {
        emit errorWANIPOccurred();
        emit errorLANIPOccurred();
        freeUPNPDevlist(deviceList);
        return;
    }
    int igdStatus = UPNP_GetValidIGD(deviceList, &urls, &data, lanAddress, sizeof(lanAddress), wanAddress, sizeof(wanAddress));
    if (igdStatus == 0) {
        emit errorLANIPOccurred();
    }
    else
    {
        QString  lanIP = QString::fromUtf8(lanAddress);
        emit LANIPFetched(lanIP);
    }
    int result = UPNP_GetExternalIPAddress(urls.controlURL, data.first.servicetype, externalIPAddress);
    if (result != UPNPCOMMAND_SUCCESS) {
        emit errorWANIPOccurred();
    }
    else
    {
        QString externalIP = QString::fromUtf8(externalIPAddress);
        emit WANIPFetched(externalIP);
    }
    freeUPNPDevlist(deviceList);
    FreeUPNPUrls(&urls);
}
