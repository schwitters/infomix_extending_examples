/*
** Title:          idn_socket1
** SCCSid:         %W% %E% %U%
** CCid:           %W% %E% %U%
** Author:         Informix
** Created:        05/15/1998 09:17
** Description:    This is the generated 'C' file for the idn_socket1 DataBlade.
** Comments:       Generated for project idn_socket1.1.0
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
#include "idn_socket1.h"

/* These are needed to support the socket stuff */
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <netdb.h>

#define BUFSIZE       100       /* size of the buffers we'll be sending */

/* {{FUNCTION(26001b90-e8ee-11d1-b54f-00a024e37610) (MergeSection) */

    /****************************************************************
**
** Function name:
**
**	idnCallSocket1
**
** Description:
**
**      This routine acts as a client to an external socket server. It
**      sends a text string to the server, and receives back the same
**      text string written backwards.
**
** Special Comments:
**
**	Entrypoint for the SQL routine idnCallSocket1 (lvarchar) returns lvarchar.
**
** Parameters: 
**
**	mi_integer  - socket server's port number.
**	mi_lvarchar - text string.
**
** Return value:
**
**	mi_lvarchar - text string.
**
** History:
**
**	05/15/1998 - Generated by BladeSmith Version 3.60.TC1B1.
**
** Identification:
**
** NOTE:
**
**  BladeSmith will add and remove paramaters from the function prototype,
**	and will generate tracing calls.  ONLY EDIT code in blocks marked
**	Your_<section>.  Any other modifications will require manual merging.
**
*****************************************************************
*/
mi_lvarchar *idnCallSocket1
(
mi_integer *		port,
mi_lvarchar *           argstring,
MI_FPARAM *             Gen_fparam        /* Standard info - see DBDK docs.*/
)
{
	mi_lvarchar*    Gen_RetVal;       /* The return value. */
	MI_CONNECTION * Gen_Con;          /* The connection handle. */
	/* ------ {{Your_Declarations (PreserveSection) BEGIN ------ */

        struct sockaddr_in sad;            /* server address              */
        mi_integer sd;                     /* socket descriptor           */
        mi_string inbuf[BUFSIZE];          /* buffer for data from server */
        mi_string *outbuf;                 /* data sent to the server     */
        mi_integer bs;                     /* buffer size (for recv)      */
        char   host[] = "localhost";
        struct hostent *ptrh;              /* host table entry for server */
        mi_integer n;                      /* number of bytes received    */


	/* ------ }}Your_Declarations (#0000) END ------ */

	/* Get the current connection handle. */
	Gen_Con = mi_open( NULL, NULL, NULL );

	/* Verify that the connection has been established. */
	if( Gen_Con == 0 )
	{
		/*
		** Opening the current connection has failed
		** so issue the following message and quit.
		**
		** 	"Connection has failed in idnCallSocket1."
		*/
		DBDK_TRACE_ERROR( "idnCallSocket1", ERRORMESG1, 10 );

		/* not reached */
	}

	/*
	** Write to the trace file indicating
	** that idnCallSocket1 has been called.
	*/
	DBDK_TRACE_ENTER( "idnCallSocket1" );


	/* ------ {{Your_Code (PreserveSection) BEGIN ------ */
	{

        /* Initialize the server address structure */
        memset((char *)&sad, 0, sizeof(sad));
        sad.sin_family = AF_INET;
 
        sad.sin_port = htons((u_short)port);
 
        /* get the ip address for the host */
        ptrh = gethostbyname(host);
        if (((char *)ptrh) == NULL)
        {
                mi_db_error_raise(Gen_Con, MI_EXCEPTION,
                        "Unable to get host address.");
                /* not reached */
        }
 
        memcpy(&sad.sin_addr, ptrh->h_addr, ptrh->h_length);
 
        /* create a socket */
        sd = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
        if (sd < 0)
        {
                mi_db_error_raise(Gen_Con, MI_EXCEPTION,
                        "Unable to open a socket.");
                /* not reached */
        }
 
        /* connect the socket to the server */
        if  (connect(sd, (struct sockaddr *)&sad, sizeof(sad)) < 0)
        {
                mi_db_error_raise(Gen_Con, MI_EXCEPTION,
                        "Unable to connect to socket server.");
                /* not reached */
        }
 
        /* send the text string down to the server */
        if ((outbuf = mi_lvarchar_to_string(argstring)) == NULL)
        {
                mi_db_error_raise(Gen_Con, MI_EXCEPTION,
                        "mi_lvarchar_to_string() failed!");
                /* not reached */
        }
 
        bs = strlen(outbuf);
        send(sd, outbuf, bs+1, 0);
 
        /* Get the server's response */
        bs = BUFSIZE;
        n = recv(sd, inbuf, bs, 0);
 
        if (n > 0)
        {
                if ((Gen_RetVal = mi_string_to_lvarchar(inbuf)) == NULL)
                {
                        mi_db_error_raise(Gen_Con, MI_EXCEPTION,
                         "mi_string_to_lvarchar() failed!");
                        /* not reached */
                }
        }
        else
        {
                Gen_RetVal = mi_string_to_lvarchar(
                        "No data returned from server");
        }
 
        mi_free(outbuf);

	}
	/* ------ }}Your_Code (#JLME) END ------ */

	/*
	** Write to the trace file indicating
	** that idnCallSocket1 has successfully exited.
	*/
	DBDK_TRACE_EXIT( "idnCallSocket1" );

	/* Return the function's return value. */
	return Gen_RetVal;
}
/* }}FUNCTION (#VE5H) */



#ifdef __cplusplus

}

#endif
