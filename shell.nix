with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "php71fb";
        buildInputs = [ nginx 
                         php71 ] ++ (with php71Packages;[ composer    ]);

        shellHook = ''
        source ./env.sh
        '';
}
