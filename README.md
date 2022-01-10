# Forge Template

A template for quickly getting started with forge

## Getting Started

```
forge init --template https://github.com/FrankieIsLost/forge-template
cd forge-template
npm install ## install development dependencies
forge build
forge test
```

## Features

### Testing Utilities

Includes common testing contracts like `Hevm.sol` and `User.sol`, as well as a `Utilities.sol` contract with common testing methods like creating users with an initial balance

### Preinstalled dependencies

DSTest and Solmate are already installed

### Linting

Pre-configured `solhint` and `prettier-plugin-solidity`. Can be run by

```
npm run solhint
npm run prettier
```

### Default Configuration

Including `.gitignore`, `.vscode`, `remappings.txt`
