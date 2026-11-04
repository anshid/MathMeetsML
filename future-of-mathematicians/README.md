# Mathematics and AI: The Future of Mathematicians

> *Your maths courses were never wasted. They are the part AI cannot skip.*

A 3-hour session in two halves: a talk on where mathematics and AI are going (and where you fit), a hands-on
**Lean** proof-assistant worksheet, and an **AI app you build from scratch and deploy** to a public link.

## The three projects

| # | Project | From your syllabus | When |
|---|---|---|---|
| 1 | [Digit Recogniser App](notebooks/01_digit_recogniser_app.ipynb) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/anshid/MathMeetsML/blob/main/future-of-mathematicians/notebooks/01_digit_recogniser_app.ipynb) | linear algebra, softmax regression (ML-I), convex optimisation | in the session |
| 2 | [Photo Compressor App](notebooks/02_photo_compressor_app.ipynb) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/anshid/MathMeetsML/blob/main/future-of-mathematicians/notebooks/02_photo_compressor_app.ipynb) | SVD, Eckart-Young, PCA (ML-II) | take-home |
| 3 | [Risk Estimator App](notebooks/03_risk_estimator_app.ipynb) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/anshid/MathMeetsML/blob/main/future-of-mathematicians/notebooks/03_risk_estimator_app.ipynb) | Bayes' rule, expected cost (Applied Probability) | take-home |

Every project follows the same professional path, with a small win at each stage:
**data → baseline → model → evaluate → app → public link → GitHub-ready project.**

## Lean
Open [live.lean-lang.org](https://live.lean-lang.org), paste [`lean/worksheet.lean`](lean/worksheet.lean), replace each `sorry` with a proof.
Five levels plus a stretch: from `2 + 2 = 4` to refuting a chatbot's false claim and proving $1+3+\dots+(2n-1)=n^2$.

## After the session
- [`deploy-guide.md`](deploy-guide.md): put your app on GitHub and Hugging Face Spaces permanently.
- [`careers-handout.md`](careers-handout.md): career paths, a 30-day plan, CV lines, free resources.

## What you need
A Google account (for Colab) and internet access (the app library and Lean run online). A GitHub account and a
Hugging Face account for deployment (free). Data is bundled with scikit-learn: nothing else is downloaded.

Code: MIT. Text: CC-BY-4.0. Datasets: see [`../data/README.md`](../data/README.md).
