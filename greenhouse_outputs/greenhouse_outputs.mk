GREENHOUSE_OUTPUTS_VERSION = 1.0
GREENHOUSE_OUTPUTS_SITE = $(TOPDIR)/package/greenhouse_outputs
GREENHOUSE_OUTPUTS_SITE_METHOD = local
GREENHOUSE_OUTPUTS_LICENSE = GPLV3+

GREENHOUSE_OUTPUTS_DEPENDENCIES = linux

define GREENHOUSE_OUTPUTS_BUILD_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D)
endef

define GREENHOUSE_OUTPUTS_INSTALL_TARGET_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D) modules_install
endef

$(eval $(generic-package))
