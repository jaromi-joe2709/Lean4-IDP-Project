-- Basic Lean expressions

#check 5
#check (5 : Nat)
#check (5 : Int)
#check "Hello, Lean 4"

#eval 2 + 3
#eval 10 - 4

def double (n : Nat) : Nat := n + n

#check double
#eval double 3
