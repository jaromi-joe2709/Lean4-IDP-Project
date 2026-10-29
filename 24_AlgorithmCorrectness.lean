
def increment (n : Nat) : Nat :=
  n + 1

-- Incrementing zero produces one.
theorem increment_zero :
    increment 0 = 1 := by
  rfl

-- Incrementing a natural number produces a larger number.
theorem increment_greater (n : Nat) :
    n < increment n := by
  simp [increment]
