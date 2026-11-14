# Local debug signing key

The build script creates `longge-brand.keystore` in this directory on first build. The keystore is a local signing credential and is intentionally ignored by Git. Keep a private backup if you need future builds to update-install over this app; builds signed with a different key cannot update-install over it.
