contract main {




// =====================  Runtime code  =====================


const name = 'FansGold'

const decimals = 18

const symbol = 'FGD'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 rate;
uint256 totalWeiRaisedDuringICO;
uint256 sub_3b9125cf;
mapping of uint8 stor11;
mapping of uint256 lockedBalances;
address stor19;

function lockedBalances(address arg1) {
    return lockedBalances[arg1]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function sub_3b9125cf(?) {
    return sub_3b9125cf
}

function notFrozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalWeiRaisedDuringICO() {
    return totalWeiRaisedDuringICO
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_d8b22c12(?) {
    require msg.sender == owner
    stor11[address(arg1)] = 1
    emit FrozenFunds(address(arg1), 1);
}

function freezeAccount(address arg1) {
    require msg.sender == owner
    stor11[address(arg1)] = 0
    emit FrozenFunds(address(arg1), 0);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor11[address(msg.sender)]:
        require lockedBalances[address(msg.sender)] <= balanceOf[address(msg.sender)]
        if block.timestamp <= 438298 * 3600:
            require arg2 <= balanceOf[address(msg.sender)] - lockedBalances[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if this.address == msg.sender:
        if 425112 * 24 * 3600 < block.timestamp:
            if block.timestamp < 438298 * 3600:
                require arg2 + lockedBalances[address(arg1)] >= lockedBalances[address(arg1)]
                lockedBalances[address(arg1)] += arg2
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor11[address(arg1)]:
        require lockedBalances[address(arg1)] <= balanceOf[address(arg1)]
        if block.timestamp <= 438298 * 3600:
            require arg3 <= balanceOf[address(arg1)] - lockedBalances[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if this.address == arg1:
        if 425112 * 24 * 3600 < block.timestamp:
            if block.timestamp < 438298 * 3600:
                require arg3 + lockedBalances[address(arg2)] >= lockedBalances[address(arg2)]
                lockedBalances[address(arg2)] += arg3
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function _fallback() payable {
    require msg.value >= 10^16
    if block.timestamp < 429528 * 24 * 3600:
        call stor19 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not msg.value:
            if 0 > balanceOf[this.address]:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(0, this.address, msg.sender);
            require 0 <= balanceOf[this.address]
            require balanceOf[msg.sender] >= balanceOf[msg.sender]
            if this.address != this.address:
                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                    totalWeiRaisedDuringICO += msg.value
                    if sub_3b9125cf >= sub_3b9125cf:
            else:
                if 425112 * 24 * 3600 >= block.timestamp:
                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                        totalWeiRaisedDuringICO += msg.value
                        if sub_3b9125cf >= sub_3b9125cf:
                else:
                    if block.timestamp >= 438298 * 3600:
                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                            totalWeiRaisedDuringICO += msg.value
                            if sub_3b9125cf >= sub_3b9125cf:
                    else:
                        if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                totalWeiRaisedDuringICO += msg.value
                                if sub_3b9125cf >= sub_3b9125cf:
            revert
        require rate * msg.value / msg.value == rate
        if rate * msg.value > balanceOf[this.address]:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            emit Transfer((rate * msg.value), this.address, msg.sender);
            require rate * msg.value <= balanceOf[this.address]
            balanceOf[this.address] += -1 * rate * msg.value
            require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[msg.sender] += rate * msg.value
            if this.address == this.address:
                if 425112 * 24 * 3600 < block.timestamp:
                    if block.timestamp < 438298 * 3600:
                        require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                        lockedBalances[msg.sender] += rate * msg.value
            require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
            totalWeiRaisedDuringICO += msg.value
            require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
            sub_3b9125cf += rate * msg.value
    else:
        if block.timestamp <= 1551398399:
            rate = 200
            if msg.value:
                require 200 * msg.value / msg.value == 200
                stor5 += 200 * msg.value
            if stor5 <= 150000000 * 10^18:
                call stor19 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.value:
                    if 0 > balanceOf[this.address]:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(0, this.address, msg.sender);
                    require 0 <= balanceOf[this.address]
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    if this.address != this.address:
                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                            totalWeiRaisedDuringICO += msg.value
                            if sub_3b9125cf >= sub_3b9125cf:
                    else:
                        if 425112 * 24 * 3600 >= block.timestamp:
                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                totalWeiRaisedDuringICO += msg.value
                                if sub_3b9125cf >= sub_3b9125cf:
                        else:
                            if block.timestamp >= 438298 * 3600:
                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                    totalWeiRaisedDuringICO += msg.value
                                    if sub_3b9125cf >= sub_3b9125cf:
                            else:
                                if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                        totalWeiRaisedDuringICO += msg.value
                                        if sub_3b9125cf >= sub_3b9125cf:
                    revert
                require rate * msg.value / msg.value == rate
                if rate * msg.value > balanceOf[this.address]:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Transfer((rate * msg.value), this.address, msg.sender);
                    require rate * msg.value <= balanceOf[this.address]
                    balanceOf[this.address] += -1 * rate * msg.value
                    require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += rate * msg.value
                    if this.address == this.address:
                        if 425112 * 24 * 3600 < block.timestamp:
                            if block.timestamp < 438298 * 3600:
                                require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                lockedBalances[msg.sender] += rate * msg.value
                    require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                    totalWeiRaisedDuringICO += msg.value
                    require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                    sub_3b9125cf += rate * msg.value
        else:
            if block.timestamp < 430944 * 24 * 3600:
                call stor19 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not msg.value:
                    if 0 > balanceOf[this.address]:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(0, this.address, msg.sender);
                    require 0 <= balanceOf[this.address]
                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                    if this.address != this.address:
                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                            totalWeiRaisedDuringICO += msg.value
                            if sub_3b9125cf >= sub_3b9125cf:
                    else:
                        if 425112 * 24 * 3600 >= block.timestamp:
                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                totalWeiRaisedDuringICO += msg.value
                                if sub_3b9125cf >= sub_3b9125cf:
                        else:
                            if block.timestamp >= 438298 * 3600:
                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                    totalWeiRaisedDuringICO += msg.value
                                    if sub_3b9125cf >= sub_3b9125cf:
                            else:
                                if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                        totalWeiRaisedDuringICO += msg.value
                                        if sub_3b9125cf >= sub_3b9125cf:
                    revert
                require rate * msg.value / msg.value == rate
                if rate * msg.value > balanceOf[this.address]:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit Transfer((rate * msg.value), this.address, msg.sender);
                    require rate * msg.value <= balanceOf[this.address]
                    balanceOf[this.address] += -1 * rate * msg.value
                    require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[msg.sender] += rate * msg.value
                    if this.address == this.address:
                        if 425112 * 24 * 3600 < block.timestamp:
                            if block.timestamp < 438298 * 3600:
                                require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                lockedBalances[msg.sender] += rate * msg.value
                    require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                    totalWeiRaisedDuringICO += msg.value
                    require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                    sub_3b9125cf += rate * msg.value
            else:
                if block.timestamp <= 1556668799:
                    rate = 100
                    if msg.value:
                        require 100 * msg.value / msg.value == 100
                        stor6 += 100 * msg.value
                    if stor6 <= 330000000 * 10^18:
                        call stor19 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.value:
                            if 0 > balanceOf[this.address]:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Transfer(0, this.address, msg.sender);
                            require 0 <= balanceOf[this.address]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            if this.address != this.address:
                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                    totalWeiRaisedDuringICO += msg.value
                                    if sub_3b9125cf >= sub_3b9125cf:
                            else:
                                if 425112 * 24 * 3600 >= block.timestamp:
                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                        totalWeiRaisedDuringICO += msg.value
                                        if sub_3b9125cf >= sub_3b9125cf:
                                else:
                                    if block.timestamp >= 438298 * 3600:
                                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                            totalWeiRaisedDuringICO += msg.value
                                            if sub_3b9125cf >= sub_3b9125cf:
                                    else:
                                        if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                totalWeiRaisedDuringICO += msg.value
                                                if sub_3b9125cf >= sub_3b9125cf:
                            revert
                        require rate * msg.value / msg.value == rate
                        if rate * msg.value > balanceOf[this.address]:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Transfer((rate * msg.value), this.address, msg.sender);
                            require rate * msg.value <= balanceOf[this.address]
                            balanceOf[this.address] += -1 * rate * msg.value
                            require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[msg.sender] += rate * msg.value
                            if this.address == this.address:
                                if 425112 * 24 * 3600 < block.timestamp:
                                    if block.timestamp < 438298 * 3600:
                                        require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                        lockedBalances[msg.sender] += rate * msg.value
                            require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                            totalWeiRaisedDuringICO += msg.value
                            require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                            sub_3b9125cf += rate * msg.value
                else:
                    if block.timestamp < 432408 * 24 * 3600:
                        call stor19 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not msg.value:
                            if 0 > balanceOf[this.address]:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Transfer(0, this.address, msg.sender);
                            require 0 <= balanceOf[this.address]
                            require balanceOf[msg.sender] >= balanceOf[msg.sender]
                            if this.address != this.address:
                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                    totalWeiRaisedDuringICO += msg.value
                                    if sub_3b9125cf >= sub_3b9125cf:
                            else:
                                if 425112 * 24 * 3600 >= block.timestamp:
                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                        totalWeiRaisedDuringICO += msg.value
                                        if sub_3b9125cf >= sub_3b9125cf:
                                else:
                                    if block.timestamp >= 438298 * 3600:
                                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                            totalWeiRaisedDuringICO += msg.value
                                            if sub_3b9125cf >= sub_3b9125cf:
                                    else:
                                        if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                totalWeiRaisedDuringICO += msg.value
                                                if sub_3b9125cf >= sub_3b9125cf:
                            revert
                        require rate * msg.value / msg.value == rate
                        if rate * msg.value > balanceOf[this.address]:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit Transfer((rate * msg.value), this.address, msg.sender);
                            require rate * msg.value <= balanceOf[this.address]
                            balanceOf[this.address] += -1 * rate * msg.value
                            require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                            balanceOf[msg.sender] += rate * msg.value
                            if this.address == this.address:
                                if 425112 * 24 * 3600 < block.timestamp:
                                    if block.timestamp < 438298 * 3600:
                                        require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                        lockedBalances[msg.sender] += rate * msg.value
                            require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                            totalWeiRaisedDuringICO += msg.value
                            require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                            sub_3b9125cf += rate * msg.value
                    else:
                        if block.timestamp > 1559347199:
                            if block.timestamp >= 433152 * 24 * 3600:
                                rate = 18
                            call stor19 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not msg.value:
                                if 0 > balanceOf[this.address]:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                emit Transfer(0, this.address, msg.sender);
                                require 0 <= balanceOf[this.address]
                                require balanceOf[msg.sender] >= balanceOf[msg.sender]
                                if this.address != this.address:
                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                        totalWeiRaisedDuringICO += msg.value
                                        if sub_3b9125cf >= sub_3b9125cf:
                                else:
                                    if 425112 * 24 * 3600 >= block.timestamp:
                                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                            totalWeiRaisedDuringICO += msg.value
                                            if sub_3b9125cf >= sub_3b9125cf:
                                    else:
                                        if block.timestamp >= 438298 * 3600:
                                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                totalWeiRaisedDuringICO += msg.value
                                                if sub_3b9125cf >= sub_3b9125cf:
                                        else:
                                            if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                    totalWeiRaisedDuringICO += msg.value
                                                    if sub_3b9125cf >= sub_3b9125cf:
                                revert
                            require rate * msg.value / msg.value == rate
                            if rate * msg.value > balanceOf[this.address]:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                emit Transfer((rate * msg.value), this.address, msg.sender);
                                require rate * msg.value <= balanceOf[this.address]
                                balanceOf[this.address] += -1 * rate * msg.value
                                require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                balanceOf[msg.sender] += rate * msg.value
                                if this.address == this.address:
                                    if 425112 * 24 * 3600 < block.timestamp:
                                        if block.timestamp < 438298 * 3600:
                                            require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                            lockedBalances[msg.sender] += rate * msg.value
                                require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                                totalWeiRaisedDuringICO += msg.value
                                require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                                sub_3b9125cf += rate * msg.value
                        else:
                            rate = 50
                            if msg.value:
                                require 50 * msg.value / msg.value == 50
                                stor7 += 50 * msg.value
                            if stor7 <= 330000000 * 10^18:
                                call stor19 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not msg.value:
                                    if 0 > balanceOf[this.address]:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    emit Transfer(0, this.address, msg.sender);
                                    require 0 <= balanceOf[this.address]
                                    require balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    if this.address != this.address:
                                        if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                            totalWeiRaisedDuringICO += msg.value
                                            if sub_3b9125cf >= sub_3b9125cf:
                                    else:
                                        if 425112 * 24 * 3600 >= block.timestamp:
                                            if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                totalWeiRaisedDuringICO += msg.value
                                                if sub_3b9125cf >= sub_3b9125cf:
                                        else:
                                            if block.timestamp >= 438298 * 3600:
                                                if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                    totalWeiRaisedDuringICO += msg.value
                                                    if sub_3b9125cf >= sub_3b9125cf:
                                            else:
                                                if lockedBalances[msg.sender] >= lockedBalances[msg.sender]:
                                                    if msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO:
                                                        totalWeiRaisedDuringICO += msg.value
                                                        if sub_3b9125cf >= sub_3b9125cf:
                                    revert
                                require rate * msg.value / msg.value == rate
                                if rate * msg.value > balanceOf[this.address]:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    emit Transfer((rate * msg.value), this.address, msg.sender);
                                    require rate * msg.value <= balanceOf[this.address]
                                    balanceOf[this.address] += -1 * rate * msg.value
                                    require (rate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                                    balanceOf[msg.sender] += rate * msg.value
                                    if this.address == this.address:
                                        if 425112 * 24 * 3600 < block.timestamp:
                                            if block.timestamp < 438298 * 3600:
                                                require (rate * msg.value) + lockedBalances[msg.sender] >= lockedBalances[msg.sender]
                                                lockedBalances[msg.sender] += rate * msg.value
                                    require msg.value + totalWeiRaisedDuringICO >= totalWeiRaisedDuringICO
                                    totalWeiRaisedDuringICO += msg.value
                                    require (rate * msg.value) + sub_3b9125cf >= sub_3b9125cf
                                    sub_3b9125cf += rate * msg.value
}



}
