-- Recursion

-- example:
--
-- maximum' :: (Ord a) => [a] -> a
-- maximum' [] = error "maximum of empty list"
-- maximum' [x] = x
-- maximum' (x:xs) = max x (maximum' xs)

-- Note:  Use guards for booleans and pattern matching otherwise


-- replicate' :: (Num i, Ord i) => i -> a -> [a]
-- replicate' n x
--     | n <= 0    = []
--     | otherwise = x:replicate' (n-1) x
--
-- Note: Num is not a subclass of Ord. That means that
-- what constitutes for a number doesn't really have to adhere
-- to an ordering. So that's why we have to specify both the
-- Num and Ord class constraints when doing addition or subtraction
-- and also comparison.


-- Recursive quicksort with Haskell
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let left = quicksort [a | a <- xs, a <= x]
      right = quicksort [a | a <- xs, a > x]
  in left ++ [x] ++ right
