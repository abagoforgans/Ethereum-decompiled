contract main {




// =====================  Runtime code  =====================


const name = 'BlockQuakeToken'

const decimals = 18

const symbol = 'BQT'

const INITIAL_SUPPLY = 4000000000 * 10^18


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
uint256 totalSupply;
mapping of uint8 stor5;
uint8 stor6;

function totalSupply() {
    return totalSupply
}

function isPauser(address arg1) {
    require arg1
    return bool(stor5[address(arg1)])
}

function paused() {
    return bool(stor6)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor3[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require stor6
    stor6 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require not stor6
    stor6 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor5[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor3[address(arg1)] = uint8(arg2)
    emit frozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not stor6
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) {
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function burn(uint256 arg1) {
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor6
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor6
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor6
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require not stor3[address(msg.sender)]
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor6
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require not stor3[address(msg.sender)]
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not stor6
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require not stor3[address(msg.sender)]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
