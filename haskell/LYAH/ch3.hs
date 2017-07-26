-- :t to typecheck

-- write function with type declaration
-- removeNonUppercase :: [Char] -> [Char]
-- removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- addThree :: Int -> Int -> Int -> Int
-- addThree x y z = x + y + z

-- Int < Integer
-- Float < Double
-- Bool
-- Char
-- [Char]  (string is list of chars)

-- :t (==)
-- (==) :: (Eq a) => a -> a -> Bool

-- :t elem
-- elem :: (Eq a, Foldable t) => a -> t a -> Bool

-- Eq typeclass allows for testing equality
-- Ord typeclass used for types with ordering

-- :t (>)
-- (>) :: (Ord a) => a -> a -> Bool

-- :t show
-- show :: Show a => a -> String

-- :t read
-- read :: Read a => String -> a

-- :t succ
-- succ :: Enum a => a -> a
