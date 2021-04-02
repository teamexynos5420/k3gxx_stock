#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:10160128:5a17406afb8d5614a77fe28ce74b053ee791ce96; then
  applypatch EMMC:/dev/block/mmcblk0p9:9605120:e34f99037735cdde230e4f627ae5ef6ae15802ba EMMC:/dev/block/mmcblk0p10 5a17406afb8d5614a77fe28ce74b053ee791ce96 10160128 e34f99037735cdde230e4f627ae5ef6ae15802ba:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
