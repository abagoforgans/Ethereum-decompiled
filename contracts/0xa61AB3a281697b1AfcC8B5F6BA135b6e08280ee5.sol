contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor0 = 55999999 * 10^18
    address(stor1.field_0) = msg.sender
    stor2[address(msg.sender)] = stor0
    return code.data[274 len 7058]
}



// =====================  Runtime code  =====================


const name = 'DDSAFT7'

const decimals = 18

const symbol = 'DDSAFT7'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
mapping of uint256 balanceOf;
array of address participantIndex;
mapping of uint8 stor4;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function getCountPartipants() {
    return participantIndex.length
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getParticipantIndexAddress(uint256 arg1) {
    require arg1 < participantIndex.length
    return address(participantIndex[arg1])
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not stor4[address(arg1)]:
        participantIndex.length++
        if not participantIndex.length <= participantIndex.length + 1:
            idx = participantIndex.length + 1
            while participantIndex.length > idx:
                uint256(participantIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(participantIndex[participantIndex.length]) = arg1
        stor4[address(arg1)] = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if not stor4[address(arg2)]:
        participantIndex.length++
        if not participantIndex.length <= participantIndex.length + 1:
            idx = participantIndex.length + 1
            while participantIndex.length > idx:
                uint256(participantIndex[idx]) = 0
                idx = idx + 1
                continue 
        address(participantIndex[participantIndex.length]) = arg2
        stor4[address(arg2)] = 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
