
    
    if [ "${_kernelname}" != "" ]; then
        sed -i "s|CONFIG_LOCALVERSION=.*|CONFIG_LOCALVERSION=\"${_kernelname}\"|g" ./.config
        sed -i "s|CONFIG_LOCALVERSION_AUTO=.*|CONFIG_LOCALVERSION_AUTO=n|" ./.config
    fi
    
    ### Setting BFQ as default I/O scheduler
    # http://algo.ing.unimo.it/people/paolo/disk_sched/sources.php
    msg "Setting BFQ as default I/O scheduler"
    sed -i -e '/CONFIG_DEFAULT_IOSCHED/ s,cfq,bfq,' \
        -i -e s'/CONFIG_DEFAULT_CFQ=y/# CONFIG_DEFAULT_CFQ is not set\nCONFIG_DEFAULT_BFQ=y/' \
        -i -e s'/CONFIG_CFQ_GROUP_IOSCHED=y/CONFIG_CFQ_GROUP_IOSCHED=y\nCONFIG_IOSCHED_BFQ=y\nCONFIG_BFQ_GROUP_IOSCHED=y/' ./.config
        
    ### Disabling NUMA since >99% of users have mono-socket systems.
    # For more, see: https://bugs.archlinux.org/task/31187
    msg "Disabling NUMA from kernel config..."
    sed -i -e 's/CONFIG_NUMA=y/# CONFIG_NUMA is not set/' \
        -i -e '/CONFIG_AMD_NUMA=y/d' \
        -i -e '/CONFIG_X86_64_ACPI_NUMA=y/d' \
        -i -e '/CONFIG_NODES_SPAN_OTHER_NODES=y/d' \
        -i -e '/# CONFIG_NUMA_EMU is not set/d' \
        -i -e '/CONFIG_NODES_SHIFT=6/d' \
        -i -e '/CONFIG_NEED_MULTIPLE_NODES=y/d' \
        -i -e '/# CONFIG_MOVABLE_NODE is not set/d' \
        -i -e '/CONFIG_USE_PERCPU_NUMA_NODE_ID=y/d' \
        -i -e '/CONFIG_ACPI_NUMA=y/d' ./.config
    
    ### Enabling asus_wireless module for ASUS ACPI ATK4001 ATK4002 devices
    msg "Enabling asus_wireless module for ASUS ACPI ATK4001 ATK4002 devices"
    sed -i -e s'/CONFIG_EEEPC_WMI=m/CONFIG_EEEPC_WMI=m\nCONFIG_ASUS_WIRELESS=m/' ./.config
    
    ### Disabling CONFIG_X86_PTDUMP_CORE and CONFIG_DEBUG_WX
    # https://bugs.archlinux.org/task/47849
    msg "Disabling CONFIG_X86_PTDUMP_CORE and CONFIG_DEBUG_WX"
    sed -i -e s'/CONFIG_X86_PTDUMP_CORE=y/# CONFIG_X86_PTDUMP_CORE is not set/' \
        -i -e s'/CONFIG_DEBUG_WX=y/# CONFIG_DEBUG_WX is not set/' ./.config
        
    ### Enabling XZ kernel compression
    # XZ uses the LZMA2 algorithm and instruction set specific BCJ filters 
    # which can improve compression ratio of executable code. 
    # The size of the kernel is about 30% smaller with XZ in comparison to gzip. 
    # On architectures for which there is a BCJ filter (i386, x86_64, ARM, IA-64, PowerPC, and SPARC), 
    # XZ will create a few percent smaller kernel than plain LZMA. The speed is about the same as with LZMA: 
    # The decompression speed of XZ is better than that of bzip2 but worse than gzip and LZO. Compression is slow.
    msg "Enabling XZ kernel compression"
    sed -i -e s'/CONFIG_KERNEL_GZIP=y/# CONFIG_KERNEL_GZIP is not set/' \
        -i -e s'/# CONFIG_KERNEL_XZ is not set/CONFIG_KERNEL_XZ=y /' ./.config

    msg "Enabling XZ modules compression"
    sed -i -e s'/CONFIG_MODULE_COMPRESS_GZIP=y/# CONFIG_MODULE_COMPRESS_GZIP is not set/' \
        -i -e s'/# CONFIG_MODULE_COMPRESS_XZ/CONFIG_MODULE_COMPRESS_XZ=y /' ./.config

    # set extraversion to pkgrel
    sed -ri "s|^(EXTRAVERSION =).*|\1 -${pkgrel}|" Makefile
    
    # don't run depmod on 'make install'. We'll do this ourselves in packaging
    sed -i '2iexit 0' scripts/depmod.sh
    
    # get kernel version
    msg "Running make prepare for you to enable patched options of your choosing"
    make prepare
