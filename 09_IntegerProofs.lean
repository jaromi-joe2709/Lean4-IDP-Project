-- File 9: Integer Proofs

-- Proposition 1: Adding zero does not change an integer.
theorem int_add_zero (n : Int) : n + 0 = n := by
  simp

-- Proposition 2: Subtracting an integer from itself gives zero.
theorem int_sub_self (n : Int) : n - n = 0 := by
  simp

-- Proposition 3: Every integer equals itself.
theorem int_eq_self (n : Int) : n = n := by
  rfl

-- Proposition 4: If two integers are equal,
-- adding one to each preserves equality.
theorem int_add_one_preserves_eq (a b : Int)
    (h : a = b) : a + 1 = b + 1 := by
  rw [h]

-- Proposition 5: Adding zero on the left preserves an integer.
theorem int_zero_add (n : Int) : 0 + n = n := by
  simp

-- Proposition 6: If a equals b, then b equals a.
theorem int_eq_symm (a b : Int)
    (h : a = b) : b = a := by
  exact h.symm

-- Proposition 7: Integer addition is commutative.
theorem int_add_comm (a b : Int) : a + b = b + a := by
  simp [Int.add_comm]
