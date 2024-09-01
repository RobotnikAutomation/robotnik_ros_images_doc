# Builder image

This image is used to build the ROS packages. It is based on the [base image](../base/README.md) and adds the tools to build the ROS packages.

## Environment variables

The following environment variables are defined in the image:

| Variable | Description |
|----------|-------------|
| `LROSDEP_FILE` | Path to the list of packages for rosdep |
| `LROSDEP_LIST` | Path to list inserted in the rosdep |

## Installed scripts

The following scripts are installed in the image:

| Script | Description |
|--------|-------------|
| `compile_workspace.sh` | Script to compile the entire workspace |
| `generate_debs.sh` | Script to generate the debian packages, -h for more information |
| `generate_whitelist.sh` | Script to generate the whitelist |
| `local_deps.sh` | Script add the local dependencies to rosdep |
| `install_pcan.sh` | Script to install the PCAN driver |

### compile_workspace.sh

This script compiles the entire workspace. The script must be run from the workspace root folder.

To compile specific packages, set packages names as arguments.

```bash
compile_workspace.sh package1 package2
```

### test_workspace.sh

This script runs the tests of the entire workspace. The script must be run from the workspace root folder.

To run tests of specific packages, set packages names as arguments.

```bash
test_workspace.sh package1 package2
```

### generate_debs.sh

Generates the debian packages from the workspace. The script generates the packages in the `debs` folder, alongside the `src` folder.

The script must be run from the workspace root folder, and the packages must be in the `src` folder.

The script has the features:

- If `.reduce_parallel_jobs` file is present, the script will reduce the number of parallel jobs during the package generation, otherwise, it will use the number of cores available.
- Only generates debian packages if the name of the package is contained in `debs/whitelist.txt` file or is a dependency of a package in the whitelist. If the whitelist is not present, the script will generate all packages.
- The version of the package follow the next pattern: `A.B.C-YYYYMMDD.HHMMSS-HASH`, where:
  - `A.B.C` is the version contained in the `package.xml` file.
  - `YYYYMMDD.HHMMSS` is the UTC time when the package was generated.
  - `HASH` is the hash of commit of the repository where the package is located. (If the package is not in a repository, the hash will be `local`).

### generate_whitelist.sh

Generates the whitelist of packages to be generated. Automatically searches all packages located in `private` folder. The script generates `debs/whitelist.txt` file.

### local_deps.sh

Generate rosdep list with local dependencies.

### install_pcan.sh

Install the PCAN driver. The script will download the driver from the internal repository and install it. Mandatory to set version of the driver to install with `-p` option.

## Installed packages

Please refer to requirements folder for more information about the installed packages.
