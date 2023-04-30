# Docker4Norminette

This repository contains all the logic required to be able to run the [42's Norminette](https://github.com/42School/norminette) program in a Docker container. This way, you can check your programs without installing anything.

**Note 1**: This repository was created with 42 projects in mind.

**Note 2**: The container is deleted when you exit, so no need to manage anything!

## Installation:
Add the following alias to your `.zshrc` or `.bashrc` file:
- Linux:
```bash
alias norminette="docker run --rm -v $(pwd):/docker jkutkut/docker4norminette:latest"
```
- MacOS:
```bash
alias norminette="docker run --rm -v $(PWD):/docker jkutkut/docker4norminette:latest"
```

**Note**: That's it! There is no need to install anything else (except Docker, of course).

## Usage:
### Run Norminette where I am:
- Linux:
```bash
docker run --rm -v $(pwd):/docker jkutkut/docker4norminette:latest
```

- MacOS:
```bash
docker run --rm -v $(PWD):/docker jkutkut/docker4norminette:latest
```

### Run Norminette on a specific folder / file:
Keep in mind that the specific folder should be inside the current directory. If you want to check other directory, replace `$(pwd)` with the path to the directory you want to check.

- Linux:
```bash
docker run --rm -v $(pwd):/docker jkutkut/docker4norminette:latest <path>
```

- MacOS:
```bash
docker run --rm -v $(PWD):/docker jkutkut/docker4norminette:latest <path>
```

## Other versions:
You can specify the version of the container you desire by replacing `latest` with the version you want. Check the [releases](https://github.com/Jkutkut/Docker4Norminette/tags) to see all the available versions.

## Latest Repository details:
- Container OS: `Alpine 3.17`
- Python version: `3.11.3`
- Norminette version: `3.3.51`