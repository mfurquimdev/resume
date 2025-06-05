{ pkgs ? import <nixpkgs-unstable> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    typst
    typstyle
    typst-live
    vimPlugins.nvim-treesitter-parsers.typst
    monaspace
    nerdfonts
    font-awesome
  ];
}
