# Snap Packaging of [Project]
This is the unofficial snap packaging of [Project], [Snaps are universal Linux packages](https://snapcraft.io).

## Remaining Tasks

Snapcrafters ([join us](https://forum.snapcraft.io/t/join-snapcrafters/1325)) are working to land snap install documentation and the [snapcraft.yaml](https://github.com/snapcrafters/fork-and-rename-me/blob/master/snap/snapcraft.yaml) upstream so [Project] can authoritatively publish future releases.

- [x] *Import* the [Snapcrafters Template Plus](https://github.com/Lin-Buo-Ren/snapcrafters-template-plus) repository to your own GitHub account and name it as _snap_name_-snap (or any valid name you prefer) using GitHub's [Import repository](https://github.com/new/import) feature
  - It is recommended to *avoid forking the template repository* unless you're working on the template itself because you can only fork a repository once
- [ ] Update the description of the repository
- [ ] Update logos and references to `[Project]` and `[my-snap-name]` in `README.markdown` and `snap/README.md`
- [ ] Create a snap that runs in `devmode`
- [ ] Add a screenshot to `snap/README.md`
- [ ] Register the snap in the store, **using the preferred upstream name**(i.e. without custom postfix).  If the preferred upstream name is not available or reserved, file a request to take over the preferred upstream name and temporary use a name with personal postfix instead.
- [ ] Publish the `devmode` snap in the Snap store edge channel
- [ ] Add install instructions to `snap/README.md`
- [ ] Update snap store metadata, icons and screenshots
- [ ] Convert the snap to `strict` confinement, or `classic` confinement if it qualifies
- [ ] Publish the confined snap in the Snap store beta channel
- [ ] Update the install instructions in `snap/README.md`
- [ ] Post a call for testing on the [Snapcraft Forum](https://forum.snapcraft.io) - [link]()
- [ ] Ask a [Snapcrafters admin](https://github.com/orgs/snapcrafters/people?query=%20role%3Aowner) to fork your repo into github.com/snapcrafters, transfer the snap name from you to snapcrafters, and configure the repo for automatic publishing into edge on commit
- [ ] Add the provided Snapcraft build badge to `snap/README.md`
- [ ] Publish the snap in the Snap store stable channel
- [ ] Update the install instructions in `snap/README.md`
- [ ] Post an announcement in the [Snapcraft Forum](https://forum.snapcraft.io) - [link]()
- [ ] Submit a pull request or patch upstream that adds snap install documentation - [link]()
- [ ] Submit a pull request or patch upstream that adds the `snapcraft.yaml` and any required assets/launchers - [link]()
- [ ] Add upstream contact information to this `README.md`
- If upstream accept the PR:
  - [ ] Request upstream create a Snap store account
  - [ ] Contact the Snap Advocacy team to request the snap be transferred to upstream
- [ ] Ask the Snap Advocacy team to celebrate the snap - [link]()

If you have any questions, [post in the Snapcraft forum](https://forum.snapcraft.io).

<!-- 

## The Snapcrafters

| [![Your Name](http://gravatar.com/avatar/bc0bced65e963eb5c3a16cab8b004431/?s=128)](https://github.com/yourname/) |
| :----------------------------------------------------------: |
|          [Your Name](https://github.com/yourname/)           |

--> 

<!-- Uncomment and modify this when you have upstream contacts

## Upstream

| [![Upstream Name](http://gravatar.com/avatar/bc0bced65e963eb5c3a16cab8b004431?s=128)](https://github.com/upstreamname) |
| :----------------------------------------------------------: |
|       [Upstream Name](https://github.com/upstreamname)       |

-->