-- File 12: Equality Properties

-- 1. Reflexivity: every integer equals itself.
theorem equality_reflexive (a : Int) : a = a := by
  rfl

-- 2. Symmetry: if a equals b, then b equals a.
theorem equality_symmetric (a b : Int) (h : a = b) : b = a := by
  exact h.symm

-- 3. Transitivity: if a equals b and b equals c, then a equals c.
theorem equality_transitive (a b c : Int)
    (hab : a = b) (hbc : b = c) : a = c := by
  exact hab.trans hbc

-- 4. Adding the same integer preserves equality.
theorem equality_add_preserved (a b c : Int)
    (h : a = b) : a + c = b + c := by
  rw [h]
