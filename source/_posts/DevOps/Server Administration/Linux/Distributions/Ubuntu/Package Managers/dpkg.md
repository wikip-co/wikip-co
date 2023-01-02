---
title: dpkg
image: dpkg
tags:
-
---
## Description

`dpkg` (Debian Package) is the software at the base of the package management system in the free operating system Debian and its numerous derivatives. `dpkg` is used to install, remove, and provide information about .deb packages. `dpkg` itself is a low-level tool. `APT` (Advanced Package Tool), a higher-level tool, is more commonly used than `dpkg` as it can fetch packages from remote locations and deal with complex package relations, such as dependency resolution. Frontends for `APT`, like aptitude (ncurses) and synaptic (GTK), are used for their friendlier interfaces.

The Debian package "dpkg" provides the `dpkg` program, as well as several other programs necessary for run-time functioning of the packaging system, including: `dpkg-deb`, `dpkg-split`, `dpkg-query`, `dpkg-statoverride`, `dpkg-divert` and `dpkg-trigger`. It also includes the programs such as `update-alternatives` and `start-stop-daemon`.

## Usage [^2]

To install a `.deb` package:

`dpkg -i filename.deb`

where `filename.deb` is the name of the Debian package (such as `pkgname_0.00-1_amd64.deb`).

The list of installed packages can be obtained with:

`dpkg -l [optional pattern]`

To remove an installed package:

`dpkg -r packagename`

## Trobleshooting

### Package Database Corrupted [^1] [^3]

If you run into conflits installing a package and running the `apt` command keeps producing errors, then the following steps may help repair your system.

Run, `sudo dpkg --configure -a` to try reconfiguring the `dpkg` database.  This should produce a list of the software packages causing errors.

Now remove the packages causing issues by running, `sudo dpkg --force-all -P <software packages>` (listing all the software packages from the previous step).

Finally run `sudo apt install -f` and `sudo apt autoremove` to get back to a working state.

You should now be able to run `sudo apt update && sudo apt upgrade` without errors.

[^1]: https://forums.linuxmint.com/viewtopic.php?t=298636
[^2]: https://man7.org/linux/man-pages/man1/dpkg.1.html
[^3]: https://phoenixnap.com/kb/fix-sub-process-usr-bin-dpkg-returned-error-code-1