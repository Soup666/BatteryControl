include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Practice21120
Practice21120_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

Practice21120_LIBRARIES = colorpicker

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += practice21120
include $(THEOS_MAKE_PATH)/aggregate.mk
