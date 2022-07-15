contract main {




// =====================  Runtime code  =====================


address owner;
address upgradableContractAddress;
uint256 decimals;
uint256 totalSupply;
uint8 stor7;
uint256 globalTimeVault;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function globalTimeVault() {
    return globalTimeVault
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(stor7)
}

function upgradableContractAddress() {
    return upgradableContractAddress
}

function upgradeToken(address arg1) {
    require msg.sender == owner
    upgradableContractAddress = arg1
}

function _fallback() {
    delegate upgradableContractAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return ext_call.return_data[0 len return_data.size]
}



}
