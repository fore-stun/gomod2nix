# Gomod2nix

> Now with Nix instead of TOML. Rewrite in progress...

Convert applications using Go modules -> Nix

## Usage
From the Go project directory execute:
``` bash
$ gomod2nix
```

This will create `gomod2nix.nix` which contains something like:
``` nix
# Generated by gomod2nix
{ pkgs, lib, ... }:
{
  schemaVersion = 4;
  mod."github.com/go-openapi/validate" = { version = "v0.22.1"; hash = "sha256-xU2pyIwBlXZnb25gn9lnyE+IQLNXo1RCAB9jINjKVMo="; replacedPath = ""; };
}
```

A sample `default.nix` which invokes the `buildGoApplication` (which can be created using the `generate` subcommand) is as follows:
``` nix
{ pkgs ? (
    let
      inherit (builtins) fetchTree fromJSON readFile;
      inherit ((fromJSON (readFile ./flake.lock)).nodes) nixpkgs gomod2nix;
    in
    import (fetchTree nixpkgs.locked) {
      overlays = [
        (import "${fetchTree gomod2nix.locked}/overlay.nix")
      ];
    }
  )
}:

pkgs.buildGoApplication {
  pname = "argo-trash";
  version = builtins.replaceStrings [ "\n" ] [ "" ] (builtins.readFile ./VERSION);
  pwd = ./.;
  src = ./.;
  modules = ./gomod2nix.nix;
}
```

For more in-depth usage check the [Getting Started](./docs/getting-started.md) and the [Nix API reference](./docs/nix-reference.md) docs.

## Motivation

The [announcement blog post](https://www.tweag.io/blog/2021-03-04-gomod2nix/) contains comparisons with other Go build systems for Nix and additional notes on the design choices made.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE)
file for details.

## About the project
The developmentent of Trustix (which Gomod2nix is a part of) has been sponsored by [Tweag I/O](https://tweag.io/) and funded by the [NLNet foundation](https://nlnet.nl/project/Trustix) and the European Commission’s [Next Generation Internet programme](https://www.ngi.eu/funded_solution/trustix-nix/) through the NGI Zero PET (privacy and trust enhancing technologies) fund.

![NGI0 logo](./.assets/NGI0_tag.png)
![NLNet banner](./.assets/nlnet-banner.png)
![Tweag logo](./.assets/tweag.png)
