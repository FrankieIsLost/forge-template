# Forge Template

A template for quickly getting started with forge

## Getting Started

```
mkdir my-project
cd my-project
forge init --template https://github.com/FrankieIsLost/forge-template
git submodule update --init --recursive  ## initialize submodule dependencies
npm install ## install development dependencies
forge build
forge test
```

## Features

### Testing Utilities

Includes common testing contracts like `Hevm.sol` and `Console.sol`, as well as a `Utilities.sol` contract with common testing methods like creating users with an initial balance

### Preinstalled dependencies

`ds-test` and `solmate` are already installed

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
