{ pkgs ? import <nixpkgs> {}}: 
pkgs.lib.makeExtensible (self: with self; {
  callPackage = pkgs.pypy2Packages.newScope self;
  manifestparser = callPackage ./marionette-harness/manifestparser.nix { };
  marionette_driver = callPackage ./marionette-harness/marionette_driver.nix { };
  marionette-harness = callPackage ./marionette-harness { };
  mozcrash = callPackage ./marionette-harness/mozcrash.nix { };
  mozdevice = callPackage ./marionette-harness/mozdevice.nix { };
  mozfile = callPackage ./marionette-harness/mozfile.nix { };
  mozhttpd = callPackage ./marionette-harness/mozhttpd.nix { };
  mozinfo = callPackage ./marionette-harness/mozinfo.nix { };
  mozlog = callPackage ./marionette-harness/mozlog.nix { };
  moznetwork = callPackage ./marionette-harness/moznetwork.nix { };
  mozprocess = callPackage ./marionette-harness/mozprocess.nix { };
  mozprofile = callPackage ./marionette-harness/mozprofile.nix { };
  mozrunner = callPackage ./marionette-harness/mozrunner.nix { };
  moztest = callPackage ./marionette-harness/moztest.nix { };
  mozversion = callPackage ./marionette-harness/mozversion.nix { };

  hpack = callPackage ./marionette-harness/hpack.nix { };
  h2 = callPackage ./marionette-harness/h2.nix { };
  hyperframe = callPackage ./marionette-harness/hyperframe.nix { };
  wptserve = callPackage ./marionette-harness/wptserve.nix { };
})
