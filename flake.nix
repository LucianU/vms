{
  description = "VMs";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/23.05";

  outputs = { self, nixpkgs }: {

    devShell.aarch64-darwin = with nixpkgs.legacyPackages.aarch64-darwin; mkShell {
      buildInputs = [ just ];
    };
  };
}

