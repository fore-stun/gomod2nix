{ pkgs, lib }:
{
  schemaVersion = "4";

  mod."github.com/BurntSushi/toml" = {
    version = "v1.1.0";
    hash = "sha256-1Mib3Aj/YhrlwA3o3x9orRRkVlYa5JRDQfNdtaUyeu0=";
  };
  mod."github.com/inconshreveable/mousetrap" = {
    version = "v1.0.0";
    hash = "sha256-ogTuLrV40FwS4ueo4hh6hi1wPywOI+LyIqfNjsibwNY=";
  };
  mod."github.com/nix-community/go-nix" = {
    version = "v0.0.0-20220612195009-5f5614f7ca47";
    hash = "sha256-eBPzib8STUZnDpLFpWZz+F00thbp1P/98oiEE/XWE+M=";
  };
  mod."github.com/sirupsen/logrus" = {
    version = "v1.8.1";
    hash = "sha256-vUIDlLXYBD74+JqdoSx+W3J6r5cOk63heo0ElsHizoM=";
  };
  mod."github.com/spf13/cobra" = {
    version = "v1.4.0";
    hash = "sha256-I6j9sD61Ztcc2W/WGeWo3ggYtnGTxNxZ2EFPdtO0UEY=";
  };
  mod."github.com/spf13/pflag" = {
    version = "v1.0.5";
    hash = "sha256-w9LLYzxxP74WHT4ouBspH/iQZXjuAh2WQCHsuvyEjAw=";
  };
  mod."golang.org/x/mod" = {
    version = "v0.5.1";
    hash = "sha256-+r/pAtwGHJiGISV/je8ZPXCFukTTGbZ8y0p3zb8wGcs=";
  };
  mod."golang.org/x/sys" = {
    version = "v0.0.0-20220610221304-9f5ed59c137d";
    hash = "sha256-/qCatdMn+M1Lbu10CK0kQtLCmYDBXtIQ1kdy2F/2hlc=";
  };
  mod."golang.org/x/tools" = {
    version = "v0.0.0-20210106214847-113979e3529a";
    hash = "sha256-VdoV0LIBWehslesNW1ETJ1WmO4KsGojC2HDdNAjGzsI=";
  };
  mod."golang.org/x/xerrors" = {
    version = "v0.0.0-20220609144429-65e65417b02f";
    hash = "sha256-tl8pv3oddbz2+KoIp7PFDKsxjQF8ocjPF8XPsY3sw38=";
  };
}
