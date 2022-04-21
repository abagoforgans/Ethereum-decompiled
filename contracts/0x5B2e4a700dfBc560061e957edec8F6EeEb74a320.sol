contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[132 len 4655]
}



// =====================  Runtime code  =====================


const name = 'INS Token'

const decimals = 10

const symbol = 'INS'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor2;
uint256 totalSupply;
uint8 stor4;
uint256 totalCollected;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalCollected() {
    return totalCollected
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == stor2
    stor2 = arg1
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

function createTokens(uint256 arg1, uint256 arg2) {
    require msg.sender == stor2
    if arg1 > 0:
        require -1 >= totalSupply
        if arg1 > -totalSupply - 1:
            return 0
        require balanceOf[address(msg.sender)] <= -arg1 - 1
        balanceOf[address(msg.sender)] += arg1
        require totalSupply <= -arg1 - 1
        totalSupply += arg1
        require totalCollected <= -arg2 - 1
        totalCollected += arg2
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
