doubleMe x = x * 2
doubleUs x y = x*2 + y*2

doubleSmallNumber x = if x > 100
                        then x
                        else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

-- **** LIST BASICS ****
--
--

-- infix fns
-- 3 `div` 2
-- 3 `mod` 2
-- min a b
-- max a b

-- adding lists
-- [1,2,3] ++ [4]
-- note: must iterate through left side in order to concat

-- [4]:[1,2,3]
-- instantaneous; cons operator

-- [1,2,3,4] !! 3
-- list indexing

-- [1,2,3,4] > [0,1,2]
-- lists compared lexicographically

-- head [1,2,3,4]
-- 1

-- tail [1,2,3,4]
-- [2, 3, 4]

-- last [1, 2, 3, 4]
-- 4

-- init [1, 2, 3, 4]
-- [1, 2, 3]

-- length [1, 2, 3, 4]
-- 4

-- reverse [1, 2, 3, 4]
-- [4, 3, 2, 1]

-- take 2 [1, 2, 3, 4]
-- [1, 2]

-- drop 2 [1, 2, 3, 4]
-- [3, 4]

-- minimum, maximum, sum, product

-- 1 `elem` [1,2,3,4]
-- true

 -- cycle, repeat
 -- [1..4]  => [1,2,3,4]

-- set comprehension
 -- [x*2 | x <- [1..10]]
 -- [2,4,6,8,10,12,14,16,18,20]

-- set comprehension with predicate
--  [x*2 | x <- [1..10], x*2 >= 12]
-- [12,14,16,18,20]

-- boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
-- boomBangs [1, 11, 13, 4, 14]
-- ["BOOM!", "BANG!", "BANG!"]

-- multiple predicates
-- [ x | x <- [10..20], x /= 13, x /= 15, x /= 19]

-- evaluates all combinations
-- [ x*y | x <- [2,5,10], y <- [8,10,11]]
-- [16,20,22,40,50,55,80,100,110]

-- drawing unnamed variable from a list, same as unnamed vars in ruby
-- length' xs = sum [1 | _ <- xs]

-- **** TUPLE BASICS ****
--
--

-- doubles

-- fst (1, 2)
-- 1

-- snd (1, 2)
-- 2

-- zip [1, 1, 1] [2, 3, 4]
-- [(1,2), (1, 3), (1, 4)]

-- zip finite lists with infinite lists
-- zip [1..] [1, 2, 3]
-- [(1,1), (1, 2), (1, 3)]
