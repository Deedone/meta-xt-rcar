EVAL_FLAG = "${@bb.utils.contains('XT_USE_DDK1_11', '1', 'EXCLUDE_FENCE_SYNC_SUPPORT:=1', '', d)}"

FILESEXTRAPATHS:prepend := "${TOPDIR}/../..:"
SRC_URI = "file://GSX_KM_V4H_DDK23.3_v2.tar.bz2"
SRC_URI:r8a779g0 = "file://GSX_KM_V4H_DDK23.3_v2.tar.bz2"
