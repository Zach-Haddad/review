-- Higher Order Functions

-- Currying

-- multThree :: (Num a) => a -> a -> a -> a
-- multThree x y z = x * y * z
-- Think of as:
-- multThree :: (Num a) => a -> (a -> (a -> a))


-- applyTwice :: (a -> a) -> a -> a
-- applyTwice f x = f (f x)

-- zipWith; part of std lib
--
-- zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
-- zipWith' _ [] _ = []
-- zipWith' _ _ [] = []
-- zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys


-- Mapping and filtering

-- map :: (a -> b) -> [a] -> [b]
-- map _ [] = []
-- map f (x:xs) = f x : map f xs

-- filter :: (a -> Bool) -> [a] -> [a]
-- filter _ [] = []
-- filter p (x:xs)
--     | p x       = x : filter p xs
--     | otherwise = filter p xs


-- quicksort as filter

-- quicksort :: (Ord a) => [a] -> [a]    
-- quicksort [] = []
-- quicksort (x:xs) =
--     let smallerSorted = quicksort (filter (<=x) xs)
--         biggerSorted = quicksort (filter (>x) xs)
--     in  smallerSorted ++ [x] ++ biggerSorted
