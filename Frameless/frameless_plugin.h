#ifndef FRAMELESS_PLUGIN_H
#define FRAMELESS_PLUGIN_H

#include <QQmlExtensionPlugin>

class FramelessPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)

public:
    void registerTypes(const char *uri) override;
};

#endif // FRAMELESS_PLUGIN_H
