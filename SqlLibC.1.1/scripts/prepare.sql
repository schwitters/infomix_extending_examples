-- Generated by BladeSmith 4.00.TC2  DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

insert into sysbldmodules
	(bld_id, bld_server_type, bld_inst_state)
values
(
	"%SYSBLDNAME%",
	"any", 0
);

insert into sysbldscripts
	(bld_id, blocale_id, bscr_type, bscr_sequence, bscr_sql_script)
values
(
	"%SYSBLDNAME%",
	"any",
	4, 1,
	"objects.sql"
);

insert into sysbldupgrades
	(bld_id, bld_upgrade_like)
values
(
	"%SYSBLDNAME%",
	"SqlLibC.%"
);

