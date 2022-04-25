contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 10^10
    require not msg.value
    stor1 = msg.sender
    stor2[stor1] = stor0
    return code.data[208 len 3422]
}



// =====================  Runtime code  =====================


const name = 'CCX Token'

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const decimals = 2

const symbol = 'CCX'

const transfer(address arg1, uint256 arg2) = 0


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
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

function sub_d2c51e6d(?) {
    require msg.sender == owner
    if balanceOf[address(arg1)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[stor1] + arg2 <= balanceOf[stor1]:
        return 0
    balanceOf[address(arg1)] -= arg2
    balanceOf[stor1] += arg2
    emit Transfer(arg2, arg1, owner);
    return 1
}

function sub_6bd2ee11(?) {
    require msg.sender == owner
    if balanceOf[stor1] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[stor1] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
    return 1
}



}
