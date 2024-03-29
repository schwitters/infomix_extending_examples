-- Generated by BladeSmith 4.00.TC2  DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

begin work;

create function regexp_match (lvarchar,lvarchar)
returns boolean
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_match_char)" language c;

alter function regexp_match (lvarchar,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_match_char)");

alter function regexp_match (lvarchar,lvarchar)
	with (add not variant);

alter function regexp_match (lvarchar,lvarchar)
	with (add percall_cost=1000);

alter function regexp_match (lvarchar,lvarchar)
	with (add class="regexp");

grant execute on function regexp_match (lvarchar,lvarchar) to public;

create function regexp_extract (lvarchar,lvarchar)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_extract)" language c;

alter function regexp_extract (lvarchar,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_extract)");

alter function regexp_extract (lvarchar,lvarchar)
	with (add not variant);

alter function regexp_extract (lvarchar,lvarchar)
	with (add iterator);

alter function regexp_extract (lvarchar,lvarchar)
	with (add class="regexp");

grant execute on function regexp_extract (lvarchar,lvarchar) to public;

create function regexp_extract (lvarchar,lvarchar,integer)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_extract_n)" language c;

alter function regexp_extract (lvarchar,lvarchar,integer)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_extract_n)");

alter function regexp_extract (lvarchar,lvarchar,integer)
	with (add not variant);

alter function regexp_extract (lvarchar,lvarchar,integer)
	with (add iterator);

alter function regexp_extract (lvarchar,lvarchar,integer)
	with (add class="regexp");

grant execute on function regexp_extract (lvarchar,lvarchar,integer) to public;

create function regexp_replace (lvarchar,lvarchar,lvarchar)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_char)" language c;

alter function regexp_replace (lvarchar,lvarchar,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_char)");

alter function regexp_replace (lvarchar,lvarchar,lvarchar)
	with (add not variant);

alter function regexp_replace (lvarchar,lvarchar,lvarchar)
	with (add percall_cost=1000);

alter function regexp_replace (lvarchar,lvarchar,lvarchar)
	with (add class="regexp");

grant execute on function regexp_replace (lvarchar,lvarchar,lvarchar) to public;

create function regexp_replace (lvarchar,lvarchar,lvarchar,integer)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_char_n)" language c;

alter function regexp_replace (lvarchar,lvarchar,lvarchar,integer)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_char_n)");

alter function regexp_replace (lvarchar,lvarchar,lvarchar,integer)
	with (add not variant);

alter function regexp_replace (lvarchar,lvarchar,lvarchar,integer)
	with (add percall_cost=1000);

alter function regexp_replace (lvarchar,lvarchar,lvarchar,integer)
	with (add class="regexp");

grant execute on function regexp_replace (lvarchar,lvarchar,lvarchar,integer) to public;

create function regexp_split (lvarchar,lvarchar)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_split)" language c;

alter function regexp_split (lvarchar,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_split)");

alter function regexp_split (lvarchar,lvarchar)
	with (add not variant);

alter function regexp_split (lvarchar,lvarchar)
	with (add iterator);

alter function regexp_split (lvarchar,lvarchar)
	with (add class="regexp");

grant execute on function regexp_split (lvarchar,lvarchar) to public;

create function regexp_split (lvarchar,lvarchar,integer)
returns lvarchar
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_split_n)" language c;

alter function regexp_split (lvarchar,lvarchar,integer)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_split_n)");

alter function regexp_split (lvarchar,lvarchar,integer)
	with (add not variant);

alter function regexp_split (lvarchar,lvarchar,integer)
	with (add iterator);

alter function regexp_split (lvarchar,lvarchar,integer)
	with (add class="regexp");

grant execute on function regexp_split (lvarchar,lvarchar,integer) to public;

create procedure TraceSet_regexp (lvarchar,integer)
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(TraceSet_regexp)" language c;

alter procedure TraceSet_regexp (lvarchar,integer)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(TraceSet_regexp)");

grant execute on procedure TraceSet_regexp (lvarchar,integer) to public;

create function regexp_match (clob,lvarchar)
returns boolean
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_match_clob)" language c;

alter function regexp_match (clob,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_match_clob)");

alter function regexp_match (clob,lvarchar)
	with (add not variant);

alter function regexp_match (clob,lvarchar)
	with (add percall_cost=1000);

alter function regexp_match (clob,lvarchar)
	with (add class="regexp");

grant execute on function regexp_match (clob,lvarchar) to public;

create function regexp_replace (clob,lvarchar,lvarchar)
returns clob
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_clob)" language c;

alter function regexp_replace (clob,lvarchar,lvarchar)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_clob)");

alter function regexp_replace (clob,lvarchar,lvarchar)
	with (add not variant);

alter function regexp_replace (clob,lvarchar,lvarchar)
	with (add percall_cost=1000);

alter function regexp_replace (clob,lvarchar,lvarchar)
	with (add class="regexp");

grant execute on function regexp_replace (clob,lvarchar,lvarchar) to public;

create function regexp_replace (clob,lvarchar,lvarchar,integer)
returns clob
external name "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_clob_n)" language c;

alter function regexp_replace (clob,lvarchar,lvarchar,integer)
	with (Modify External Name = "$INFORMIXDIR/extend/regexp.1.0/regexp.bld(regexp_replace_clob_n)");

alter function regexp_replace (clob,lvarchar,lvarchar,integer)
	with (add not variant);

alter function regexp_replace (clob,lvarchar,lvarchar,integer)
	with (add percall_cost=1000);

alter function regexp_replace (clob,lvarchar,lvarchar,integer)
	with (add class="regexp");

grant execute on function regexp_replace (clob,lvarchar,lvarchar,integer) to public;

insert into systraceclasses (name) values ('regexp');
insert into systracemsgs (name, locale, message)
values
("regexp_ANY_TEXT", "en_us.8859-1",
"%FUNCNAME%: %MESSAGE%"
);

insert into systracemsgs (name, locale, message)
values
("regexp_FUNC_ENTER", "en_us.8859-1",
"%FUNCNAME%: function entry."
);

insert into systracemsgs (name, locale, message)
values
("regexp_FUNC_EXIT", "en_us.8859-1",
"%FUNCNAME%: function exit."
);
commit work;

