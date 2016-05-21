
<p align="center">
  <img src="http://llvm.org/img/LLVM-Logo-Derivative-1.png" alt="llvmlogo"/> <img src="https://upload.wikimedia.org/wikipedia/commons/5/5e/GNU_Compiler_Collection_logo.png" alt="gcclogo"/> <img src="http://i.imgur.com/EHhmbsZ.jpg" alt="kglogo"/> <img src="http://members.shaw.ca/golinux/0.0/logomed.128.png" alt="tux"/>
</p>

### CVS version of:

- [**gcc-multilib-trunk-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/gcc-multilib-trunk-git) <br/>
- [**lib32-libdrm-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/lib32-libdrm-git) <br/>
- [**lib32-llvm-svn**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/lib32-llvm-svn) <br/>
- [**lib32-mesa-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/lib32-mesa-git) <br/>
- [**libcpuid-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/libcpuid-git) <br/>
- [**libdrm-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/libdrm-git) <br/>
- [**linux-firmware-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/linux-firmware-git) <br/>
- [**llvm-svn**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/llvm-svn) <br/>
- [**mesa-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/mesa-git) <br/>
- [**xf86-video-intel-git**](https://github.com/FadeMind/archpkgbuilds/tree/master/AUR/bleeding-edge/xf86-video-intel-git) <br/>

<p align="center"><img src="http://i.imgur.com/SN9esDt.png" alt="w"/></p>
<hr/>

### REVERT HOW TO ###

**CLANG, LIBDRM, LLVM, MESA**

```
yaourt -Rdd $(pacman -Qqe|grep mesa|grep git) ;\
yaourt -Rdd $(pacman -Qqe|grep clang|grep svn) ;\
yaourt -Rdd $(pacman -Qqe|grep llvm|grep svn) ;\
yaourt -Rdd $(pacman -Qqe|grep libdrm|grep git)
```
```
yaourt -S --needed  mesa mesa-libgl llvm llvm-libs clang libdrm
yaourt -S --needed  lib32-mesa lib32-mesa-libgl lib32-clang lib32-llvm-libs libdrm
```

**GCC**

```
yaourt -Rdd $(pacman -Qqe|grep gcc|grep git)
```
```
yaourt -Sy --noconfirm gcc gcc-libs
yaourt -Sy --noconfirm gcc{,-libs,-objc}-multilib lib32-gcc-libs
```

**xf86-video-intel**

```
export LANG=C && yes|yaourt -Sy --noconfirm xf86-video-intel
```

**linux-firmware**

```
export LANG=C && yes|yaourt -Sy --noconfirm linux-firmware 
```
<hr/>

All trademarks are the property of their respective owners.
