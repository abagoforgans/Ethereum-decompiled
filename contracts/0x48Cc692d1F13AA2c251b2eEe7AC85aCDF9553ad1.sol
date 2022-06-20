contract main {




// =====================  Runtime code  =====================


const name = 'stockland'

const decimals = 18

const symbol = 'SPT'

const decr = 25 * 10^14

const INITIAL_SUPPLY = 3000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 nextFreeCount;
uint8 stor5;
mapping of uint8 stor6;
uint256 amountRaised;
uint256 buyPrice;
uint8 stor9;
address stor9;
address stor9; offset 8

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function nextFreeCount() {
    return nextFreeCount
}

function crowdsaleClosed() {
    return bool(uint8(stor9.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function enableAirdrop(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function closeBuy(bool arg1) {
    require msg.sender == owner
    uint8(stor9.field_0) = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
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
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call address(stor9.field_8) with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call address(stor9.field_8) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if not stor6[address(msg.sender)]:
        if not stor5:
            stor6[address(msg.sender)] = 1
            require balanceOf[address(stor9.field_0)] >= nextFreeCount
            require balanceOf[address(msg.sender)] + nextFreeCount > balanceOf[address(msg.sender)]
            require nextFreeCount <= balanceOf[address(stor9.field_0)]
            balanceOf[address(stor9.field_0)] -= nextFreeCount
            require balanceOf[address(msg.sender)] + nextFreeCount >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += nextFreeCount
            emit Transfer(nextFreeCount, address(stor9.field_8), msg.sender);
            nextFreeCount -= 25 * 10^14
    require not uint8(stor9.field_0)
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    if not msg.value:
        require balanceOf[address(stor9.field_0)] >= 0
        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
        require 0 <= balanceOf[address(stor9.field_0)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, address(stor9.field_8), msg.sender);
    else:
        require msg.value
        require msg.value * buyPrice / msg.value == buyPrice
        require balanceOf[address(stor9.field_0)] >= msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
        require msg.value * buyPrice <= balanceOf[address(stor9.field_0)]
        balanceOf[address(stor9.field_0)] += -1 * msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        emit Transfer((msg.value * buyPrice), address(stor9.field_8), msg.sender);
    call address(stor9.field_8) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
