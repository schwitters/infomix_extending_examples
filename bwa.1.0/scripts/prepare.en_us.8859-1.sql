-- Generated by BladeSmith 3.70.TC1  DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

insert into sysblddescription
	(bld_id, blocale_id, bdesc_format, bvendor_id, bdesc_desc, bdesc_copyright)
values
(
	"%SYSBLDNAME%",
	"en_us.8859-1",
	0,
	"Informix",
	"Business Web Application  DataBlade  module.",
	"Copyright (c) 1999 by Informix Software, Inc. All rights reserved"
);

delete from sysbldvendors
	where bvendor_id = "Informix" and
	bvendor_format = 0 and
	blocale_id = "en_us.8859-1";

insert into sysbldvendors
	(bvendor_id, bvendor_name, blocale_id, bvendor_format, bvendor_desc)
values
(
	"Informix",
	"Informix",
	"en_us.8859-1",
	0,
	"idn-datablades@informix.com"
);

