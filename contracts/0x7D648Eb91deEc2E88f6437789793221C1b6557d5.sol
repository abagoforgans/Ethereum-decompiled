contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address adminAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint256 frozenTimestamp;
uint8 stor9;
uint256 minWei;
uint256 maxWei;
uint256 maxRaiseAmount;
uint256 raisedAmount;
uint256 raiseRatio;

function maxWei() {
    return maxWei
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function maxRaiseAmount() {
    return maxRaiseAmount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function exchangeFlag() {
    return bool(stor9)
}

function raiseRatio() {
    return raiseRatio
}

function minWei() {
    return minWei
}

function raisedAmount() {
    return raisedAmount
}

function frozenTimestamp(address arg1) {
    return frozenTimestamp[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getFrozenTimestamp(address arg1) {
    require arg1
    return frozenTimestamp[address(arg1)]
}

function admin() {
    return adminAddress
}

function setRaiseRatio(uint256 arg1) {
    require msg.sender == adminAddress
    raiseRatio = arg1
    return 1
}

function setExchangeFlag(bool arg1) {
    require msg.sender == adminAddress
    stor9 = uint8(arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeWithTimestamp(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    require arg1
    frozenTimestamp[address(arg1)] = arg2
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == adminAddress
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function changeAdmin(address arg1) {
    require msg.sender == adminAddress
    require arg1
    require balanceOf[address(arg1)] + balanceOf[stor3] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor3]
    balanceOf[stor3] = 0
    adminAddress = arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp > frozenTimestamp[address(msg.sender)]
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
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
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
    require msg.value > 0
    if not stor9:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value < minWei:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.value > maxWei:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if raisedAmount < maxRaiseAmount:
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    if raisedAmount <= maxRaiseAmount:
                        if raisedAmount >= maxRaiseAmount:
                            stor9 = 0
                        if not msg.value:
                            require 0 <= balanceOf[stor3]
                            require 0 <= balanceOf[stor3]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, adminAddress, msg.sender);
                        else:
                            require msg.value
                            require msg.value * raiseRatio / msg.value == raiseRatio
                            require msg.value * raiseRatio <= balanceOf[stor3]
                            require msg.value * raiseRatio <= balanceOf[stor3]
                            balanceOf[stor3] += -1 * msg.value * raiseRatio
                            require balanceOf[address(msg.sender)] + (msg.value * raiseRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value * raiseRatio
                            emit Transfer((msg.value * raiseRatio), adminAddress, msg.sender);
                    else:
                        require maxRaiseAmount <= raisedAmount
                        require raisedAmount - maxRaiseAmount <= msg.value
                        call msg.sender with:
                           value raisedAmount - maxRaiseAmount wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        raisedAmount = maxRaiseAmount
                        if raisedAmount >= maxRaiseAmount:
                            stor9 = 0
                        if not msg.value - raisedAmount + maxRaiseAmount:
                            require 0 <= balanceOf[stor3]
                            require 0 <= balanceOf[stor3]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, adminAddress, msg.sender);
                        else:
                            require msg.value - raisedAmount + maxRaiseAmount
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) / msg.value - raisedAmount + maxRaiseAmount == raiseRatio
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) <= balanceOf[stor3]
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) <= balanceOf[stor3]
                            balanceOf[stor3] = balanceOf[stor3] - (msg.value * raiseRatio) + (raisedAmount * raiseRatio) - (maxRaiseAmount * raiseRatio)
                            require balanceOf[address(msg.sender)] + (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio)
                            emit Transfer(((msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio)), adminAddress, msg.sender);
}



}
