contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor18;

function _fallback() {
    stor0 = msg.sender
    stor18 = 0
    return code.data[72 len 8310]
}



// =====================  Runtime code  =====================


#
#  - proxyPayment(address arg1)
#
const maxCallFrequency = 100

const sub_22b590bf(?) = 5

const failSafeLimit = 800000 * 10^18

const exchangeRate = 210

const maxGasPrice = 5 * 10^10

const sub_49eb18ad(?) = 350000 * 10^18

const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const sub_4cfd371c(?) = (125 * 10^18 * 3600)

const maxGuaranteedLimit = 30000 * 10^18

const fundingLimit = 600000 * 10^18

const sub_bf7e9b8b(?) = 250000 * 10^18

const firstBonusPercent = 25

const secondBonusPercent = 20

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const thirdBonusPercent = 15

const sub_dd097f01(?) = 27

const sub_fd002721(?) = 150000 * 10^18


address owner;
address newOwner;
address sub_9159a0eaAddress;
uint256 startBlock;
uint256 endBlock;
address sub_3198c382Address;
address destTokensTeamAddress;
address destTokensReserveAddress;
address destTokensBountiesAddress;
address sub_875c65ceAddress;
mapping of uint256 guaranteedBuyersLimit;
mapping of uint256 guaranteedBuyersBought;
uint256 totalGuaranteedCollected;
uint256 totalNormalCollected;
uint256 sub_cdc1adb0;
uint256 finalizedBlock;
uint256 finalizedTime;
mapping of uint256 lastCallBlock;
uint8 paused;

function endBlock() {
    return endBlock
}

function totalGuaranteedCollected() {
    return totalGuaranteedCollected
}

function totalNormalCollected() {
    return totalNormalCollected
}

function destTokensBounties() {
    return destTokensBountiesAddress
}

function sub_3198c382(?) {
    return sub_3198c382Address
}

function finalizedBlock() {
    return finalizedBlock
}

function startBlock() {
    return startBlock
}

function lastCallBlock(address arg1) {
    return lastCallBlock[arg1]
}

function paused() {
    return bool(paused)
}

function guaranteedBuyersBought(address arg1) {
    return guaranteedBuyersBought[arg1]
}

function destTokensTeam() {
    return destTokensTeamAddress
}

function sub_875c65ce(?) {
    return sub_875c65ceAddress
}

function owner() {
    return owner
}

function sub_9159a0ea(?) {
    return sub_9159a0eaAddress
}

function guaranteedBuyersLimit(address arg1) {
    return guaranteedBuyersLimit[arg1]
}

function sub_cdc1adb0(?) {
    return sub_cdc1adb0
}

function newOwner() {
    return newOwner
}

function destTokensReserve() {
    return destTokensReserveAddress
}

function finalizedTime() {
    return finalizedTime
}

function pauseContribution() {
    require owner == msg.sender
    paused = 1
}

function resumeContribution() {
    require owner == msg.sender
    paused = 0
}

function acceptOwnership() {
    if newOwner == msg.sender:
        owner = newOwner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function totalCollected() {
    require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
    return (totalGuaranteedCollected + totalNormalCollected)
}

function tokensIssued() {
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function setGuaranteedAddress(address arg1, uint256 arg2) {
    require sub_9159a0eaAddress
    require owner == msg.sender
    require block.number < startBlock
    require arg2 > 0
    require arg2 <= 30000 * 10^18
    guaranteedBuyersLimit[address(arg1)] = arg2
    sub_cdc1adb0 += arg2
    emit GuaranteedAddress(arg2, arg1);
}

function claimTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(sub_9159a0eaAddress)
        call sub_9159a0eaAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, address arg7, address arg8) {
    require owner == msg.sender
    require not sub_9159a0eaAddress
    sub_9159a0eaAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 18 == ext_call.return_data[31 len 1]
    require arg2
    sub_875c65ceAddress = arg2
    require arg3 >= block.number
    require arg3 < arg4
    startBlock = arg3
    endBlock = arg4
    require arg5
    sub_3198c382Address = arg5
    require arg6
    destTokensReserveAddress = arg6
    require arg7
    destTokensTeamAddress = arg7
    require arg8
    destTokensBountiesAddress = arg8
}

function finalize() {
    require sub_9159a0eaAddress
    require block.number >= startBlock
    if owner != msg.sender:
        require block.number > endBlock
    require not finalizedBlock
    if block.number <= endBlock:
        require totalNormalCollected >= 600000 * 10^18
    finalizedBlock = block.number
    finalizedTime = block.timestamp
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
    if 10^18 * ext_call.return_data[0] / 51 * 10^16:
        require 10^18 * ext_call.return_data[0] / 51 * 10^16
        require 14 * 10^16 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18 * ext_call.return_data[0] / 51 * 10^16 == 14 * 10^16
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args destTokensBountiesAddress, 14 * 10^16 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / 51 * 10^16:
        require 10^18 * ext_call.return_data[0] / 51 * 10^16
        require 15 * 10^16 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18 * ext_call.return_data[0] / 51 * 10^16 == 15 * 10^16
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args destTokensReserveAddress, 15 * 10^16 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / 51 * 10^16:
        require 10^18 * ext_call.return_data[0] / 51 * 10^16
        require 2 * 10^17 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18 * ext_call.return_data[0] / 51 * 10^16 == 2 * 10^17
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args destTokensTeamAddress, 2 * 10^17 * 10^18 * ext_call.return_data[0] / 51 * 10^16 / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_9159a0eaAddress)
    call sub_9159a0eaAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args sub_875c65ceAddress
    require ext_call.success
    emit Finalized()
}

function _fallback() payable {
    require not paused
    require sub_9159a0eaAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require sub_9159a0eaAddress
    require msg.sender
    require guaranteedBuyersBought[address(msg.sender)] <= guaranteedBuyersLimit[address(msg.sender)]
    if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] > 0:
        require msg.value + guaranteedBuyersBought[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]
        if msg.value + guaranteedBuyersBought[address(msg.sender)] <= guaranteedBuyersLimit[address(msg.sender)]:
            require msg.value + guaranteedBuyersBought[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]
            guaranteedBuyersBought[address(msg.sender)] += msg.value
            require msg.value + totalGuaranteedCollected >= totalGuaranteedCollected
            totalGuaranteedCollected += msg.value
            require msg.value >= msg.value
            require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
            require totalGuaranteedCollected + totalNormalCollected <= 800000 * 10^18
            require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
            require msg.value <= totalGuaranteedCollected + totalNormalCollected
            if msg.value <= 0:
            if not msg.value:
                if (5670 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                    require ext_code.size(sub_9159a0eaAddress)
                    call sub_9159a0eaAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (5670 * msg.value / 100) + (210 * msg.value)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        call sub_3198c382Address with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(msg.value, (5670 * msg.value / 100) + (210 * msg.value), 1, msg.sender);
                        if msg.value <= msg.value:
            else:
                if msg.value:
                    if 210 * msg.value / msg.value == 210:
                        if (5670 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                            require ext_code.size(sub_9159a0eaAddress)
                            call sub_9159a0eaAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (5670 * msg.value / 100) + (210 * msg.value)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                call sub_3198c382Address with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit NewSale(msg.value, (5670 * msg.value / 100) + (210 * msg.value), 1, msg.sender);
                                if msg.value <= msg.value:
            revert
        require guaranteedBuyersBought[address(msg.sender)] <= guaranteedBuyersLimit[address(msg.sender)]
        require guaranteedBuyersLimit[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]
        guaranteedBuyersBought[address(msg.sender)] = guaranteedBuyersLimit[address(msg.sender)]
        require guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] + totalGuaranteedCollected >= totalGuaranteedCollected
        totalGuaranteedCollected = guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] + totalGuaranteedCollected
        require msg.value >= guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]
        require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
        require totalGuaranteedCollected + totalNormalCollected <= 800000 * 10^18
        require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
        require guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] <= totalGuaranteedCollected + totalNormalCollected
        if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] > 0:
            if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]:
                require guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]
                require (210 * guaranteedBuyersLimit[address(msg.sender)]) - (210 * guaranteedBuyersBought[address(msg.sender)]) / guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] == 210
            require (5670 * guaranteedBuyersLimit[address(msg.sender)]) - (5670 * guaranteedBuyersBought[address(msg.sender)]) / 100 >= 0
            require ext_code.size(sub_9159a0eaAddress)
            call sub_9159a0eaAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, ((5670 * guaranteedBuyersLimit[address(msg.sender)]) - (5670 * guaranteedBuyersBought[address(msg.sender)]) / 100) + (210 * guaranteedBuyersLimit[address(msg.sender)]) - (210 * guaranteedBuyersBought[address(msg.sender)])
            require ext_call.success
            require ext_call.return_data[0]
            call sub_3198c382Address with:
               value guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit NewSale(guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)], ((5670 * guaranteedBuyersLimit[address(msg.sender)]) - (5670 * guaranteedBuyersBought[address(msg.sender)]) / 100) + (210 * guaranteedBuyersLimit[address(msg.sender)]) - (210 * guaranteedBuyersBought[address(msg.sender)]), 1, msg.sender);
            require guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] <= msg.value
        if msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] > 0:
            call msg.sender with:
               value msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require block.gasprice <= 5 * 10^10
        if msg.sender:
            require ext_code.size(msg.sender) <= 0
        require lastCallBlock[address(msg.sender)] <= block.number
        require block.number - lastCallBlock[address(msg.sender)] >= 100
        lastCallBlock[address(msg.sender)] = block.number
        if msg.value <= -totalNormalCollected + 800000 * 10^18:
            require msg.value + totalNormalCollected >= totalNormalCollected
            totalNormalCollected += msg.value
            require msg.value >= msg.value
            require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
            require totalGuaranteedCollected + totalNormalCollected <= 800000 * 10^18
            require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
            require msg.value <= totalGuaranteedCollected + totalNormalCollected
            if msg.value <= 0:
            if not msg.value:
                if totalGuaranteedCollected + totalNormalCollected - msg.value < 150000 * 10^18:
                    if 0 >= -msg.value:
                        if totalGuaranteedCollected + totalNormalCollected < 150000 * 10^18:
                            if (5250 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                require ext_code.size(sub_9159a0eaAddress)
                                call sub_9159a0eaAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (5250 * msg.value / 100) + (210 * msg.value)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    call sub_3198c382Address with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit NewSale(msg.value, (5250 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                    if msg.value <= msg.value:
                        else:
                            if totalGuaranteedCollected + totalNormalCollected - msg.value <= 150000 * 10^18:
                                if not (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100:
                                    if (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                        if 150000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                            if not (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                    require ext_code.size(sub_9159a0eaAddress)
                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        call sub_3198c382Address with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                        if msg.value <= msg.value:
                                            else:
                                                if (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                    if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 / (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 == 210:
                                                        if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                                else:
                                    if (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100:
                                        if 210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100 / (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100 == 210:
                                            if (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                if 150000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                    if not (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                        if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                                                    else:
                                                        if (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                            if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 / (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 == 210:
                                                                if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                else:
                    if totalGuaranteedCollected + totalNormalCollected - msg.value < 250000 * 10^18:
                        if 0 >= -msg.value:
                            if totalGuaranteedCollected + totalNormalCollected < 250000 * 10^18:
                                if (4200 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                    require ext_code.size(sub_9159a0eaAddress)
                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (4200 * msg.value / 100) + (210 * msg.value)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        call sub_3198c382Address with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        emit NewSale(msg.value, (4200 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                        if msg.value <= msg.value:
                            else:
                                if totalGuaranteedCollected + totalNormalCollected - msg.value <= 250000 * 10^18:
                                    if not (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100:
                                        if (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                            if 250000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                if not (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                    if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                        require ext_code.size(sub_9159a0eaAddress)
                                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            call sub_3198c382Address with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                            if msg.value <= msg.value:
                                                else:
                                                    if (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                        if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 / (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 == 210:
                                                            if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                require ext_code.size(sub_9159a0eaAddress)
                                                                call sub_9159a0eaAddress.0x827f32c0 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                require ext_call.success
                                                                if ext_call.return_data[0]:
                                                                    call sub_3198c382Address with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                    if msg.value <= msg.value:
                                    else:
                                        if (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100:
                                            if 210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100 / (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100 == 210:
                                                if (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                    if 250000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                        if not (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                            if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                require ext_code.size(sub_9159a0eaAddress)
                                                                call sub_9159a0eaAddress.0x827f32c0 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                require ext_call.success
                                                                if ext_call.return_data[0]:
                                                                    call sub_3198c382Address with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                    if msg.value <= msg.value:
                                                        else:
                                                            if (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                                if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 / (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 == 210:
                                                                    if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                        require ext_code.size(sub_9159a0eaAddress)
                                                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                        require ext_call.success
                                                                        if ext_call.return_data[0]:
                                                                            call sub_3198c382Address with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                            if msg.value <= msg.value:
                    else:
                        if totalGuaranteedCollected + totalNormalCollected - msg.value >= 350000 * 10^18:
                            if totalGuaranteedCollected + totalNormalCollected - msg.value >= 125 * 10^18 * 3600:
                                require ext_code.size(sub_9159a0eaAddress)
                                call sub_9159a0eaAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 210 * msg.value
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    call sub_3198c382Address with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    emit NewSale(msg.value, 210 * msg.value, 0, msg.sender);
                                    if msg.value <= msg.value:
                            else:
                                if 0 >= -msg.value:
                                    if totalGuaranteedCollected + totalNormalCollected < 125 * 10^18 * 3600:
                                        if (1050 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                            require ext_code.size(sub_9159a0eaAddress)
                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (1050 * msg.value / 100) + (210 * msg.value)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                call sub_3198c382Address with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit NewSale(msg.value, (1050 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                                if msg.value <= msg.value:
                                    else:
                                        if totalGuaranteedCollected + totalNormalCollected - msg.value <= 125 * 10^18 * 3600:
                                            if not (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100:
                                                if (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value) >= 210 * msg.value:
                                                    require ext_code.size(sub_9159a0eaAddress)
                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        call sub_3198c382Address with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit NewSale(msg.value, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value), 0, msg.sender);
                                                        if msg.value <= msg.value:
                                            else:
                                                if (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100:
                                                    if 210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100 / (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100 == 210:
                                                        if (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value) >= 210 * msg.value:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                        else:
                            if 0 >= -msg.value:
                                if totalGuaranteedCollected + totalNormalCollected < 350000 * 10^18:
                                    if (3150 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                        require ext_code.size(sub_9159a0eaAddress)
                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (3150 * msg.value / 100) + (210 * msg.value)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            call sub_3198c382Address with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit NewSale(msg.value, (3150 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                            if msg.value <= msg.value:
                                else:
                                    if totalGuaranteedCollected + totalNormalCollected - msg.value <= 350000 * 10^18:
                                        if not (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100:
                                            if (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                if 350000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                    if not (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                        if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                                                    else:
                                                        if (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                            if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 / (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 == 210:
                                                                if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                        else:
                                            if (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100:
                                                if 210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100 / (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100 == 210:
                                                    if (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                        if 350000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                            if not (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                                            else:
                                                                if (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                    if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 / (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 == 210:
                                                                        if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                            require ext_code.size(sub_9159a0eaAddress)
                                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                            require ext_call.success
                                                                            if ext_call.return_data[0]:
                                                                                call sub_3198c382Address with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                if msg.value <= msg.value:
            else:
                if msg.value:
                    if 210 * msg.value / msg.value == 210:
                        if totalGuaranteedCollected + totalNormalCollected - msg.value < 150000 * 10^18:
                            if 0 >= -msg.value:
                                if totalGuaranteedCollected + totalNormalCollected < 150000 * 10^18:
                                    if (5250 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                        require ext_code.size(sub_9159a0eaAddress)
                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (5250 * msg.value / 100) + (210 * msg.value)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            call sub_3198c382Address with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit NewSale(msg.value, (5250 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                            if msg.value <= msg.value:
                                else:
                                    if totalGuaranteedCollected + totalNormalCollected - msg.value <= 150000 * 10^18:
                                        if not (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100:
                                            if (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                if 150000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                    if not (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                        if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                                                    else:
                                                        if (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                            if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 / (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 == 210:
                                                                if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                        else:
                                            if (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100:
                                                if 210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100 / (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100 == 210:
                                                    if (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                        if 150000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                            if not (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                                if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                                            else:
                                                                if (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                                                                    if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 / (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 == 210:
                                                                        if 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0:
                                                                            require ext_code.size(sub_9159a0eaAddress)
                                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value)
                                                                            require ext_call.success
                                                                            if ext_call.return_data[0]:
                                                                                call sub_3198c382Address with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit NewSale(msg.value, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-25 * totalNormalCollected) + (25 * msg.value) + 3750000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                if msg.value <= msg.value:
                        else:
                            if totalGuaranteedCollected + totalNormalCollected - msg.value < 250000 * 10^18:
                                if 0 >= -msg.value:
                                    if totalGuaranteedCollected + totalNormalCollected < 250000 * 10^18:
                                        if (4200 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                            require ext_code.size(sub_9159a0eaAddress)
                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (4200 * msg.value / 100) + (210 * msg.value)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                call sub_3198c382Address with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                emit NewSale(msg.value, (4200 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                                if msg.value <= msg.value:
                                    else:
                                        if totalGuaranteedCollected + totalNormalCollected - msg.value <= 250000 * 10^18:
                                            if not (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100:
                                                if (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                    if 250000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                        if not (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                            if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                require ext_code.size(sub_9159a0eaAddress)
                                                                call sub_9159a0eaAddress.0x827f32c0 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                require ext_call.success
                                                                if ext_call.return_data[0]:
                                                                    call sub_3198c382Address with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    require ext_call.success
                                                                    emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                    if msg.value <= msg.value:
                                                        else:
                                                            if (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                                if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 / (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 == 210:
                                                                    if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                        require ext_code.size(sub_9159a0eaAddress)
                                                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                        require ext_call.success
                                                                        if ext_call.return_data[0]:
                                                                            call sub_3198c382Address with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                            if msg.value <= msg.value:
                                            else:
                                                if (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100:
                                                    if 210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100 / (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100 == 210:
                                                        if (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                            if 250000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                                if not (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                                    if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                        require ext_code.size(sub_9159a0eaAddress)
                                                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                        require ext_call.success
                                                                        if ext_call.return_data[0]:
                                                                            call sub_3198c382Address with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            require ext_call.success
                                                                            emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                            if msg.value <= msg.value:
                                                                else:
                                                                    if (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                                                                        if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 / (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 == 210:
                                                                            if 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0:
                                                                                require ext_code.size(sub_9159a0eaAddress)
                                                                                call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                     gas gas_remaining - 710 wei
                                                                                    args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value)
                                                                                require ext_call.success
                                                                                if ext_call.return_data[0]:
                                                                                    call sub_3198c382Address with:
                                                                                       value msg.value wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                    require ext_call.success
                                                                                    emit NewSale(msg.value, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-20 * totalNormalCollected) + (20 * msg.value) + 5000000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                    if msg.value <= msg.value:
                            else:
                                if totalGuaranteedCollected + totalNormalCollected - msg.value >= 350000 * 10^18:
                                    if totalGuaranteedCollected + totalNormalCollected - msg.value >= 125 * 10^18 * 3600:
                                        require ext_code.size(sub_9159a0eaAddress)
                                        call sub_9159a0eaAddress.0x827f32c0 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 210 * msg.value
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            call sub_3198c382Address with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            emit NewSale(msg.value, 210 * msg.value, 0, msg.sender);
                                            if msg.value <= msg.value:
                                    else:
                                        if 0 >= -msg.value:
                                            if totalGuaranteedCollected + totalNormalCollected < 125 * 10^18 * 3600:
                                                if (1050 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                                    require ext_code.size(sub_9159a0eaAddress)
                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (1050 * msg.value / 100) + (210 * msg.value)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        call sub_3198c382Address with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        emit NewSale(msg.value, (1050 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                                        if msg.value <= msg.value:
                                            else:
                                                if totalGuaranteedCollected + totalNormalCollected - msg.value <= 125 * 10^18 * 3600:
                                                    if not (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100:
                                                        if (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value) >= 210 * msg.value:
                                                            require ext_code.size(sub_9159a0eaAddress)
                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                call sub_3198c382Address with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                require ext_call.success
                                                                emit NewSale(msg.value, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value), 0, msg.sender);
                                                                if msg.value <= msg.value:
                                                    else:
                                                        if (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100:
                                                            if 210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100 / (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100 == 210:
                                                                if (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value) >= 210 * msg.value:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (-5 * totalGuaranteedCollected) + (-5 * totalNormalCollected) + (5 * msg.value) + (625 * 10^18 * 3600) / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                else:
                                    if 0 >= -msg.value:
                                        if totalGuaranteedCollected + totalNormalCollected < 350000 * 10^18:
                                            if (3150 * msg.value / 100) + (210 * msg.value) >= 210 * msg.value:
                                                require ext_code.size(sub_9159a0eaAddress)
                                                call sub_9159a0eaAddress.0x827f32c0 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (3150 * msg.value / 100) + (210 * msg.value)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    call sub_3198c382Address with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    emit NewSale(msg.value, (3150 * msg.value / 100) + (210 * msg.value), 0, msg.sender);
                                                    if msg.value <= msg.value:
                                        else:
                                            if totalGuaranteedCollected + totalNormalCollected - msg.value <= 350000 * 10^18:
                                                if not (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100:
                                                    if (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                        if 350000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                            if not (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                    require ext_call.success
                                                                    if ext_call.return_data[0]:
                                                                        call sub_3198c382Address with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        require ext_call.success
                                                                        emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                        if msg.value <= msg.value:
                                                            else:
                                                                if (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                    if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 / (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 == 210:
                                                                        if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                            require ext_code.size(sub_9159a0eaAddress)
                                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                            require ext_call.success
                                                                            if ext_call.return_data[0]:
                                                                                call sub_3198c382Address with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                if msg.value <= msg.value:
                                                else:
                                                    if (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100:
                                                        if 210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100 / (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100 == 210:
                                                            if (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value) >= 210 * msg.value:
                                                                if 350000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected:
                                                                    if not (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                        if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                            require ext_code.size(sub_9159a0eaAddress)
                                                                            call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                 gas gas_remaining - 710 wei
                                                                                args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                            require ext_call.success
                                                                            if ext_call.return_data[0]:
                                                                                call sub_3198c382Address with:
                                                                                   value msg.value wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                                require ext_call.success
                                                                                emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                if msg.value <= msg.value:
                                                                    else:
                                                                        if (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                                                            if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 / (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 == 210:
                                                                                if 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0:
                                                                                    require ext_code.size(sub_9159a0eaAddress)
                                                                                    call sub_9159a0eaAddress.0x827f32c0 with:
                                                                                         gas gas_remaining - 710 wei
                                                                                        args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value)
                                                                                    require ext_call.success
                                                                                    if ext_call.return_data[0]:
                                                                                        call sub_3198c382Address with:
                                                                                           value msg.value wei
                                                                                             gas 2300 * is_zero(value) wei
                                                                                        require ext_call.success
                                                                                        emit NewSale(msg.value, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-15 * totalNormalCollected) + (15 * msg.value) + 5250000 * 10^18 / 100) + (210 * msg.value), 0, msg.sender);
                                                                                        if msg.value <= msg.value:
            revert
        require 800000 * 10^18 >= totalNormalCollected
        totalNormalCollected = 800000 * 10^18
        require msg.value >= -totalNormalCollected + 800000 * 10^18
        require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
        require totalGuaranteedCollected + totalNormalCollected <= 800000 * 10^18
        require totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected
        require -totalNormalCollected + 800000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected
        if -totalNormalCollected + 800000 * 10^18 > 0:
            if -totalNormalCollected + 800000 * 10^18:
                require -totalNormalCollected + 800000 * 10^18
                require (-210 * totalNormalCollected) + 168000000 * 10^18 / -totalNormalCollected + 800000 * 10^18 == 210
            if totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 < 150000 * 10^18:
                require totalNormalCollected >= (2 * totalNormalCollected) - 800000 * 10^18
                if totalNormalCollected + totalGuaranteedCollected < 150000 * 10^18:
                    require (-5250 * totalNormalCollected) + 4200000000 * 10^18 / 100 >= 0
                    require ext_code.size(sub_9159a0eaAddress)
                    call sub_9159a0eaAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ((-5250 * totalNormalCollected) + 4200000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    call sub_3198c382Address with:
                       value -totalNormalCollected + 800000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(-totalNormalCollected + 800000 * 10^18, ((-5250 * totalNormalCollected) + 4200000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                else:
                    require totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 <= 150000 * 10^18
                    if (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100:
                        require (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100
                        require 210 * (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100 / (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100 == 210
                    require 210 * (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100 >= 0
                    require 150000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected
                    if (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100:
                        require (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100
                        require 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 / (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 == 210
                    require 210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100 >= 0
                    require ext_code.size(sub_9159a0eaAddress)
                    call sub_9159a0eaAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                    require ext_call.success
                    require ext_call.return_data[0]
                    call sub_3198c382Address with:
                       value -totalNormalCollected + 800000 * 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit NewSale(-totalNormalCollected + 800000 * 10^18, (210 * (20 * totalGuaranteedCollected) + (20 * totalNormalCollected) - 3000000 * 10^18 / 100) + (210 * (-25 * totalGuaranteedCollected) + (-50 * totalNormalCollected) + 23750000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
            else:
                if totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 < 250000 * 10^18:
                    require totalNormalCollected >= (2 * totalNormalCollected) - 800000 * 10^18
                    if totalNormalCollected + totalGuaranteedCollected < 250000 * 10^18:
                        require (-4200 * totalNormalCollected) + 3360000000 * 10^18 / 100 >= 0
                        require ext_code.size(sub_9159a0eaAddress)
                        call sub_9159a0eaAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ((-4200 * totalNormalCollected) + 3360000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        call sub_3198c382Address with:
                           value -totalNormalCollected + 800000 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(-totalNormalCollected + 800000 * 10^18, ((-4200 * totalNormalCollected) + 3360000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                    else:
                        require totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 <= 250000 * 10^18
                        if (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100:
                            require (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100
                            require 210 * (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100 / (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100 == 210
                        require 210 * (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100 >= 0
                        require 250000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected
                        if (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100:
                            require (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100
                            require 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 / (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 == 210
                        require 210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100 >= 0
                        require ext_code.size(sub_9159a0eaAddress)
                        call sub_9159a0eaAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                        require ext_call.success
                        require ext_call.return_data[0]
                        call sub_3198c382Address with:
                           value -totalNormalCollected + 800000 * 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit NewSale(-totalNormalCollected + 800000 * 10^18, (210 * (15 * totalGuaranteedCollected) + (15 * totalNormalCollected) - 3750000 * 10^18 / 100) + (210 * (-20 * totalGuaranteedCollected) + (-40 * totalNormalCollected) + 21000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                else:
                    if totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 >= 350000 * 10^18:
                        if totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 >= 125 * 10^18 * 3600:
                            require ext_code.size(sub_9159a0eaAddress)
                            call sub_9159a0eaAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (-210 * totalNormalCollected) + 168000000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            call sub_3198c382Address with:
                               value -totalNormalCollected + 800000 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(-totalNormalCollected + 800000 * 10^18, (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                        else:
                            require totalNormalCollected >= (2 * totalNormalCollected) - 800000 * 10^18
                            if totalNormalCollected + totalGuaranteedCollected < 125 * 10^18 * 3600:
                                require (-1050 * totalNormalCollected) + 840000000 * 10^18 / 100 >= 0
                                require ext_code.size(sub_9159a0eaAddress)
                                call sub_9159a0eaAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, ((-1050 * totalNormalCollected) + 840000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                call sub_3198c382Address with:
                                   value -totalNormalCollected + 800000 * 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit NewSale(-totalNormalCollected + 800000 * 10^18, ((-1050 * totalNormalCollected) + 840000000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                            else:
                                require totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 <= 125 * 10^18 * 3600
                                if (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100:
                                    require (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100
                                    require 210 * (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100 / (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100 == 210
                                require 210 * (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100 >= 0
                                require ext_code.size(sub_9159a0eaAddress)
                                call sub_9159a0eaAddress.0x827f32c0 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (210 * (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                                require ext_call.success
                                require ext_call.return_data[0]
                                call sub_3198c382Address with:
                                   value -totalNormalCollected + 800000 * 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                emit NewSale(-totalNormalCollected + 800000 * 10^18, (210 * (-5 * totalGuaranteedCollected) + (-10 * totalNormalCollected) + 6250000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                    else:
                        require totalNormalCollected >= (2 * totalNormalCollected) - 800000 * 10^18
                        if totalNormalCollected + totalGuaranteedCollected < 350000 * 10^18:
                            require (-3150 * totalNormalCollected) + (700000 * 10^18 * 3600) / 100 >= 0
                            require ext_code.size(sub_9159a0eaAddress)
                            call sub_9159a0eaAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ((-3150 * totalNormalCollected) + (700000 * 10^18 * 3600) / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            call sub_3198c382Address with:
                               value -totalNormalCollected + 800000 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(-totalNormalCollected + 800000 * 10^18, ((-3150 * totalNormalCollected) + (700000 * 10^18 * 3600) / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
                        else:
                            require totalGuaranteedCollected + (2 * totalNormalCollected) - 800000 * 10^18 <= 350000 * 10^18
                            if (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100:
                                require (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100
                                require 210 * (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100 / (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100 == 210
                            require 210 * (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100 >= 0
                            require 350000 * 10^18 <= totalGuaranteedCollected + totalNormalCollected
                            if (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100:
                                require (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100
                                require 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 / (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 == 210
                            require 210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100 >= 0
                            require ext_code.size(sub_9159a0eaAddress)
                            call sub_9159a0eaAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18
                            require ext_call.success
                            require ext_call.return_data[0]
                            call sub_3198c382Address with:
                               value -totalNormalCollected + 800000 * 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            emit NewSale(-totalNormalCollected + 800000 * 10^18, (210 * (5 * totalGuaranteedCollected) + (5 * totalNormalCollected) - 1750000 * 10^18 / 100) + (210 * (-15 * totalGuaranteedCollected) + (-30 * totalNormalCollected) + 17250000 * 10^18 / 100) + (-210 * totalNormalCollected) + 168000000 * 10^18, 0, msg.sender);
            require -totalNormalCollected + 800000 * 10^18 <= msg.value
        if msg.value + totalNormalCollected - 800000 * 10^18 > 0:
            call msg.sender with:
               value msg.value + totalNormalCollected - 800000 * 10^18 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
