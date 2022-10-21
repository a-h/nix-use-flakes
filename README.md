# Run build

## Tasks

### run

Since the `flake.nix` file contains a reference to a specific version of Go, when `nix develop` is executed, that version of Go is present in the shell environment.

By passing `--command ./run.sh`, you can get the `./run.sh` file to execute in that context, with that specific version of Go.

```sh
nix develop --command ./run.sh
```
