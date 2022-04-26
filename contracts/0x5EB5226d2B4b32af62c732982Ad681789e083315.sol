contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() payable {
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x94e1f1fa284061184b583a61633cac75e03cfdbc
    stor3 = block.timestamp
    stor4 = stor3 + (744 * 24 * 3600)
    stor5 = 0xb1c74c1d82824428e484072069041ded079ed921
    return code.data[350 len 4856]
}



// =====================  Runtime code  =====================


const durationInDays = 31

const bonusPrice = 1857142857 * 10^6

const fundingGoal = 140 * 10^18

const price = 2142857142857140

const bonusPeriodDurationInHours = 10

const bonusPriceDeltaPerHour = 28571428570000

const fundingGoalHardCap = 1400 * 10^18

const minSum = 142857142900 * 10^6


address owner;
address beneficiaryAddress;
uint256 amountRaised;
uint256 start;
uint256 deadline;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
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

function owner() {
    return owner
}

function start() {
    return start
}

function crowdsaleClosed() {
    return bool(uint8(stor7.field_8))
}

function fundingGoalReached() {
    return bool(uint8(stor7.field_0))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensWithdrawal(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getBonus(uint256 arg1) {
    require not uint8(stor7.field_8)
    if arg1 < 2857142857 * 10^9:
        return 0
    if arg1 < 7142857143 * 10^9:
        return 6
    if arg1 < 1428571429 * 10^10:
        return 8
    if arg1 < 25 * 10^18:
        return 10
    if arg1 < 85 * 10^18:
        return 15
    if arg1 >= 285 * 10^18:
        return 20
    return 17
}

function getPrice() {
    require not uint8(stor7.field_8)
    if block.timestamp >= start + (10 * 3600):
        return 2142857142857140
    require start <= block.timestamp
    require 28571428570000 * block.timestamp - start / 3600 / 28571428570000 == block.timestamp - start / 3600
    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 1857142857 * 10^6
    return ((28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6)
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= 140 * 10^18:
            uint8(stor7.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaised);
        Mask(248, 0, stor7.field_8) = 1
    else:
        if amountRaised >= 1400 * 10^18:
            if amountRaised >= 140 * 10^18:
                uint8(stor7.field_0) = 1
                emit GoalReached(beneficiaryAddress, amountRaised);
            Mask(248, 0, stor7.field_8) = 1
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor7.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor7.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor7.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
    else:
        if amountRaised >= 1400 * 10^18:
            if uint8(stor7.field_0):
                if beneficiaryAddress == msg.sender:
                    call beneficiaryAddress with:
                       value amountRaised wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        uint8(stor7.field_0) = 0
                    else:
                        emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                balanceOf[address(msg.sender)] = 0
                if balanceOf[address(msg.sender)] <= 0:
                    if uint8(stor7.field_0):
                        if beneficiaryAddress == msg.sender:
                            call beneficiaryAddress with:
                               value amountRaised wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                uint8(stor7.field_0) = 0
                            else:
                                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
                else:
                    call msg.sender with:
                       value balanceOf[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                    if uint8(stor7.field_0):
                        if beneficiaryAddress == msg.sender:
                            call beneficiaryAddress with:
                               value amountRaised wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                uint8(stor7.field_0) = 0
                            else:
                                emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    require msg.value > 142857142900 * 10^6
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    require not uint8(stor7.field_8)
    if block.timestamp >= start + (10 * 3600):
        require not uint8(stor7.field_8)
        if msg.value < 2857142857 * 10^9:
            if not msg.value:
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
            else:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
                if 10^18 * msg.value / 2142857142857140:
                    require 10^18 * msg.value / 2142857142857140
                    require not 0 / 10^18 * msg.value / 2142857142857140
                require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / 2142857142857140
        else:
            if msg.value < 7142857143 * 10^9:
                if not msg.value:
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                else:
                    require msg.value
                    require 10^18 * msg.value / msg.value == 10^18
                    if not 10^18 * msg.value / 2142857142857140:
                        require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / 2142857142857140
                    else:
                        require 10^18 * msg.value / 2142857142857140
                        require 6 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 6
                        require (10^18 * msg.value / 2142857142857140) + (6 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10^18 * msg.value / 2142857142857140) + (6 * 10^18 * msg.value / 2142857142857140 / 100)
            else:
                if msg.value < 1428571429 * 10^10:
                    if not msg.value:
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                    else:
                        require msg.value
                        require 10^18 * msg.value / msg.value == 10^18
                        if not 10^18 * msg.value / 2142857142857140:
                            require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / 2142857142857140
                        else:
                            require 10^18 * msg.value / 2142857142857140
                            require 8 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 8
                            require (10^18 * msg.value / 2142857142857140) + (8 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10^18 * msg.value / 2142857142857140) + (8 * 10^18 * msg.value / 2142857142857140 / 100)
                else:
                    if msg.value < 25 * 10^18:
                        if not msg.value:
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            if not 10^18 * msg.value / 2142857142857140:
                                require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / 2142857142857140
                            else:
                                require 10^18 * msg.value / 2142857142857140
                                require 10 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 10
                                require (10^18 * msg.value / 2142857142857140) + (10 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / 2142857142857140) + (10 * 10^18 * msg.value / 2142857142857140 / 100)
                    else:
                        if msg.value < 85 * 10^18:
                            if not msg.value:
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                            else:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                if not 10^18 * msg.value / 2142857142857140:
                                    require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / 2142857142857140
                                else:
                                    require 10^18 * msg.value / 2142857142857140
                                    require 15 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 15
                                    require (10^18 * msg.value / 2142857142857140) + (15 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / 2142857142857140) + (15 * 10^18 * msg.value / 2142857142857140 / 100)
                        else:
                            if msg.value >= 285 * 10^18:
                                if not msg.value:
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                else:
                                    require msg.value
                                    require 10^18 * msg.value / msg.value == 10^18
                                    if not 10^18 * msg.value / 2142857142857140:
                                        require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / 2142857142857140
                                    else:
                                        require 10^18 * msg.value / 2142857142857140
                                        require 20 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 20
                                        require (10^18 * msg.value / 2142857142857140) + (20 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / 2142857142857140) + (20 * 10^18 * msg.value / 2142857142857140 / 100)
                            else:
                                if not msg.value:
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                else:
                                    require msg.value
                                    require 10^18 * msg.value / msg.value == 10^18
                                    if not 10^18 * msg.value / 2142857142857140:
                                        require 10^18 * msg.value / 2142857142857140 >= 10^18 * msg.value / 2142857142857140
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / 2142857142857140
                                    else:
                                        require 10^18 * msg.value / 2142857142857140
                                        require 17 * 10^18 * msg.value / 2142857142857140 / 10^18 * msg.value / 2142857142857140 == 17
                                        require (10^18 * msg.value / 2142857142857140) + (17 * 10^18 * msg.value / 2142857142857140 / 100) >= 10^18 * msg.value / 2142857142857140
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / 2142857142857140) + (17 * 10^18 * msg.value / 2142857142857140 / 100)
    else:
        require start <= block.timestamp
        require 28571428570000 * block.timestamp - start / 3600 / 28571428570000 == block.timestamp - start / 3600
        require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 1857142857 * 10^6
        require not uint8(stor7.field_8)
        if msg.value < 2857142857 * 10^9:
            if not msg.value:
                require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                if 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                    require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    require not 0 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
            else:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
                require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                if 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                    require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    require not 0 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
        else:
            if msg.value < 7142857143 * 10^9:
                if not msg.value:
                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    else:
                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require 6 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 6
                        require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (6 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (6 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                else:
                    require msg.value
                    require 10^18 * msg.value / msg.value == 10^18
                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                    else:
                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require 6 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 6
                        require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (6 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (6 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
            else:
                if msg.value < 1428571429 * 10^10:
                    if not msg.value:
                        require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                            require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        else:
                            require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require 8 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 8
                            require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (8 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (8 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                    else:
                        require msg.value
                        require 10^18 * msg.value / msg.value == 10^18
                        require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                            require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                        else:
                            require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require 8 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 8
                            require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (8 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (8 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                else:
                    if msg.value < 25 * 10^18:
                        if not msg.value:
                            require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            else:
                                require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require 10 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 10
                                require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (10 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (10 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                        else:
                            require msg.value
                            require 10^18 * msg.value / msg.value == 10^18
                            require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                            else:
                                require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require 10 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 10
                                require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (10 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (10 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                    else:
                        if msg.value < 85 * 10^18:
                            if not msg.value:
                                require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                    require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                else:
                                    require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require 15 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 15
                                    require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (15 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (15 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                            else:
                                require msg.value
                                require 10^18 * msg.value / msg.value == 10^18
                                require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                    require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                else:
                                    require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require 15 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 15
                                    require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (15 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (15 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                        else:
                            if msg.value >= 285 * 10^18:
                                if not msg.value:
                                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    else:
                                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require 20 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 20
                                        require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (20 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (20 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                                else:
                                    require msg.value
                                    require 10^18 * msg.value / msg.value == 10^18
                                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    else:
                                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require 20 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 20
                                        require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (20 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (20 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                            else:
                                if not msg.value:
                                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    if not 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    else:
                                        require 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require 17 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 17
                                        require (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (17 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (17 * 0 / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
                                else:
                                    require msg.value
                                    require 10^18 * msg.value / msg.value == 10^18
                                    require (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    if not 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6:
                                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                    else:
                                        require 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require 17 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 == 17
                                        require (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (17 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100) >= 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6) + (17 * 10^18 * msg.value / (28571428570000 * block.timestamp - start / 3600) + 1857142857 * 10^6 / 100)
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
