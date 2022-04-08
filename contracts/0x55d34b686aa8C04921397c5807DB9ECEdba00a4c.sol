contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor20;

function _fallback() {
    stor0 = msg.sender
    stor20 = 0
    return code.data[69 len 7828]
}



// =====================  Runtime code  =====================


const maxCallFrequency = 100

const failSafeLimit = 300000 * 10^18

const exchangeRate = 10000

const maxGasPrice = 5 * 10^10

const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const maxGuaranteedLimit = 30000 * 10^18

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address owner;
address newOwner;
address SGTAddress;
address SNTAddress;
uint256 startBlock;
uint256 endBlock;
address destEthDevsAddress;
address destTokensDevsAddress;
address destTokensReserveAddress;
uint256 maxSGTSupply;
address destTokensSgtAddress;
address dynamicCeilingAddress;
address sntControllerAddress;
mapping of uint256 guaranteedBuyersLimit;
mapping of uint256 guaranteedBuyersBought;
uint256 totalGuaranteedCollected;
uint256 totalNormalCollected;
uint256 finalizedBlock;
uint256 finalizedTime;
mapping of uint256 lastCallBlock;
uint8 paused;

function destEthDevs() {
    return destEthDevsAddress
}

function endBlock() {
    return endBlock
}

function maxSGTSupply() {
    return maxSGTSupply
}

function totalGuaranteedCollected() {
    return totalGuaranteedCollected
}

function totalNormalCollected() {
    return totalNormalCollected
}

function sntController() {
    return sntControllerAddress
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

function dynamicCeiling() {
    return dynamicCeilingAddress
}

function destTokensDevs() {
    return destTokensDevsAddress
}

function paused() {
    return bool(paused)
}

function guaranteedBuyersBought(address arg1) {
    return guaranteedBuyersBought[arg1]
}

function owner() {
    return owner
}

function SGT() {
    return SGTAddress
}

function guaranteedBuyersLimit(address arg1) {
    return guaranteedBuyersLimit[arg1]
}

function destTokensSgt() {
    return destTokensSgtAddress
}

function SNT() {
    return SNTAddress
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
    require ext_code.size(SNTAddress)
    call SNTAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function setGuaranteedAddress(address arg1, uint256 arg2) {
    require SNTAddress
    require owner == msg.sender
    require block.number < startBlock
    require arg2 > 0
    require arg2 <= 30000 * 10^18
    guaranteedBuyersLimit[address(arg1)] = arg2
    emit GuaranteedAddress(arg2, arg1);
}

function claimTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(SNTAddress)
    call SNTAddress.controller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(SNTAddress)
        call SNTAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
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

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10, uint256 arg11) {
    require owner == msg.sender
    require not SNTAddress
    SNTAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(SNTAddress)
    call SNTAddress.controller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(SNTAddress)
    call SNTAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 18 == ext_call.return_data[31 len 1]
    require arg2
    sntControllerAddress = arg2
    require arg3 >= block.number
    require arg3 < arg4
    startBlock = arg3
    endBlock = arg4
    require arg5
    dynamicCeilingAddress = arg5
    require arg6
    destEthDevsAddress = arg6
    require arg7
    destTokensReserveAddress = arg7
    require arg8
    destTokensSgtAddress = arg8
    require arg9
    destTokensDevsAddress = arg9
    require arg10
    SGTAddress = arg10
    require ext_code.size(arg10)
    call arg10.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg11 >= ext_call.return_data[0]
    maxSGTSupply = arg11
}

function finalize() {
    require SNTAddress
    require block.number >= startBlock
    if owner != msg.sender:
        require block.number > endBlock
    require not finalizedBlock
    require ext_code.size(dynamicCeilingAddress)
    call dynamicCeilingAddress.allRevealed() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if block.number <= endBlock:
        require ext_code.size(dynamicCeilingAddress)
        call dynamicCeilingAddress.revealedCurves() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require 1 <= ext_call.return_data[0]
        require ext_code.size(dynamicCeilingAddress)
        call dynamicCeilingAddress.curves(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (ext_call.return_data[0] - 1)
        require ext_call.success
        require totalNormalCollected >= ext_call.return_data[32]
    finalizedBlock = block.number
    finalizedTime = block.timestamp
    require ext_code.size(SGTAddress)
    call SGTAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] >= maxSGTSupply:
        require ext_code.size(SNTAddress)
        call SNTAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
        if 10^18 * ext_call.return_data[0] / 41 * 10^16:
            require 10^18 * ext_call.return_data[0] / 41 * 10^16
            require 29 * 10^16 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18 * ext_call.return_data[0] / 41 * 10^16 == 29 * 10^16
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensReserveAddress, 29 * 10^16 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / 41 * 10^16:
            require 10^18 * ext_call.return_data[0] / 41 * 10^16
            require 10^17 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18 * ext_call.return_data[0] / 41 * 10^16 == 10^17
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensSgtAddress, 10^17 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / 41 * 10^16:
            require 10^18 * ext_call.return_data[0] / 41 * 10^16
            require 2 * 10^17 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18 * ext_call.return_data[0] / 41 * 10^16 == 2 * 10^17
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensDevsAddress, 2 * 10^17 * 10^18 * ext_call.return_data[0] / 41 * 10^16 / 10^18
    else:
        require ext_code.size(SGTAddress)
        call SGTAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require 10^17 * ext_call.return_data[0] / 10^17 == ext_call.return_data[0]
        require maxSGTSupply
        require 10^17 * ext_call.return_data[0] / maxSGTSupply <= 10^17
        require -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 >= 41 * 10^16
        require ext_code.size(SNTAddress)
        call SNTAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
        require -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16
        if 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16:
            require 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16
            require 29 * 10^16 * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 == 29 * 10^16
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensReserveAddress, 29 * 10^16 * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16:
            require 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16
            require 10^17 * ext_call.return_data[0] / maxSGTSupply * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 == 10^17 * ext_call.return_data[0] / maxSGTSupply
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensSgtAddress, 10^17 * ext_call.return_data[0] / maxSGTSupply * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18
        require ext_call.success
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16:
            require 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16
            require 2 * 10^17 * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 == 2 * 10^17
        require ext_code.size(SNTAddress)
        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args destTokensDevsAddress, 2 * 10^17 * 10^18 * ext_call.return_data[0] / -(10^17 * ext_call.return_data[0] / maxSGTSupply) + 51 * 10^16 / 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(SNTAddress)
    call SNTAddress.changeController(address rg1) with:
         gas gas_remaining - 710 wei
        args sntControllerAddress
    require ext_call.success
    emit Finalized()
}

function _fallback() payable {
    require not paused
    require SNTAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require SNTAddress
    require msg.sender
    if guaranteedBuyersLimit[address(msg.sender)] > 0:
        if msg.value + guaranteedBuyersBought[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]:
            if msg.value + guaranteedBuyersBought[address(msg.sender)] <= guaranteedBuyersLimit[address(msg.sender)]:
                if msg.value + guaranteedBuyersBought[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]:
                    guaranteedBuyersBought[address(msg.sender)] += msg.value
                    if msg.value + totalGuaranteedCollected >= totalGuaranteedCollected:
                        totalGuaranteedCollected += msg.value
                        if msg.value >= msg.value:
                            if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                    if msg.value <= 0:
                                    if not msg.value:
                                        if ext_code.size(SNTAddress):
                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 10000 * msg.value
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    call destEthDevsAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(msg.value, 10000 * msg.value, 1, msg.sender);
                                                        if msg.value <= msg.value:
                                    else:
                                        if msg.value:
                                            if 10000 * msg.value / msg.value == 10000:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 10000 * msg.value
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(msg.value, 10000 * msg.value, 1, msg.sender);
                                                                if msg.value <= msg.value:
            else:
                if guaranteedBuyersBought[address(msg.sender)] <= guaranteedBuyersLimit[address(msg.sender)]:
                    if guaranteedBuyersLimit[address(msg.sender)] >= guaranteedBuyersBought[address(msg.sender)]:
                        guaranteedBuyersBought[address(msg.sender)] = guaranteedBuyersLimit[address(msg.sender)]
                        if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] + totalGuaranteedCollected >= totalGuaranteedCollected:
                            totalGuaranteedCollected = guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] + totalGuaranteedCollected
                            if msg.value >= guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]:
                                if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                    if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                        if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] <= 0:
                                            if msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] <= 0:
                                            call msg.sender with:
                                               value msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                        else:
                                            if not guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (10000 * guaranteedBuyersLimit[address(msg.sender)]) - (10000 * guaranteedBuyersBought[address(msg.sender)])
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)], (10000 * guaranteedBuyersLimit[address(msg.sender)]) - (10000 * guaranteedBuyersBought[address(msg.sender)]), 1, msg.sender);
                                                                if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] <= msg.value:
                                                                    if msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] <= 0:
                                                                    call msg.sender with:
                                                                       value msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                            else:
                                                if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)]:
                                                    if (10000 * guaranteedBuyersLimit[address(msg.sender)]) - (10000 * guaranteedBuyersBought[address(msg.sender)]) / guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] == 10000:
                                                        if ext_code.size(SNTAddress):
                                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (10000 * guaranteedBuyersLimit[address(msg.sender)]) - (10000 * guaranteedBuyersBought[address(msg.sender)])
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    call destEthDevsAddress with:
                                                                       value guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        emit NewSale(guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)], (10000 * guaranteedBuyersLimit[address(msg.sender)]) - (10000 * guaranteedBuyersBought[address(msg.sender)]), 1, msg.sender);
                                                                        if guaranteedBuyersLimit[address(msg.sender)] - guaranteedBuyersBought[address(msg.sender)] <= msg.value:
                                                                            if msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] <= 0:
                                                                            call msg.sender with:
                                                                               value msg.value - guaranteedBuyersLimit[address(msg.sender)] + guaranteedBuyersBought[address(msg.sender)] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if ext_call.success:
    else:
        require block.gasprice <= 5 * 10^10
        if msg.sender:
            require ext_code.size(msg.sender) <= 0
        if lastCallBlock[address(msg.sender)] <= block.number:
            require block.number - lastCallBlock[address(msg.sender)] >= 100
            lastCallBlock[address(msg.sender)] = block.number
            if ext_code.size(dynamicCeilingAddress):
                call dynamicCeilingAddress.toCollect(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args totalNormalCollected
                if ext_call.success:
                    if msg.value <= ext_call.return_data[0]:
                        if msg.value + totalNormalCollected >= totalNormalCollected:
                            totalNormalCollected += msg.value
                            if msg.value >= msg.value:
                                if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                    if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                        if msg.value <= 0:
                                        if not msg.value:
                                            if ext_code.size(SNTAddress):
                                                call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 10000 * msg.value
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
                                                        call destEthDevsAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if ext_call.success:
                                                            emit NewSale(msg.value, 10000 * msg.value, 0, msg.sender);
                                                            if msg.value <= msg.value:
                                        else:
                                            if msg.value:
                                                if 10000 * msg.value / msg.value == 10000:
                                                    if ext_code.size(SNTAddress):
                                                        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, 10000 * msg.value
                                                        if ext_call.success:
                                                            if ext_call.return_data[0]:
                                                                call destEthDevsAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    emit NewSale(msg.value, 10000 * msg.value, 0, msg.sender);
                                                                    if msg.value <= msg.value:
                    else:
                        if ext_call.return_data[0] + totalNormalCollected >= totalNormalCollected:
                            totalNormalCollected += ext_call.return_data[0]
                            if msg.value >= ext_call.return_data[0]:
                                if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                    if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                        if ext_call.return_data[0] <= 0:
                                            if msg.value - ext_call.return_data[0] <= 0:
                                            call msg.sender with:
                                               value msg.value - ext_call.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                        else:
                                            if not ext_call.return_data[0]:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 10000 * ext_call.return_data[0]
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value ext_call.return_data[0] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, msg.sender);
                                                                if ext_call.return_data[0] <= msg.value:
                                                                    if msg.value - ext_call.return_data[0] <= 0:
                                                                    call msg.sender with:
                                                                       value msg.value - ext_call.return_data[0] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                            else:
                                                if ext_call.return_data[0]:
                                                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] == 10000:
                                                        if ext_code.size(SNTAddress):
                                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, 10000 * ext_call.return_data[0]
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    call destEthDevsAddress with:
                                                                       value ext_call.return_data[0] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, msg.sender);
                                                                        if ext_call.return_data[0] <= msg.value:
                                                                            if msg.value - ext_call.return_data[0] <= 0:
                                                                            call msg.sender with:
                                                                               value msg.value - ext_call.return_data[0] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if ext_call.success:
    revert
}

function proxyPayment(address arg1) payable {
    require not paused
    require SNTAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require not finalizedBlock
    require SNTAddress
    require arg1
    if guaranteedBuyersLimit[address(arg1)] > 0:
        if msg.value + guaranteedBuyersBought[address(arg1)] >= guaranteedBuyersBought[address(arg1)]:
            if msg.value + guaranteedBuyersBought[address(arg1)] <= guaranteedBuyersLimit[address(arg1)]:
                if msg.value + guaranteedBuyersBought[address(arg1)] >= guaranteedBuyersBought[address(arg1)]:
                    guaranteedBuyersBought[address(arg1)] += msg.value
                    if msg.value + totalGuaranteedCollected >= totalGuaranteedCollected:
                        totalGuaranteedCollected += msg.value
                        if msg.value >= msg.value:
                            if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                    if msg.value <= 0:
                                        return 1
                                    if not msg.value:
                                        if ext_code.size(SNTAddress):
                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), 10000 * msg.value
                                            if ext_call.success:
                                                if ext_call.return_data[0]:
                                                    call destEthDevsAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if ext_call.success:
                                                        emit NewSale(msg.value, 10000 * msg.value, 1, arg1);
                                                        if msg.value <= msg.value:
                                                            return 1
                                    else:
                                        if msg.value:
                                            if 10000 * msg.value / msg.value == 10000:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 10000 * msg.value
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(msg.value, 10000 * msg.value, 1, arg1);
                                                                if msg.value <= msg.value:
                                                                    return 1
            else:
                if guaranteedBuyersBought[address(arg1)] <= guaranteedBuyersLimit[address(arg1)]:
                    if guaranteedBuyersLimit[address(arg1)] >= guaranteedBuyersBought[address(arg1)]:
                        guaranteedBuyersBought[address(arg1)] = guaranteedBuyersLimit[address(arg1)]
                        if guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] + totalGuaranteedCollected >= totalGuaranteedCollected:
                            totalGuaranteedCollected = guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] + totalGuaranteedCollected
                            if msg.value >= guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)]:
                                if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                    if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                        if guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] <= 0:
                                            if msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] <= 0:
                                                return 1
                                            if SNTAddress != msg.sender:
                                                call msg.sender with:
                                                   value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                     gas 2300 * is_zero(value) wei
                                            else:
                                                call arg1 with:
                                                   value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                     gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                                                return 1
                                        else:
                                            if not guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)]:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), (10000 * guaranteedBuyersLimit[address(arg1)]) - (10000 * guaranteedBuyersBought[address(arg1)])
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)], (10000 * guaranteedBuyersLimit[address(arg1)]) - (10000 * guaranteedBuyersBought[address(arg1)]), 1, arg1);
                                                                if guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] <= msg.value:
                                                                    if msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] <= 0:
                                                                        return 1
                                                                    if SNTAddress != msg.sender:
                                                                        call msg.sender with:
                                                                           value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    else:
                                                                        call arg1 with:
                                                                           value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        return 1
                                            else:
                                                if guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)]:
                                                    if (10000 * guaranteedBuyersLimit[address(arg1)]) - (10000 * guaranteedBuyersBought[address(arg1)]) / guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] == 10000:
                                                        if ext_code.size(SNTAddress):
                                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), (10000 * guaranteedBuyersLimit[address(arg1)]) - (10000 * guaranteedBuyersBought[address(arg1)])
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    call destEthDevsAddress with:
                                                                       value guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        emit NewSale(guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)], (10000 * guaranteedBuyersLimit[address(arg1)]) - (10000 * guaranteedBuyersBought[address(arg1)]), 1, arg1);
                                                                        if guaranteedBuyersLimit[address(arg1)] - guaranteedBuyersBought[address(arg1)] <= msg.value:
                                                                            if msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] <= 0:
                                                                                return 1
                                                                            if SNTAddress != msg.sender:
                                                                                call msg.sender with:
                                                                                   value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                            else:
                                                                                call arg1 with:
                                                                                   value msg.value - guaranteedBuyersLimit[address(arg1)] + guaranteedBuyersBought[address(arg1)] wei
                                                                                     gas 2300 * is_zero(value) wei
                                                                            if ext_call.success:
                                                                                return 1
    else:
        require block.gasprice <= 5 * 10^10
        if SNTAddress != msg.sender:
            if msg.sender:
                require ext_code.size(msg.sender) <= 0
            if lastCallBlock[address(msg.sender)] <= block.number:
                require block.number - lastCallBlock[address(msg.sender)] >= 100
                lastCallBlock[address(msg.sender)] = block.number
                if ext_code.size(dynamicCeilingAddress):
                    call dynamicCeilingAddress.toCollect(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args totalNormalCollected
                    if ext_call.success:
                        if msg.value <= ext_call.return_data[0]:
                            if msg.value + totalNormalCollected >= totalNormalCollected:
                                totalNormalCollected += msg.value
                                if msg.value >= msg.value:
                                    if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                        if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                            if msg.value <= 0:
                                                return 1
                                            if not msg.value:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 10000 * msg.value
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(msg.value, 10000 * msg.value, 0, arg1);
                                                                if msg.value <= msg.value:
                                                                    return 1
                                            else:
                                                if msg.value:
                                                    if 10000 * msg.value / msg.value == 10000:
                                                        if ext_code.size(SNTAddress):
                                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), 10000 * msg.value
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    call destEthDevsAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        emit NewSale(msg.value, 10000 * msg.value, 0, arg1);
                                                                        if msg.value <= msg.value:
                                                                            return 1
                        else:
                            if ext_call.return_data[0] + totalNormalCollected >= totalNormalCollected:
                                totalNormalCollected += ext_call.return_data[0]
                                if msg.value >= ext_call.return_data[0]:
                                    if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                        if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                    return 1
                                                if SNTAddress != msg.sender:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                else:
                                                    call arg1 with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                if not ext_call.return_data[0]:
                                                    if ext_code.size(SNTAddress):
                                                        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 10000 * ext_call.return_data[0]
                                                        if ext_call.success:
                                                            if ext_call.return_data[0]:
                                                                call destEthDevsAddress with:
                                                                   value ext_call.return_data[0] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, arg1);
                                                                    if ext_call.return_data[0] <= msg.value:
                                                                        if msg.value - ext_call.return_data[0] <= 0:
                                                                            return 1
                                                                        if SNTAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value msg.value - ext_call.return_data[0] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                        else:
                                                                            call arg1 with:
                                                                               value msg.value - ext_call.return_data[0] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                        if ext_call.success:
                                                                            return 1
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] == 10000:
                                                            if ext_code.size(SNTAddress):
                                                                call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), 10000 * ext_call.return_data[0]
                                                                if ext_call.success:
                                                                    if ext_call.return_data[0]:
                                                                        call destEthDevsAddress with:
                                                                           value ext_call.return_data[0] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if ext_call.success:
                                                                            emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, arg1);
                                                                            if ext_call.return_data[0] <= msg.value:
                                                                                if msg.value - ext_call.return_data[0] <= 0:
                                                                                    return 1
                                                                                if SNTAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value msg.value - ext_call.return_data[0] wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                else:
                                                                                    call arg1 with:
                                                                                       value msg.value - ext_call.return_data[0] wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                if ext_call.success:
                                                                                    return 1
        else:
            if arg1:
                require ext_code.size(arg1) <= 0
            if lastCallBlock[address(arg1)] <= block.number:
                require block.number - lastCallBlock[address(arg1)] >= 100
                lastCallBlock[address(arg1)] = block.number
                if ext_code.size(dynamicCeilingAddress):
                    call dynamicCeilingAddress.toCollect(uint256 rg1) with:
                         gas gas_remaining - 710 wei
                        args totalNormalCollected
                    if ext_call.success:
                        if msg.value <= ext_call.return_data[0]:
                            if msg.value + totalNormalCollected >= totalNormalCollected:
                                totalNormalCollected += msg.value
                                if msg.value >= msg.value:
                                    if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                        if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                            if msg.value <= 0:
                                                return 1
                                            if not msg.value:
                                                if ext_code.size(SNTAddress):
                                                    call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), 10000 * msg.value
                                                    if ext_call.success:
                                                        if ext_call.return_data[0]:
                                                            call destEthDevsAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if ext_call.success:
                                                                emit NewSale(msg.value, 10000 * msg.value, 0, arg1);
                                                                if msg.value <= msg.value:
                                                                    return 1
                                            else:
                                                if msg.value:
                                                    if 10000 * msg.value / msg.value == 10000:
                                                        if ext_code.size(SNTAddress):
                                                            call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), 10000 * msg.value
                                                            if ext_call.success:
                                                                if ext_call.return_data[0]:
                                                                    call destEthDevsAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if ext_call.success:
                                                                        emit NewSale(msg.value, 10000 * msg.value, 0, arg1);
                                                                        if msg.value <= msg.value:
                                                                            return 1
                        else:
                            if ext_call.return_data[0] + totalNormalCollected >= totalNormalCollected:
                                totalNormalCollected += ext_call.return_data[0]
                                if msg.value >= ext_call.return_data[0]:
                                    if totalGuaranteedCollected + totalNormalCollected >= totalNormalCollected:
                                        if totalGuaranteedCollected + totalNormalCollected <= 300000 * 10^18:
                                            if ext_call.return_data[0] <= 0:
                                                if msg.value - ext_call.return_data[0] <= 0:
                                                    return 1
                                                if SNTAddress != msg.sender:
                                                    call msg.sender with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                else:
                                                    call arg1 with:
                                                       value msg.value - ext_call.return_data[0] wei
                                                         gas 2300 * is_zero(value) wei
                                                if ext_call.success:
                                                    return 1
                                            else:
                                                if not ext_call.return_data[0]:
                                                    if ext_code.size(SNTAddress):
                                                        call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), 10000 * ext_call.return_data[0]
                                                        if ext_call.success:
                                                            if ext_call.return_data[0]:
                                                                call destEthDevsAddress with:
                                                                   value ext_call.return_data[0] wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if ext_call.success:
                                                                    emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, arg1);
                                                                    if ext_call.return_data[0] <= msg.value:
                                                                        if msg.value - ext_call.return_data[0] <= 0:
                                                                            return 1
                                                                        if SNTAddress != msg.sender:
                                                                            call msg.sender with:
                                                                               value msg.value - ext_call.return_data[0] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                        else:
                                                                            call arg1 with:
                                                                               value msg.value - ext_call.return_data[0] wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                        if ext_call.success:
                                                                            return 1
                                                else:
                                                    if ext_call.return_data[0]:
                                                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] == 10000:
                                                            if ext_code.size(SNTAddress):
                                                                call SNTAddress.generateTokens(address rg1, uint256 rg2) with:
                                                                     gas gas_remaining - 710 wei
                                                                    args address(arg1), 10000 * ext_call.return_data[0]
                                                                if ext_call.success:
                                                                    if ext_call.return_data[0]:
                                                                        call destEthDevsAddress with:
                                                                           value ext_call.return_data[0] wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if ext_call.success:
                                                                            emit NewSale(ext_call.return_data[0], 10000 * ext_call.return_data[0], 0, arg1);
                                                                            if ext_call.return_data[0] <= msg.value:
                                                                                if msg.value - ext_call.return_data[0] <= 0:
                                                                                    return 1
                                                                                if SNTAddress != msg.sender:
                                                                                    call msg.sender with:
                                                                                       value msg.value - ext_call.return_data[0] wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                else:
                                                                                    call arg1 with:
                                                                                       value msg.value - ext_call.return_data[0] wei
                                                                                         gas 2300 * is_zero(value) wei
                                                                                if ext_call.success:
                                                                                    return 1
    revert
}



}
