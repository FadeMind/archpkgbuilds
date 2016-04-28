
<p align="center">
  <img src="http://i.imgur.com/BbD1jGBl.jpg" alt="tux"/>
</p>

##<p align="center">Linux Kernel 4.5 with CK BFS CPU Scheduler 0.469 and custom patchset<br/></p>

**Included Patches**

 - [CK BFS CPU Scheduler 0.469](http://users.tpg.com.au/ckolivas/kernel/)
 - [Graysky's GCC patch](https://github.com/graysky2/kernel_gcc_patch) **Customize `config.x86_64` against Your CPU family flag BEFORE build a package.**
 - [Budget Fair Queueing (BFQ) Storage-I/O Scheduler 4.5.0-v7r11](http://algo.ing.unimo.it/people/paolo/disk_sched/sources.php) is enabled as default I/O sheduler.
 - Less debug warning/error messages in `dmesg`.
 - Upstream Arch Linux and Manjaro patches.
 - Backported [AUFS4](http://aufs.sourceforge.net/) support. Patches are taken form [Manjaro Core Repository](https://github.com/manjaro/packages-core).
 - Backported [EXFAT](https://github.com/dorimanx/exfat-nofuse) support. Patches are taken from [zen-kernel](https://github.com/zen-kernel/zen-kernel).
 
**Customs**

 - XZ compression for kernel and modules.
 - **1000 Hz interrupt frequency instead of 300Hz.** [See comments](http://ck-hack.blogspot.com/2013/09/bfs-0441-311-ck1.html?showComment=1378756529345#c5266548105449573343).

**License**

[GPL2](https://www.gnu.org/licenses/gpl-2.0.txt)
