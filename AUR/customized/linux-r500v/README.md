
<p align="center">
  <img src="http://i.imgur.com/BbD1jGBl.jpg" alt="tux"/>
</p>

##<p align="center">Linux Kernel 4.5RC with custom patchset<br/></p>

**Included Patches**

 - [Graysky's GCC patch](https://github.com/graysky2/kernel_gcc_patch)
 - [Budget Fair Queueing (BFQ) Storage-I/O Scheduler 4.4.0-v7r11](http://algo.ing.unimo.it/people/paolo/disk_sched/sources.php) is enabled in default.
 - Disabled annoying messages during boot and hide them in `dmesg`.
 - Upstream Arch Linux patches.

**Customs**

 - BFQ Scheduler is set as default I/O Scheduler.
 - NUMA is disabled since >99% of users have mono-socket systems. See: [FS#31187](https://bugs.archlinux.org/task/31187).
 - XZ compression for kernel and modules.

PKGBUILD code is based on `linux-mainline` and `linux-ck`.

**License**

[GPL2](https://www.gnu.org/licenses/gpl-2.0.txt)