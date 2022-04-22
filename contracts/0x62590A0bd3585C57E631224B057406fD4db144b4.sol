contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[274 len 2454]
    revert
}



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

function sub_99ba3b2a(?) {
    initialSupply = 21 * 10^14
    bool(name.length) = 0
    name.length.field_1 = 10
    name.length.field_8 = 'Paybitcoin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 8
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
