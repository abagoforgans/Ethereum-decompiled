contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
uint256 stor7;
uint256 releasedBalance;
uint256 allocatedBalance;
uint256 stor10;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor1)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function releasedBalance() {
    return releasedBalance
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function allocatedBalance() {
    return allocatedBalance
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Pause()
}

function freeBalance() {
    require allocatedBalance <= releasedBalance
    return (releasedBalance - allocatedBalance)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require not stor1
    require arg1
    require 0 <= arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require not stor1
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require 0 <= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function allocateTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require 0 <= arg2
    require allocatedBalance <= releasedBalance
    require arg2 <= releasedBalance - allocatedBalance
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + allocatedBalance >= allocatedBalance
    allocatedBalance += arg2
    emit AllocateTokens(address(arg1), arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not stor1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require 0 <= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function calculateReleased() {
    require msg.sender == owner
    require block.timestamp > stor10
    require stor10 <= block.timestamp
    if block.timestamp - stor10 / 720 * 24 * 3600 >= 10:
        releasedBalance = stor7
    else:
        if not block.timestamp - stor10 / 720 * 24 * 3600:
            releasedBalance = 0
        else:
            require stor7 / 10 * block.timestamp - stor10 / 720 * 24 * 3600 / block.timestamp - stor10 / 720 * 24 * 3600 == stor7 / 10
            releasedBalance = stor7 / 10 * block.timestamp - stor10 / 720 * 24 * 3600
    emit ReleasedTokens(releasedBalance);
    return releasedBalance
}



}
