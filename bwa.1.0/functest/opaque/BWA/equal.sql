-- ---------------------------------------------------------------
-- 
-- Module          : Functional Test for UDT BWA
-- Filename        : equal.sql
-- Author          : generated by DBDK
-- PURPOSE
--    Tests support routine 'equal' for UDT BWA
-- 
-- ---------------------------------------------------------------

-- start transaction
begin work;


select	a.id, a.value, 
	b.id, b.value,
	a.value = b.value	equal
  from	tst_BWA a, tst_BWA b
     ;
    

-- end transaction
commit work;

-- ---------------------------------------------------------------
-- EOF                                                            
-- ---------------------------------------------------------------
