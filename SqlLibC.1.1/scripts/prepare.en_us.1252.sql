-- Generated by BladeSmith 4.00.TC2  DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

insert into sysblddescription
	(bld_id, blocale_id, bdesc_format, bvendor_id, bdesc_desc, bdesc_copyright)
values
(
	"%SYSBLDNAME%",
	"en_us.1252",
	0,
	"informix",
	"C implementation for SqlLib.",
	"Copyright (c) 1999 by Informix Software, Inc.  All rights reserved."
);

delete from sysbldvendors
	where bvendor_id = "informix" and
	bvendor_format = 0 and
	blocale_id = "en_us.1252";

insert into sysbldvendors
	(bvendor_id, bvendor_name, blocale_id, bvendor_format, bvendor_desc)
values
(
	"informix",
	"informix",
	"en_us.1252",
	0,
	"idn-datablades@informix.com"
);
