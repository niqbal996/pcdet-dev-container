#!/usr/bin/env bash
cd /workspace/pcdet-dev/thirdparty/mmdeploy
python3 tools/deploy.py \
/workspace/pcdet-dev/thirdparty/mmdeploy/configs/mmdet3d/voxel-detection/voxel-detection_tensorrt_dynamic-kitti.py \
/workspace/pcdet-dev/thirdparty/mmdetection3d/configs/pointpillars/hv_pointpillars_secfpn_6x8_160e_kitti-3d-3class.py \
/workspace/hv_pointpillars_secfpn_6x8_160e_kitti-3d-3class_20220301_150306-37dc2420.pth \
/workspace/pcdet-dev/thirdparty/mmdetection3d/demo/data/kitti/kitti_000008.bin \
--work-dir /workspace/pcdet-dev/thirdparty/mmdeploy \
--show \
--device cuda:0