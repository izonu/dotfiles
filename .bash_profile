#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR=/usr/bin/nvim
# export BROWSER=firefox
# export TERM=foot

#testing
#export DXVK_FILTER_DEVICE_NAME="Intel"
#export VKD3D_FILTER_DEVICE_NAME="Intel"
#export __GLX_VENDOR_LIBRARY_NAME="mesa"
#export __EGL_VENDOR_LIBRARY_FILENAMES="/usr/share/glvnd/egl_vendor.d/50_mesa.json"
#export __NV_PRIME_RENDER_OFFLOAD="0"
#export __VK_LAYER_NV_optimus="non_NVIDIA_only"
#export WLR_RENDER_DRM_DEVICE="/dev/dri/renderD128"

export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway

export QT_QPA_PLATFORM=wayland

export QT_QPA_PLATFORMTHEME=gnome
export QT_STYLE_OVERRIDE=gnome

export MOZ_ENABLE_WAYLAND=1             # only start firefox in wayland mode and no other GTK apps
export MOZ_DBUS_REMOTE=1                # fixes firefox is already running, but is not responding

export ELECTRON_OZONE_PLATFORM_HINT=auto # ???

export _JAVA_AWT_WM_NONREPARENTING=1
export NO_AT_BRIDGE=1

export SDL_VIDEODRIVER=wayland,x11

export PATH=$PATH:/home/p32/.local/bin

export PATH=/home/p32/.local/zig/zigdownload.py/zig:$PATH # zig

export PATH=$PATH:/home/p32/.platformio/penv/bin # careful not to destroy the system python install

if [ "$(tty)" = "/dev/tty1" ]; then
#  exec sway --unsupported-gpu
exec sway --unsupported-gpu
# __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json exec sway --unsupported-gpu
# exec sway --unsupported-gpu -Dnoscanout
fi

