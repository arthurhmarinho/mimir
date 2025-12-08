{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.go
    pkgs.gopls  # Opcional: ajuda o VS Code a completar código
    pkgs.gotools
  ];

  shellHook = ''
    echo "Ambiente de desenvolvimento Go carregado! 🚀"
  '';
}
