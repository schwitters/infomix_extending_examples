-- Generated by BladeSmith 4.00.TC1B2DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

begin work;

create function cRoutine (integer)
returns lvarchar
external name "$INFORMIXDIR/extend/idn_LegacyC.1.2/idn_LegacyC.bld(cRoutine)" language c;

alter function cRoutine (integer)
	with (Modify External Name = "$INFORMIXDIR/extend/idn_LegacyC.1.2/idn_LegacyC.bld(cRoutine)");

grant execute on function cRoutine (integer) to public;

create function cTraceOn ()
returns integer
external name "$INFORMIXDIR/extend/idn_LegacyC.1.2/idn_LegacyC.bld(cTraceOn)" language c;

alter function cTraceOn ()
	with (Modify External Name = "$INFORMIXDIR/extend/idn_LegacyC.1.2/idn_LegacyC.bld(cTraceOn)");

grant execute on function cTraceOn () to public;

commit work;

