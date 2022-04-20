contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint8 stor8;
address stor8; offset 8

function _fallback() payable {
    stor5 = 0
    uint8(stor8.field_0) = 0
    require not msg.value
    stor6 = code.data[3107 len 20]
    address(stor8.field_8) = code.data[3139 len 20]
    stor0 = code.data[3171 len 20]
    require code.data[3191 len 32] < code.data[3223 len 32]
    stor2 = code.data[3191 len 32]
    stor3 = code.data[3223 len 32]
    stor4 = code.data[3255 len 32]
    return code.data[232 len 2863]
}



// =====================  Runtime code  =====================


const rateSoft = 75

const fundingGoal = 2 * 10^11

const rateCoefficient = 10^11

const softCap = 2 * 10^11

const rateHard = 60

const maxGoal = 16 * 10^14


address tokenOwner;
uint256 amountRaised;
uint256 start;
uint256 end;
uint256 timeAfterSoftCap;
uint256 tokensSold;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor8;
address stor8; offset 8

function timeAfterSoftCap() {
    return timeAfterSoftCap
}

function tokensSold() {
    return tokensSold
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function tokenOwner() {
    return tokenOwner
}

function start() {
    return start
}

function crowdsaleClosed() {
    return bool(uint8(stor8.field_0))
}

function end() {
    return end
}

function checkGoalReached() {
    if block.timestamp > end:
        require msg.sender == tokenOwner
        if tokensSold >= 2 * 10^11:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x44df8e70 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            emit GoalReached(tokenOwner, amountRaised);
        uint8(stor8.field_0) = 1
}

function safeWithdrawal() {
    if block.timestamp > end:
        if eth.balance(this.address) >= balanceOf[address(msg.sender)]:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit FundTransfer(address(msg.sender), balanceOf[address(msg.sender)], 0, amountRaised);
}

function invest(address arg1) payable {
    if tokensSold >= 2 * 10^11:
        if msg.value != 0:
            require msg.value
            require 60 * msg.value / msg.value == 60
        require 60 * msg.value / 10^11 > 0
        require not uint8(stor8.field_0)
        require block.timestamp >= start
        require block.timestamp <= end
        require (60 * msg.value / 10^11) + tokensSold >= tokensSold
        require (60 * msg.value / 10^11) + tokensSold >= 60 * msg.value / 10^11
        require (60 * msg.value / 10^11) + tokensSold <= 16 * 10^14
        call address(stor8.field_8) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require msg.value + balanceOf[address(arg1)] >= msg.value
        balanceOf[address(arg1)] += msg.value
        require msg.value + amountRaised >= amountRaised
        require msg.value + amountRaised >= msg.value
        amountRaised += msg.value
        tokensSold += 60 * msg.value / 10^11
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args tokenOwner, address(arg1), 60 * msg.value / 10^11
        require ext_call.success
        require ext_call.return_data[0]
        emit FundTransfer(address(arg1), msg.value, 1, amountRaised);
    else:
        if msg.value != 0:
            require msg.value
            require 75 * msg.value / msg.value == 75
        require (75 * msg.value / 10^11) + tokensSold >= tokensSold
        require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
        if (75 * msg.value / 10^11) + tokensSold < 2 * 10^11:
            require 75 * msg.value / 10^11 > 0
            require not uint8(stor8.field_0)
            require block.timestamp >= start
            require block.timestamp <= end
            require (75 * msg.value / 10^11) + tokensSold >= tokensSold
            require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
            require (75 * msg.value / 10^11) + tokensSold <= 16 * 10^14
            call address(stor8.field_8) with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require msg.value + balanceOf[address(arg1)] >= msg.value
            balanceOf[address(arg1)] += msg.value
            require msg.value + amountRaised >= amountRaised
            require msg.value + amountRaised >= msg.value
            amountRaised += msg.value
            tokensSold += 75 * msg.value / 10^11
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args tokenOwner, address(arg1), 75 * msg.value / 10^11
            require ext_call.success
            require ext_call.return_data[0]
            emit FundTransfer(address(arg1), msg.value, 1, amountRaised);
        else:
            require (75 * msg.value / 10^11) + tokensSold >= tokensSold
            require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
            if (75 * msg.value / 10^11) + tokensSold == 2 * 10^11:
                require 75 * msg.value / 10^11 > 0
                require not uint8(stor8.field_0)
                require block.timestamp >= start
                require block.timestamp <= end
                require (75 * msg.value / 10^11) + tokensSold >= tokensSold
                require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
                require (75 * msg.value / 10^11) + tokensSold <= 16 * 10^14
                call address(stor8.field_8) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require msg.value + balanceOf[address(arg1)] >= msg.value
                balanceOf[address(arg1)] += msg.value
                require msg.value + amountRaised >= amountRaised
                require msg.value + amountRaised >= msg.value
                amountRaised += msg.value
                tokensSold += 75 * msg.value / 10^11
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args tokenOwner, address(arg1), 75 * msg.value / 10^11
            else:
                require tokensSold <= 2 * 10^11
                if -tokensSold + 2 * 10^11 != 0:
                    require -tokensSold + 2 * 10^11
                    require (-1 * 10^11 * tokensSold) + 20000 * 10^18 / -tokensSold + 2 * 10^11 == 10^11
                require (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= msg.value
                if msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) != 0:
                    require msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75)
                    require (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60
                require (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0
                require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11
                require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 > 0
                require not uint8(stor8.field_0)
                require block.timestamp >= start
                require block.timestamp <= end
                require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11 >= tokensSold
                require 0 >= -tokensSold
                require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11 <= 16 * 10^14
                call address(stor8.field_8) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require msg.value + balanceOf[address(arg1)] >= msg.value
                balanceOf[address(arg1)] += msg.value
                require msg.value + amountRaised >= amountRaised
                require msg.value + amountRaised >= msg.value
                amountRaised += msg.value
                tokensSold = ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args tokenOwner, address(arg1), ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11
            require ext_call.success
            require ext_call.return_data[0]
            emit FundTransfer(address(arg1), msg.value, 1, amountRaised);
            if block.timestamp + timeAfterSoftCap < end:
                end = block.timestamp + timeAfterSoftCap
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xf6a03ebf with:
                     gas gas_remaining - 710 wei
                    args (block.timestamp + timeAfterSoftCap)
                require ext_call.success
}

function _fallback() payable {
    if address(stor8.field_8) != msg.sender:
        if tokensSold >= 2 * 10^11:
            if msg.value != 0:
                require msg.value
                require 60 * msg.value / msg.value == 60
            require 60 * msg.value / 10^11 > 0
            require not uint8(stor8.field_0)
            require block.timestamp >= start
            require block.timestamp <= end
            require (60 * msg.value / 10^11) + tokensSold >= tokensSold
            require (60 * msg.value / 10^11) + tokensSold >= 60 * msg.value / 10^11
            require (60 * msg.value / 10^11) + tokensSold <= 16 * 10^14
            call address(stor8.field_8) with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require msg.value + balanceOf[address(msg.sender)] >= msg.value
            balanceOf[address(msg.sender)] += msg.value
            require msg.value + amountRaised >= amountRaised
            require msg.value + amountRaised >= msg.value
            amountRaised += msg.value
            tokensSold += 60 * msg.value / 10^11
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args tokenOwner, msg.sender, 60 * msg.value / 10^11
            require ext_call.success
            require ext_call.return_data[0]
            emit FundTransfer(address(msg.sender), msg.value, 1, amountRaised);
        else:
            if msg.value != 0:
                require msg.value
                require 75 * msg.value / msg.value == 75
            require (75 * msg.value / 10^11) + tokensSold >= tokensSold
            require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
            if (75 * msg.value / 10^11) + tokensSold < 2 * 10^11:
                require 75 * msg.value / 10^11 > 0
                require not uint8(stor8.field_0)
                require block.timestamp >= start
                require block.timestamp <= end
                require (75 * msg.value / 10^11) + tokensSold >= tokensSold
                require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
                require (75 * msg.value / 10^11) + tokensSold <= 16 * 10^14
                call address(stor8.field_8) with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require msg.value + balanceOf[address(msg.sender)] >= msg.value
                balanceOf[address(msg.sender)] += msg.value
                require msg.value + amountRaised >= amountRaised
                require msg.value + amountRaised >= msg.value
                amountRaised += msg.value
                tokensSold += 75 * msg.value / 10^11
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args tokenOwner, msg.sender, 75 * msg.value / 10^11
                require ext_call.success
                require ext_call.return_data[0]
                emit FundTransfer(address(msg.sender), msg.value, 1, amountRaised);
            else:
                require (75 * msg.value / 10^11) + tokensSold >= tokensSold
                require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
                if (75 * msg.value / 10^11) + tokensSold == 2 * 10^11:
                    require 75 * msg.value / 10^11 > 0
                    require not uint8(stor8.field_0)
                    require block.timestamp >= start
                    require block.timestamp <= end
                    require (75 * msg.value / 10^11) + tokensSold >= tokensSold
                    require (75 * msg.value / 10^11) + tokensSold >= 75 * msg.value / 10^11
                    require (75 * msg.value / 10^11) + tokensSold <= 16 * 10^14
                    call address(stor8.field_8) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require msg.value + balanceOf[address(msg.sender)] >= msg.value
                    balanceOf[address(msg.sender)] += msg.value
                    require msg.value + amountRaised >= amountRaised
                    require msg.value + amountRaised >= msg.value
                    amountRaised += msg.value
                    tokensSold += 75 * msg.value / 10^11
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args tokenOwner, msg.sender, 75 * msg.value / 10^11
                else:
                    require tokensSold <= 2 * 10^11
                    if -tokensSold + 2 * 10^11 != 0:
                        require -tokensSold + 2 * 10^11
                        require (-1 * 10^11 * tokensSold) + 20000 * 10^18 / -tokensSold + 2 * 10^11 == 10^11
                    require (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= msg.value
                    if msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) != 0:
                        require msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75)
                        require (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / msg.value - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60
                    require (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0
                    require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11
                    require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 > 0
                    require not uint8(stor8.field_0)
                    require block.timestamp >= start
                    require block.timestamp <= end
                    require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11 >= tokensSold
                    require 0 >= -tokensSold
                    require ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11 <= 16 * 10^14
                    call address(stor8.field_8) with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require msg.value + balanceOf[address(msg.sender)] >= msg.value
                    balanceOf[address(msg.sender)] += msg.value
                    require msg.value + amountRaised >= amountRaised
                    require msg.value + amountRaised >= msg.value
                    amountRaised += msg.value
                    tokensSold = ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + 2 * 10^11
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args tokenOwner, msg.sender, ((60 * msg.value) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11
                require ext_call.success
                require ext_call.return_data[0]
                emit FundTransfer(address(msg.sender), msg.value, 1, amountRaised);
                if block.timestamp + timeAfterSoftCap < end:
                    end = block.timestamp + timeAfterSoftCap
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xf6a03ebf with:
                         gas gas_remaining - 710 wei
                        args (block.timestamp + timeAfterSoftCap)
                    require ext_call.success
}

function getNumTokens(uint256 arg1) {
    if tokensSold >= 2 * 10^11:
        if 0 == arg1:
            return 60 * arg1 / 10^11, 0
        if arg1:
            if 60 * arg1 / arg1 == 60:
                return 60 * arg1 / 10^11, 0
    else:
        if 0 == arg1:
            if (75 * arg1 / 10^11) + tokensSold >= tokensSold:
                if (75 * arg1 / 10^11) + tokensSold >= 75 * arg1 / 10^11:
                    if (75 * arg1 / 10^11) + tokensSold < 2 * 10^11:
                        return 75 * arg1 / 10^11, 0
                    if (75 * arg1 / 10^11) + tokensSold >= tokensSold:
                        if (75 * arg1 / 10^11) + tokensSold >= 75 * arg1 / 10^11:
                            if (75 * arg1 / 10^11) + tokensSold == 2 * 10^11:
                                return 75 * arg1 / 10^11, 1
                            if tokensSold <= 2 * 10^11:
                                if 0 == -tokensSold + 2 * 10^11:
                                    if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= arg1:
                                        if 0 == arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                            if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                    return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                        else:
                                            if arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60:
                                                    if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                        if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                            return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                else:
                                    if -tokensSold + 2 * 10^11:
                                        if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / -tokensSold + 2 * 10^11 == 10^11:
                                            if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= arg1:
                                                if 0 == arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                    if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                        if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                            return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                                else:
                                                    if arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                        if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60:
                                                            if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                                if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                                    return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
        else:
            if arg1:
                if 75 * arg1 / arg1 == 75:
                    if (75 * arg1 / 10^11) + tokensSold >= tokensSold:
                        if (75 * arg1 / 10^11) + tokensSold >= 75 * arg1 / 10^11:
                            if (75 * arg1 / 10^11) + tokensSold < 2 * 10^11:
                                return 75 * arg1 / 10^11, 0
                            if (75 * arg1 / 10^11) + tokensSold >= tokensSold:
                                if (75 * arg1 / 10^11) + tokensSold >= 75 * arg1 / 10^11:
                                    if (75 * arg1 / 10^11) + tokensSold == 2 * 10^11:
                                        return 75 * arg1 / 10^11, 1
                                    if tokensSold <= 2 * 10^11:
                                        if 0 == -tokensSold + 2 * 10^11:
                                            if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= arg1:
                                                if 0 == arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                    if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                        if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                            return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                                else:
                                                    if arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                        if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60:
                                                            if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                                if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                                    return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                        else:
                                            if -tokensSold + 2 * 10^11:
                                                if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / -tokensSold + 2 * 10^11 == 10^11:
                                                    if (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75 <= arg1:
                                                        if 0 == arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                            if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                                if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                                    return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
                                                        else:
                                                            if arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75):
                                                                if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / arg1 - ((-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) == 60:
                                                                    if (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11 >= 0:
                                                                        if ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11 >= (60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11:
                                                                            return ((60 * arg1) - (60 * (-1 * 10^11 * tokensSold) + 20000 * 10^18 / 75) / 10^11) + -tokensSold + 2 * 10^11, 1
    revert
}



}
