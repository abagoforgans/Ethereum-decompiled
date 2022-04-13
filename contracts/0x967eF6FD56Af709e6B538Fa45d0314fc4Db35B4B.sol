contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor2;
address stor3;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 11
    stor0.length.field_8 = 'Token 1.0.8' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor3 = msg.sender
    stor2[address(msg.sender)] = 10 * 10^18
    return code.data[329 len 2073]
}



// =====================  Runtime code  =====================


const name = 'Credit 2.0'

const totalSupply = 10 * 10^18

const decimals = 10

const _totalSupply = 10 * 10^18

const symbol = 'cfc'


array of uint256 standard;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address owner;

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
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
