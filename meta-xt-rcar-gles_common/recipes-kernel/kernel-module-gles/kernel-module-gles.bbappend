EVAL_FLAG = "${@bb.utils.contains('XT_USE_DDK1_11', '1', 'EXCLUDE_FENCE_SYNC_SUPPORT:=1', '', d)}"

FILESEXTRAPATHS:prepend := "${TOPDIR}/../..:"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI = "file://GSX_KM_V4H_DDK23.3_v2.tar.bz2"
SRC_URI:r8a779g0 = "file://GSX_KM_V4H_DDK23.3_v2.tar.bz2"

EXTRA_OEMAKE:append = " PVRSRV_VZ_NUM_OSID=8"

SRC_URI:append = "\
    file://0001-Add-initial-Xen-based-infrastructure.patch \
    file://0002-Add-para-virtualized-GSX-protocol.patch \
    file://0003-Implement-front-back-communication-channel.patch \
    file://0004-Implement-Guest-FW-map-unmap-and-VM-online-offline.patch \
    file://0005-Misc-fixes-regarding-pvz.patch \
    file://0006-Add-support-to-balloon-in-out-pages.patch \
    file://0007-Add-support-to-share-a-buffer-via-grefs.patch \
    file://0008-Introduce-PVRSRV_PVZIF_GNTTAB-build-option.patch \
    file://0009-Modify-pvz-protocol-to-support-Grant-Tables-based-me.patch \
    file://0010-Modify-pvz-backend-to-support-Grant-Tables-based-mec.patch \
    file://0011-Modify-pvz-frontend-to-support-Grant-Tables-based-me.patch \
    file://0012-Small-fixes-cosmetic-changes-to-Xen-pvz-implementati.patch \
    file://0013-Enable-Grant-Tables-based-mechanism-for-mapping-Gues.patch \
    file://0014-Rewrite-balloon-implementation-to-use-Xen-dedicated-.patch \
    file://0015-xen_front-Track-phys-heap-mapping.patch \
    file://0016-xen_back-Report-that-Guest-is-online-before-switchin.patch \
    file://0018-xen_back-Use-lateeoi-irq-binding.patch \
    file://0019-xen_back-Do-not-abuse-of_dma_configure.patch \
    file://0020-xen_back-Guest-heap-mapping-optimization.patch \
    file://0021-guest-rogue-Create-and-register-DMA-PhysHeapConfig.patch \
    file://0001-guest-volcanic-Create-and-register-DMA-PhysHeapConfig.patch \
    file://0001-Fixes-for-volcanic-architecture.patch \
    file://0001-virt-port-rogue-Make-sure-SysDevInit-doesn-t-touch-H.patch \
    file://0002-virt-port-volcanic-Make-sure-SysDevInit-doesn-t-touc.patch \
"
