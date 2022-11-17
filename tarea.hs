afs2 :: [(a->b)] -> [a] -> [[b]]

afs2 fs xs = map f xs
             where f x = map (g x) fs
                   g x h = h x

-------------------------------------------

filterFs :: [(Int->Bool)] -> [Int] -> [[Int]]
filterFs ps xs = map f ps
              where f p = filter p xs

---------------------------------------------

filtrarP :: (Int -> Bool) -> [[Int]] -> [[Int]]
filtrarP p xss = map (filter p) xss
