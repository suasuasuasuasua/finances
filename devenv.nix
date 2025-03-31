{
  pkgs,
  ...
}:
{
  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
  ];

  # https://devenv.sh/languages/
  languages.python = {
    enable = true;
    version = "3.13";
    poetry = {
      enable = true;
      activate.enable = true;
      install.enable = true;
    };
    venv.enable = true;
  };

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    # nix
    nixfmt-rfc-style.enable = true;

    # python
    autoflake.enable = true;
    black.enable = true;
    isort.enable = true;

    # yaml
    yamlfmt.enable = true;

    # toml
    taplo.enable = true;

    # markdown
    markdownlint.enable = true;

    # etc.
    prettier = {
      enable = true;
      # ignore the huge html and svg files (slows down a lot)
      excludes = [
        ".*.html"
        ".*.svg"
      ];
    };
    check-merge-conflicts.enable = true;
    end-of-file-fixer.enable = true;
    trim-trailing-whitespace.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
