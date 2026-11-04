/-
  MathMeetsML · Lean worksheet: "A machine that checks your proofs"
  ------------------------------------------------------------------
  HOW TO USE
  1. Open https://live.lean-lang.org in a browser (it already has Mathlib).
  2. Delete what is there, paste this whole file.
  3. Each `sorry` is a hole. Replace it with a proof. The panel on the right shows the goal.
     Squiggly red line = Lean does not accept it yet. No red, no `sorry` warning = proved.
  4. Work in your squad. Levels get harder. Stuck for 3 minutes? Read the HINT, then ask.

  Tactics you will use (a tactic is one proof step):
    rfl       "both sides are the same by computation"
    norm_num  "do the arithmetic"
    rw [h]    "rewrite using the equation h"
    induction "the induction you know from first year"
    omega     "solves linear arithmetic over ℕ and ℤ"
    ring      "algebra identity in a commutative ring"
    linarith  "linear inequalities from the hypotheses"
    nlinarith "like linarith, but you may give it extra facts such as squares ≥ 0"
-/
import Mathlib

/-! ## Level 1 · Lean can compute -/

-- Example (done for you)
example : 2 + 2 = 4 := by
  rfl

-- 1a.
example : (3 : ℕ) * 7 = 21 := by
  sorry

-- 1b. HINT: `norm_num` does arithmetic with fractions.
example : (1 : ℚ) / 2 + 1 / 3 = 5 / 6 := by
  sorry

/-! ## Level 2 · Peano arithmetic: what is "obvious"? -/

-- 2a. In Lean, addition is defined by recursion on the SECOND argument: n + 0 = n is true by definition.
theorem ws_add_zero (n : ℕ) : n + 0 = n := by
  sorry

-- 2b. But 0 + n = n is NOT true by definition. It needs induction on n.
--     HINT: the zero case is `rfl`. In the successor case the goal is 0 + (k + 1) = k + 1.
--     `rw [← Nat.add_assoc]` turns 0 + (k + 1) into 0 + k + 1, and then `rw [ih]` uses the hypothesis.
theorem ws_zero_add (n : ℕ) : 0 + n = n := by
  induction n with
  | zero =>
    sorry
  | succ k ih =>
    sorry

/-! ## Level 3 · Let the machine do the boring part -/

-- 3a. HINT: `omega`
example (a b : ℕ) (h : a < b) : a + 1 ≤ b := by
  sorry

-- 3b. The identity you used a thousand times. HINT: `ring`
example (a b : ℝ) : (a + b) ^ 2 = a ^ 2 + 2 * a * b + b ^ 2 := by
  sorry

-- 3c. Solve 2x + 3 = 11. HINT: `linarith`
example (x : ℝ) (h : 2 * x + 3 = 11) : x = 4 := by
  sorry

/-! ## Level 4 · Inequalities you met in your courses -/

-- 4a. AM-GM for two numbers (the root of many convexity arguments).
--     HINT: `nlinarith [sq_nonneg (a - b)]`  (you tell it: (a - b)^2 ≥ 0)
example (a b : ℝ) : 2 * a * b ≤ a ^ 2 + b ^ 2 := by
  sorry

-- 4b. Applied Probability: a coin with P(heads) = p has variance p(1 - p). It is never more than 1/4.
--     HINT: which square is ≥ 0 here? Try `nlinarith [sq_nonneg (p - 1 / 2)]`.
example (p : ℝ) (h0 : 0 ≤ p) (h1 : p ≤ 1) : p * (1 - p) ≤ 1 / 4 := by
  sorry

/-! ## Level 5 · The AI said so. Is it true?

  A chatbot claims: "n² + n + 41 is prime for every natural number n. I checked n = 0, 1, ..., 39."
  Checking many cases is not a proof. Prove the claim is FALSE.
  HINT: `intro h` assumes the claim. `have h40 := h 40` specialises it to n = 40.
        Then `norm_num at h40` computes 40² + 40 + 41 = 1681 = 41² and sees it is not prime.
-/
example : ¬ (∀ n : ℕ, Nat.Prime (n ^ 2 + n + 41)) := by
  sorry

/-! ## Stretch · Your first "real" theorem

  1 + 3 + 5 + ... + (2n - 1) = n².   (∑ i ∈ range n, (2i + 1) means the sum for i = 0, ..., n - 1.)
  HINT: induction. Zero case: `simp`. Successor case: `rw [Finset.sum_range_succ, ih]` and then `ring`.
-/
theorem ws_odd_sum (n : ℕ) : ∑ i ∈ Finset.range n, (2 * i + 1) = n ^ 2 := by
  induction n with
  | zero =>
    sorry
  | succ k ih =>
    sorry

/-
  Finished? Take-home quest: play the Natural Number Game (search "Natural Number Game Lean 4"),
  where you rebuild ℕ from Peano's axioms. Reach "Addition World" boss level and post a screenshot in the group.
-/
