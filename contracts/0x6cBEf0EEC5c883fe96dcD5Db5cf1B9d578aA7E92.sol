contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'VouchCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor2[address(msg.sender)] = 10^16
    return code.data[417 len 2373]
}



// =====================  Runtime code  =====================


const name = 'VouchCoin'

const totalSupply = 10^16

const decimals = 8

const symbol = 'VHC'


address owner;
array of uint256 standard;
mapping of uint256 balanceOf;

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if balanceOf[stor0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[stor0] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg1:
        require arg2
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
