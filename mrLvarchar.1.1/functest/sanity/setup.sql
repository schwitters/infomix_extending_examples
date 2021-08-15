-- ---------------------------------------------------------------
-- 
-- Module          : Functional Test for idn_mrLvarchar UDT
-- Filename        : setup.sql
-- PURPOSE
--    Creates a test table for the idn_mrLvarchar UDT. 
-- 
-- ---------------------------------------------------------------

create table test_mr
(id int, description lvarchar, mrcol idn_mrLvarchar);

-- ---------------------------------------------------------------
-- EOF                                                            
-- ---------------------------------------------------------------
