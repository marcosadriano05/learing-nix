let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    cowsay
    lolcat
  ];

  # Environment variable
  GREETING = "Hello, Nix!";  

  # Hook to execute after the shell environment's init
  shellHook = ''
    echo $GREETING | cowsay | lolcat
  '';
}
