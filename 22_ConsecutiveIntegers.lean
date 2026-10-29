-- Prove that the product of two consecutive integers is even.

def EvenInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k

def OddInt (n : Int) : Prop :=
  ∃ k : Int, n = 2 * k + 1

theorem zero_is_even : EvenInt 0 := by
  unfold EvenInt
  exact ⟨0, by decide⟩
