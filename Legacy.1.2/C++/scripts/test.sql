-- Generated by BladeSmith 4.00.TC1B2DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

begin work;

create function cppRoutine (integer)
returns lvarchar
external name "$INFORMIXDIR/extend/idn_LegacyCPP.1.2/idn_LegacyCPP.bld(cppRoutine)" language c;

alter function cppRoutine (integer)
	with (Modify External Name = "$INFORMIXDIR/extend/idn_LegacyCPP.1.2/idn_LegacyCPP.bld(cppRoutine)");

grant execute on function cppRoutine (integer) to public;

create function cppTraceOn ()
returns integer
external name "$INFORMIXDIR/extend/idn_LegacyCPP.1.2/idn_LegacyCPP.bld(cppTraceOn)" language c;

alter function cppTraceOn ()
	with (Modify External Name = "$INFORMIXDIR/extend/idn_LegacyCPP.1.2/idn_LegacyCPP.bld(cppTraceOn)");

grant execute on function cppTraceOn () to public;

commit work;

