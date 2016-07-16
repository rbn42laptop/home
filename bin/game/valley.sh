#!/bin/bash 

cd /opt/unigine-valley/bin

./valley_x64   \
    -project_name Valley   \
    -data_path ../   \
    -engine_config ~/bin/game/valley_1.0.cfg    \
    -system_script valley/unigine.cpp   \
    -sound_app openal   \
    -video_app opengl   \
    -video_multisample 3   \
    -video_fullscreen 0   \
    -extern_define ,RELEASE,LANGUAGE_EN,QUALITY_ULTRA   \
    -extern_plugin ,GPUMonitor   \
    -video_mode 6   \

    #-engine_config ../data/valley_1.0.cfg   \
    #-video_mode 5   \ 6是1980x1080
