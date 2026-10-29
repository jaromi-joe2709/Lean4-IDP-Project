-- File 10: Functions in Lean 4

-- Function 1: Double a natural number.
def double (n : Nat) : Nat := n + n

-- Check the function's type.
#check double

-- Evaluate the function.
#eval double 3

-- Property 1: Doubling a number gives n + n.
theorem double_definition (n : Nat) : double n = n + n := by
  rfl

-- Function 2: Increment a natural number.
def increment (n : Nat) : Nat := n + 1

-- Property 2: Incrementing zero gives one.
theorem increment_zero : increment 0 = 1 := by
  rfl

-- Property 3: Incrementing a number is greater than that number.
theorem increment_greater (n : Nat) : n < increment n := by
  simp [increment]
