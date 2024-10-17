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
  sed -i 's#/v1.0.0#/latest#g' README.md
  ```

  - link to a (optionally new) DigiKey revision

1. Create a Tag and push it.

1. Create a release.

- Generate Release Notes
- Add the relevant content from CHANGELOG.md
- Download the generated_output.zip file from the tagged Action run.
- Add the version to generated_output-x.y.z.zip
- Upload the zip as artifact of the release

1. Tag the pedalboard-hw-site commit of the tagged Action run.

- Add a link to the tag on pedalboard-hw-site also in the release description
- copy the tagged files into a subdirectory

1. Bump the version on main to RC1 (as described above)

- Change old version for diff on pedalboard-hw.kibot.yaml (2 lines!)
- Add a new Release in CHANGELOG.md
  ```sh
  sed -i 's#/latest#/v1.0.0#g' README.md
  ```
