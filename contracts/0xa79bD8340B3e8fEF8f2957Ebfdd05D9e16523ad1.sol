contract main {


// =======================  Init code  ======================


array of uint256 stor4;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'VouchCoin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[274 len 2575]
    revert
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
uint256 initialSupply;
array of uint256 name;
array of uint256 standard;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
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

function owner() {
    return owner
}

function balance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() {
    revert
}

function increaseBalance(uint256 arg1, address arg2) {
    balanceOf[address(arg2)] += arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[stor0] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[stor0] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
}

function sub_fbd71fe7(?) {
    owner = msg.sender
    balanceOf[stor0] = 100 * 10^6
    totalSupply = 100 * 10^6
    bool(name.length) = 0
    name.length.field_1 = 9
    name.length.field_8 = 'VouchCoin' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
}



}
