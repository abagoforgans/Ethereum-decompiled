contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 25
    stor0.length.field_8 = 'Token 0.1.2 bitokdice.com' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 10^16
    require not msg.value
    stor2 = msg.sender
    stor3[address(msg.sender)] = stor1
    return code.data[334 len 2006]
}



// =====================  Runtime code  =====================


const name = 'Bitokcoin'

const decimals = 8

const symbol = 'BITOK'


array of uint256 standard;
uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
