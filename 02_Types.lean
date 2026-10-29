-- File 2: Understanding Types in Lean 4

-- Natural numbers
#check (10 : Nat)
#check (0 : Nat)

-- Integers, including negative numbers
#check (10 : Int)
#check (-5 : Int)

-- Propositions are statements that can be proved
#check (2 + 3 = 5)

-- Strings represent text
#check "Lean 4"

-- Check the results of expressions
#eval (2 + 3 : Nat)
#eval ((-5 : Int) + 2)
