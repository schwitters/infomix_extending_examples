-- ---------------------------------------------------------------
-- 
-- Module          : Functional Test for UDT BWA
-- Filename        : binio.sql
-- Author          : generated by DBDK
-- PURPOSE
--    Tests binary send and receive routines for UDT BWA
-- 
-- ---------------------------------------------------------------

-- start transaction
begin work;


-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 0
     ;

select  *
  from	tst_BWA
 where  id = 0
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 1
     ;

select  *
  from	tst_BWA
 where  id = 1
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 2
     ;

select  *
  from	tst_BWA
 where  id = 2
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 3
     ;

select  *
  from	tst_BWA
 where  id = 3
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 4
     ;

select  *
  from	tst_BWA
 where  id = 4
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 5
     ;

select  *
  from	tst_BWA
 where  id = 5
    ;

-- valid test data
update	tst_BWA
   set	value = BWARecv(BWASend(BWARecv(BWASend(value))))
 where  id = 6
     ;

select  *
  from	tst_BWA
 where  id = 6
    ;



-- end transaction
commit work;

-- ---------------------------------------------------------------
-- EOF                                                            
-- ---------------------------------------------------------------
