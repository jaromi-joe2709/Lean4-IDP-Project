

-- Define a list of natural numbers
def sampleNumbers : List Nat := [1, 2, 3]

-- Inspect and evaluate the list
#check sampleNumbers
#eval sampleNumbers
#eval sampleNumbers.length
#eval sampleNumbers.reverse

-- Appending an empty list changes nothing
theorem append_empty (xs : List Nat) :
    xs ++ [] = xs := by
  simp

-- The length of an appended list is the sum
-- of the lengths of both lists
theorem append_length (xs ys : List Nat) :
    (xs ++ ys).length = xs.length + ys.length := by
  simp
