contract main {




// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initialSupply;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
}

function Token() {
    initialSupply = 10000
    bool(name.length) = 0
    name.length.field_1 = 7
    name.length.field_8 = 'PacBall' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 5
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'PBC' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    balanceOf[address(msg.sender)] = initialSupply
    totalSupply = initialSupply
}



}
