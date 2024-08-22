let
  projectName = "tbd";

  nixpkgs = let
    revision = "c374d94f1536013ca8e92341b540eba4c22f9c62";
    sha256 = "1vc8bzz04ni7l15a9yd1x7jn0bw2b6rszg1krp6bcxyj3910pwb7";
  in fetchTarball {
    name = "nixpkgs";
    url = "https://github.com/NixOS/nixpkgs/archive/${revision}.tar.gz";
    inherit sha256;
  };

in { pkgs ? import nixpkgs { } }:

let
  inherit (pkgs) lib mkShell stdenvNoCC;

  document = stdenvNoCC.mkDerivation {
    name = projectName;
    src = ./.;
    nativeBuildInputs = with pkgs;
      [ (texliveBasic.withPackages (import ./f1rstlady/dependencies.nix)) ];
    buildPhase = ''
      mkdir -p .cache/texmf-var
      export TEXMFHOME=.cache
      export TEXMFVAR=.cache/texmf-var
      make
    '';
    installPhase = ''
      mkdir -p $out
      cp *.pdf $out/
    '';
  };

  devShell = mkShell {
    name = "dev-shell-for-${projectName}";
    inputsFrom = [ document ];
    packages = with pkgs; [
      gitlint
      ltex-ls
      nixfmt-classic
      pre-commit
      texlab
      yamlfmt
    ];
    shellHook = "pre-commit install -f";
  };

in if lib.inNixShell then devShell else document
