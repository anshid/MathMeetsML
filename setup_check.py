"""Run `python setup_check.py` to confirm your computer is ready for MathMeetsML."""
import sys

MIN_PYTHON = (3, 9)
LIBS = ["numpy", "scipy", "matplotlib", "sklearn", "pandas", "ipywidgets"]
OPTIONAL = ["gradio"]  # Workshop 2 apps; Colab installs it on demand


def main():
    ok = True
    if sys.version_info < MIN_PYTHON:
        print(f"[X] Python {sys.version_info.major}.{sys.version_info.minor} is too old; need >= {MIN_PYTHON[0]}.{MIN_PYTHON[1]}")
        return 1
    print(f"[OK] Python {sys.version_info.major}.{sys.version_info.minor}")

    for lib in LIBS:
        try:
            mod = __import__(lib)
            print(f"[OK] {lib} {getattr(mod, '__version__', '')}")
        except ImportError:
            ok = False
            print(f"[X] {lib} is missing -> run: pip install -r requirements.txt")
    if not ok:
        return 1
    for lib in OPTIONAL:
        try:
            mod = __import__(lib)
            print(f"[OK] {lib} {getattr(mod, '__version__', '')}")
        except ImportError:
            print(f"[--] {lib} not installed (only needed for the Workshop 2 apps): pip install -r requirements.txt")

    import matplotlib
    matplotlib.use("Agg")
    import matplotlib.pyplot as plt
    import numpy as np

    # One gradient descent step on f(x) = x^2 should shrink |x|.
    x, lr = 3.0, 0.1
    x_new = x - lr * 2 * x
    assert abs(x_new) < abs(x), "gradient step did not decrease |x|"
    plt.plot(np.linspace(-1, 1, 20) ** 2)
    plt.close()
    print("[OK] one gradient step and one plot worked")
    print("\nAll good - you are ready for the workshop!")
    return 0


if __name__ == "__main__":
    sys.exit(main())
