contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 880000
    require not msg.value
    stor3 = msg.sender
    stor1 = 21 * 10^11
    stor0[address(this.address)] = 88 * 10^9
    emit Transfer(88 * 10^9, 0, this.address);
    stor0[address(msg.sender)] = 2012 * 10^9
    emit Transfer(2012 * 10^9, 0, msg.sender);
    return code.data[501 len 6832]
}



// =====================  Runtime code  =====================


const name = 'Equity Sharing System'

const decimals = 4

const symbol = 'ESS'

const decr = 0

const INITIAL_SUPPLY = 21 * 10^11

const FREE_SUPPLY = 88 * 10^9


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 nextFreeCount;
mapping of uint8 stor5;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function nextFreeCount() {
    return nextFreeCount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
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

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
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

function _fallback() payable {
    if not stor5[address(msg.sender)]:
        stor5[address(msg.sender)] = 1
        require balanceOf[address(this.address)] >= nextFreeCount
        require balanceOf[address(msg.sender)] + nextFreeCount > balanceOf[address(msg.sender)]
        require nextFreeCount <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= nextFreeCount
        require balanceOf[address(msg.sender)] + nextFreeCount >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += nextFreeCount
        emit Transfer(nextFreeCount, this.address, msg.sender);
}



}
