
-- A function that doubles a natural number
def doubleNumber (n : Nat) : Nat :=
  n + n

-- Evaluate the function
#eval doubleNumber 5

-- Prove that doubling zero gives zero
theorem double_zero : doubleNumber 0 = 0 := by
  rfl

-- Prove that doubling n + 1 adds 2
theorem double_successor (n : Nat) :
    doubleNumber (n + 1) = doubleNumber n + 2 := by
  simp [doubleNumber, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]
