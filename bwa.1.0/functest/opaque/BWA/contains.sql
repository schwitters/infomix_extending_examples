-- ---------------------------------------------------------------
-- 
-- Module          : Functional Test for UDT BWA
-- Filename        : contains.sql
-- Author          : generated by DBDK
-- PURPOSE
--    Tests rtree support routine 'Contains' for UDT BWA
-- 
-- ---------------------------------------------------------------

-- start transaction
begin work;


select	a.id, a.value, 
	b.id, b.value,
	Contains(a.value,b.value)	contains
  from	tst_BWA a, tst_BWA b
     ;
  

-- end transaction
commit work;

-- ---------------------------------------------------------------
-- EOF                                                            
-- ---------------------------------------------------------------
