#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:10082304:696cf2787da0b7c4d5cfcba603295e4a76dbb99b; then
  applypatch EMMC:/dev/block/mmcblk0p9:9533440:4eb6bb88e8b80c91d409041575a2eefb10c11334 EMMC:/dev/block/mmcblk0p10 696cf2787da0b7c4d5cfcba603295e4a76dbb99b 10082304 4eb6bb88e8b80c91d409041575a2eefb10c11334:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
