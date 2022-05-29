contract main {




// =====================  Runtime code  =====================


mapping of uint256 checkInvestments;
mapping of uint256 stor1;
mapping of uint256 checkWithdrawals;
mapping of uint256 checkReferral;
mapping of uint256 checkWithrawStock;
uint256 step;
uint256 stock;
uint256 totalPot;
uint256 minimum;
uint256 stakingRequirement;
address ownerWallet;
address owner;
uint256 timeWithdrawstock;

function checkReferral(address arg1) {
    return checkReferral[address(arg1)]
}

function totalPot() {
    return totalPot
}

function checkWithrawStock(address arg1) {
    return checkWithrawStock[address(arg1)]
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

function stock() {
    return stock
}

function step() {
    return step
}

function timeWithdrawstock() {
    return timeWithdrawstock
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

function getYourRewardStock(address arg1) {
    if not stock:
        if totalPot:
            if 0 / totalPot <= checkWithrawStock[address(arg1)]:
                return 0
            if checkWithrawStock[address(arg1)] <= 0 / totalPot:
                return ((0 / totalPot) - checkWithrawStock[address(arg1)])
    else:
        if checkInvestments[address(arg1)] * stock / stock == checkInvestments[address(arg1)]:
            if totalPot:
                if checkInvestments[address(arg1)] * stock / totalPot <= checkWithrawStock[address(arg1)]:
                    return 0
                if checkWithrawStock[address(arg1)] <= checkInvestments[address(arg1)] * stock / totalPot:
                    return ((checkInvestments[address(arg1)] * stock / totalPot) - checkWithrawStock[address(arg1)])
    revert
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
                    if checkWithdrawals[address(arg1)] <= block.timestamp - stor1[address(arg1)] / 60 * step * checkInvestments[address(arg1)] / 100 / 720:
                        return ((block.timestamp - stor1[address(arg1)] / 60 * step * checkInvestments[address(arg1)] / 100 / 720) - checkWithdrawals[address(arg1)])
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
                    if checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720:
                        return ((block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)])
    revert
}

function withdrawStock() {
    require 0 < stor1[msg.sender]
    require block.timestamp > timeWithdrawstock
    if not stock:
        require totalPot
        require 0 / totalPot > checkWithrawStock[msg.sender]
        require checkWithrawStock[msg.sender] <= 0 / totalPot
        if (0 / totalPot) - checkWithrawStock[msg.sender] > 0:
            require 0 / totalPot >= checkWithrawStock[msg.sender]
            checkWithrawStock[msg.sender] = 0 / totalPot
            require (0 / totalPot) - checkWithrawStock[msg.sender] <= stock
            stock = stock - (0 / totalPot) + checkWithrawStock[msg.sender]
            call msg.sender with:
               value (0 / totalPot) - checkWithrawStock[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit WithdrawShare(msg.sender, (0 / totalPot) - checkWithrawStock[msg.sender]);
    else:
        require checkInvestments[msg.sender] * stock / stock == checkInvestments[msg.sender]
        require totalPot
        require checkInvestments[msg.sender] * stock / totalPot > checkWithrawStock[msg.sender]
        require checkWithrawStock[msg.sender] <= checkInvestments[msg.sender] * stock / totalPot
        if (checkInvestments[msg.sender] * stock / totalPot) - checkWithrawStock[msg.sender] > 0:
            require checkInvestments[msg.sender] * stock / totalPot >= checkWithrawStock[msg.sender]
            checkWithrawStock[msg.sender] = checkInvestments[msg.sender] * stock / totalPot
            require (checkInvestments[msg.sender] * stock / totalPot) - checkWithrawStock[msg.sender] <= stock
            stock = stock - (checkInvestments[msg.sender] * stock / totalPot) + checkWithrawStock[msg.sender]
            call msg.sender with:
               value (checkInvestments[msg.sender] * stock / totalPot) - checkWithrawStock[msg.sender] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit WithdrawShare(msg.sender, (checkInvestments[msg.sender] * stock / totalPot) - checkWithrawStock[msg.sender]);
}

function withdraw() {
    require 0 < stor1[msg.sender]
    require stor1[address(msg.sender)] <= block.timestamp
    if not checkInvestments[address(msg.sender)]:
        require checkWithdrawals[address(msg.sender)] <= 0
        if -checkWithdrawals[address(msg.sender)] >= eth.balance(this.address):
            return 0
        require stock <= eth.balance(this.address)
        if -checkWithdrawals[address(msg.sender)] > eth.balance(this.address) - stock:
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
            require stock <= eth.balance(this.address)
            if -checkWithdrawals[address(msg.sender)] > eth.balance(this.address) - stock:
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
            require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720
            if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] >= eth.balance(this.address):
                return 0
            require stock <= eth.balance(this.address)
            if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] > eth.balance(this.address) - stock:
                return 0
            if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] > 0:
                require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                call msg.sender with:
                   value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)]);
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
                require stock <= eth.balance(this.address)
                if -checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
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
                    require stock <= eth.balance(this.address)
                    if -checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
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
                require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720
                if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    require stock <= eth.balance(this.address)
                    if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
                        if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] > 0:
                            require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                            checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                            call msg.sender with:
                               value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)]);
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
    if not msg.value:
        require stock >= stock
    else:
        require 5 * msg.value / msg.value == 5
        require (5 * msg.value / 100) + stock >= stock
        stock += 5 * msg.value / 100
    require msg.value + totalPot >= totalPot
    totalPot += msg.value
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
        if not checkInvestments[address(msg.sender)]:
            require checkWithdrawals[address(msg.sender)] <= 0
            if -checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                require stock <= eth.balance(this.address)
                if -checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
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
                    require stock <= eth.balance(this.address)
                    if -checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
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
                require checkWithdrawals[address(msg.sender)] <= block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720
                if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] < eth.balance(this.address):
                    require stock <= eth.balance(this.address)
                    if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] <= eth.balance(this.address) - stock:
                        if (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] > 0:
                            require (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender] >= checkWithdrawals[msg.sender]
                            checkWithdrawals[msg.sender] = (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] + checkWithdrawals[msg.sender]
                            call msg.sender with:
                               value (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Withdraw(msg.sender, (block.timestamp - stor1[address(msg.sender)] / 60 * step * checkInvestments[address(msg.sender)] / 100 / 720) - checkWithdrawals[address(msg.sender)]);
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
    if not msg.value:
        require stock >= stock
    else:
        require 5 * msg.value / msg.value == 5
        require (5 * msg.value / 100) + stock >= stock
        stock += 5 * msg.value / 100
    require msg.value + totalPot >= totalPot
    totalPot += msg.value
    emit Invest(msg.sender, msg.value);
}



}
