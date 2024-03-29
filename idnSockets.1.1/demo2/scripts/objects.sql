-- Generated by BladeSmith 4.00.TC1B2DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%", 0,
	"create function idnCallSocket2 (lvarchar)
returns lvarchar
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/idn_socket2.bld(idnCallSocket2)"" language c;

",
	"f",
	"drop function idnCallSocket2 (lvarchar);

",
	"f"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%", 0,
	"alter function idnCallSocket2 (lvarchar)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/idn_socket2.bld(idnCallSocket2)"");

",
	"f",
	"alter function idnCallSocket2 (lvarchar)
	with (Modify External Name = ""idnCallSocket2"");

",
	"f"
);

insert into sysbldobjdepends
(
	bld_id,
	obj_kind,
	obj_signature,
	obj_owner,
	need_obj_kind,
	need_obj_signature,
	need_obj_owner)
	values
(
	"%SYSBLDNAME%",
	181, "Alter-ExternalName-idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%",
	5, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 151, "Alter-Class-idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%", 0,
	"alter function idnCallSocket2 (lvarchar)
	with (add class=""IDN"");

",
	"f",
	"alter function idnCallSocket2 (lvarchar)
	with (drop class);

",
	"f"
);

insert into sysbldobjdepends
(
	bld_id,
	obj_kind,
	obj_signature,
	obj_owner,
	need_obj_kind,
	need_obj_signature,
	need_obj_owner)
	values
(
	"%SYSBLDNAME%",
	151, "Alter-Class-idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%",
	5, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%", 0,
	"grant execute on function idnCallSocket2 (lvarchar) to public;

",
	"f",
	"",
	"f"
);

insert into sysbldobjdepends
(
	bld_id,
	obj_kind,
	obj_signature,
	obj_owner,
	need_obj_kind,
	need_obj_signature,
	need_obj_owner)
	values
(
	"%SYSBLDNAME%",
	69, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%",
	5, "idnCallSocket2 (lvarchar)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "idnSock2Release ()",
	"%SYSBLDUSER%", 0,
	"create function idnSock2Release ()
returns lvarchar
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/idn_socket2.bld(idnSock2Release)"" language c;

",
	"f",
	"drop function idnSock2Release ();

",
	"f"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-idnSock2Release ()",
	"%SYSBLDUSER%", 0,
	"alter function idnSock2Release ()
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/idn_socket2.bld(idnSock2Release)"");

",
	"f",
	"alter function idnSock2Release ()
	with (Modify External Name = ""idnSock2Release"");

",
	"f"
);

insert into sysbldobjdepends
(
	bld_id,
	obj_kind,
	obj_signature,
	obj_owner,
	need_obj_kind,
	need_obj_signature,
	need_obj_owner)
	values
(
	"%SYSBLDNAME%",
	181, "Alter-ExternalName-idnSock2Release ()",
	"%SYSBLDUSER%",
	5, "idnSock2Release ()",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "idnSock2Release ()",
	"%SYSBLDUSER%", 0,
	"grant execute on function idnSock2Release () to public;

",
	"f",
	"",
	"f"
);

insert into sysbldobjdepends
(
	bld_id,
	obj_kind,
	obj_signature,
	obj_owner,
	need_obj_kind,
	need_obj_signature,
	need_obj_owner)
	values
(
	"%SYSBLDNAME%",
	69, "idnSock2Release ()",
	"%SYSBLDUSER%",
	5, "idnSock2Release ()",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 0, "sysbldregistered",
	"%SYSBLDUSER%", 0,
	"insert into sysbldregistered
	(bld_id)
values
(
	""%SYSBLDNAME%""
);

",
	"f",
	"delete from sysbldregistered
	where bld_id = ""%SYSBLDNAME%"";

",
	"f"
);

