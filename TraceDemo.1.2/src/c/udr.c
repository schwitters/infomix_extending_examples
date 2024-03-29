/*
** Title:          udr.c
** SCCSid:         %W% %E% %U%
** CCid:           %W% %E% %U%
** Author:         Informix
** Created:        08/19/1999 11:04
** Description:    This is a generated source file for the TraceDemo DataBlade module.
** Comments:       Generated for project TraceDemo.1.2
*/

/*
**  The following is placed here to insure
**  that name "mangling" does not occur.
*/
#ifdef __cplusplus

extern "C"
{

#endif

/* Standard library includes. */
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stddef.h>

/* Used by Informix GLS routines. */
#include <ifxgls.h>

/* Include when accessing the Informix API. */
#include <mi.h>

/* This is the project include file. */
#include "TraceDemo.h"


/* {{FUNCTION(53d6ae00-4a38-11d1-b4c1-00a024e37610) (MergeSection) */

/*******************************************************************************
**
** Function name:
**
**	UpOne
**
** Description:
**
** Special Comments:
**
**	Entrypoint for the SQL routine UpOne (integer) returns integer.
**
**      A stack size of 32,767 bytes  has  been  requested  for
**      the routine.  Normally, this is sufficient memory for most
**      invocations of your UDR.  If you intend, however, to  call
**      this routine recursively or other routines that use  large
**      or unknown stack sizes, you should use mi_call().  mi_call
**      checks to insure that sufficient stack space is available.
**      For  more  details  regarding  this   function,  look  in:
**      The  DataBlade  API Programmer's  Manual  (see Stack Space
**      Allocation in Chapter 11).
**
** Parameters:
**
**	None
**
** Return value:
**
**	mi_integer
**
** History:
**
**	08/19/1999 - Generated by BladeSmith Version 4.00.TC1B.
**
** Identification:
**
** NOTE:
**
**	BladeSmith will add and remove parameters from the function
**	prototype, and will generate tracing calls.  Only edit code
**	in blocks marked  Your_<section>.  Any other  modifications
**	will require manual merging.
**
********************************************************************************
*/

UDREXPORT 
mi_integer UpOne
(

mi_integer                   int_in,
MI_FPARAM *                  Gen_fparam       /* Standard info - see DBDK docs.          */
)

{
	MI_CONNECTION *      Gen_Con;         /* The connection handle.                  */
	mi_integer           Gen_RetVal;      /* The return value.                       */
	/* ------ {{Your_Declarations (PreserveSection) BEGIN ------ */

	mi_integer	i;	/* loop counter */

	/* ------ }}Your_Declarations (#0000) END ------             */

	/* Get the current connection handle. */
	Gen_Con = mi_open( NULL, NULL, NULL );

	/* Verify that the connection has been established. */
	if( Gen_Con == 0 )
	{
		/*
		** Opening the current connection has failed
		** so issue the following message and quit.
		**
		** 	"Connection has failed in UpOne."
		*/
		DBDK_TRACE_ERROR( "UpOne", ERRORMESG1, 10 );

		/* not reached */
	}

	/*
	** Write to the trace file indicating
	** that UpOne has been called.
	*/
	DBDK_TRACE_ENTER( "UpOne" );



	/* ------ {{Your_Code (PreserveSection) BEGIN ------ */

        /*
        ** Write a user-defined trace message to the trace file.
        */

        DBDK_TRACE_MSG( "TraceDemo", "TD001", 10 );
        DBDK_TRACE_MSG( "TraceDemo", "TD002", 20 );
        DBDK_TRACE_MSG( "TraceDemo", "TD003", 30 );

        /*
        ** This message includes a text place holder. You provide
        ** the substitution text from your program when you invoke
        ** the message.
        **
        ** Note that the DBDK doesn't provide a macro to handle this
        ** case -- you'll need to call the GL_DPRINTF macro directly.
        ** The syntax is pretty simple, though:
        **
        **     GL_DPRINTF( <class>, <threshold>, ( <name column from
        **                systracemsgs>, <keyword and format specifier>,
        **                [ <more keywords and formats> ] MI_LIST_END);
        */
        GL_DPRINTF("TraceDemo", 40, ("TD004", "TEXT%s", "once", MI_LIST_END));
        GL_DPRINTF("TraceDemo", 50, ("TD004", "TEXT%s", "twice", MI_LIST_END));

        /*
        ** Loop 5 times
        */
        for (i=1; i<6; i++)
        {
                GL_DPRINTF("TraceDemo", 60,
                        ("TD005", "COUNTER%d", i, MI_LIST_END));
        }

        Gen_RetVal = ++int_in;     

	/* ------ }}Your_Code (#9JLJ) END ------ */

	/*
	** Write to the trace file indicating
	** that UpOne has successfully exited.
	*/
	DBDK_TRACE_EXIT( "UpOne" );

	/* Close the connection. */
	mi_close( Gen_Con );

	/* Return the function's return value. */
	return Gen_RetVal;
}
/* }}FUNCTION (#T346) */



#ifdef __cplusplus

}

#endif
