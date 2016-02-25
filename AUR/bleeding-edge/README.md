
<p align="center">
  <img src="http://llvm.org/img/LLVM-Logo-Derivative-1.png" alt="llvmlogo"/> <img src="https://upload.wikimedia.org/wikipedia/commons/5/5e/GNU_Compiler_Collection_logo.png" alt="gcclogo"/> <img src="https://upload.wikimedia.org/wikipedia/en/1/1f/Khronos_Group_logo.png" alt="kglogo"/> 
</p>

### GIT/SVN version of:

* clang
* gcc-multilib
* llvm
* mesa
* xf86-video-intel

### USE at your own risk ###
<hr/>
### REVERT HOW TO ###

**LLVM, CLANG, MESA**

    export LANG=C && yes|yaourt -Rdd lib32-llvm-libs-svn lib32-llvm-svn llvm-libs-svn llvm-ocaml-svn llvm-svn \
    clang-analyzer-svn clang-compiler-rt-svn clang-svn clang-tools-extra-svn lib32-clang-svn \
    lib32-libva-mesa-driver-git lib32-mesa-git lib32-mesa-libgl-git lib32-mesa-vdpau-git \
    libva-mesa-driver-git mesa-git mesa-libgl-git mesa-vdpau-git opencl-mesa-git && \
    yaourt -Sy --noconfirm mesa mesa-libgl lib32-mesa lib32-mesa-libgl clang lib32-clang llvm lib32-llvm lib32-llvm-libs 

**GCC**

    export LANG=C && yes|yaourt -Rdd gcc-libs-multilib-git gcc-multilib-git gcc-objc-multilib-git lib32-gcc-libs-git && \
    yaourt -Sy --noconfirm gcc-multilib gcc-libs-multilib lib32-gcc-libs

**xf86-video-intel**

    yaourt -Sy --noconfirm xf86-video-intel 
<hr/>
