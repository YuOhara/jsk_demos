#!/usr/bin/env bash

source `dirname ${0}`/fc_tmux_init.sh

tmux-newwindow executive "sleep 1; roslaunch drc_task_common fc_executive.launch fc:=false"
tmux-newwindow lookat "sleep 1; roslaunch drc_task_common lookat.launch"
tmux-newwindow locomotion "sleep 5; roslaunch drc_task_common locomotion.launch INPUT_POINT_CLOUD:=/multisense/organized_image_points2_color"
tmux send-keys -t fc:tmp "exit" C-m
tmux a -t fc
