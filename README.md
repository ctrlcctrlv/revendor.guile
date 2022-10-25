# revendor.guile

`revendor.guile` bypasses this pointless check:

```
error: the listed checksum of `/home/fred/Workspace/egui-sdl2-event-example/vendor/epaint/.cargo-checksum.json` has changed:
expected: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
actual:   4fada8c8bf84dbe0f5a1398e6724f91f99a3d5ee30ea4cdca33a3467da37b51a

directory sources are not intended to be edited, if modifications are required then it is recommended that `[patch]` is used with a forked copy of the source
```

using GNU Guix.

## Dependencies

* Bash
* GNU Guix (no packages needed, only `guix repl` used)
* Rust toolchain (`cargo` etc)

## Usage

1. Put both scripts in your `$PATH`.
2. `cd` to the Rust codebase with the vendorized dependencies
3. Run as:
    ```bash
    revendor.scm $(revendor.sh)
    ```

### Guide

<https://fredrickbrennan.medium.com/how-to-bypass-rust-cargo-error-directory-sources-are-not-intended-to-be-edited-ab2f257b89da>

### `deguix`

Since you probably only plan to use GNU Guix for this constrained purpose, its habit of polluting the `PATH` is likely not welcome.

You can do:

```bash
cat deguix/.bashrc >> "$HOME/.bashrc"
cp deguix/.bash_pathfuncs "$HOME"
```

## License
```
Copyright 2022 Fredrick R. Brennan

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this software or any of the provided source code files except in compliance
with the License.  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied.  See the License for the
specific language governing permissions and limitations under the License.
```

**By contributing you release your contribution under the terms of the license.**
