# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/semc/mogami-common/BoardConfigCommon.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/semc/urushi/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := irii_urushi_defconfig
TARGET_KERNEL_SOURCE := kernel/semc/msm7x30_caf
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

TARGET_RECOVERY_INITRC := device/semc/urushi/recovery/init.rc

# Sensor
SOMC_CFG_SENSORS_ACCEL_BMA150_INPUT := yes
SOMC_CFG_SENSORS_COMPASS_AK8975 := yes
SOMC_CFG_SENSORS_PROXIMITY_APDS9700 := yes

# Assert
TARGET_OTA_ASSERT_DEVICE := ST18i,ST18a,urushi

# inherit from the proprietary version
-include vendor/semc/urushi/BoardConfigVendor.mk
