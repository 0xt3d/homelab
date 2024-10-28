{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "hello-2.10";
  src = pkgs.fetchurl {
    url = "mirror://gnu/hello/hello-2.10.tar.gz";
    sha256 = "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i";
  };
  buildInputs = [ pkgs.gnumake pkgs.gcc ];
  meta = {
    description = "A program that produces a familiar, friendly greeting";
    license = pkgs.licenses.gpl3Plus;
    maintainers = [ { name = "Alice Hacker"; email = "alice@example.org"; } ];
  };
}
