# Contributing to MathMeetsML

Thanks for your interest. These workshops are meant to be reused by other instructors and improved by students.

## Ways to help
- **Report a problem:** open an issue with the notebook name, the cell that failed, the error text, and where you ran it (Colab or local, and the Python version).
- **Suggest a mission or quest:** open an issue describing the maths it connects to (for example SVD, Markov chains, convexity) and what students would build.
- **Fix or improve a notebook:** send a pull request (see below).
- **Translate or adapt:** forks are welcome under the licences below. A link back is appreciated.

## Pull requests
1. Fork the repo and create a branch from `main` (for example `fix/mission-3-typo`).
2. Keep a change focused: one mission or one document per pull request.
3. Before you push a notebook:
   - run it top to bottom in a fresh runtime (Colab or a clean virtual environment) with **Restart and run all**;
   - keep the *Open In Colab* badge in the first cells;
   - clear heavy outputs and large images so the diff stays small;
   - keep the Core / Stretch / Quest structure and the self-check cells.
4. Run `python setup_check.py` if you changed `requirements.txt`.
5. Describe in the pull request what you changed and why, and which notebook cells you re-ran.

## Style
- Write for a student who knows the theorems but has never coded. Explain each step in plain words, with the maths in one line.
- Prefer small, runnable cells over long ones. Give a prediction prompt before showing a result where you can.
- Use `numpy`, `matplotlib` and the packages in `requirements.txt` only. New dependencies need a reason in the pull request.

## Licences
By contributing you agree that code is released under the MIT licence (`LICENSE`) and text and figures under CC-BY-4.0 (`CONTENT-LICENSE`).
