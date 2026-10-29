-- File 3: Propositions and proofs

-- Proposition 1: Every number equals itself.
theorem self_equality (n : Int) : n = n := by
  rfl

-- Proposition 2: If P is true, then P is true.
theorem identity_proposition (P : Prop) : P → P := by
  intro h
  exact h

-- Proposition 3: If P and Q are both true, then both are true together.
theorem and_proposition (P Q : Prop)
    (hp : P) (hq : Q) : P ∧ Q := by
  constructor
  · exact hp
  · exact hq
