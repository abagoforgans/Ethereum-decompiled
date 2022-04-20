contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor2 = msg.sender
    stor3 = code.data[4166 len 32]
    stor0[address(msg.sender)] = code.data[4166 len 32]
    return code.data[225 len 3941]
}



// =====================  Runtime code  =====================


const name = 'ProducToken'

const decimals = 7

const symbol = 'PROD'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor2;
uint256 totalSupply;
uint8 stor4;

function totalSupply() {
    return totalSupply
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

function freezeTransfers() {
    require msg.sender == stor2
    if not stor4:
        stor4 = 1
        emit Freeze()
}

function unfreezeTransfers() {
    require msg.sender == stor2
    if stor4:
        stor4 = 0
        emit Unfreeze()
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    if allowance[address(msg.sender)][address(arg1)] != arg2:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg3
    emit Approval(arg3, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor4:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 > 0:
        if arg1 != msg.sender:
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] <= -arg2 - 1
            balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor4:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if arg3 > 0:
        if arg1 != arg2:
            require balanceOf[address(arg1)] >= arg3
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] <= -arg3 - 1
            balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
