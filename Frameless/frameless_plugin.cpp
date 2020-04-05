#include "frameless_plugin.h"
#include <qqml.h>
#include "framelesswindow.h"
void FramelessPlugin::registerTypes(const char *uri)
{
    // @uri Frameless
    Q_INIT_RESOURCE(Frameless);
    qmlRegisterType<CFramelessWindow>(uri,1,0,"CFramelessWindow");
}
