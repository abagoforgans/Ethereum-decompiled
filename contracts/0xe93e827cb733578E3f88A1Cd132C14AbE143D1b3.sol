contract main {




// =====================  Runtime code  =====================


mapping of uint256 checkInvestments;
mapping of uint256 stor1;
mapping of uint256 checkWithdrawals;
mapping of uint256 checkReferral;
uint256 step;
uint256 minimum;
uint256 stakingRequirement;
address ownerWallet;
address owner;

function checkReferral(address arg1) {
    return checkReferral[address(arg1)]
}

function minimum() {
    return minimum
}

function stakingRequirement() {
    return stakingRequirement
}

function checkInvestments(address arg1) {
    return checkInvestments[address(arg1)]
}

function owner() {
    return owner
}

function ownerWallet() {
    return ownerWallet
}

function checkWithdrawals(address arg1) {
    return checkWithdrawals[address(arg1)]
}

function step() {
    return step
}

function end() {
    require msg.sender == owner
    selfdestruct(owner)
}

function getMinutes(address arg1) {
    require stor1[address(arg1)] <= block.timestamp
    return (block.timestamp - stor1[address(arg1)] / 60)
}

function transferOwnership(address arg1, address arg2) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    ownerWallet = arg2
}

function getBalance(address arg1) {
    require stor1[address(arg1)] <= block.timestamp
    if block.timestamp - stor1[address(arg1)] / 60 <= 5:
        return 0
    if not checkInvestments[address(arg1)]:
        return 0
    require checkInvestments[address(arg1)]
    require checkInvestments[address(arg1)] * step / checkInvestments[address(arg1)] == step
    return (checkInvestments[address(arg1)] * step / 100)
}

function checkBalance() {
    require stor1[address(msg.sender)] <= block.timestamp
    if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
        return 0
    if not checkInvestments[address(msg.sender)]:
        return 0
    require checkInvestments[address(msg.sender)]
    require checkInvestments[address(msg.sender)] * step / checkInvestments[address(msg.sender)] == step
    return (checkInvestments[address(msg.sender)] * step / 100)
}

function bounty() {
    if checkReferral[address(msg.sender)] >= minimum:
        if eth.balance(this.address) > checkReferral[address(msg.sender)]:
            checkReferral[address(msg.sender)] = 0
            call msg.sender with:
               value checkReferral[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Bounty(msg.sender, checkReferral[address(msg.sender)]);
}

function withdraw() {
    require stor1[address(msg.sender)] > 0
    require stor1[address(msg.sender)] <= block.timestamp
    if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
        if eth.balance(this.address) <= 0:
            return 0
    else:
        if not checkInvestments[address(msg.sender)]:
            if eth.balance(this.address) <= 0:
                return 0
        else:
            require checkInvestments[address(msg.sender)]
            require checkInvestments[address(msg.sender)] * step / checkInvestments[address(msg.sender)] == step
            if eth.balance(this.address) <= checkInvestments[address(msg.sender)] * step / 100:
                return 0
            if checkInvestments[address(msg.sender)] * step / 100 > 0:
                require checkWithdrawals[address(msg.sender)] + (checkInvestments[address(msg.sender)] * step / 100) >= checkWithdrawals[address(msg.sender)]
                checkWithdrawals[address(msg.sender)] += checkInvestments[address(msg.sender)] * step / 100
                call msg.sender with:
                   value checkInvestments[address(msg.sender)] * step / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(msg.sender, checkInvestments[address(msg.sender)] * step / 100);
    return 1
}

function _fallback() payable {
    require msg.value >= minimum
    if checkInvestments[address(msg.sender)] > 0:
        require stor1[address(msg.sender)] > 0
        require stor1[address(msg.sender)] <= block.timestamp
        if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
            if eth.balance(this.address) > 0:
                checkWithdrawals[address(msg.sender)] = 0
        else:
            if not checkInvestments[address(msg.sender)]:
                if eth.balance(this.address) > 0:
                    checkWithdrawals[address(msg.sender)] = 0
            else:
                require checkInvestments[address(msg.sender)]
                require checkInvestments[address(msg.sender)] * step / checkInvestments[address(msg.sender)] == step
                if eth.balance(this.address) > checkInvestments[address(msg.sender)] * step / 100:
                    if checkInvestments[address(msg.sender)] * step / 100 > 0:
                        require checkWithdrawals[address(msg.sender)] + (checkInvestments[address(msg.sender)] * step / 100) >= checkWithdrawals[address(msg.sender)]
                        checkWithdrawals[address(msg.sender)] += checkInvestments[address(msg.sender)] * step / 100
                        call msg.sender with:
                           value checkInvestments[address(msg.sender)] * step / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, checkInvestments[address(msg.sender)] * step / 100);
                    checkWithdrawals[address(msg.sender)] = 0
    require checkInvestments[address(msg.sender)] + msg.value >= checkInvestments[address(msg.sender)]
    checkInvestments[address(msg.sender)] += msg.value
    stor1[address(msg.sender)] = block.timestamp
    if not msg.value:
        call ownerWallet with:
             gas 2300 wei
    else:
        require msg.value
        require 5 * msg.value / msg.value == 5
        call ownerWallet with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Invest(msg.sender, msg.value);
}

function buy(address arg1) payable {
    require msg.value >= minimum
    if arg1:
        if arg1 != msg.sender:
            if checkInvestments[address(arg1)] >= stakingRequirement:
                if not msg.value:
                    require checkReferral[address(arg1)] >= checkReferral[address(arg1)]
                else:
                    require msg.value
                    require 5 * msg.value / msg.value == 5
                    require checkReferral[address(arg1)] + (5 * msg.value / 100) >= checkReferral[address(arg1)]
                    checkReferral[address(arg1)] += 5 * msg.value / 100
    if checkInvestments[address(msg.sender)] > 0:
        require stor1[address(msg.sender)] > 0
        require stor1[address(msg.sender)] <= block.timestamp
        if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
            if eth.balance(this.address) > 0:
                checkWithdrawals[address(msg.sender)] = 0
        else:
            if not checkInvestments[address(msg.sender)]:
                if eth.balance(this.address) > 0:
                    checkWithdrawals[address(msg.sender)] = 0
            else:
                require checkInvestments[address(msg.sender)]
                require checkInvestments[address(msg.sender)] * step / checkInvestments[address(msg.sender)] == step
                if eth.balance(this.address) > checkInvestments[address(msg.sender)] * step / 100:
                    if checkInvestments[address(msg.sender)] * step / 100 > 0:
                        require checkWithdrawals[address(msg.sender)] + (checkInvestments[address(msg.sender)] * step / 100) >= checkWithdrawals[address(msg.sender)]
                        checkWithdrawals[address(msg.sender)] += checkInvestments[address(msg.sender)] * step / 100
                        call msg.sender with:
                           value checkInvestments[address(msg.sender)] * step / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, checkInvestments[address(msg.sender)] * step / 100);
                    checkWithdrawals[address(msg.sender)] = 0
    require checkInvestments[address(msg.sender)] + msg.value >= checkInvestments[address(msg.sender)]
    checkInvestments[address(msg.sender)] += msg.value
    stor1[address(msg.sender)] = block.timestamp
    if not msg.value:
        call ownerWallet with:
             gas 2300 wei
    else:
        require msg.value
        require 5 * msg.value / msg.value == 5
        call ownerWallet with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Invest(msg.sender, msg.value);
}



}
