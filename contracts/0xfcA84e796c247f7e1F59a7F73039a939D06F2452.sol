contract main {




// =====================  Runtime code  =====================


const name = 'HarborToken'

const decimals = 18

const symbol = 'HBR'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address congressAddress;
mapping of uint8 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8

function mintingFinished() {
    return bool(uint8(stor6.field_0))
}

function totalSupply() {
    return totalSupply
}

function mintAgents(address arg1) {
    return bool(stor5[arg1])
}

function paused() {
    return bool(uint8(stor6.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function congress() {
    return congressAddress
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

function openMinting() {
    require msg.sender == owner
    uint8(stor6.field_0) = 0
    emit MintOpened()
    return 1
}

function finishMinting() {
    require msg.sender == owner
    uint8(stor6.field_0) = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_8)
    Mask(248, 0, stor6.field_8) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_8)
    Mask(248, 0, stor6.field_8) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMintAgent(address arg1, bool arg2) {
    require msg.sender == congressAddress
    stor5[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(arg2, arg1);
}

function transferCongress(address arg1) {
    require msg.sender == congressAddress
    require arg1
    emit CongressTransferred(congressAddress, arg1);
    congressAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_8)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require not uint8(stor6.field_0)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor6.field_8)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor6.field_8)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function withdrowErc20(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrowErc20Token(arg3, arg1, arg2);
}

function burn(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require not uint8(stor6.field_0)
    require arg1
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit BurnToken(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_8)
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
    require not uint8(stor6.field_8)
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
