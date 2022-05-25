contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balancesOf;
address owner;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balancesOf(address arg1) {
    return balancesOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function mint(uint256 arg1) {
    balancesOf[stor4] += arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > balancesOf[msg.sender]
    require balancesOf[address(arg1)] + arg2 < balancesOf[address(arg1)]
    balancesOf[msg.sender] -= arg2
    balancesOf[arg1] += arg2
}



}
