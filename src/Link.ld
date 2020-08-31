/* Link.ld -- Linker script for the kernel - ensure everything goes in the */
/*            Correct place.  */
/*            Original file taken from Bran's Kernel Development */
/*            tutorials: http://www.osdever.net/bkerndev/index.php. */

/* kernel image setup */
/* start location of binary */
ENTRY(start)
SECTIONS
{
    .text 0x100000 :
    {
        code = .; _code - .; __code - .;
        *(.text)
        . = ALIGN(4095)
    }

    .data :
    {
        data = data = .; _data = .; __data = .;
        *(.data)
        /* Linux GCC read-only initialized data (constants) */
        *(.rodata)
        . = ALIGN(4096);
    }
    
    /* uninitialized static data */
    .bss :
    {
        bss = .; _bss = .; __bss = .;
        *(.bss)
        . = ALIGN(4096);
    }
  
    end = .; _end = .; __end = .;
    } 
