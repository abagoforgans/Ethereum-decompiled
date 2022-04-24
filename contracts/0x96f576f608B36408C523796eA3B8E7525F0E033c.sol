contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1396]




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 frozenTimeOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenTimeOf(address arg1) {
    return frozenTimeOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function isUnfrozen(address arg1) {
    if block.timestamp <= 425256 * 24 * 3600:
        return (frozenTimeOf[address(arg1)] < block.timestamp)
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if block.timestamp <= 425256 * 24 * 3600:
        require frozenTimeOf[address(msg.sender)] < block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
