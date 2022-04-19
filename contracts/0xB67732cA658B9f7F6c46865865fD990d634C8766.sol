contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = msg.sender
    stor4 = 0xc9de4b7f0c3d991e967158e4d4bfa4b51ec0b114
    stor5 = 0x49ca649c977ec36368f31762ff7220db0aae79f
    stor6 = 0x50cc6f2d548f7ecc22c9e9f994e4c0f34c7fe8d0
    stor7 = 0x33462171a814d4eda97cf3a112abe218d05c53c2
    stor8 = 1000
    return code.data[571 len 9477]
}



// =====================  Runtime code  =====================


const startDate = (419315 * 3600)

const minFundingGoal = (5 * 10^18 * 3600)

const refundPeriodStart = (block.timestamp > 420035 * 3600)

const deadline = (420035 * 3600)

const maxFundingGoal = 100000 * 10^18

const isStarted = block.timestamp >= 419315 * 3600

const minimumPurchase = 10^17

const refundPeriodOver = (block.timestamp > 421091 * 3600)

const refundeadline = (421091 * 3600)


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint256 payments;
uint256 totalPayments;
address owner;
address rokAddress;
address escrowAddress;
address bountyAddress;
address teamAddress;
uint256 rateETH_ROK;
uint256 savedBalance;
uint256 checkRokSold;
uint8 stor11;
mapping of uint256 checkEthBalance;
mapping of uint256 stor13;
mapping of uint8 stor14;

function totalPayments() {
    return totalPayments
}

function savedBalanceToken() {
    return checkRokSold
}

function checkRokSold() {
    return checkRokSold
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function rateETH_ROK() {
    return rateETH_ROK
}

function savedBalance() {
    return savedBalance
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function bounty() {
    return bountyAddress
}

function checkEthBalance(address arg1) {
    return checkEthBalance[address(arg1)]
}

function crowdsaleclosed() {
    return bool(stor11)
}

function rok() {
    return rokAddress
}

function payments(address arg1) {
    return payments[arg1]
}

function escrow() {
    return escrowAddress
}

function checkRokBounty() {
    return (checkRokSold / 100)
}

function isSuccessful() {
    return savedBalance >= 5 * 10^18 * 3600
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor0.field_0)
    require arg1
    address(stor0.field_0) = arg1
}

function unpause() {
    require msg.sender == address(stor0.field_0)
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == address(stor0.field_0)
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function checkRokTeam() {
    if not checkRokSold:
        return (19 * checkRokSold / 100)
    require checkRokSold
    require 19 * checkRokSold / checkRokSold == 19
    return (19 * checkRokSold / 100)
}

function tokenBalance() {
    require ext_code.size(rokAddress)
    call rokAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function percentOfGoal() {
    if not savedBalance:
        return uint16(100 * savedBalance / 5 * 10^18 * 3600)
    require savedBalance
    require 100 * savedBalance / savedBalance == 100
    return uint16(100 * savedBalance / 5 * 10^18 * 3600)
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require msg.sender == address(stor0.field_0)
    require block.timestamp >= 419315 * 3600
    require savedBalance < 100000 * 10^18
    require block.timestamp <= 420035 * 3600
    require ext_code.size(rokAddress)
    call rokAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require checkRokSold < ext_call.return_data[0]
    require bool(stor11) != 1
    stor11 = 1
}

function isComplete() {
    if savedBalance >= 100000 * 10^18:
        return savedBalance >= 100000 * 10^18
    if block.timestamp > 420035 * 3600:
        return (block.timestamp > 420035 * 3600)
    require ext_code.size(rokAddress)
    call rokAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if checkRokSold >= ext_call.return_data[0]:
        return checkRokSold >= ext_call.return_data[0]
    return (bool(stor11) == 1)
}

function partialRefund(uint256 arg1) {
    require savedBalance < 5 * 10^18 * 3600
    require block.timestamp > 420035 * 3600
    require block.timestamp <= 421091 * 3600
    require checkEthBalance[address(msg.sender)] >= arg1
    require arg1 <= checkEthBalance[address(msg.sender)]
    checkEthBalance[address(msg.sender)] -= arg1
    require payments[address(msg.sender)] + arg1 >= payments[address(msg.sender)]
    payments[address(msg.sender)] += arg1
    require totalPayments + arg1 >= totalPayments
    totalPayments += arg1
}

function updateKYClist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(stor0.field_0)
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        if not stor14[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 14
            stor14[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function refund() {
    require savedBalance < 5 * 10^18 * 3600
    require block.timestamp > 420035 * 3600
    require block.timestamp <= 421091 * 3600
    require checkEthBalance[address(msg.sender)] > 0
    checkEthBalance[address(msg.sender)] = 0
    require payments[address(msg.sender)] + checkEthBalance[address(msg.sender)] >= payments[address(msg.sender)]
    payments[address(msg.sender)] += checkEthBalance[address(msg.sender)]
    require totalPayments + checkEthBalance[address(msg.sender)] >= totalPayments
    totalPayments += checkEthBalance[address(msg.sender)]
}

function claim() {
    if savedBalance < 100000 * 10^18:
        if block.timestamp <= 420035 * 3600:
            require ext_code.size(rokAddress)
            call rokAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if checkRokSold < ext_call.return_data[0]:
                require bool(stor11) == 1
    require checkEthBalance[address(msg.sender)] > 0
    if checkEthBalance[address(msg.sender)] > 3 * 10^18:
        require bool(stor14[address(msg.sender)]) == 1
    require ext_code.size(rokAddress)
    call rokAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor13[address(msg.sender)]
    require ext_call.success
    stor13[address(msg.sender)] = 0
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if msg.sender == escrowAddress:
        checkEthBalance[address(this.address)] = msg.value
    else:
        require block.timestamp >= 419315 * 3600
        require savedBalance < 100000 * 10^18
        require block.timestamp <= 420035 * 3600
        require ext_code.size(rokAddress)
        call rokAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require checkRokSold < ext_call.return_data[0]
        require bool(stor11) != 1
        require savedBalance + msg.value >= savedBalance
        require savedBalance + msg.value <= 100000 * 10^18
        require msg.value >= 10^17
        require checkEthBalance[address(msg.sender)] + msg.value >= checkEthBalance[address(msg.sender)]
        checkEthBalance[address(msg.sender)] += msg.value
        require savedBalance + msg.value >= savedBalance
        savedBalance += msg.value
        if rateETH_ROK:
            require rateETH_ROK
            require rateETH_ROK * msg.value / rateETH_ROK == msg.value
        if rateETH_ROK:
            require rateETH_ROK
            require rateETH_ROK * msg.value / rateETH_ROK == msg.value
        if block.timestamp <= 419411 * 3600:
            if (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 10):
                require (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 10)
                require (80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 10) / (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 10) == 80
            require stor13[address(msg.sender)] + ((80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 10) / 100) >= stor13[address(msg.sender)]
            stor13[address(msg.sender)] += (80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 10) / 100
            require checkRokSold + (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 10) >= checkRokSold
            checkRokSold = checkRokSold + (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 10)
        else:
            if block.timestamp > 419531 * 3600:
                if rateETH_ROK * msg.value:
                    require rateETH_ROK * msg.value
                    require 80 * rateETH_ROK * msg.value / rateETH_ROK * msg.value == 80
                require stor13[address(msg.sender)] + (80 * rateETH_ROK * msg.value / 100) >= stor13[address(msg.sender)]
                stor13[address(msg.sender)] += 80 * rateETH_ROK * msg.value / 100
                require checkRokSold + (rateETH_ROK * msg.value) >= checkRokSold
                checkRokSold += rateETH_ROK * msg.value
            else:
                if block.timestamp < 419411 * 3600:
                    if rateETH_ROK * msg.value:
                        require rateETH_ROK * msg.value
                        require 80 * rateETH_ROK * msg.value / rateETH_ROK * msg.value == 80
                    require stor13[address(msg.sender)] + (80 * rateETH_ROK * msg.value / 100) >= stor13[address(msg.sender)]
                    stor13[address(msg.sender)] += 80 * rateETH_ROK * msg.value / 100
                    require checkRokSold + (rateETH_ROK * msg.value) >= checkRokSold
                    checkRokSold += rateETH_ROK * msg.value
                else:
                    if (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 20):
                        require (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 20)
                        require (80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 20) / (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 20) == 80
                    require stor13[address(msg.sender)] + ((80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 20) / 100) >= stor13[address(msg.sender)]
                    stor13[address(msg.sender)] += (80 * rateETH_ROK * msg.value) + (80 * rateETH_ROK * msg.value / 20) / 100
                    require checkRokSold + (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 20) >= checkRokSold
                    checkRokSold = checkRokSold + (rateETH_ROK * msg.value) + (rateETH_ROK * msg.value / 20)
        call escrowAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit PayEther(escrowAddress, msg.value, block.timestamp);
}

function payout() {
    require msg.sender == address(stor0.field_0)
    if savedBalance < 5 * 10^18 * 3600:
        if block.timestamp > 421091 * 3600:
            call escrowAddress with:
               value savedBalance wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit PayEther(escrowAddress, savedBalance, block.timestamp);
            require ext_code.size(rokAddress)
            call rokAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args bountyAddress, checkRokSold / 100
            require ext_call.success
            if checkRokSold:
                require checkRokSold
                require 19 * checkRokSold / checkRokSold == 19
            require 19 * checkRokSold / 100 > 0
            if checkRokSold:
                require checkRokSold
                require 19 * checkRokSold / checkRokSold == 19
            require ext_code.size(rokAddress)
            call rokAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args teamAddress, 19 * checkRokSold / 100
            require ext_call.success
            require ext_code.size(rokAddress)
            call rokAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if checkRokSold < ext_call.return_data[0]:
                require ext_code.size(rokAddress)
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require checkRokSold <= ext_call.return_data[0]
                require ext_code.size(rokAddress)
                call rokAddress.0x42966c68 with:
                     gas gas_remaining - 710 wei
                    args (ext_call.return_data[0] - checkRokSold)
                require ext_call.success
                require ext_code.size(rokAddress)
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require checkRokSold <= ext_call.return_data[0]
                emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
    else:
        require ext_code.size(rokAddress)
        if savedBalance >= 100000 * 10^18:
            call rokAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args bountyAddress, checkRokSold / 100
            require ext_call.success
            if checkRokSold:
                require checkRokSold
                require 19 * checkRokSold / checkRokSold == 19
            require 19 * checkRokSold / 100 > 0
            if checkRokSold:
                require checkRokSold
                require 19 * checkRokSold / checkRokSold == 19
            require ext_code.size(rokAddress)
            call rokAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args teamAddress, 19 * checkRokSold / 100
            require ext_call.success
            require ext_code.size(rokAddress)
            call rokAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if checkRokSold < ext_call.return_data[0]:
                require ext_code.size(rokAddress)
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require checkRokSold <= ext_call.return_data[0]
                require ext_code.size(rokAddress)
                call rokAddress.0x42966c68 with:
                     gas gas_remaining - 710 wei
                    args (ext_call.return_data[0] - checkRokSold)
                require ext_call.success
                require ext_code.size(rokAddress)
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require checkRokSold <= ext_call.return_data[0]
                emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
        else:
            if block.timestamp > 420035 * 3600:
                call rokAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args bountyAddress, checkRokSold / 100
                require ext_call.success
                if checkRokSold:
                    require checkRokSold
                    require 19 * checkRokSold / checkRokSold == 19
                require 19 * checkRokSold / 100 > 0
                if checkRokSold:
                    require checkRokSold
                    require 19 * checkRokSold / checkRokSold == 19
                require ext_code.size(rokAddress)
                call rokAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args teamAddress, 19 * checkRokSold / 100
                require ext_call.success
                require ext_code.size(rokAddress)
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if checkRokSold < ext_call.return_data[0]:
                    require ext_code.size(rokAddress)
                    call rokAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require checkRokSold <= ext_call.return_data[0]
                    require ext_code.size(rokAddress)
                    call rokAddress.0x42966c68 with:
                         gas gas_remaining - 710 wei
                        args (ext_call.return_data[0] - checkRokSold)
                    require ext_call.success
                    require ext_code.size(rokAddress)
                    call rokAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require checkRokSold <= ext_call.return_data[0]
                    emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
            else:
                call rokAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if checkRokSold >= ext_call.return_data[0]:
                    require ext_code.size(rokAddress)
                    call rokAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args bountyAddress, checkRokSold / 100
                    require ext_call.success
                    if checkRokSold:
                        require checkRokSold
                        require 19 * checkRokSold / checkRokSold == 19
                    require 19 * checkRokSold / 100 > 0
                    if checkRokSold:
                        require checkRokSold
                        require 19 * checkRokSold / checkRokSold == 19
                    require ext_code.size(rokAddress)
                    call rokAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args teamAddress, 19 * checkRokSold / 100
                    require ext_call.success
                    require ext_code.size(rokAddress)
                    call rokAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if checkRokSold < ext_call.return_data[0]:
                        require ext_code.size(rokAddress)
                        call rokAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require checkRokSold <= ext_call.return_data[0]
                        require ext_code.size(rokAddress)
                        call rokAddress.0x42966c68 with:
                             gas gas_remaining - 710 wei
                            args (ext_call.return_data[0] - checkRokSold)
                        require ext_call.success
                        require ext_code.size(rokAddress)
                        call rokAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require checkRokSold <= ext_call.return_data[0]
                        emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
                else:
                    if bool(stor11) == 1:
                        require ext_code.size(rokAddress)
                        call rokAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, checkRokSold / 100
                        require ext_call.success
                        if checkRokSold:
                            require checkRokSold
                            require 19 * checkRokSold / checkRokSold == 19
                        require 19 * checkRokSold / 100 > 0
                        if checkRokSold:
                            require checkRokSold
                            require 19 * checkRokSold / checkRokSold == 19
                        require ext_code.size(rokAddress)
                        call rokAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args teamAddress, 19 * checkRokSold / 100
                        require ext_call.success
                        require ext_code.size(rokAddress)
                        call rokAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if checkRokSold < ext_call.return_data[0]:
                            require ext_code.size(rokAddress)
                            call rokAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require checkRokSold <= ext_call.return_data[0]
                            require ext_code.size(rokAddress)
                            call rokAddress.0x42966c68 with:
                                 gas gas_remaining - 710 wei
                                args (ext_call.return_data[0] - checkRokSold)
                            require ext_call.success
                            require ext_code.size(rokAddress)
                            call rokAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require checkRokSold <= ext_call.return_data[0]
                            emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
                    else:
                        if block.timestamp > 421091 * 3600:
                            call escrowAddress with:
                               value savedBalance wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit PayEther(escrowAddress, savedBalance, block.timestamp);
                            require ext_code.size(rokAddress)
                            call rokAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args bountyAddress, checkRokSold / 100
                            require ext_call.success
                            if checkRokSold:
                                require checkRokSold
                                require 19 * checkRokSold / checkRokSold == 19
                            require 19 * checkRokSold / 100 > 0
                            if checkRokSold:
                                require checkRokSold
                                require 19 * checkRokSold / checkRokSold == 19
                            require ext_code.size(rokAddress)
                            call rokAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args teamAddress, 19 * checkRokSold / 100
                            require ext_call.success
                            require ext_code.size(rokAddress)
                            call rokAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if checkRokSold < ext_call.return_data[0]:
                                require ext_code.size(rokAddress)
                                call rokAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require checkRokSold <= ext_call.return_data[0]
                                require ext_code.size(rokAddress)
                                call rokAddress.0x42966c68 with:
                                     gas gas_remaining - 710 wei
                                    args (ext_call.return_data[0] - checkRokSold)
                                require ext_call.success
                                require ext_code.size(rokAddress)
                                call rokAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require checkRokSold <= ext_call.return_data[0]
                                emit BurnTokens(ext_call.return_data[0] - checkRokSold, block.timestamp);
}



}
