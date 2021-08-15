-- Generated by BladeSmith 4.00.TC2  DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

begin work;

create function SblobStatSize (blob)
returns int8
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobStatSize)" language c;

alter function SblobStatSize (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobStatSize)");

grant execute on function SblobStatSize (blob) to public;

create procedure SblobDebug (integer)
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobDebug)" language c;

alter procedure SblobDebug (integer)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobDebug)");

grant execute on procedure SblobDebug (integer) to public;

create function SblobSbspace (blob)
returns lvarchar
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobSbspace)" language c;

alter function SblobSbspace (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobSbspace)");

grant execute on function SblobSbspace (blob) to public;

create function SblobMaxSize (blob)
returns int8
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobMaxSize)" language c;

alter function SblobMaxSize (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobMaxSize)");

grant execute on function SblobMaxSize (blob) to public;

create function SblobEstSize (blob)
returns int8
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobEstSize)" language c;

alter function SblobEstSize (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobEstSize)");

grant execute on function SblobEstSize (blob) to public;

create function SblobExtSize (blob)
returns integer
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobExtSize)" language c;

alter function SblobExtSize (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobExtSize)");

grant execute on function SblobExtSize (blob) to public;

create function SblobCreate (lvarchar,int8,lvarchar,int8,int8)
returns blob
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobCreate_5args)" language c;

alter function SblobCreate (lvarchar,int8,lvarchar,int8,int8)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobCreate_5args)");

grant execute on function SblobCreate (lvarchar,int8,lvarchar,int8,int8) to public;

create function SblobUpdate (blob,int8,lvarchar)
returns integer
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobUpdate_3args)" language c;

alter function SblobUpdate (blob,int8,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobUpdate_3args)");

grant execute on function SblobUpdate (blob,int8,lvarchar) to public;

create function SblobLog (blob)
returns boolean
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobLog)" language c;

alter function SblobLog (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobLog)");

grant execute on function SblobLog (blob) to public;

create function SblobRefCount (blob)
returns integer
external name "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobRefCount)" language c;

alter function SblobRefCount (blob)
	with (Modify External Name = "$INFORMIXDIR/extend/sblob_info.1.5/sblob_info.bld(SblobRefCount)");

grant execute on function SblobRefCount (blob) to public;

commit work;

