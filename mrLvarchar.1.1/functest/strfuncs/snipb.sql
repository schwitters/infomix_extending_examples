-- --------------------------------------------------------------------------
-- 
-- Module          : Functional Test for snipb(idn_mrLvarchar)
-- Filename        : snipb.sql
-- Description     : Tests additional string functions introduced in 1.1
-- 
-- Tests:
-- 
--    1. Little sanity checks
--    2. Small values
--    3. Big values
--    4. Dynamically generated small and big values
--
-- If enabled, additional trace info gets output to /tmp/mrLvarchar_snipb.trc.
-- ---------------------------------------------------------------------------

--
-- 1. Little sanity checks
--

-- Return everything starting with the first character
execute function snipb('abcdefg', 1) ;

-- Return everything starting with the second character
execute function snipb('abcdefg', 2) ;

-- Return three characters starting with the third character
execute function snipb('abcdefg', 3, 3) ;

-- Specify a length that is way too big.
execute function snipb('abcdefg', 3, 50) ;

-- Return the last character
execute function snipb('abcdefg', -1) ;

-- Return the last two characters
execute function snipb('abcdefg', -2) ;

-- Return the last three characters
execute function snipb('abcdefg', -3) ;

-- Return the two characters starting at the third character from the end
execute function snipb('abcdefg', -3, 2) ;

-- Set a start point beyond the end of the string
execute function snipb('abcdefg', 50) ;

--
-- 2. Small values
--
select '***' || snipb(mrcol, 1, 5) || '***'
from   test_mr
where  id <=5;

select '***' || snipb(mrcol, 5) || '***'
from   test_mr
where  id <=5;

select '***' || snipb(mrcol, -5) || '***'
from   test_mr
where  id <=5;

select '***' || snipb(mrcol, -5, 3) || '***'
from   test_mr
where  id <=5;

--
-- 3. Big values
--

-- Snip out the last 60 characters.
select snipb(mrcol, -60)
from   test_mr where id > 5;

--
-- Snip out the last sentence.
--
select id, snipb(mrcol, instr(mrcol, '. ', -1)+3) 
from  test_mr where id > 5;

--
-- Snip out the last word from all records, big and small.
--
select id, snipb(mrcol, instr(mrcol, ' ', -1)+1)  last_word
from  test_mr;

--
-- 4. Dynamically generated small and big values
--

--
-- Find first occurrence of 'son', output 100 characters
--
select snipb(mrcol, instr(lower(mrcol), 'son'), 100 )
from   test_mr
where  instr(lower(mrcol), 'son') > 0;

--
-- Find last occurrence of 'one', output 100 characters
--
select snipb(mrcol, instr(lower(mrcol), 'one', -1), 100 )
from   test_mr
where  instr(lower(mrcol), 'one') > 0;
