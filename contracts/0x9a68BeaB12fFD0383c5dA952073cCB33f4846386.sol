contract main {




// =====================  Runtime code  =====================


mapping of uint256 checkInvestments;
mapping of uint256 stor1;
mapping of uint256 checkWithdrawals;
mapping of uint256 checkReferral;
uint256 step;
uint256 minimum;
address ownerWallet;
address owner;

function checkReferral(address arg1) {
    return checkReferral[address(arg1)]
}

function minimum() {
    return minimum
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

function transferOwnership(address arg1, address arg2) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    ownerWallet = arg2
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

function getBalance(address arg1) {
    require stor1[address(arg1)] <= block.timestamp
    if not checkInvestments[address(arg1)]:
        if checkWithdrawals[address(arg1)] <= 0:
            return -checkWithdrawals[address(arg1)]
    else:
        if step * checkInvestments[address(arg1)] / checkInvestments[address(arg1)] == step:
            if not step * checkInvestments[address(arg1)] / 100:
                if checkWithdrawals[address(arg1)] <= 0:
                    return -checkWithdrawals[address(arg1)]
            else:
                if block.timestamp - stor1[address(arg1)] / 60 * step * checkInvestments[address(arg1)] / 100 / step * checkInvestments[address(arg1)] / 100 == block.timestamp - stor1[address(arg1)] / 60:
                    if checkWithdrawals[address(arg1)] <= block.timestamp - stor1[address(arg1)] / 60 * step * checkInvestments[address(arg1)] / 100 / 1440:
                        return ((block.timestamp - stor1[address(arg1)] / 60 * step * checkInvestments[address(arg1)] / 100 / 1440) - checkWithdrawals[address(arg1)])
    revert
}

function checkBalance() {
    require stor1[address(msg.sender)] <= block.timestamp
    if not checkInvestments[address(msg.sender)]:
        if checkWithdrawals[address(msg.sender)] <= 0:
            return -checkWithdrawals[address(msg.sender)]
    else:
        if step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step:
            if not step * checkInvestments[address(msg.sender)] / 100:
                if checkWithdrawals[address(msg.sender)] <= 0:
                    return -checkWithdrawals[address(msg.sender)]
            else:
                if block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / step * checkInvestments[address(msg.sender)] / 100 == block.timestamp - stor1[address(msg.sender)] / 60:
                    if checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440:
                        return ((block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)])
    revert
}

function withdraw() {
    require 0 < stor1[msg.sender]
    require stor1[address(msg.sender)] <= block.timestamp
    if not checkInvestments[address(msg.sender)]:
        require checkWithdrawals[address(msg.sender)] <= 0
        if -checkWithdrawals[address(msg.sender)] >= eth.balance(this.address):
            return 0
        if -checkWithdrawals[address(msg.sender)] > 0:
            require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
            checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
            call msg.sender with:
               value -checkWithdrawals[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
    else:
        require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
        if not step * checkInvestments[address(msg.sender)] / 100:
            require checkWithdrawals[address(msg.sender)] <= 0
            if -checkWithdrawals[address(msg.sender)] >= eth.balance(this.address):
                return 0
            if -checkWithdrawals[address(msg.sender)] > 0:
                require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
                call msg.sender with:
                   value -checkWithdrawals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
        else:
            require block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / step * checkInvestments[address(msg.sender)] / 100 == block.timestamp - stor1[address(msg.sender)] / 60
            require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440
            if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] >= eth.balance(this.address):
                return 0
            if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] > 0:
                require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                call msg.sender with:
                   value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)]);
    return 1
}

function _fallback() payable {
    require msg.value >= minimum
    if checkInvestments[msg.sender] > 0:
        require 0 < stor1[msg.sender]
        require stor1[address(msg.sender)] <= block.timestamp
        if not checkInvestments[address(msg.sender)]:
            require checkWithdrawals[address(msg.sender)] <= 0
            if -checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                if -checkWithdrawals[address(msg.sender)] > 0:
                    require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                    checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
                    call msg.sender with:
                       value -checkWithdrawals[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
                checkWithdrawals[msg.sender] = 0
        else:
            require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
            if not step * checkInvestments[address(msg.sender)] / 100:
                require checkWithdrawals[address(msg.sender)] <= 0
                if -checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    if -checkWithdrawals[address(msg.sender)] > 0:
                        require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                        checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
                        call msg.sender with:
                           value -checkWithdrawals[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
                    checkWithdrawals[msg.sender] = 0
            else:
                require block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / step * checkInvestments[address(msg.sender)] / 100 == block.timestamp - stor1[address(msg.sender)] / 60
                require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440
                if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] > 0:
                        require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                        checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                        call msg.sender with:
                           value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)]);
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
            if not msg.value:
                require checkReferral[address(arg1)] >= checkReferral[address(arg1)]
            else:
                require 90 * msg.value / msg.value == 90
                require (90 * msg.value / 100) + checkReferral[address(arg1)] >= checkReferral[address(arg1)]
                checkReferral[address(arg1)] += 90 * msg.value / 100
    if checkInvestments[msg.sender] > 0:
        require 0 < stor1[msg.sender]
        require stor1[address(msg.sender)] <= block.timestamp
        if not checkInvestments[address(msg.sender)]:
            require checkWithdrawals[address(msg.sender)] <= 0
            if -checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                if -checkWithdrawals[address(msg.sender)] > 0:
                    require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                    checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
                    call msg.sender with:
                       value -checkWithdrawals[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
                checkWithdrawals[msg.sender] = 0
        else:
            require step * checkInvestments[address(msg.sender)] / checkInvestments[address(msg.sender)] == step
            if not step * checkInvestments[address(msg.sender)] / 100:
                require checkWithdrawals[address(msg.sender)] <= 0
                if -checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    if -checkWithdrawals[address(msg.sender)] > 0:
                        require -checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                        checkWithdrawals[msg.sender] -= checkWithdrawals[address(msg.sender)]
                        call msg.sender with:
                           value -checkWithdrawals[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, -checkWithdrawals[address(msg.sender)]);
                    checkWithdrawals[msg.sender] = 0
            else:
                require block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / step * checkInvestments[address(msg.sender)] / 100 == block.timestamp - stor1[address(msg.sender)] / 60
                require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440
                if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] > 0:
                        require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                        checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                        call msg.sender with:
                           value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 1440) - checkWithdrawals[address(msg.sender)]);
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
