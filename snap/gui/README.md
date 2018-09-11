# /snap/gui
This folder holds the graphical assets of the snap, and the individual application it provides, including the icon that represents the snap and desktop entries+icons that represent each of the snap-providing applications.  This folder is NOT necessary if all of the files are available in the main source tree and in the `stage` directory(which can be specified via the `icon` and `apps._app_name_.desktop` keys).

For third-party packaging where the packaging recipe is separated from the packaging target's source tree, make a copy of the packaging target's icon here as `icon.{png,svg}` and specify it in snapcraft.yaml file using the `icon` key.

If the packaging target is a graphical user interface application but it doesn't implement a freedesktop.org desktop entry, you may implement one here with the `_app_name_.desktop` filename.  This file, and an `_app_name_.{png,svg}` image will be copied to the `prime` directory as `prime/meta/gui/_app_name_.{desktop,png,svg}` automatically by snapcraft during the prime phase(the `apps._app_name_.desktop` key must not be set) and the desktop entry will be used as the `_app_name_` application's desktop entry.  Note that currently you need to manually set the desktop entry's `Icon` key to `$SNAP/meta/gui/_app_name_.{png,svg}` in order to make the menu entry's icon appear.  For packaging target that do implement a freedesktop.org desktop entry simply specify its path from the `prime` folder to the `apps._app_name_.desktop` key and write a `override-prime` scriptlet to fix-up the desktop entry's `Icon` key to `$SNAP/path/to/the/application's/icon.{png,svg}`.

NOTE: The Snap Store requires that the snap's representing icon be a image of SVG or PNG with at least 256x256px in size.  If the upstream provided logo is not scalable or large enough a modified copy that satisfies the requirement must be made and placed here.

## References
* [Getting ready for stable - doc - snapcraft.io](https://forum.snapcraft.io/t/getting-ready-for-stable/4305)
* [DN3 - Assets in setup/gui should now be placed in snap/gui - Snaps are universal Linux packages](https://docs.snapcraft.io/deprecation-notices/dn3)
