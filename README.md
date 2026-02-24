# TWRP Device Tree for Bluefox GT8 Pro


## Device Specifications

| Feature               | Details                                                     |
| --------------------- | ----------------------------------------------------------- |
| **Manufacturer**      | Bluefox                                                     |
| **Model**             | GT8 Pro                                                     |
| **Chipset**           | MediaTek Helio P22 (MT6762)                                 |
| **CPU**               | Octa-core 2.0 GHz Cortex-A53                                |
| **GPU**               | PowerVR GE8320                                              |
| **Memory (RAM)**      | 6 GB                                                        |
| **Storage (ROM)**     | 128 GB (Expandable up to 2 TB via Hybrid Slot)      |
| **Display**           | 4.3" LCD, 540 x 1200 pixels (~309 PPI), 60 Hz               |
| **Battery**           | 2750 mAh (Non-removable)                                    |
| **Rear Camera**       | 13 MP + Ultra Wide Dual Camera                              |
| **Front Camera**      | 5 MP                                                        |
| **OS (Stock)**        | Android 12                                                  |
| **Connectivity**      | 4G VoLTE, Wi-Fi, Bluetooth, USB-C, 3.5mm Jack, IR Blaster   |

## Current Status
- **TWRP Version:** 3.7.1
- **Status:** Work in Progress / Beta
- **Maintainer:** Edward Wu ([@bluehomewu](https://github.com/bluehomewu))

## Build Instructions

To initialize your local repository and build TWRP, use the following commands:

### 1. Initialize TWRP Environment
We recommend using the `minimal-manifest-twrp` for Android 12.1 (ensure your branch matches your device's Android version).

```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp -b twrp-12.1
repo sync
```

### 2. Clone the Device Tree
Clone this repository into `device/alps/a62_S22_gt8_pro_cn`:

```bash
git clone https://github.com/Edward-Projects/twrp_device_apls_a62_S22_gt8_pro_cn.git device/alps/a62_S22_gt8_pro_cn
```

### 3. Start the Build
```bash
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_a62_S22_gt8_pro_cn-eng
mka recoveryimage -j16
```

## Kernel and Sources
- **Kernel:** Prebuilt (extracted from stock boot/recovery)
- **Architecture:** ARM64 (v8-a)

## Special Notes
- This device only have 32MB of recovery partition, so we can't include Decryption and FBE support, which means that TWRP will not be able to decrypt data partition on encrypted devices.  
Please make sure to backup your data before flashing TWRP.

## Support features
- MTP
- ADB
- Battery Charging
- Vibration
- Display
- Touchscreen

## Unsupported features
- Decryption
- FBE
- USB OTG (I don't have time to test it, but I don't think it works, need check fstab.)
- Muilt-Language (Because of the small recovery partition, we can't include more languages, so only English is included.)

## Credits
- [TeamWin](https://github.com/TeamWin)
- [Minimal TWRP Manifest](https://github.com/minimal-manifest-twrp)
- All the contributors who help in MediaTek development.
