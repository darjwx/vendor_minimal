$(call inherit-product, device/sony/huashan/full_huashan.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/config/nfc_enhanced.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)


# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy huashan specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 720
  

# Setup device specific product configuration.
PRODUCT_NAME := minimal_huashan
PRODUCT_BRAND := sony
PRODUCT_DEVICE := huashan
PRODUCT_MODEL := Xperia SP
PRODUCT_MANUFACTURER := Sony

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=huashan \
    BUILD_FINGERPRINT=Sony/C5303/C5303:4.3/12.1.A.1.207/Nvt_nw:user/release-keys \
    PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5303 \
    PRIVATE_BUILD_DESC="C5303-user 4.3 JB-MR2-VISKAN-140318-1014 227 test-keys"
    

