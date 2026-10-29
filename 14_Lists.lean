-- Define a list of integers
def sampleList : List Int := [1, 2, 3]

-- Check the definition
#check sampleList

-- Evaluate list operations
#eval sampleList.length
#eval sampleList.reverse

-- The length of an empty list is zero
theorem list_length_empty : ([] : List Int).length = 0 := by
  rfl

-- Appending an empty list changes nothing
theorem list_append_empty (xs : List Int) :
    xs ++ [] = xs := by
  simp
