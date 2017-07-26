-- Pattern matching (similar to if/else)

-- lucky :: (Integral a) => a -> String
-- lucky 7 = "LUCKY NUMBER SEVEN!"
-- lucky x = "Sorry, you're out of luck, pal!"

-- any integer not 7 falls through and reassigns to x


-- Factorial

-- product [1..n]

-- OR

-- factorial :: (Integral a) => a -> a
-- factorial 0 = 1
-- factorial n = n * factorial (n - 1)

-- recursive length w/ pattern matching
-- length' :: (Num b) => [a] -> b
-- length' [] = 0
-- length' (_:xs) = 1 + length' xs


-- Sample Guard (multiple conditionals, else)

-- bmiTell :: (RealFloat a) => a -> a -> String
-- bmiTell height weight
--     | bmi <= 18.5 = "Underweight"
--     | bmi <= 25.0 = "Normal"
--     | bmi <= 30.0 = "Overweight"
--     | bmi <= 35.0 = "Obese I"
--     | bmi <= 40.0 = "Obese II"
--     | otherwise   = "Obese III"
--     where bmi = weight / height ^ 2

-- Sample Guard
-- max' :: (Ord a) => a -> a -> a
-- max' a b
--     | a > b     = a
--     | otherwise = b

-- Inline Guard
-- max' :: (Ord a) => a -> a -> a
-- max' a b | a > b = a | otherwise = b

-- Define and call fn with backticks/infix
-- myCompare :: (Ord a) => a -> a -> Ordering
-- a `myCompare` b
--     | a > b     = GT
--     | a == b    = EQ
--     | otherwise = LT


-- let/in
-- cylinder :: (RealFloat a) => a -> a -> a
-- cylinder r h =
--     let sideArea = 2 * pi * r * h
--         topArea = pi * r ^2
--     in  sideArea + 2 * topArea
