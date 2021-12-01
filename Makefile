BHTwitterPlus_INJECT_DYLIBS = Tweaks/BHTwitter.dylib

ARCHS = arm64 arm64e
MODULES = jailed
CODESIGN_IPA = 0
FINALPACKAGE = 1

TWEAK_NAME = BHTwitterPlus
DISPLAY_NAME = Twitter
BUNDLE_ID = com.atebits.Tweetie2

BHTwitterPlus_FILES = BHTwitterPlus.xm
BHTwitterPlus_IPA = /path/to/your/decrypted/Twitter/IPA
### Important: Edit the path to your decrypted Twitter IPA!

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
