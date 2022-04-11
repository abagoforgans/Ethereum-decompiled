contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint16 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    uint8(stor4.field_168) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = code.data[4575 len 20]
    stor3 = code.data[4607 len 20]
    address(stor4.field_0) = code.data[4639 len 20]
    uint8(stor4.field_160) = 0
    stor5 = 1250 * 10^18
    stor8 = 10^16
    address(stor4.field_0) = code.data[4639 len 20]
    uint16(stor4.field_160) = 0
    stor6 = 0
    stor7 = 0
    stor9 = block.number
    stor10 = block.number + 148800
    stor11 = 4 * 10^11
    stor12 = code.data[4671 len 20]
    return code.data[361 len 4202]
}



// =====================  Runtime code  =====================


address controllerAddress;
address creatorAddress;
address fundRecipientAddress;
address reserveTeamRecipientAddress;
uint8 stor4; offset 160
uint8 state; offset 168
address reserveBountyRecipientAddress;
uint256 minFundingGoal;
uint256 currentBalance;
uint256 tokensIssued;
uint256 capTokenAmount;
uint256 startBlockNumber;
uint256 endBlockNumber;
uint256 tokenExchangeRate;
address exchangeTokenAddress;
mapping of uint256 stor13;
mapping of uint8 stor14;

function creator() {
    return creatorAddress
}

function minFundingGoal() {
    return minFundingGoal
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function startBlockNumber() {
    return startBlockNumber
}

function capTokenAmount() {
    return capTokenAmount
}

function reserveBountyRecipient() {
    return reserveBountyRecipientAddress
}

function reserveTeamRecipient() {
    return reserveTeamRecipientAddress
}

function tokensIssued() {
    return tokensIssued
}

function exchangeToken() {
    return exchangeTokenAddress
}

function endBlockNumber() {
    return endBlockNumber
}

function state() {
    require state <= 3
    return state
}

function currentBalance() {
    return currentBalance
}

function fundRecipient() {
    return fundRecipientAddress
}

function isReserveGenerated() {
    return bool(stor4)
}

function controller() {
    return controllerAddress
}

function removeContract() {
    require state <= 3
    if state == 1:
        require block.number > endBlockNumber
        require controllerAddress == msg.sender
        if state <= 3:
            if state == 3:
                selfdestruct(msg.sender)
            if ext_code.size(exchangeTokenAddress):
                call exchangeTokenAddress.0x3cebb823 with:
                     gas gas_remaining - 710 wei
                    args controllerAddress
                if ext_call.success:
                    selfdestruct(msg.sender)
    else:
        if state <= 3:
            require state == 2
            require block.number > endBlockNumber
            require controllerAddress == msg.sender
            if state <= 3:
                if state == 3:
                    selfdestruct(msg.sender)
                if ext_code.size(exchangeTokenAddress):
                    call exchangeTokenAddress.0x3cebb823 with:
                         gas gas_remaining - 710 wei
                        args controllerAddress
                    if ext_call.success:
                        selfdestruct(msg.sender)
    revert
}

function getExchangeRate(uint256 arg1) {
    return (arg1 * tokenExchangeRate / 10^18)
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function changeReserveTeamRecipient(address arg1) {
    require controllerAddress == msg.sender
    reserveTeamRecipientAddress = arg1
}

function changeReserveBountyRecipient(address arg1) {
    require controllerAddress == msg.sender
    reserveBountyRecipientAddress = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require controllerAddress == msg.sender
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function getRefund() {
    require state <= 3
    require state == 1
    stor13[address(msg.sender)] = 0
    call msg.sender with:
       value stor13[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    currentBalance -= stor13[address(msg.sender)]
    emit FundTransfer(msg.sender, stor13[address(msg.sender)], 0);
}

function generateReserve() {
    require not stor4
    if tokensIssued:
        require tokensIssued
        require 15 * tokensIssued / tokensIssued == 15
    require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
    if tokensIssued:
        require tokensIssued
        require tokensIssued / tokensIssued == 1
    require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args reserveTeamRecipientAddress, 15 * tokensIssued / 85
    require ext_call.success
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args reserveBountyRecipientAddress, tokensIssued / 99
    require ext_call.success
    stor4 = 1
}

function checkIfFundingCompleteOrExpired() {
    if block.number > endBlockNumber:
        if currentBalance < minFundingGoal:
            state = 1
        else:
            state = 2
            require state <= 3
            require state == 2
            require controllerAddress == msg.sender
            currentBalance = 0
            state = 3
            call fundRecipientAddress with:
               value currentBalance wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require not stor4
            if tokensIssued:
                require tokensIssued
                require 15 * tokensIssued / tokensIssued == 15
            require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
            if tokensIssued:
                require tokensIssued
                require tokensIssued / tokensIssued == 1
            require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress, 15 * tokensIssued / 85
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveBountyRecipientAddress, tokensIssued / 99
            require ext_call.success
            stor4 = 1
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0xf41e60c5 with:
                 gas gas_remaining - 710 wei
                args 1
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x3cebb823 with:
                 gas gas_remaining - 710 wei
                args controllerAddress
            require ext_call.success
            emit GoalReached(fundRecipientAddress, currentBalance);
    else:
        if tokensIssued >= capTokenAmount:
            if currentBalance < minFundingGoal:
                state = 1
            else:
                state = 2
                require state <= 3
                require state == 2
                require controllerAddress == msg.sender
                currentBalance = 0
                state = 3
                call fundRecipientAddress with:
                   value currentBalance wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require not stor4
                if tokensIssued:
                    require tokensIssued
                    require 15 * tokensIssued / tokensIssued == 15
                require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
                if tokensIssued:
                    require tokensIssued
                    require tokensIssued / tokensIssued == 1
                require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveBountyRecipientAddress, tokensIssued / 99
                require ext_call.success
                stor4 = 1
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0xf41e60c5 with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x3cebb823 with:
                     gas gas_remaining - 710 wei
                    args controllerAddress
                require ext_call.success
                emit GoalReached(fundRecipientAddress, currentBalance);
}

function investment() payable {
    require state <= 3
    require not state
    require bool(stor14[address(msg.sender)]) != 1
    require msg.value >= 10^16
    require msg.value
    stor13[address(msg.sender)] += msg.value
    currentBalance += msg.value
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * tokenExchangeRate / 10^18
    require ext_call.success
    tokensIssued += msg.value * tokenExchangeRate / 10^18
    emit FundTransfer(msg.sender, msg.value, 1);
    emit LogFundingReceived(msg.sender, msg.value * tokenExchangeRate / 10^18, tokensIssued);
    if block.number > endBlockNumber:
        if currentBalance < minFundingGoal:
            state = 1
        else:
            state = 2
            require state <= 3
            require state == 2
            require controllerAddress == msg.sender
            currentBalance = 0
            state = 3
            call fundRecipientAddress with:
               value currentBalance wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require not stor4
            if tokensIssued:
                require tokensIssued
                require 15 * tokensIssued / tokensIssued == 15
            require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
            if tokensIssued:
                require tokensIssued
                require tokensIssued / tokensIssued == 1
            require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress, 15 * tokensIssued / 85
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveBountyRecipientAddress, tokensIssued / 99
            require ext_call.success
            stor4 = 1
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0xf41e60c5 with:
                 gas gas_remaining - 710 wei
                args 1
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x3cebb823 with:
                 gas gas_remaining - 710 wei
                args controllerAddress
            require ext_call.success
            emit GoalReached(fundRecipientAddress, currentBalance);
    else:
        if tokensIssued >= capTokenAmount:
            if currentBalance < minFundingGoal:
                state = 1
            else:
                state = 2
                require state <= 3
                require state == 2
                require controllerAddress == msg.sender
                currentBalance = 0
                state = 3
                call fundRecipientAddress with:
                   value currentBalance wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require not stor4
                if tokensIssued:
                    require tokensIssued
                    require 15 * tokensIssued / tokensIssued == 15
                require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
                if tokensIssued:
                    require tokensIssued
                    require tokensIssued / tokensIssued == 1
                require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveBountyRecipientAddress, tokensIssued / 99
                require ext_call.success
                stor4 = 1
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0xf41e60c5 with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x3cebb823 with:
                     gas gas_remaining - 710 wei
                    args controllerAddress
                require ext_call.success
                emit GoalReached(fundRecipientAddress, currentBalance);
    return stor13[address(msg.sender)]
}

function _fallback() payable {
    require state <= 3
    require not state
    require bool(stor14[address(msg.sender)]) != 1
    require state <= 3
    require not state
    require bool(stor14[address(msg.sender)]) != 1
    require msg.value >= 10^16
    require msg.value
    stor13[address(msg.sender)] += msg.value
    currentBalance += msg.value
    require ext_code.size(exchangeTokenAddress)
    call exchangeTokenAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * tokenExchangeRate / 10^18
    require ext_call.success
    tokensIssued += msg.value * tokenExchangeRate / 10^18
    emit FundTransfer(msg.sender, msg.value, 1);
    emit LogFundingReceived(msg.sender, msg.value * tokenExchangeRate / 10^18, tokensIssued);
    if block.number > endBlockNumber:
        if currentBalance < minFundingGoal:
            state = 1
        else:
            state = 2
            require state <= 3
            require state == 2
            require controllerAddress == msg.sender
            currentBalance = 0
            state = 3
            call fundRecipientAddress with:
               value currentBalance wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require not stor4
            if tokensIssued:
                require tokensIssued
                require 15 * tokensIssued / tokensIssued == 15
            require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
            if tokensIssued:
                require tokensIssued
                require tokensIssued / tokensIssued == 1
            require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress, 15 * tokensIssued / 85
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args reserveBountyRecipientAddress, tokensIssued / 99
            require ext_call.success
            stor4 = 1
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0xf41e60c5 with:
                 gas gas_remaining - 710 wei
                args 1
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                 gas gas_remaining - 710 wei
                args reserveTeamRecipientAddress
            require ext_call.success
            require ext_code.size(exchangeTokenAddress)
            call exchangeTokenAddress.0x3cebb823 with:
                 gas gas_remaining - 710 wei
                args controllerAddress
            require ext_call.success
            emit GoalReached(fundRecipientAddress, currentBalance);
    else:
        if tokensIssued >= capTokenAmount:
            if currentBalance < minFundingGoal:
                state = 1
            else:
                state = 2
                require state <= 3
                require state == 2
                require controllerAddress == msg.sender
                currentBalance = 0
                state = 3
                call fundRecipientAddress with:
                   value currentBalance wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require not stor4
                if tokensIssued:
                    require tokensIssued
                    require 15 * tokensIssued / tokensIssued == 15
                require 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85)
                if tokensIssued:
                    require tokensIssued
                    require tokensIssued / tokensIssued == 1
                require tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99)
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args reserveBountyRecipientAddress, tokensIssued / 99
                require ext_call.success
                stor4 = 1
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0xf41e60c5 with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                     gas gas_remaining - 710 wei
                    args reserveTeamRecipientAddress
                require ext_call.success
                require ext_code.size(exchangeTokenAddress)
                call exchangeTokenAddress.0x3cebb823 with:
                     gas gas_remaining - 710 wei
                    args controllerAddress
                require ext_call.success
                emit GoalReached(fundRecipientAddress, currentBalance);
}

function payOut() {
    require state <= 3
    require state == 2
    require controllerAddress == msg.sender
    currentBalance = 0
    state = 3
    call fundRecipientAddress with:
       value currentBalance wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require not stor4
    if not tokensIssued:
        if 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85):
            if not tokensIssued:
                if tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99):
                    if ext_code.size(exchangeTokenAddress):
                        call exchangeTokenAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                        if ext_call.success:
                            if ext_code.size(exchangeTokenAddress):
                                call exchangeTokenAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args reserveBountyRecipientAddress, tokensIssued / 99
                                if ext_call.success:
                                    stor4 = 1
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.0xf41e60c5 with:
                                             gas gas_remaining - 710 wei
                                            args 1
                                        if ext_call.success:
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args reserveTeamRecipientAddress
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                             gas gas_remaining - 710 wei
                                                            args controllerAddress
                                                        if ext_call.success:
            else:
                if tokensIssued:
                    if tokensIssued / tokensIssued == 1:
                        if tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99):
                            if ext_code.size(exchangeTokenAddress):
                                call exchangeTokenAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                                if ext_call.success:
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args reserveBountyRecipientAddress, tokensIssued / 99
                                        if ext_call.success:
                                            stor4 = 1
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.0xf41e60c5 with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args reserveTeamRecipientAddress
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
    else:
        if tokensIssued:
            if 15 * tokensIssued / tokensIssued == 15:
                if 15 * tokensIssued == (85 * 15 * tokensIssued / 85) + (15 * tokensIssued % 85):
                    if not tokensIssued:
                        if tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99):
                            if ext_code.size(exchangeTokenAddress):
                                call exchangeTokenAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                                if ext_call.success:
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args reserveBountyRecipientAddress, tokensIssued / 99
                                        if ext_call.success:
                                            stor4 = 1
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.0xf41e60c5 with:
                                                     gas gas_remaining - 710 wei
                                                    args 1
                                                if ext_call.success:
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                                                             gas gas_remaining - 710 wei
                                                            args reserveTeamRecipientAddress
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.0x3cebb823 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args controllerAddress
                                                                if ext_call.success:
                    else:
                        if tokensIssued:
                            if tokensIssued / tokensIssued == 1:
                                if tokensIssued == (99 * tokensIssued / 99) + (tokensIssued % 99):
                                    if ext_code.size(exchangeTokenAddress):
                                        call exchangeTokenAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args reserveTeamRecipientAddress, 15 * tokensIssued / 85
                                        if ext_call.success:
                                            if ext_code.size(exchangeTokenAddress):
                                                call exchangeTokenAddress.0x827f32c0 with:
                                                     gas gas_remaining - 710 wei
                                                    args reserveBountyRecipientAddress, tokensIssued / 99
                                                if ext_call.success:
                                                    stor4 = 1
                                                    if ext_code.size(exchangeTokenAddress):
                                                        call exchangeTokenAddress.0xf41e60c5 with:
                                                             gas gas_remaining - 710 wei
                                                            args 1
                                                        if ext_call.success:
                                                            if ext_code.size(exchangeTokenAddress):
                                                                call exchangeTokenAddress.changeReserveTeamRecepient(address rg1) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args reserveTeamRecipientAddress
                                                                if ext_call.success:
                                                                    if ext_code.size(exchangeTokenAddress):
                                                                        call exchangeTokenAddress.0x3cebb823 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args controllerAddress
                                                                        if ext_call.success:
    revert
}



}
