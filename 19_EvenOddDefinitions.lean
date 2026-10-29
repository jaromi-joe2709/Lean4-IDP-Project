-- An integer is even if it is twice another integer.
def EvenInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k

-- An integer is odd if it is one more than twice an integer.
def OddInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k + 1

theorem zero_is_even : EvenInt 0 := by
  unfold EvenInt
  exact ⟨0, by decide⟩

theorem one_is_odd : OddInt 1 := by
  unfold OddInt
  exact ⟨0, by decide⟩

theorem two_is_even : EvenInt 2 := by
  unfold EvenInt
  exact ⟨1, by decide⟩

theorem three_is_odd : OddInt 3 := by
  unfold OddInt
  exact ⟨1, by decide⟩
