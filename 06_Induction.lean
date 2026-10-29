-- Mathematical induction with natural numbers

theorem add_zero_nat (n : Nat) : n + 0 = n := by
  induction n with
  | zero => rfl
  | succ n ih => simp

theorem zero_add_nat (n : Nat) : 0 + n = n := by
  induction n with
  | zero => rfl
  | succ n ih => simp

theorem self_equality_nat (n : Nat) : n = n := by
  induction n with
  | zero => rfl
  | succ n ih => rfl

theorem one_le_succ (n : Nat) : n < n + 1 := by
  simp
