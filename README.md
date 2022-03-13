# Forge Template

A template for quickly getting started with forge. Inspired by: https://github.com/FrankieIsLost/forge-template

## Getting Started

```
mkdir my-project
cd my-project
forge init --template https://github.com/itsdevbear/forge-template
git submodule update --init --recursive  ## initialize submodule dependencies
npm install ## install development dependencies
make all
make test
```

## Features

### Testing Utilities

Includes a `Utilities.sol` contract with common testing methods (like creating users with an initial balance), as well as various other utility contracts.

### Preinstalled dependencies

`ds-test` for testing, `forge-std` for better cheatcode UX, and `solmate` for optimized contract implementations.  

### Linting

Pre-configured `solhint` and `prettier-plugin-solidity`. Can be run by

```
npm run solhint
npm run prettier
```

### CI with Github Actions

Automatically run linting and tests on pull requests.

### Default Configuration

Including `.gitignore`, `.vscode`, `remappings.txt`

## Acknowledgement

Inspired by great dapptools templates like https://github.com/gakonst/forge-template, https://github.com/gakonst/dapptools-template and https://github.com/transmissions11/dapptools-template
