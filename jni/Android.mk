LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := libxvidcore
#LOCAL_CFLAGS = -DFIXED_POINT -DEXPORT=”” -UHAVE_CONFIG_H -I$(LOCAL_PATH)/include
LOCAL_CFLAGS := -DARCH_IS_32BIT -DARCH_IS_GENERIC -I$(LOCAL_PATH)/src

LOCAL_SRC_FILES :=  \
../src/decoder.c \
../src/encoder.c \
../src/xvid.c \
../src/bitstream/bitstream.c \
../src/bitstream/cbp.c \
../src/bitstream/mbcoding.c \
../src/dct/fdct.c \
../src/dct/idct.c \
../src/dct/simple_idct.c \
../src/image/colorspace.c \
../src/image/image.c \
../src/image/interpolate8x8.c \
../src/image/font.c \
../src/image/postprocessing.c \
../src/image/qpel.c \
../src/image/reduced.c \
../src/motion/estimation_bvop.c \
../src/motion/estimation_common.c \
../src/motion/estimation_gmc.c \
../src/motion/estimation_pvop.c \
../src/motion/estimation_rd_based.c \
../src/motion/estimation_rd_based_bvop.c \
../src/motion/gmc.c \
../src/motion/motion_comp.c \
../src/motion/vop_type_decision.c \
../src/motion/sad.c \
../src/prediction/mbprediction.c \
../src/plugins/plugin_single.c \
../src/plugins/plugin_2pass1.c \
../src/plugins/plugin_2pass2.c \
../src/plugins/plugin_lumimasking.c \
../src/plugins/plugin_dump.c \
../src/plugins/plugin_psnr.c \
../src/plugins/plugin_ssim.c \
../src/quant/quant_h263.c \
../src/quant/quant_matrix.c \
../src/quant/quant_mpeg.c \
../src/utils/emms.c \
../src/utils/mbtransquant.c \
../src/utils/mem_align.c \
../src/utils/mem_transfer.c \
../src/utils/timer.c

include $(BUILD_STATIC_LIBRARY)