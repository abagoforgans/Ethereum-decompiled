contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = 0x3c0b455477a611088364c6b01c5bb79ffe41a7d6
    stor1[0x3c0b455477a611088364c6b01c5bb79ffe41a7d6] = 300000000 * 10^18
    stor0 = 300000000 * 10^18
    return code.data[349 len 2045]
}



// =====================  Runtime code  =====================


const name = 'ZJF'

const decimals = 18

const ZJFPrivate = 300000000 * 10^18

const symbol = 'ZJF'

const factorial = 6


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address zJFTokenDepositAddress;

function ZJFTokenDeposit() {
    return zJFTokenDepositAddress
}

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
