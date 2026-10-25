# MathMeetsML

> *Your maths courses were never wasted.*

A 3-hour hands-on workshop for BSc Mathematics Honours students. You already know the theorems
(gradients, SVD, Markov chains, backprop is just the chain rule). Here you run them, break them and build
real machine-learning things with them. No coding experience needed.

## Quickstart (pick one)

1. **Google Colab (easiest):** open a notebook below and click the badge. You need only a Google account.
2. **Your own computer:**
   ```
   git clone https://github.com/anshid/MathMeetsML.git
   cd MathMeetsML
   python -m venv .venv
   .venv\Scripts\activate        # macOS/Linux: source .venv/bin/activate
   pip install -r requirements.txt
   python setup_check.py
   jupyter lab
   ```
3. **Stuck?** Raise your hand. An offline copy is available in the lab.

## Missions

| # | Mission | From your syllabus |
|---|---|---|
| 0 | Does it work? (digit widget) | warm-up |
| 1 | [Gradient Descent Golf](notebooks/01_gradient_descent_golf.ipynb) | Convex Optimization, ML-I |
| 2 | Digit Reader from scratch | ML-I (regression, logistic) |
| 3 | Selfie Compressor & Eigenfaces | SVD, PCA (ML-II) |
| 4 | Mini-Google & Name Generator | Markov chains (Applied Probability) |
| 5 | Inside a tiny AI | backprop, attention |

Each mission has **Core** (in the session), **Stretch** (finish early) and a **Quest** (take-home).

## Before the workshop
- Create a free GitHub account.
- Bring a favourite photo for Mission 3 (a selfie is optional; stock photos are provided).

## Licences
Code: MIT (`LICENSE`). Text and figures: CC-BY-4.0 (`CONTENT-LICENSE`).
