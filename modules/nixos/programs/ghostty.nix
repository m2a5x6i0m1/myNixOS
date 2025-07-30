{
  inputs,
  pkgs,
  lib,
  ...
}:
let
  # Required until this is fixed upstream: https://github.com/ghostty-org/ghostty/discussions/7356
  ghosttyPatched = inputs.ghostty.packages.x86_64-linux.default.overrideAttrs (drv: {
    patches = drv.patches or [ ] ++ [
      (pkgs.fetchpatch {
        url = "https://github.com/Opposite34/ghostty/commit/5b871c595254eece6bf44ab48f71409b7ed36088.patch";
        hash = "sha256-hCWp2MdoD89oYN3I+Pq/HW4k4RcozS1tDuXHO3Nd+Y8=";
      })
    ];
  });
in
{
  environment.systemPackages = with pkgs; [
    ghosttyPatched
  ];
}
