-- Proposition 1: Every integer equals itself.
theorem integer_self_equality (n : Int) : n = n := by
  rfl

-- Proposition 2: Adding zero preserves an integer.
theorem integer_add_zero (n : Int) : n + 0 = n := by
  simp

-- Proposition 3: Subtracting an integer from itself gives zero.
theorem integer_sub_self (n : Int) : n - n = 0 := by
  simp

-- Proposition 4: Integer addition is commutative.
theorem integer_add_comm (a b : Int) : a + b = b + a := by
  simp [Int.add_comm]

-- Proposition 5: If two integers are equal,
-- adding one to each preserves equality.
theorem add_one_preserves_equality (a b : Int)
    (h : a = b) : a + 1 = b + 1 := by
  rw [h]
