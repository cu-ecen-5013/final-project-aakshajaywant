
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
#old version working:AESD_ASSIGNMENTS_VERSION = a6d535254f6568a8cb515b56399ab9e754bda70a

AESD_ASSIGNMENTS_VERSION = be99740cc29b490859307e707a2fa9a07809dcab
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-atharvdesai1996.git
AESD_ASSIGNMENTS_SITE_METHOD = git


define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef


#TODO: Add required executables or scripts below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/test $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/echopc $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/writetotiva $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/writetobb $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesdsocket $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/socketclient $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesdsocket_uart $(TARGET_DIR)/bin

endef

$(eval $(generic-package))
