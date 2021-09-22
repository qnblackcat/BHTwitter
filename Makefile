BHTwitterPlus_INJECT_DYLIBS = BHTwitter.dylib TwttrBlue.dylib TwitterAuto4K.dylib 


ARCHS = arm64 arm64e
MODULES = jailed
CODESIGN_IPA = 0
FINALPACKAGE = 1


TWEAK_NAME = BHTwitterPlus
DISPLAY_NAME = Twitter
BUNDLE_ID = com.atebits.Tweetie2
PACKAGE_VERSION = 8.83.1


BHTwitterPlus_FILES = Tweak.xm
BHTwitterPlus_IPA = /Volumes/Data_Macintosh/IPAs/Twitter_8.83.1.ipa


include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
