contract main {


// =======================  Init code  ======================


uint256 stor2;
uint8 stor3;
uint256 stor3; offset 8

function _fallback() payable {
    stor2 = 1522541 * 10^6
    uint8(stor3.field_0) = 0
    Mask(248, 0, stor3.field_8) = 0
    require not msg.value
    return code.data[94 len 2611]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
uint256 stor2;
uint8 stor3;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_734a323d(?) {
    require msg.sender == owner
    stor2 = arg1
}

function unpause() {
    require msg.sender == owner
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    emit Pause()
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp < stor2
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferByOwnerContract(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
