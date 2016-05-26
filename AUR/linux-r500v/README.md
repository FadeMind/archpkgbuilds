
<p align="center">
  <img src="http://i.imgur.com/BbD1jGBl.jpg" alt="tux"/>
</p>

##<p align="center">Linux Kernel 4.6 with custom patchset<br/></p>

**Included Patches**

 - ZEN Patch from [zen-kernel](https://github.com/zen-kernel/zen-kernel).
 - [Graysky's GCC patch](https://github.com/graysky2/kernel_gcc_patch) **Customize `config.x86_64` against Your CPU family flag BEFORE build a package.**
 - [Budget Fair Queueing (BFQ) Storage-I/O Scheduler 4.5.0-v7r11](http://algo.ing.unimo.it/people/paolo/disk_sched/sources.php) is default I/O sheduler.
 - [AUFS4](http://aufs.sourceforge.net/) support. 
 - [EXFAT](https://github.com/dorimanx/exfat-nofuse) support.
 - [Reiser4](https://sourceforge.net/projects/reiser4/) support. [ArchWiki](https://wiki.archlinux.org/index.php/Reiser4) [reiser4.wiki.kernel.org](https://reiser4.wiki.kernel.org/index.php/Main_Page)
 - Upstream Arch Linux, Gentoo and Manjaro patches.
 
**Customs**

 - [NUMA](https://en.wikipedia.org/wiki/Non-uniform_memory_access) is disabled since >99% of users have mono-socket systems. See: [FS#31187](https://bugs.archlinux.org/task/31187).

 - `CONFIG_KERNEL_XZ` `CONFIG_MODULE_COMPRESS_XZ`
 
| XZ uses the LZMA2 algorithm and instruction set specific BCJ filters which can improve compression ratio of executable code. The size of the kernel is about 30% smaller with XZ in comparison to gzip. On architectures for which there is a BCJ filter (i386, x86_64, ARM, IA-64, PowerPC, and SPARC), XZ will create a few percent smaller kernel than plain LZMA. The speed is about the same as with LZMA: The decompression speed of XZ is better than that of bzip2 but worse than gzip and LZO. Compression is slow. |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
 
 - `CONFIG_HZ_1000`

|1000 Hz is the preferred choice for desktop systems requiring fast interactive responses to events.|
|---------------------------------------------------------------------------------------------------|

 - `CONFIG_CC_OPTIMIZE_HARDER`

|This option will pass "-O3" to your compiler resulting in a larger and faster kernel. The more complex optimizations also increase compilation time and may affect stability.|
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|

**License**

[GPL2](https://www.gnu.org/licenses/gpl-2.0.txt)
