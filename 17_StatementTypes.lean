theorem add_zero_fact (n : Int) : n + 0 = n := by
  exact Int.add_zero n

theorem test : 1 = 1 := by
  rfl

-- A theorem: a statement that we prove.
theorem integer_reflexivity (n : Int) : n = n := by
  rfl

-- A corollary: a result derived from an existing theorem.
theorem integer_reflexivity_corollary (n : Int) : n = n := by
  exact integer_reflexivity n
