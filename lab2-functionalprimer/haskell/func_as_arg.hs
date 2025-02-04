-- Define applicatorFunc
applicatorFunc inpFunc s =
  if s == 's' 
    then fromIntegral (sum inpFunc)  -- sum of list as a float
    else fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)  -- average

main = do
    -- Ask for the start and end values of the range
    putStrLn "Enter the start value of the range (a):"
    a <- readLn
    putStrLn "Enter the end value of the range (b):"
    b <- readLn
    
    -- Generate the list based on the range [a..b]
    let inpFunc = [a..b]
    
    -- Ask for the operation to perform ('s' for sum, any other key for average)
    putStrLn "Enter 's' for sum or any other key for average:"
    operation <- getLine
    
    -- Call applicatorFunc with the range and operation
    let result = applicatorFunc inpFunc (head operation) 
    
    -- Print the result
    putStrLn ("Result = " ++ show(result))