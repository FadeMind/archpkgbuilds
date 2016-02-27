
<p align="center">
  <img src="http://llvm.org/img/LLVM-Logo-Derivative-1.png" alt="llvmlogo"/> <img src="https://upload.wikimedia.org/wikipedia/commons/5/5e/GNU_Compiler_Collection_logo.png" alt="gcclogo"/> <img src="https://upload.wikimedia.org/wikipedia/en/1/1f/Khronos_Group_logo.png" alt="kglogo"/> 
</p>

### CVS version of:

* clang
* gcc-multilib
* libdrm
* llvm
* mesa
* xf86-video-intel

### USE at your own risk ###
<hr/>

### REVERT HOW TO ###

**LLVM, CLANG, MESA, LIBDRM**

    export LANG=C && yes|yaourt -Rdd {llvm-{,libs-,ocaml-},clang-{analyzer-,compiler-rt-,tools-extra-}}svn \
    {mesa-{,libgl-,vdpau-},libva-mesa-driver-,opencl-mesa-}git \
    lib32-{llvm-{,libs-}svn,clang-svn,{mesa-{,libgl-,vdpau-},libva-mesa-driver-}git} {lib32-,}libdrm-git && \
    yaourt -Sy --noconfirm mesa{,-libgl} clang libdrm lib32-{mesa{,-libgl},libdrm,clang,llvm,llvm,llvm-libs}

**GCC**

    export LANG=C && yes|yaourt -Rdd {gcc{,-libs,-objc}-multilib,lib32-gcc-libs}-git && \
    yaourt -Sy --noconfirm gcc{,-libs,-objc}-multilib lib32-gcc-libs

**xf86-video-intel**

    export LANG=C && yes|yaourt -Sy --noconfirm xf86-video-intel 
<hr/>
