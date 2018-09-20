# /snap/gui
This folder holds the graphical assets of the snap, including but not limited to the icons and desktop entries that represents the snap and each of the snap-providing applications.  This folder is NOT necessary if all of the files are available in the main source tree and in the `stage` directory(which can be specified via the `icon` and `apps._app_name_.desktop` keys).

The entire content of this folder will be copied to the `meta/gui` directory under the `prime` folder by snapcraft after the prime step.

## Icon for Representing a Snap
For third-party packaging where the packaging recipe is separated from the packaging target's source tree, make a copy of the packaging target's PNG/SVG icon here and specify it in snapcraft.yaml file using the `icon` key to specify it as the snap's icon displayed in the Snap Store.

NOTE: The Snap Store requires that the snap's representing icon be a image of SVG or PNG with at least 256x256px in size.  If the upstream provided logo is not scalable or large enough a modified copy that satisfies the requirement must be made and placed here.

## Desktop Entries for Applications Provided by the Snap
If the packaging target is a graphical user interface application but it doesn't implement a freedesktop.org desktop entry, you may implement one here with the `.desktop` filename extension(The filename isn't significant, but it's `Exec` key must be a valid snap launch command(e.g. `_snap_name_._app_name_` or `_snap_name_` when `_snap_name_` is identical to the `_app_name_`) and it's `Icon` key must set to `$SNAP/some/icon/under/the/prime/directory.{png,svg}` in order to make the menu entry's icon work).

## References
* [Commands, daemons & assets - Snaps are universal Linux packages](https://docs.snapcraft.io/build-snaps/metadata#fixed-assets)
* [Getting ready for stable - doc - snapcraft.io](https://forum.snapcraft.io/t/getting-ready-for-stable/4305)
* [DN3 - Assets in setup/gui should now be placed in snap/gui - Snaps are universal Linux packages](https://docs.snapcraft.io/deprecation-notices/dn3)
