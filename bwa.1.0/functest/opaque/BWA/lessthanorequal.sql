-- ---------------------------------------------------------------
-- 
-- Module          : Functional Test for UDT BWA
-- Filename        : lessthanorequal.sql
-- Author          : generated by DBDK
-- PURPOSE
--    Tests btree support routine 'LessThanOrEqual' for UDT BWA
-- 
-- ---------------------------------------------------------------

-- start transaction
begin work;


select	a.id, a.value, 
	b.id, b.value,
	a.value <= b.value	lessthanorequal
  from	tst_BWA a, tst_BWA b
     ;
  

-- end transaction
commit work;

-- ---------------------------------------------------------------
-- EOF                                                            
-- ---------------------------------------------------------------
