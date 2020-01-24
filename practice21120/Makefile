include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = practice21120
practice21120_FILES = pffRootListController.m
practice21120_INSTALL_PATH = /Library/PreferenceBundles
practice21120_FRAMEWORKS = UIKit
practice21120_PRIVATE_FRAMEWORKS = Preferences
practice21120_LIBRARIES = colorpicker

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/practice21120.plist$(ECHO_END)
