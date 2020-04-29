
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <sys/stat.h>
#include <sys/types.h>
#include "shell.h"
#include "type.h"
#include "platform_conf.h"

const char shell_help_uarm[] = "\n"
"Invoke uARM from the Hempl.";
const char shell_help_summary_uarm[] = "Start uARM session";

extern int uarm_main(int, char **);

void shell_uarm(int argc, char **argv)
{
  uarm_main( argc, argv );
}
