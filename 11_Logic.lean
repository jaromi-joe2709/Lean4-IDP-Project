-- File 11: Logical Reasoning in Lean 4

-- 1. Implication: P implies P.
theorem implication_self (P : Prop) : P → P := by
  intro h
  exact h

-- 2. And: If P and Q are true, both are true together.
theorem and_intro (P Q : Prop) (hp : P) (hq : Q) : P ∧ Q := by
  constructor
  · exact hp
  · exact hq

-- 3. First part of a conjunction.
theorem and_left (P Q : Prop) (h : P ∧ Q) : P := by
  exact h.1

-- 4. Second part of a conjunction.
theorem and_right (P Q : Prop) (h : P ∧ Q) : Q := by
  exact h.2

-- 5. Or: If P is true, P or Q is true.
theorem or_intro_left (P Q : Prop) (hp : P) : P ∨ Q := by
  left
  exact hp

-- 6. Or: If Q is true, P or Q is true.
theorem or_intro_right (P Q : Prop) (hq : Q) : P ∨ Q := by
  right
  exact hq

-- 7. Contrapositive-style reasoning.
theorem not_p_of_p_implies_false (P : Prop) (h : P → False) : ¬ P := by
  intro hp
  exact h hp
