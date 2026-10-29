-- Example 1: Zero is even.
def EvenInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k

theorem zero_is_even : EvenInt 0 := by
  unfold EvenInt
  exact ⟨0, by decide⟩

-- Example 2: Two is even.
theorem two_is_even : EvenInt 2 := by
  unfold EvenInt
  exact ⟨1, by decide⟩

-- Example 3: Four is even.
theorem four_is_even : EvenInt 4 := by
  unfold EvenInt
  exact ⟨2, by decide⟩

-- Example 4: One plus one equals two.
theorem one_plus_one : (1 : Int) + 1 = 2 := by
  decide

-- Example 5: Three plus two equals five.
theorem three_plus_two : (3 : Int) + 2 = 5 := by
  decide

-- Example 6: Multiplication by zero gives zero.
theorem integer_mul_zero (n : Int) : n * 0 = 0 := by
  simp

-- Example 7: Multiplication by one preserves an integer.
theorem integer_mul_one (n : Int) : n * 1 = n := by
  simp

-- Example 8: Adding zero preserves an integer.
theorem integer_add_zero (n : Int) : n + 0 = n := by
  simp
