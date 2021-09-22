BHTwitterPlus_INJECT_DYLIBS = BHTwitter.dylib TwttrBlue.dylib TwitterAuto4K.dylib 


ARCHS = arm64 arm64e
MODULES = jailed
CODESIGN_IPA = 0
FINALPACKAGE = 1


TWEAK_NAME = BHTwitterPlus
DISPLAY_NAME = Twitter
BUNDLE_ID = com.atebits.Tweetie2


BHTwitterPlus_FILES = Tweak.xm
BHTwitterPlus_IPA = /path/to/your/decrypted/Twitter/IPA
###!!! Add path to your decrypted Twitter IPA to "BHTwitterPlus_IPA" = !!!


include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
