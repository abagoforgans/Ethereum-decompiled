contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor3 = 100000
    stor4 = 3000
    stor5 = 100 * 10^6
    stor6 = msg.sender
    stor7[code.data[3740 len 20]] = 96 * stor5 * stor3
    stor7[address(code.data[3760 len 32])] = stor5 * stor3
    stor7[address(code.data[3792 len 32])] = stor5 * stor3
    stor7[address(code.data[3824 len 32])] = stor5 * stor3
    stor7[address(code.data[3856 len 32])] = stor5 * stor3
    stor0 = 100 * stor5 * stor3
    stor1 = stor5 * stor3
    return code.data[560 len 3168]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
uint256 availableSupply;
address stor2;
uint256 stor4;
address owner;
mapping of uint256 balances;
mapping of address sub_934a0503;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function availableSupply() {
    return availableSupply
}

function owner() {
    return owner
}

function sub_934a0503(?) {
    return sub_934a0503[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function setAvailableSupply(uint256 arg1) {
    if owner != msg.sender:
        return 0
    availableSupply = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_83c93da9(?) {
    if msg.sender == owner:
        sub_934a0503[address(arg1)] = 0
        emit 0xf613578c: arg2, arg1
        return 0
    else:
        return 0
}

function sub_bc6c3ccc(?) {
    if msg.sender == owner:
        sub_934a0503[address(arg1)] = arg2
        emit 0x4cb1a99c: arg2, arg1
        return 0
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2 + stor4:
        return 0
    if arg2 <= 0:
        return 0
    balances[stor2] += stor4
    balances[address(msg.sender)] = balances[address(msg.sender)] - arg2 - stor4
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3 + stor4:
        return 0
    if sub_934a0503[address(arg1)] != msg.sender:
        return 0
    if arg3 <= 0:
        return 0
    balances[stor2] += stor4
    balances[address(arg1)] = balances[address(arg1)] - arg3 - stor4
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
