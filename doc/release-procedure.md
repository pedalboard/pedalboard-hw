# How to create a release

The release procedure is not yet fully automated. Please follow below steps:

1. Bump Version

- In Schematic Editor: File -> Page Settings -> Update Issue Date and Revision
  (with export to other sheets)
- In PCB Editor: File -> Page Settings -> Update Issue Date and Revision
- Update CHANGELOG.md (release date)
- Update README.md
  - link the versioned docs.

  ```sh
  sed -i 's#/latest#/vX.Y.Z#g' README.md
  ```

  - link to a (optionally new) DigiKey revision

1. Create a Tag and push it.

   ```sh
   git tag vX.Y.Z
   git push origin vX.Y.Z
   ```

   This triggers the CI to deploy versioned docs to
   `pedalboard.github.io/pedalboard-hw/vX.Y.Z/`.

1. Create a release.

- Generate Release Notes
- Add the relevant content from CHANGELOG.md
- Download the generated_output.zip file from the tagged Action run.
- Add the version to generated_output-x.y.z.zip
- Upload the zip as artifact of the release

1. Bump the version on main to RC1 (as described above)

- Change old version for diff on pedalboard-hw.kibot.yaml (2 lines!)
- Add a new Release in CHANGELOG.md

  ```sh
  sed -i 's#/vX.Y.Z#/latest#g' README.md
  ```

1. Update the OSHWA registration (../../oshwa/README.md)
