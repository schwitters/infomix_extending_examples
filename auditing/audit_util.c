/*(c) Copyright IBM Corp. 2004  All rights reserved.                 */
/*                                                                   */
/*This sample program is owned by International Business Machines    */
/*Corporation or one of its subsidiaries ("IBM") and is copyrighted  */
/*and licensed, not sold.                                            */
/*                                                                   */
/*You may copy, modify, and distribute this sample program in any    */
/*form without payment to IBM,  for any purpose including developing,*/
/*using, marketing or distributing programs that include or are      */
/*derivative works of the sample program.                            */
/*                                                                   */
/*The sample program is provided to you on an "AS IS" basis, without */
/*warranty of any kind.  IBM HEREBY  EXPRESSLY DISCLAIMS ALL         */
/*WARRANTIES EITHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO*/
/*THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTIC-*/
/*ULAR PURPOSE. Some jurisdictions do not allow for the exclusion or */
/*limitation of implied warranties, so the above limitations or      */
/*exclusions may not apply to you.  IBM shall not be liable for any  */
/*damages you suffer as a result of using, modifying or distributing */
/*the sample program or its derivatives.                             */
/*                                                                   */
/*Each copy of any portion of this sample program or any derivative  */
/*work,  must include a the above copyright notice and disclaimer of */
/*warranty.                                                          */
/*                                                                   */
/*********************************************************************/

/*
 * Utility function to generate XML output.
 */
#include "audit_util.h"
/*--------------------------------------------------------------*/
void fixname(mi_string *in)
{
  int i, j;

  j = strlen(in);
  for (i = 0; i < j; i++) {
	if (in[i] < ' ')
	  in[i] = 0;
  }
  return;
}
/*--------------------------------------------------------------*/
mi_string *do_cast(MI_CONNECTION *conn, MI_DATUM *datum,
                   MI_TYPEID *tid, MI_TYPEID *lvar_id)
{
  MI_FUNC_DESC *fn;
  MI_FPARAM    *fp;
  MI_DATUM     new_datum;
  MI_TYPEID    *ftid;
  MI_TYPE_DESC  *td;
  mi_integer   i;
  mi_integer   ret;
  mi_char      status, *pbuf;

  fn = mi_cast_get(conn, tid, lvar_id,  &status);
  if (NULL == fn) {
    switch(status) {
    case MI_ERROR_CAST:
    case MI_NO_CAST:
    case MI_SYSTEM_CAST:
    case MI_UDR_CAST:
    case MI_IMPLICIT_CAST:
    case MI_EXPLICIT_CAST:
         return("error");
         break;
    case MI_NOP_CAST:
         return(mi_lvarchar_to_string((mi_lvarchar *)datum));
         break;
    } /* end switch */
  }
  fp = mi_fparam_get(conn, fn);
  for (i = 0; i < mi_fp_nargs(fp); i++)
    mi_fp_setargisnull(fp, i, MI_FALSE);
  /* in this case, we know it is int to lvarchar.  It is a system cast */
  /* that is done by dosyscast(datum *, int, int) */
  /* arguments 2 and 3 represent length and precision of the return value */
  new_datum = mi_routine_exec(conn, fn, &ret, datum, 30, 10, fp);
  pbuf = mi_lvarchar_to_string(new_datum);
  mi_routine_end(conn, fn);
  return(pbuf);
}
/*--------------------------------------------------------------*/
mi_string *doInsertCN()
{
  MI_CONNECTION *conn;
  MI_ROW        *row;
  MI_TYPEID     *tid, *lvarTid;
  MI_TYPE_DESC  *td;
  MI_ROW_DESC   *rd;
  MI_DATUM      datum;
  mi_lvarchar   *lvarret;
  mi_integer    i, len, posi, colCount, collen;
  mi_string     tabname[128], *buffer, *ptabname, *pcolname, *pcast;

  conn = mi_get_session_connection();
  /* Get the table name and the row */
  row = mi_trigger_get_new_row();
  rd = mi_get_row_desc(row);
  colCount = mi_column_count(rd);
  tid = mi_rowdesc_typeid(rd);
  lvarTid = mi_typename_to_id(conn, mi_string_to_lvarchar("lvarchar"));
  td = mi_type_typedesc(NULL, tid);
  /* prepare the output buffer */
  buffer = (mi_string *)mi_alloc(BUFSIZE);
  ptabname = mi_trigger_tabname(MI_TRIGGER_CURRENTTABLE | MI_TRIGGER_TABLENAME);
  strcpy(tabname, ptabname);
  sprintf(buffer, "<%s><INSERT>", tabname);
  /* Process each column */
  for (i = 0; i < colCount; i++) {
    /* get column name and type id */
    pcolname = mi_column_name(rd, i);
DPRINTF("logger", 90, ("insert: colname: (0x%x) [%s]", pcolname, pcolname));
    tid = mi_column_type_id(rd, i);
    switch(mi_value(row, i, &datum, &collen)) {
    /* we should do this test */
    case MI_NULL_VALUE:
         break;
    case MI_NORMAL_VALUE:
         pcast = do_cast(conn, datum, tid, lvarTid);
		 posi = strlen(buffer);
         sprintf(&buffer[posi], "<%s>%s</%s>", pcolname, pcast, pcolname);
         break;
    case MI_ROW_VALUE:
         break;
    } /* end switch */
  } /* end for */
  /* close the record */
  posi = strlen(buffer);
  sprintf(&buffer[posi], "</INSERT></%s>", tabname);
 return(buffer);
}
/*--------------------------------------------------------------*/
mi_string *doSelectCN()
{
  MI_CONNECTION *conn;
  MI_ROW        *row;
  MI_TYPEID     *tid, *lvarTid;
  MI_TYPE_DESC  *td;
  MI_ROW_DESC   *rd;
  MI_DATUM      datum;
  mi_lvarchar   *lvarret;
  mi_integer    i, len, posi, colCount, collen;
  mi_string     tabname[128], *buffer, *ptabname, *pcolname, *pcast;

  conn = mi_get_session_connection();
  /* Get the table name and the row */
  row = mi_trigger_get_new_row();
  rd = mi_get_row_desc(row);
  colCount = mi_column_count(rd);
  tid = mi_rowdesc_typeid(rd);
  lvarTid = mi_typename_to_id(conn, mi_string_to_lvarchar("lvarchar"));
  td = mi_type_typedesc(NULL, tid);
  /* prepare the output buffer */
  buffer = (mi_string *)mi_alloc(BUFSIZE);
  ptabname = mi_trigger_tabname(MI_TRIGGER_CURRENTTABLE | MI_TRIGGER_TABLENAME);
  strcpy(tabname, ptabname);
  sprintf(buffer, "<%s><SELECT>", tabname);
  /* Process each column */
  for (i = 0; i < colCount; i++) {
    /* get column name and type id */
    pcolname = mi_column_name(rd, i);
DPRINTF("logger", 90, ("insert: colname: (0x%x) [%s]", pcolname, pcolname));
    tid = mi_column_type_id(rd, i);
    switch(mi_value(row, i, &datum, &collen)) {
    /* we should do this test */
    case MI_NULL_VALUE:
         break;
    case MI_NORMAL_VALUE:
         pcast = do_cast(conn, datum, tid, lvarTid);
		 posi = strlen(buffer);
         sprintf(&buffer[posi], "<%s>%s</%s>", pcolname, pcast, pcolname);
         break;
    case MI_ROW_VALUE:
         break;
    } /* end switch */
  } /* end for */
  /* close the record */
  posi = strlen(buffer);
  sprintf(&buffer[posi], "</SELECT></%s>", tabname);
 return(buffer);
}
/*--------------------------------------------------------------*/
mi_string *doDeleteCN()
{
  MI_CONNECTION *conn;
  MI_ROW        *row;
  MI_TYPEID     *tid, *lvarTid;
  MI_TYPE_DESC  *td;
  MI_ROW_DESC   *rd;
  MI_DATUM      datum;
  mi_lvarchar   *lvarret;
  mi_integer    i, len, posi, colCount, collen;
  mi_string     *buffer, *ptabname, *pcolname, *pcast;

  conn = mi_get_session_connection();
  /* Get the row */
  row = mi_trigger_get_old_row();
  rd = mi_get_row_desc(row);
  colCount = mi_column_count(rd);
  tid = mi_rowdesc_typeid(rd);
  lvarTid = mi_typename_to_id(conn, mi_string_to_lvarchar("lvarchar"));
  td = mi_type_typedesc(NULL, tid);
  /* prepare the output buffer */
  ptabname = mi_trigger_tabname(MI_TRIGGER_CURRENTTABLE | MI_TRIGGER_TABLENAME);
  len = strlen(ptabname);
  fixname(ptabname);
  buffer = (mi_string *)mi_alloc(BUFSIZE);
  sprintf(buffer, "<%s><DELETE>", ptabname);
  /* Process each column */
  for (i = 0; i < colCount; i++) {
    /* get column name and type id */
    pcolname = mi_column_name(rd, i);
DPRINTF("logger", 90, ("delete: colname: (0x%x) [%s]", pcolname, pcolname));
    tid = mi_column_type_id(rd, i);
    switch(mi_value(row, i, &datum, &collen)) {
    /* we should do this test */
    case MI_NULL_VALUE:
         break;
    case MI_NORMAL_VALUE:
         pcast = do_cast(conn, datum, tid, lvarTid);
		 posi = strlen(buffer);
         sprintf(&buffer[posi], "<%s>%s</%s>", pcolname, pcast, pcolname);
         break;
    case MI_ROW_VALUE:
         break;
    } /* end switch */
  } /* end for */
  /* close the record */
  posi = strlen(buffer);
  fixname(ptabname);
  sprintf(&buffer[posi], "</DELETE></%s>", ptabname);
 return(buffer);
}
/*--------------------------------------------------------------*/
mi_string *doUpdateCN()
{
  MI_CONNECTION *conn;
  MI_ROW        *oldRow, *newRow;
  MI_TYPEID     *tid, *lvarTid;
  MI_TYPE_DESC  *td;
  MI_ROW_DESC   *rdOld, *rdNew;
  MI_DATUM      datum;
  mi_lvarchar   *lvarret;
  mi_integer    i, j, len, posi, colCountOld, colCountNew, collen;
  mi_string     *buffer, *ptabname, *poldcolname, *pnewcolname, *pcast, *pcast2;
  mi_integer    pbufLen;

  DPRINTF("logger", 90, ("Entering doUpdateCN()"));
  conn = mi_get_session_connection();
  /* get the rows */
  oldRow = mi_trigger_get_old_row();
  newRow = mi_trigger_get_new_row();
  rdOld = mi_get_row_desc(oldRow);
  rdNew = mi_get_row_desc(newRow);
  colCountOld = mi_column_count(rdOld);
  colCountNew = mi_column_count(rdNew);
  DPRINTF("logger", 90, ("Column count before: %d, after: %d",
			  colCountOld, colCountNew));
  tid = mi_rowdesc_typeid(rdOld);
  lvarTid = mi_typename_to_id(conn, mi_string_to_lvarchar("lvarchar"));
  td = mi_type_typedesc(NULL, tid);

  /* prepare the output buffer */
  ptabname = mi_trigger_tabname(MI_TRIGGER_CURRENTTABLE | MI_TRIGGER_TABLENAME);
  len = strlen(ptabname);
  for (i = 0; i < len; i++)
    if (0 == isgraph(ptabname[i])) {
      ptabname[i] = 0;
      DPRINTF("logger", 90, ("Found a non-printable character in tabname"));
	}
  buffer = (mi_string *)mi_alloc(BUFSIZE);
  sprintf(buffer, "<%s><UPDATE>", ptabname);

  /* Process each column */
  j = 0;
  for (i = 0; i < colCountOld; i++) {
    /* get column name and type id */
    poldcolname = mi_column_name(rdOld, i);
    if (j < colCountNew)
      pnewcolname = mi_column_name(rdNew, j);
    tid = mi_column_type_id(rdOld, i);
    switch(mi_value(oldRow, i, &datum, &collen)) {
    /* we should do this test */
    case MI_NULL_VALUE:
		 pcast = "NULL";
         break;
    case MI_NORMAL_VALUE:
         pcast = do_cast(conn, datum, tid, lvarTid);
         break;
    } /* end switch */
    if (0 == strcmp(poldcolname, pnewcolname) ) {
      switch (mi_value(newRow, j, &datum, &collen)) {
		case MI_NULL_VALUE:
		  pcast2 = "NULL";
		  break;
		case MI_NORMAL_VALUE:
		  pcast2 = do_cast(conn, datum, tid, lvarTid);
		  break;
	} /* end switch */
      j++;
    } else {
	pcast2 = pcast;
    }
    pbufLen = strlen(buffer);
	sprintf(&buffer[pbufLen], "<%s><old>%s</old><new>%s</new></%s>",
       poldcolname, pcast, pcast2, poldcolname);
	pbufLen = strlen(buffer);
  } /* end for */
  pbufLen = strlen(buffer);
  sprintf(&buffer[pbufLen], "</update></%s>", ptabname);
  DPRINTF("logger", 90, ("Exiting doUpdateCN()"));

  return(buffer);
}
/*--------------------------------------------------------------*/
mi_integer set_tracing(mi_lvarchar *class, mi_integer lvl,
                       mi_lvarchar *tfile, MI_FPARAM *fparam)
{
  mi_integer   ret;
  mi_string *str, buffer[80];

  /* if there is a trace file provided */
  if (mi_fp_argisnull(fparam, 2) != MI_TRUE) {
    str = mi_lvarchar_to_string(tfile);
    ret = mi_tracefile_set(str);
  }
  /* if both the class and level are not NULL */
  if (mi_fp_argisnull(fparam, 0) != MI_TRUE &&
     (mi_fp_argisnull(fparam, 1)) != MI_TRUE) {
    str = mi_lvarchar_to_string(class);
    sprintf(buffer, "%s %d ", str, lvl);
    ret = mi_tracelevel_set(buffer);
  }
  return ret;
}
/*--------------------------------------------------------------*/
