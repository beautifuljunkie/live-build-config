alias sshddwrt="ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -p 8083 m1n1.l1lfr4nk13.xyz"
alias printon="ifup wlan1=braun; service cups start"
alias printoff="service cups stop; ifdown wlan1"
alias niv="nvidia-setrtings -a '[gpu:0]/GPUPowerMizerMode=2'; nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=500' ; nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=100'"
#alias kernelgit="git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git"
alias winboot="grub-reboot 2 && reboot"
alias rebooot="rtcwake -m off -s 20"
alias sshmin="ssh -p 1002 m1n1.l1lfr4nk13.xyz"
#alias make="colormake"
alias apti-fast="yes n | aptitude -s install | grep {a} | sed --posix 's/{a}/\n/g' | xargs apt-fast install -y"
alias srcrclone="source /usr/bin/set-rclone-password"
#alias snapkali="cd /etc/apt && 'apt-fast clean && 'apt-fast autoclean' && mv sources.list sources.list~ && mv sources.list.d/snapback.list~ sources.list.d/snapback.list && 'apt-fast update'"
#alias kaliback="cd /etc/apt && 'apt-fast clean' && 'apt-fast autoclean' && mv sources.list~ sources.list && mv sources.list.d/snapback.list sources.list.d/snapback.list~ && 'apt-fast update'"

alias apt-update='mkalias_apt-update'
function mkalias_apt-update(){ apt-fast update $@; }

trap 'source /root/.bash_aliases' USR1

alias apt-upgrade='mkalias_apt-upgrade'
function mkalias_apt-upgrade(){ apt-fast dist-upgrade $@; }



alias reset_build='mkalias_reset_build'
function mkalias_reset_build(){ make distclean -d && cp ../.config . && make oldconfig -d $@; }


alias vlcconf='mkalias_vlcconf'
function mkalias_vlcconf(){ ./configure --build=x86_64-linux-gnu --prefix=/usr --includedir=/include --mandir=/share/man --infodir=/share/info --sysconfdir=/etc --localstatedir=/var --disable-silent-rules --libdir=/lib/x86_64-linux-gnu --libexecdir=/lib/x86_64-linux-gnu --runstatedir=/run --disable-maintainer-mode --disable-dependency-tracking --config-cache --disable-update-check --enable-fast-install --docdir=/usr/share/doc/vlc  --enable-a52  --enable-aom --enable-aribsub --enable-avahi --enable-bluray --enable-caca --enable-chromaprint --enable-chromecast --enable-dbus --enable-dca --enable-dvbpsi --enable-dvdnav --enable-faad --enable-flac --enable-fluidsynth --enable-freetype --enable-fribidi --enable-gles2 --enable-gnutls --enable-harfbuzz --enable-jack --enable-kate --enable-libass --enable-libmpeg2 --enable-libxml2 --enable-lirc --enable-live555 --enable-mad --enable-matroska --enable-mod --enable-mpc --enable-mpg123 --enable-mtp --enable-ncurses --enable-notify --enable-ogg --enable-opus --enable-pulse --enable-qt  --enable-samplerate --enable-sdl-image --enable-sftp --enable-shine --enable-shout --enable-skins2 --enable-sndio --enable-soxr --enable-spatialaudio --enable-speex --enable-svg --enable-svgdec --enable-taglib --enable-theora --enable-twolame --enable-upnp --enable-vdpau --enable-vnc --enable-vorbis --enable-x264 --enable-x265 --enable-zvbi --enable-run-as-root --with-kde-solid=/usr/share/solid/actions/ --disable-d3d11va --disable-decklink --disable-directx --disable-dsm --disable-dxva2 --disable-fdkaac --disable-fluidlite --disable-freerdp --disable-goom --disable-gst-decode --disable-libtar --disable-macosx --disable-macosx-avfoundation --disable-mfx --disable-opencv --disable-projectm --disable-schroedinger --disable-sparkle --disable-srt --disable-telx --disable-vpx --disable-vsxu --disable-wasapi --enable-alsa --enable-dc1394 --enable-dv1394 --enable-libplacebo --enable-linsys --enable-nfs --enable-omxil --enable-udev --enable-v4l2 --enable-wayland --enable-libva --enable-vcd --enable-smbclient --disable-oss --enable-crystalhd --enable-mmx --enable-sse --disable-neon --disable-altivec $@; }

alias vlcconf2='mkalias_vlcconf2'
function mkalias_vlcconf2(){ ./configure  '--build=x86_64-linux-gnu' '--prefix=/usr' '--includedir=/include' '--mandir=/share/man' '--infodir=/share/info' '--sysconfdir=/etc' '--localstatedir=/var' '--disable-silent-rules' '--libdir=/lib/x86_64-linux-gnu' '--libexecdir=/lib/x86_64-linux-gnu' '--runstatedir=/run' '--disable-maintainer-mode' '--disable-dependency-tracking' '--config-cache' '--disable-update-check' '--enable-fast-install' '--docdir=/usr/share/doc/vlc' '--with-binary-version=3.0.4-3' '--enable-a52' '--enable-aa' '--enable-aom' '--enable-aribsub' '--enable-avahi' '--enable-bluray' '--enable-caca' '--enable-chromaprint' '--enable-chromecast' '--enable-dbus' '--enable-dca' '--enable-dvbpsi' '--enable-dvdnav' '--enable-faad' '--enable-flac' '--enable-fluidsynth' '--enable-freetype' '--enable-fribidi' '--enable-gles2' '--enable-gnutls' '--enable-harfbuzz' '--enable-jack' '--enable-kate' '--enable-libass' '--enable-libmpeg2' '--enable-libxml2' '--enable-lirc' '--enable-live555' '--enable-mad' '--enable-matroska' '--enable-mod' '--enable-mpc' '--enable-mpg123' '--enable-mtp' '--enable-ncurses' '--enable-notify' '--enable-ogg' '--enable-opus' '--enable-pulse' '--enable-qt' '--enable-realrtsp' '--enable-samplerate' '--enable-sdl-image' '--enable-sftp' '--enable-shine' '--enable-shout' '--enable-skins2' '--enable-sndio' '--enable-soxr' '--enable-spatialaudio' '--enable-speex' '--enable-svg' '--enable-svgdec' '--enable-taglib' '--enable-theora' '--enable-twolame' '--enable-upnp' '--enable-vdpau' '--enable-vnc' '--enable-vorbis' '--enable-x264' '--enable-x265' '--enable-zvbi' '--enable-run-as-root' '--with-kde-solid=/usr/share/solid/actions/' '--disable-d3d11va' '--disable-decklink' '--disable-directx' '--disable-dsm' '--disable-dxva2' '--disable-fdkaac' '--disable-fluidlite' '--disable-freerdp' '--disable-goom' '--disable-gst-decode' '--disable-libtar' '--disable-macosx' '--disable-macosx-avfoundation' '--disable-macosx-qtkit' '--disable-mfx' '--disable-opencv' '--disable-projectm' '--disable-schroedinger' '--disable-sparkle' '--disable-srt' '--disable-telx' '--disable-vpx' '--disable-vsxu' '--disable-wasapi' '--enable-alsa' '--enable-dc1394' '--enable-dv1394' '--enable-libplacebo' '--enable-linsys' '--enable-nfs' '--enable-omxil' '--enable-udev' '--enable-v4l2' '--enable-wayland' '--enable-libva' '--enable-vcd' '--enable-smbclient' '--disable-oss' '--enable-crystalhd' '--enable-mmx' '--enable-sse' '--disable-neon' '--disable-altivec' 'build_alias=x86_64-linux-gnu' 'CFLAGS=-g -O2 -fdebug-prefix-map=/root/build/pkg/vlc=. -fstack-protector-strong -Wformat -Werror=format-security ' 'LDFLAGS=-Wl,-z,relro -Wl,-z,now -Wl,--as-needed' 'CPPFLAGS=-Wdate-time -D_FORTIFY_SOURCE=2' 'CXXFLAGS=-g -O2 -fdebug-prefix-map=/root/build/pkg/vlc=. -fstack-protector-strong -Wformat -Werror=format-security ' 'OBJCFLAGS=-g -O2 -fdebug-prefix-map=/root/build/pkg/vlc=. -fstack-protector-strong -Wformat -Werror=format-security' $@; }

alias apt-clean='mkalias_apt-clean'
function mkalias_apt-clean(){ apt-fast clean $@; }

alias apt-ac='mkalias_apt-ac'
function mkalias_apt-ac(){ apt-fast autoclean $@; }
