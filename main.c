
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "type.h"
#include "devman.h"
#include "platform.h"
#include "shell.h"

// Generic includes.
#include "term.h"
#include "platform_conf.h"

// Validate configuration options
#include "validate.h"
#include "mmcfs.h"
#include <DAVE.h>

// Define here your autorun/boot files,
// in the order you want Hempl to search for them
char *boot_order[] = {
#if defined BUILD_MMCFS
  "/mmc/jaunty.rel.v2",
#endif // #if defined BUILD_MMCFS
};

extern char etext[];
extern int uarm_main(int argc, char** argv);
extern void ebu_main(void);

/* Keep the linker happy */
void _fini( void )
{
}

// ****************************************************************************
//  Program entry point

int main( void )
{
  int i;
  FILE *fp;

  // Initialize platform first

  if( platform_init() != PLATFORM_OK )
  {
    // This should never happen
    while( 1 );
  }

  // Initialize device manager
  dm_init();

  // Initialize the EBU
  ebu_main();

  // Register the MMC filesystem
  mmcfs_init();

  // Search for autorun files in the defined order and execute the 1st if found
  for( i = 0; i < sizeof( boot_order ) / sizeof( *boot_order ); i++ )
  {
    if( ( fp = fopen( boot_order[ i ], "r" ) ) != NULL )
    {
      fclose( fp );
      // The entry point for uARM.
      char* uarm_argv[] = { "uarm", boot_order[i], NULL };

      uarm_main( 2, uarm_argv );
      break; // autoruns only the first found
    }
  }

  // Run the shell
  if( shell_init() == 0 )
  {
    char* uarm_argv[] = { "uarm", NULL };
    uarm_main( 1, uarm_argv );
  }
  else
  {
    shell_start();
  }

  while( 1 );
}
