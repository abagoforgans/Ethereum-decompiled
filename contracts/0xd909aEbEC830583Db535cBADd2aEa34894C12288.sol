contract main {




// =====================  Runtime code  =====================


const name = 'Traveler Token'

const decimals = 18

const symbol = 'TVLR'


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pendingOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor5;

function mintingFinished() {
    return bool(stor5)
}

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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function finishMinting() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This contract does not accept Ethereum!'
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function pause() {
    require msg.sender == owner
    if uint8(stor1.field_160):
        require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor1.field_160):
        require msg.sender == owner
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function pullOut(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor5
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if uint8(stor1.field_160):
        require msg.sender == owner
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if uint8(stor1.field_160):
        require msg.sender == owner
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor1.field_160):
        require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor1.field_160):
        require msg.sender == owner
    require arg2
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
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
