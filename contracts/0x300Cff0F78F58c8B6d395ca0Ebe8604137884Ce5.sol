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
    if block.timestamp - stor1[address(arg1)] / 60 >= 10:
        return 0
    if not checkInvestments[address(arg1)]:
        return 0
    require step * checkInvestments[address(arg1)] / checkInvestments[address(arg1)] == step
    return (step * checkInvestments[address(arg1)] / 100)
}

function checkBalance() {
    require stor1[address(msg.sender)] <= block.timestamp
    if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
        return 0
    if block.timestamp - stor1[address(msg.sender)] / 60 >= 10:
        return 0
    if not checkInvestments[address(msg.sender)]:
        return 0
    require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
    return (step * checkInvestments[address(msg.sender)] / 100)
}

function bounty() {
    if checkReferral[address(msg.sender)] >= minimum:
        if checkReferral[address(msg.sender)] < eth.balance(this.address):
            checkReferral[msg.sender] = 0
            call msg.sender with:
               value checkReferral[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Bounty(msg.sender, checkReferral[address(msg.sender)]);
}

function withdraw() {
    require 0 < stor1[msg.sender]
    require stor1[address(msg.sender)] <= block.timestamp
    if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
        if 0 >= eth.balance(this.address):
            return 0
    else:
        if block.timestamp - stor1[address(msg.sender)] / 60 >= 10:
            if 0 >= eth.balance(this.address):
                return 0
        else:
            if not checkInvestments[address(msg.sender)]:
                if 0 >= eth.balance(this.address):
                    return 0
            else:
                require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
                if step * checkInvestments[address(msg.sender)] / 100 >= eth.balance(this.address):
                    return 0
                if step * checkInvestments[address(msg.sender)] / 100 > 0:
                    require (step * checkInvestments[address(msg.sender)] / 100) + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                    checkWithdrawals[msg.sender] += step * checkInvestments[address(msg.sender)] / 100
                    call msg.sender with:
                       value step * checkInvestments[address(msg.sender)] / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(msg.sender, step * checkInvestments[address(msg.sender)] / 100);
    return 1
}

function _fallback() payable {
    require msg.value >= minimum
    if checkInvestments[msg.sender] > 0:
        require 0 < stor1[msg.sender]
        require stor1[address(msg.sender)] <= block.timestamp
        if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
            if 0 < eth.balance(this.address):
                checkWithdrawals[msg.sender] = 0
        else:
            if block.timestamp - stor1[address(msg.sender)] / 60 >= 10:
                if 0 < eth.balance(this.address):
                    checkWithdrawals[msg.sender] = 0
            else:
                if not checkInvestments[address(msg.sender)]:
                    if 0 < eth.balance(this.address):
                        checkWithdrawals[msg.sender] = 0
                else:
                    require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
                    if step * checkInvestments[address(msg.sender)] / 100 < eth.balance(this.address):
                        if step * checkInvestments[address(msg.sender)] / 100 > 0:
                            require (step * checkInvestments[address(msg.sender)] / 100) + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                            checkWithdrawals[msg.sender] += step * checkInvestments[address(msg.sender)] / 100
                            call msg.sender with:
                               value step * checkInvestments[address(msg.sender)] / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(msg.sender, step * checkInvestments[address(msg.sender)] / 100);
                        checkWithdrawals[msg.sender] = 0
    require msg.value + checkInvestments[msg.sender] >= checkInvestments[msg.sender]
    checkInvestments[msg.sender] += msg.value
    stor1[msg.sender] = block.timestamp
    if not msg.value:
        call ownerWallet with:
             gas 2300 wei
    else:
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
                    require 5 * msg.value / msg.value == 5
                    require (5 * msg.value / 100) + checkReferral[address(arg1)] >= checkReferral[address(arg1)]
                    checkReferral[address(arg1)] += 5 * msg.value / 100
    if checkInvestments[msg.sender] > 0:
        require 0 < stor1[msg.sender]
        require stor1[address(msg.sender)] <= block.timestamp
        if block.timestamp - stor1[address(msg.sender)] / 60 <= 5:
            if 0 < eth.balance(this.address):
                checkWithdrawals[msg.sender] = 0
        else:
            if block.timestamp - stor1[address(msg.sender)] / 60 >= 10:
                if 0 < eth.balance(this.address):
                    checkWithdrawals[msg.sender] = 0
            else:
                if not checkInvestments[address(msg.sender)]:
                    if 0 < eth.balance(this.address):
                        checkWithdrawals[msg.sender] = 0
                else:
                    require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
                    if step * checkInvestments[address(msg.sender)] / 100 < eth.balance(this.address):
                        if step * checkInvestments[address(msg.sender)] / 100 > 0:
                            require (step * checkInvestments[address(msg.sender)] / 100) + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                            checkWithdrawals[msg.sender] += step * checkInvestments[address(msg.sender)] / 100
                            call msg.sender with:
                               value step * checkInvestments[address(msg.sender)] / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(msg.sender, step * checkInvestments[address(msg.sender)] / 100);
                        checkWithdrawals[msg.sender] = 0
    require msg.value + checkInvestments[msg.sender] >= checkInvestments[msg.sender]
    checkInvestments[msg.sender] += msg.value
    stor1[msg.sender] = block.timestamp
    if not msg.value:
        call ownerWallet with:
             gas 2300 wei
    else:
        require 5 * msg.value / msg.value == 5
        call ownerWallet with:
           value 5 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Invest(msg.sender, msg.value);
}



}
