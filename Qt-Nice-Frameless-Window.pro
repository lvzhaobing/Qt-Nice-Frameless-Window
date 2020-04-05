TEMPLATE = subdirs
CONFIG += ordered
SUBDIRS += Frameless \
    exampleforwindows \
#    examplesimplest \
#    exampleformac

exampleforwindows.depends = Frameless
examplesimplest.depends = Frameless
exampleformac.depends = Frameless
