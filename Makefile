ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PokemonGoAnywhere
PokemonGoAnywhere_FILES = Tweak.xm
PokemonGoAnywhere_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
