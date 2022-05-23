contract main {




// =====================  Runtime code  =====================


address owner;
uint256 rate;
uint8 stor2;
uint256 maxTokens;
uint256 sub_4ea56430;
address forwardAddress;
mapping of uint256 balanceOf;

function enabled() {
    return bool(stor2)
}

function rate() {
    return rate
}

function sub_4ea56430(?) {
    return sub_4ea56430
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function forward() {
    return forwardAddress
}

function maxTokens() {
    return maxTokens
}

function enable() {
    require msg.sender == owner
    stor2 = 1
}

function disable() {
    require msg.sender == owner
    stor2 = 0
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function setForward(address arg1) {
    require msg.sender == owner
    forwardAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMaxTokens(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= sub_4ea56430
    maxTokens = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setBalanceOf(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] = arg2
    emit 0xce649276: balanceOf[address(arg1)], arg2, arg1
}

function _fallback() payable {
    require stor2
    if not msg.value:
        require sub_4ea56430 >= sub_4ea56430
        require sub_4ea56430 <= maxTokens
        require sub_4ea56430 >= sub_4ea56430
        require balanceOf[msg.sender] >= balanceOf[msg.sender]
        call forwardAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Contribution(msg.value, 0, msg.sender, forwardAddress);
    else:
        require rate * msg.value / msg.value == rate
        require (rate * msg.value) + sub_4ea56430 >= sub_4ea56430
        require (rate * msg.value) + sub_4ea56430 <= maxTokens
        require (rate * msg.value) + sub_4ea56430 >= sub_4ea56430
        sub_4ea56430 += rate * msg.value
        require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += rate * msg.value
        call forwardAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Contribution(msg.value, rate * msg.value, msg.sender, forwardAddress);
}



}
