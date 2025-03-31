# Finances

## Purpose

> [Sankey diagrams](https://en.wikipedia.org/wiki/Sankey_diagram) are a data
> visualization technique or flow diagram that emphasizes flow/movement/change
> from one state to another or one time to another, in which the width of the
> arrows is proportional to the flow rate of the depicted extensive property. The
> arrows being connected are called nodes and the connected are called links.

I am going to be using Sankey diagrams to track my expenses by month and year,
as stipulated by [the middle class
community](https://www.reddit.com/r/MiddleClassFinance/). I like the Sankey
charts because they contextualize how large certain expenses and incomes are
compared to one another.

Hopefully this Sankey diagram exploration sheds light on where money is going!

## Setup

### Traditional approach

The traditional approach is to use `pip` and `poetry` to install everything.

```bash
# ensure you have pip installed
python3 -m ensurepip

# install poetry, the package and dependency manager
python3 -m pip install poetry

# install all the packages specified in pyproject.toml
python3 -m poetry install

# source the activation script
python3 -m poetry shell
```

> This project is currently using `python3.13` because it is the [current
> actively supported version](https://endoflife.date/python). If `poetry` bugs
> you that your `python` version is not new enough, go into `pyproject.toml` and
> change `python = X` where `X` is your version; you may have to change the
> versions of the other dependencies.

### `nix` approach

Alternatively, if you already have [`nix`](https://nixos.org),
[`direnv`](https://direnv.net), and [`devenv`](https://devenv.sh) installed, you
can run `direnv allow` to automatically install and load all the environment
variables. **This is my preferred method.**

## Running the Code

I would recommend using a Jupyter notebook setup. You can do so in a few ways.

1. [JupyterLab](https://jupyter.org)

   - You can run `jupyterlab` in your browser with the following command

   ```bash
   # install the python kernel with all of the dependencies
   $ poetry run python -m ipykernel install --user --name finances-3.13.1

   # run the server (this will open a new browser tab)
   $ poetry run jupyter lab
   ```

2. [VSCode](https://code.visualstudio.com/docs/datascience/jupyter-notebooks)
   - Alternatively, you can run a `jupyter` server in VSCode
   - Make sure to install the
     [extension](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter)
     in order to get started.

> For both options, remember to choose the correct kernel, so you can actually
> run the code
