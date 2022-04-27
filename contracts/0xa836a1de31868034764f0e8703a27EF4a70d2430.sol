contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
address stor2;
address stor3;
uint128 stor4; offset 168
uint128 stor4; offset 160
address stor4;
mapping of uint256 stor5;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    Mask(96, 0, stor4.field_160) = 0
    Mask(88, 0, stor4.field_168) = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor0 = 132857135 * 10^18
    address(stor1.field_0) = msg.sender
    stor2 = 0xa8bf91c0976bdd6e8b487b7cd3ec87449395ca27
    stor3 = 0x41407ce69a5e00d29c3d713c684ca2131f500204
    address(stor4.field_0) = 0xdfe1f93d39b9d80391aabafe7db85ac5c54da57
    stor5[address(msg.sender)] = 36999996 * 10^18
    stor5[stor2] = 19928570 * 10^18
    stor5[stor3] = 19928570 * 10^18
    stor5[address(stor4.field_0)] = 55999999 * 10^18
    return code.data[927 len 10875]
}



// =====================  Runtime code  =====================


const name = 'DDFINAL7'

const decimals = 18

const symbol = 'DDFINAL7'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function isSwapDone() {
    return bool(uint8(stor4.field_160))
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferByOwnerContract(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        if msg.sender == address(stor4.field_0):
            Mask(96, 0, stor4.field_160) = 1
    require not uint8(stor1.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        if msg.sender == address(stor4.field_0):
            Mask(96, 0, stor4.field_160) = 1
    require not uint8(stor1.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 >= 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
