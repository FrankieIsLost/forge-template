# deps
all: update lint build
update:; forge update

# Build & test
build  :; forge clean && forge build --optimize --optimize-runs 1000000
test   :; forge clean && forge test --optimize --optimize-runs 1000000 -v # - f-ffi # enable if you need the `ffi` cheat code on HEVM
trace   :; forge clean && forge test --optimize --optimize-runs 1000000 -vvv # --ffi # enable if you need the `ffi` cheat code on HEVM
clean  :; forge clean
snapshot :; forge clean && forge snapshot --optimize --optimize-runs 1000000

# Lint
lint :; npm run lint
lint-check :; npm run lint:check
