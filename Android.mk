ifeq ($(call is-vendor-board-platform,QCOM),true)

display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libexternal libqservice
ifneq ($(TARGET_PROVIDES_LIBLIGHTS),true)
display-hals += liblight
endif
include $(call all-named-subdir-makefiles,$(display-hals))
endif
