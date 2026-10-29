-- File 8: More Lean 4 tactics


-- 1. have: creates an intermediate fact
theorem add_zero_using_have (n : Nat) : n + 0 = n := by
  have h : n + 0 = n := by simp
  exact h

-- 2. change: changes the goal to an equivalent form
theorem change_example (n : Nat) : n = n := by
  change n = n
  rfl

-- 3. calc: proves a result through a sequence of equalities
theorem calc_example (n : Nat) : n + 0 = n := by
  calc
    n + 0 = n := by simp

-- 4. left: proves the left side of an Or proposition
theorem or_left_example (P Q : Prop) (h : P) : P ∨ Q := by
  left
  exact h

-- 5. right: proves the right side of an Or proposition
theorem or_right_example (P Q : Prop) (h : Q) : P ∨ Q := by
  right
  exact h

-- 6. contradiction: derives a result from contradictory hypotheses
theorem contradiction_example (P : Prop) (h : P) (hn : ¬ P) : False := by
  contradiction
