#!/usr/bin/env bash
mim install mmcv-full
mim install mmdet
mim install mmseg
cd /workspace/pcdet-dev/thirdparty/OpenPCDet
python setup.py develop
cd /workspace/pcdet-dev/thirdparty/mmdetection3d
python setup.py develop
cd /workspace/pcdet-dev/thirdparty/mmdeploy
python setup.py develop