#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include "networkworker.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    timerExternal = new QTimer(this);
    timerLan = new QTimer(this);
    timerWan = new QTimer(this);
    ExternalIP = ui->ExternalIP;
    LanIP = ui->LanIP;
    WanIP = ui->WanIP;

    networkThread = new QThread(this);
    NetworkWorker* worker = new NetworkWorker();
    worker->moveToThread(networkThread);

    connect(networkThread, &QThread::finished, worker, &QObject::deleteLater);
    connect(this, &MainWindow::startFetchingIP, worker, &NetworkWorker::fetchExternalIP);
    connect(worker, &NetworkWorker::externalIPFetched, this, &MainWindow::onExternalIPFetched);
    connect(worker, &NetworkWorker::errorExternalIPOccurred, this, &MainWindow::onErrorExternalIPOccurred);
    connect(worker, &NetworkWorker::LANIPFetched, this, &MainWindow::onLANIPFetched);
    connect(worker, &NetworkWorker::errorLANIPOccurred, this, &MainWindow::onErrorLANIPOccurred);
    connect(worker, &NetworkWorker::WANIPFetched, this, &MainWindow::onWANIPFetched);
    connect(worker, &NetworkWorker::errorWANIPOccurred, this, &MainWindow::onErrorWANIPOccurred);

    connect(timerExternal, &QTimer::timeout, this, [this]() { updateText(ExternalIP); });
    connect(timerLan, &QTimer::timeout, this, [this]() { updateText(LanIP); });
    connect(timerWan, &QTimer::timeout, this, [this]() { updateText(WanIP); });
    connect(ui->CheckBtn, &QPushButton::clicked, this, &MainWindow::fetchIP);

    networkThread->start();
}
void MainWindow::fetchIP()
{
    QPushButton* button = (QPushButton*)sender();
    button->setEnabled(false);
    button->setText("WAIT..");
    timerExternal->start(50);
    timerWan->start(50);
    timerLan->start(50);

    emit startFetchingIP(QUrl("https://api.ipify.org?format=json"));
}
void MainWindow::updateText(QLabel* label)
{
    int number1 = QRandomGenerator::global()->bounded(256);
    int number2 = QRandomGenerator::global()->bounded(256);
    int number3 = QRandomGenerator::global()->bounded(256);
    int number4 = QRandomGenerator::global()->bounded(256);

    QString newText = QString("%1.%2.%3.%4").arg(number1).arg(number2).arg(number3).arg(number4);

    label->setText(newText);
}
void MainWindow::onExternalIPFetched(const QString& ip)
{
    timerExternal->stop();
    ExternalIP->setText(ip);
}
void MainWindow::onErrorExternalIPOccurred()
{
    timerExternal->stop();
    ExternalIP->setText("ERROR");
}
void MainWindow::onLANIPFetched(const QString& ip)
{
    timerLan->stop();
    LanIP->setText(ip);
}
void MainWindow::onErrorLANIPOccurred()
{
    timerLan->stop();
    LanIP->setText("ERROR");
}
void MainWindow::onWANIPFetched(const QString& ip)
{
    timerWan->stop();
    WanIP->setText(ip);
    ui->CheckBtn->setEnabled(true);
    ui->CheckBtn->setText("CHECK");
}
void MainWindow::onErrorWANIPOccurred()
{
    timerWan->stop();
    WanIP->setText("ERROR");
    ui->CheckBtn->setEnabled(true);
    ui->CheckBtn->setText("CHECK");
}
void MainWindow::closeEvent(QCloseEvent* event)
{

    if (networkThread->isRunning()) {
        networkThread->quit();
        networkThread->wait();
    }

    event->accept();
}

MainWindow::~MainWindow()
{
    delete ui;
}
