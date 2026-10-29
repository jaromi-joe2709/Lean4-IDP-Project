-- 1. intro: introduces a hypothesis
example (P : Prop) : P → P := by
  intro h
  exact h

-- 2. exact: supplies a proof matching the goal
example (P : Prop) (h : P) : P := by
  exact h

-- 3. apply: applies an implication
example (P Q : Prop) (h : P → Q) (hp : P) : Q := by
  apply h
  exact hp

-- 4. rw: rewrites using an equality
example (a b : Nat) (h : a = b) : a + 1 = b + 1 := by
  rw [h]

-- 5. simp: simplifies an expression
example (n : Nat) : n + 0 = n := by
  simp

-- 6. constructor: proves a conjunction
example (P Q : Prop) (hp : P) (hq : Q) : P ∧ Q := by
  constructor
  · exact hp
  · exact hq

-- 7. rfl: proves reflexive equality
example (n : Nat) : n = n := by
  rfl

-- 8. assumption: uses a matching hypothesis
example (P : Prop) (h : P) : P := by
  assumption

-- 9. cases: examines a logical disjunction
example (P Q : Prop) (h : P ∨ Q) : Q ∨ P := by
  cases h with
  | inl hp => exact Or.inr hp
  | inr hq => exact Or.inl hq
