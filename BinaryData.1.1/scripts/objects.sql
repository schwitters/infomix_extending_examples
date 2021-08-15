-- Generated by BladeSmith 4.00.TC1B2DO NOT MODIFY. --

execute procedure ifx_allow_newline('t');

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 7, "BinaryType",
	"%SYSBLDUSER%", 0,
	"create opaque type BinaryType(
	internallength = variable,
	alignment = 1
);

",
	"f",
	"drop type BinaryType restrict;

",
	"f"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 71, "BinaryType",
	"%SYSBLDUSER%", 0,
	"grant usage on type BinaryType to public;

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
	71, "BinaryType",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeIn (lvarchar)
returns BinaryType
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeInput)"" language c;

",
	"f",
	"drop function BinaryTypeIn (lvarchar);

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
	5, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeIn (lvarchar)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeInput)"");

",
	"f",
	"alter function BinaryTypeIn (lvarchar)
	with (Modify External Name = ""BinaryTypeInput"");

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
	181, "Alter-ExternalName-BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%",
	5, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeIn (lvarchar) to public;

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
	69, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%",
	5, "BinaryTypeIn (lvarchar)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "lvarchar->BinaryType",
	"%SYSBLDUSER%", 0,
	"create implicit cast
	(
		lvarchar as BinaryType
		with  BinaryTypeIn
	);

",
	"f",
	"drop cast (lvarchar as BinaryType);

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
	3, "lvarchar->BinaryType",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeOut (BinaryType)
returns lvarchar
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeOutput)"" language c;

",
	"f",
	"drop function BinaryTypeOut (BinaryType);

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
	5, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeOut (BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeOutput)"");

",
	"f",
	"alter function BinaryTypeOut (BinaryType)
	with (Modify External Name = ""BinaryTypeOutput"");

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
	181, "Alter-ExternalName-BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeOut (BinaryType) to public;

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
	69, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeOut (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "BinaryType->lvarchar",
	"%SYSBLDUSER%", 0,
	"create cast
	(
		BinaryType as lvarchar
		with  BinaryTypeOut
	);

",
	"f",
	"drop cast (BinaryType as lvarchar);

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
	3, "BinaryType->lvarchar",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeSend (BinaryType)
returns sendrecv
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeSend)"" language c;

",
	"f",
	"drop function BinaryTypeSend (BinaryType);

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
	5, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeSend (BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeSend)"");

",
	"f",
	"alter function BinaryTypeSend (BinaryType)
	with (Modify External Name = ""BinaryTypeSend"");

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
	181, "Alter-ExternalName-BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeSend (BinaryType) to public;

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
	69, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeSend (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "BinaryType->sendrecv",
	"%SYSBLDUSER%", 0,
	"create cast
	(
		BinaryType as sendrecv
		with  BinaryTypeSend
	);

",
	"f",
	"drop cast (BinaryType as sendrecv);

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
	3, "BinaryType->sendrecv",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeRecv (sendrecv)
returns BinaryType
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeReceive)"" language c;

",
	"f",
	"drop function BinaryTypeRecv (sendrecv);

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
	5, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeRecv (sendrecv)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeReceive)"");

",
	"f",
	"alter function BinaryTypeRecv (sendrecv)
	with (Modify External Name = ""BinaryTypeReceive"");

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
	181, "Alter-ExternalName-BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%",
	5, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeRecv (sendrecv) to public;

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
	69, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%",
	5, "BinaryTypeRecv (sendrecv)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "sendrecv->BinaryType",
	"%SYSBLDUSER%", 0,
	"create implicit cast
	(
		sendrecv as BinaryType
		with  BinaryTypeRecv
	);

",
	"f",
	"drop cast (sendrecv as BinaryType);

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
	3, "sendrecv->BinaryType",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeImpT (impexp)
returns BinaryType
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeImportText)"" language c;

",
	"f",
	"drop function BinaryTypeImpT (impexp);

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
	5, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeImpT (impexp)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeImportText)"");

",
	"f",
	"alter function BinaryTypeImpT (impexp)
	with (Modify External Name = ""BinaryTypeImportText"");

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
	181, "Alter-ExternalName-BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%",
	5, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeImpT (impexp) to public;

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
	69, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%",
	5, "BinaryTypeImpT (impexp)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "impexp->BinaryType",
	"%SYSBLDUSER%", 0,
	"create implicit cast
	(
		impexp as BinaryType
		with  BinaryTypeImpT
	);

",
	"f",
	"drop cast (impexp as BinaryType);

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
	3, "impexp->BinaryType",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeExpT (BinaryType)
returns impexp
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeExportText)"" language c;

",
	"f",
	"drop function BinaryTypeExpT (BinaryType);

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
	5, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeExpT (BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeExportText)"");

",
	"f",
	"alter function BinaryTypeExpT (BinaryType)
	with (Modify External Name = ""BinaryTypeExportText"");

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
	181, "Alter-ExternalName-BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeExpT (BinaryType) to public;

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
	69, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeExpT (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "BinaryType->impexp",
	"%SYSBLDUSER%", 0,
	"create cast
	(
		BinaryType as impexp
		with  BinaryTypeExpT
	);

",
	"f",
	"drop cast (BinaryType as impexp);

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
	3, "BinaryType->impexp",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeImpB (impexpbin)
returns BinaryType
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeImportBinary)"" language c;

",
	"f",
	"drop function BinaryTypeImpB (impexpbin);

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
	5, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeImpB (impexpbin)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeImportBinary)"");

",
	"f",
	"alter function BinaryTypeImpB (impexpbin)
	with (Modify External Name = ""BinaryTypeImportBinary"");

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
	181, "Alter-ExternalName-BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%",
	5, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeImpB (impexpbin) to public;

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
	69, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%",
	5, "BinaryTypeImpB (impexpbin)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "impexpbin->BinaryType",
	"%SYSBLDUSER%", 0,
	"create implicit cast
	(
		impexpbin as BinaryType
		with  BinaryTypeImpB
	);

",
	"f",
	"drop cast (impexpbin as BinaryType);

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
	3, "impexpbin->BinaryType",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function BinaryTypeExpB (BinaryType)
returns impexpbin
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeExportBinary)"" language c;

",
	"f",
	"drop function BinaryTypeExpB (BinaryType);

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
	5, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function BinaryTypeExpB (BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeExportBinary)"");

",
	"f",
	"alter function BinaryTypeExpB (BinaryType)
	with (Modify External Name = ""BinaryTypeExportBinary"");

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
	181, "Alter-ExternalName-BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function BinaryTypeExpB (BinaryType) to public;

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
	69, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%",
	5, "BinaryTypeExpB (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 3, "BinaryType->impexpbin",
	"%SYSBLDUSER%", 0,
	"create cast
	(
		BinaryType as impexpbin
		with  BinaryTypeExpB
	);

",
	"f",
	"drop cast (BinaryType as impexpbin);

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
	3, "BinaryType->impexpbin",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function Compare (BinaryType,BinaryType)
returns integer
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeCompare)"" language c;

",
	"f",
	"drop function Compare (BinaryType,BinaryType);

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
	5, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function Compare (BinaryType,BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeCompare)"");

",
	"f",
	"alter function Compare (BinaryType,BinaryType)
	with (Modify External Name = ""BinaryTypeCompare"");

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
	181, "Alter-ExternalName-Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 85, "Alter-Variant-Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function Compare (BinaryType,BinaryType)
	with (add not variant);

",
	"f",
	"alter function Compare (BinaryType,BinaryType)
	with (drop not variant);

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
	85, "Alter-Variant-Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function Compare (BinaryType,BinaryType) to public;

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
	69, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Compare (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function Equal (BinaryType,BinaryType)
returns boolean
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeEqual)"" language c;

",
	"f",
	"drop function Equal (BinaryType,BinaryType);

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
	5, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function Equal (BinaryType,BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeEqual)"");

",
	"f",
	"alter function Equal (BinaryType,BinaryType)
	with (Modify External Name = ""BinaryTypeEqual"");

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
	181, "Alter-ExternalName-Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 85, "Alter-Variant-Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function Equal (BinaryType,BinaryType)
	with (add not variant);

",
	"f",
	"alter function Equal (BinaryType,BinaryType)
	with (drop not variant);

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
	85, "Alter-Variant-Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function Equal (BinaryType,BinaryType) to public;

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
	69, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "Equal (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 5, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"create function NotEqual (BinaryType,BinaryType)
returns boolean
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeNotEqual)"" language c;

",
	"f",
	"drop function NotEqual (BinaryType,BinaryType);

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
	5, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 181, "Alter-ExternalName-NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function NotEqual (BinaryType,BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(BinaryTypeNotEqual)"");

",
	"f",
	"alter function NotEqual (BinaryType,BinaryType)
	with (Modify External Name = ""BinaryTypeNotEqual"");

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
	181, "Alter-ExternalName-NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 85, "Alter-Variant-NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter function NotEqual (BinaryType,BinaryType)
	with (add not variant);

",
	"f",
	"alter function NotEqual (BinaryType,BinaryType)
	with (drop not variant);

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
	85, "Alter-Variant-NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 69, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on function NotEqual (BinaryType,BinaryType) to public;

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
	69, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%",
	5, "NotEqual (BinaryType,BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 6, "WriteIt (BinaryType)",
	"%SYSBLDUSER%", 0,
	"create procedure WriteIt (BinaryType)
external name ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(WriteIt)"" language c;

",
	"f",
	"drop procedure WriteIt (BinaryType);

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
	6, "WriteIt (BinaryType)",
	"%SYSBLDUSER%",
	7, "BinaryType",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 182, "Alter-ExternalName-WriteIt (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter procedure WriteIt (BinaryType)
	with (Modify External Name = ""$INFORMIXDIR/extend/%SYSBLDDIR%/BinaryData.bld(WriteIt)"");

",
	"f",
	"alter procedure WriteIt (BinaryType)
	with (Modify External Name = ""WriteIt"");

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
	182, "Alter-ExternalName-WriteIt (BinaryType)",
	"%SYSBLDUSER%",
	6, "WriteIt (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 86, "Alter-Variant-WriteIt (BinaryType)",
	"%SYSBLDUSER%", 0,
	"alter procedure WriteIt (BinaryType)
	with (add not variant);

",
	"f",
	"alter procedure WriteIt (BinaryType)
	with (drop not variant);

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
	86, "Alter-Variant-WriteIt (BinaryType)",
	"%SYSBLDUSER%",
	6, "WriteIt (BinaryType)",
	"%SYSBLDUSER%"
);

insert into sysbldobjects
	(bld_id, obj_kind, obj_signature, obj_owner, sequence, create_sql,
	    create_can_fail, drop_sql, drop_can_fail)
values
(
	"%SYSBLDNAME%", 70, "WriteIt (BinaryType)",
	"%SYSBLDUSER%", 0,
	"grant execute on procedure WriteIt (BinaryType) to public;

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
	70, "WriteIt (BinaryType)",
	"%SYSBLDUSER%",
	6, "WriteIt (BinaryType)",
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
