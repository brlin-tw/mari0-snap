# /snap/gui
This folder holds graphical assets of the snapped application, including application icons and desktop entry.  This folder is not necessary if all of the files are available in the main source tree(which you can specify via the `icon` and `desktop` keys).

For third-party packaging which the snapcraft recipe is separated from the snapped application's part source tree, make a copy of the snapped application's icon here and specify it in snapcraft.yaml file using the `icon` keyword.

NOTE: The Snap Store requires application logo of SVG scalable image or a PNG image with at least 256x256px in size.  If the upstream provided logo is not scalable and large enough a modified copy that satisfies the requirement must be made.