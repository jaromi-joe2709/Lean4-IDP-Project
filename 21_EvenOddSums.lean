def EvenInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k

def OddInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k + 1

-- Even + even is even.
theorem even_add_even (a b : Int)
    (ha : EvenInt a) (hb : EvenInt b) :
    EvenInt (a + b) := by
  obtain ⟨x, hx⟩ := ha
  obtain ⟨y, hy⟩ := hb
  unfold EvenInt
  refine ⟨x + y, ?_⟩
  rw [hx, hy]
  omega

-- Odd + odd is even.
theorem odd_add_odd (a b : Int)
    (ha : OddInt a) (hb : OddInt b) :
    EvenInt (a + b) := by
  obtain ⟨x, hx⟩ := ha
  obtain ⟨y, hy⟩ := hb
  unfold EvenInt
  refine ⟨x + y + 1, ?_⟩
  rw [hx, hy]
  omega

-- Even + odd is odd.
theorem even_add_odd (a b : Int)
    (ha : EvenInt a) (hb : OddInt b) :
    OddInt (a + b) := by
  obtain ⟨x, hx⟩ := ha
  obtain ⟨y, hy⟩ := hb
  unfold OddInt
  refine ⟨x + y, ?_⟩
  rw [hx, hy]
  omega
