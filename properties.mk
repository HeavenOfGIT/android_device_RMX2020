#
# Copyright (C) 2020 The Lineage OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
    ro.camera.sound.forced=0 \
    ro.audio.silent=0

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.lineageos.snap,org.codeaurora.snapcam

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.opengles.version=196610 \
    ro.zygote.preload.enable=0 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    qemu.hw.mainkeys=0 \
    sys.ipo.disable=1

# IMS
PRODUCT_PRODUCT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    telephony.lteOnCdmaDevice=1

# OMX
PRODUCT_PRODUCT_PROPERTIES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    debug.stagefright.ccodec=0

# Perf
PRODUCT_PRODUCT_PROPERTIES += \
    ro.kernel.zio=38,108,105,16 \
    ro.mtk_perf_simple_start_win=1 \
    ro.mtk_perf_fast_start_win=1 \
    ro.mtk_perf_response_time=1

# RIL
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.rild.libpath=mtk-ril.so \
    vendor.rild.libargs=-d /dev/ttyC0

# USB
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.usb.mtp.whql.enable=0 \
    sys.ipo.pwrdncap=2 \
    ro.sys.usb.storage.type=mtp \
    ro.sys.usb.bicr=no \
    ro.sys.usb.charging.only=yes

# WLAN
PRODUCT_PRODUCT_PROPERTIES += \
    wifi.interface=wlan0 \
    ro.mediatek.wlan.wsc=1 \
    ro.mediatek.wlan.p2p=1 \
    mediatek.wlan.ctia=0 \
    wifi.tethering.interface=ap0 \
    wifi.direct.interface=p2p0
