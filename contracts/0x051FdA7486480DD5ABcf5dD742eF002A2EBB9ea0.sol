contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint8 stor15;

function _fallback() payable {
    stor2 = 20000000 * 10^18
    stor3 = 70000000 * 10^18
    require not msg.value
    stor0 = msg.sender
    stor15 = 0
    return code.data[102 len 6444]
}



// =====================  Runtime code  =====================


const time = block.timestamp

const exchangeRate = 600

const maxGasPrice = 5 * 10^10

const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0


address owner;
address newOwner;
uint256 maxFirstRoundTokenLimit;
uint256 maxIssueTokenLimit;
address ATTAddress;
address attControllerAddress;
address destEthFoundationAddress;
address destTokensAngelAddress;
uint256 startTime;
uint256 endTime;
uint256 totalNormalTokenGenerated;
uint256 totalNormalEtherCollected;
uint256 totalIssueTokenGenerated;
uint256 finalizedBlock;
uint256 finalizedTime;
uint8 paused;

function maxFirstRoundTokenLimit() {
    return maxFirstRoundTokenLimit
}

function maxIssueTokenLimit() {
    return maxIssueTokenLimit
}

function attController() {
    return attControllerAddress
}

function endTime() {
    return endTime
}

function finalizedBlock() {
    return finalizedBlock
}

function destEthFoundation() {
    return destEthFoundationAddress
}

function paused() {
    return bool(paused)
}

function destTokensAngel() {
    return destTokensAngelAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalIssueTokenGenerated() {
    return totalIssueTokenGenerated
}

function ATT() {
    return ATTAddress
}

function totalNormalEtherCollected() {
    return totalNormalEtherCollected
}

function newOwner() {
    return newOwner
}

function totalNormalTokenGenerated() {
    return totalNormalTokenGenerated
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

function tokensIssued() {
    require ext_code.size(ATTAddress)
    call ATTAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function issueTokenToGuaranteedAddress(address arg1, uint256 arg2, bytes arg3) {
    require owner == msg.sender
    require ATTAddress
    require not paused
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not finalizedBlock
    require ATTAddress
    require arg2 + totalIssueTokenGenerated >= totalIssueTokenGenerated
    require arg2 + totalIssueTokenGenerated <= maxIssueTokenLimit
    require ext_code.size(ATTAddress)
    call ATTAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + totalIssueTokenGenerated >= totalIssueTokenGenerated
    totalIssueTokenGenerated += arg2
    emit NewIssue(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}

function adjustLimitBetweenIssueAndNormal(uint256 arg1, bool arg2) {
    require owner == msg.sender
    require ATTAddress
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not finalizedBlock
    require ATTAddress
    if not arg2:
        require arg1 + totalNormalTokenGenerated >= totalNormalTokenGenerated
        require arg1 + totalNormalTokenGenerated <= maxFirstRoundTokenLimit
        require arg1 <= maxFirstRoundTokenLimit
        maxFirstRoundTokenLimit -= arg1
        require arg1 + maxIssueTokenLimit >= maxIssueTokenLimit
        maxIssueTokenLimit += arg1
    else:
        require arg1 + totalIssueTokenGenerated >= totalIssueTokenGenerated
        require arg1 + totalIssueTokenGenerated <= maxIssueTokenLimit
        require arg1 <= maxIssueTokenLimit
        maxIssueTokenLimit -= arg1
        require arg1 + maxFirstRoundTokenLimit >= maxFirstRoundTokenLimit
        maxFirstRoundTokenLimit += arg1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6) {
    require owner == msg.sender
    require not ATTAddress
    ATTAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(ATTAddress)
    call ATTAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(ATTAddress)
    call ATTAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 18 == ext_call.return_data[31 len 1]
    startTime = arg3
    endTime = arg4
    require arg3 < arg4
    require arg2
    attControllerAddress = arg2
    require arg5
    destEthFoundationAddress = arg5
    require arg6
    destTokensAngelAddress = arg6
}

function claimTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(ATTAddress)
    call ATTAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(ATTAddress)
        call ATTAddress.0xdf8de3e7 with:
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

function finalize() {
    require owner == msg.sender
    require ATTAddress
    require block.timestamp >= startTime
    require not finalizedBlock
    finalizedBlock = block.number
    finalizedTime = block.timestamp
    require maxFirstRoundTokenLimit + (25000 * 10^18 * 3600) >= 25000 * 10^18 * 3600
    require totalNormalTokenGenerated <= maxFirstRoundTokenLimit + (25000 * 10^18 * 3600)
    require maxIssueTokenLimit >= 0
    require totalIssueTokenGenerated <= maxIssueTokenLimit + maxFirstRoundTokenLimit + -totalNormalTokenGenerated + (25000 * 10^18 * 3600)
    require ext_code.size(ATTAddress)
    call ATTAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require maxIssueTokenLimit + maxFirstRoundTokenLimit + -totalNormalTokenGenerated + -totalIssueTokenGenerated + ext_call.return_data[0] + (25000 * 10^18 * 3600) >= ext_call.return_data[0]
    require 300000000 * 10^18 == maxIssueTokenLimit + maxFirstRoundTokenLimit + -totalNormalTokenGenerated + -totalIssueTokenGenerated + ext_call.return_data[0] + 210000000 * 10^18
    require ext_code.size(ATTAddress)
    call ATTAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args 177, maxIssueTokenLimit + maxFirstRoundTokenLimit + -totalNormalTokenGenerated + -totalIssueTokenGenerated + (25000 * 10^18 * 3600)
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(ATTAddress)
    call ATTAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args 178, 25000 * 10^18 * 3600
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(ATTAddress)
    call ATTAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args destTokensAngelAddress, 30000000 * 10^18
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(ATTAddress)
    call ATTAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args attControllerAddress
    require ext_call.success
    emit Finalized()
}

function _fallback() payable {
    require not paused
    require ATTAddress
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not finalizedBlock
    require ATTAddress
    require msg.sender
    require block.gasprice <= 5 * 10^10
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require block.gasprice <= 5 * 10^10
    require msg.value >= msg.value
    require totalNormalTokenGenerated < maxFirstRoundTokenLimit
    require startTime + (168 * 24 * 3600) >= startTime
    require startTime + (336 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (168 * 24 * 3600):
        if msg.value > 0:
            if msg.value:
                require msg.value
                require 660 * msg.value / msg.value == 660
            require (660 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
            require ext_code.size(ATTAddress)
            if (660 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 660 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (660 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                totalNormalTokenGenerated += 660 * msg.value
                require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += msg.value
                emit NewSale(msg.value, 660 * msg.value, msg.sender);
                require msg.value <= msg.value
            call ATTAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, maxFirstRoundTokenLimit - totalNormalTokenGenerated
            require ext_call.success
            require ext_call.return_data[0]
            call destEthFoundationAddress with:
               value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
            totalNormalTokenGenerated = maxFirstRoundTokenLimit
            require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) + totalNormalEtherCollected >= totalNormalEtherCollected
            totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660
            emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660, maxFirstRoundTokenLimit - totalNormalTokenGenerated, msg.sender);
            require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660 <= msg.value
            if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) > 0:
                call msg.sender with:
                   value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if block.timestamp >= startTime + (336 * 24 * 3600):
            if msg.value > 0:
                if msg.value:
                    require msg.value
                    require 600 * msg.value / msg.value == 600
                require (600 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                require ext_code.size(ATTAddress)
                if (600 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                    call ATTAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 600 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    call destEthFoundationAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (600 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                    totalNormalTokenGenerated += 600 * msg.value
                    require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                    totalNormalEtherCollected += msg.value
                    emit NewSale(msg.value, 600 * msg.value, msg.sender);
                    require msg.value <= msg.value
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, maxFirstRoundTokenLimit - totalNormalTokenGenerated
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
                totalNormalTokenGenerated = maxFirstRoundTokenLimit
                require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600
                emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600, maxFirstRoundTokenLimit - totalNormalTokenGenerated, msg.sender);
                require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600 <= msg.value
                if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) > 0:
                    call msg.sender with:
                       value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if msg.value > 0:
                if msg.value:
                    require msg.value
                    require 630 * msg.value / msg.value == 630
                require (630 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                require ext_code.size(ATTAddress)
                if (630 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                    call ATTAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 630 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    call destEthFoundationAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (630 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                    totalNormalTokenGenerated += 630 * msg.value
                    require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                    totalNormalEtherCollected += msg.value
                    emit NewSale(msg.value, 630 * msg.value, msg.sender);
                    require msg.value <= msg.value
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, maxFirstRoundTokenLimit - totalNormalTokenGenerated
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
                totalNormalTokenGenerated = maxFirstRoundTokenLimit
                require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630
                emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630, maxFirstRoundTokenLimit - totalNormalTokenGenerated, msg.sender);
                require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630 <= msg.value
                if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) > 0:
                    call msg.sender with:
                       value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function proxyPayment(address arg1) payable {
    require not paused
    require ATTAddress
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not finalizedBlock
    require ATTAddress
    require arg1
    require block.gasprice <= 5 * 10^10
    if ATTAddress != msg.sender:
        if msg.sender:
            require ext_code.size(msg.sender) <= 0
    else:
        if arg1:
            require ext_code.size(arg1) <= 0
    require block.gasprice <= 5 * 10^10
    require msg.value >= msg.value
    require totalNormalTokenGenerated < maxFirstRoundTokenLimit
    require startTime + (168 * 24 * 3600) >= startTime
    require startTime + (336 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (168 * 24 * 3600):
        if msg.value > 0:
            if msg.value:
                require msg.value
                require 660 * msg.value / msg.value == 660
            require (660 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
            require ext_code.size(ATTAddress)
            if (660 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 660 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (660 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                totalNormalTokenGenerated += 660 * msg.value
                require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += msg.value
                emit NewSale(msg.value, 660 * msg.value, arg1);
                require msg.value <= msg.value
                return 1
            call ATTAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args address(arg1), maxFirstRoundTokenLimit - totalNormalTokenGenerated
            require ext_call.success
            require ext_call.return_data[0]
            call destEthFoundationAddress with:
               value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
            totalNormalTokenGenerated = maxFirstRoundTokenLimit
            require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) + totalNormalEtherCollected >= totalNormalEtherCollected
            totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660
            emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660, maxFirstRoundTokenLimit - totalNormalTokenGenerated, arg1);
            require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660 <= msg.value
            if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) > 0:
                if ATTAddress != msg.sender:
                    call msg.sender with:
                       value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) wei
                         gas 2300 * is_zero(value) wei
                else:
                    call arg1 with:
                       value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 660) wei
                         gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        if block.timestamp >= startTime + (336 * 24 * 3600):
            if msg.value > 0:
                if msg.value:
                    require msg.value
                    require 600 * msg.value / msg.value == 600
                require (600 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                require ext_code.size(ATTAddress)
                if (600 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                    call ATTAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 600 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    call destEthFoundationAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (600 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                    totalNormalTokenGenerated += 600 * msg.value
                    require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                    totalNormalEtherCollected += msg.value
                    emit NewSale(msg.value, 600 * msg.value, arg1);
                    require msg.value <= msg.value
                    return 1
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), maxFirstRoundTokenLimit - totalNormalTokenGenerated
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
                totalNormalTokenGenerated = maxFirstRoundTokenLimit
                require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600
                emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600, maxFirstRoundTokenLimit - totalNormalTokenGenerated, arg1);
                require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600 <= msg.value
                if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) > 0:
                    if ATTAddress != msg.sender:
                        call msg.sender with:
                           value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call arg1 with:
                           value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 600) wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if msg.value > 0:
                if msg.value:
                    require msg.value
                    require 630 * msg.value / msg.value == 630
                require (630 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                require ext_code.size(ATTAddress)
                if (630 * msg.value) + totalNormalTokenGenerated <= maxFirstRoundTokenLimit:
                    call ATTAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 630 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    call destEthFoundationAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (630 * msg.value) + totalNormalTokenGenerated >= totalNormalTokenGenerated
                    totalNormalTokenGenerated += 630 * msg.value
                    require msg.value + totalNormalEtherCollected >= totalNormalEtherCollected
                    totalNormalEtherCollected += msg.value
                    emit NewSale(msg.value, 630 * msg.value, arg1);
                    require msg.value <= msg.value
                    return 1
                call ATTAddress.0x827f32c0 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), maxFirstRoundTokenLimit - totalNormalTokenGenerated
                require ext_call.success
                require ext_call.return_data[0]
                call destEthFoundationAddress with:
                   value maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require maxFirstRoundTokenLimit >= totalNormalTokenGenerated
                totalNormalTokenGenerated = maxFirstRoundTokenLimit
                require (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) + totalNormalEtherCollected >= totalNormalEtherCollected
                totalNormalEtherCollected += maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630
                emit NewSale(maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630, maxFirstRoundTokenLimit - totalNormalTokenGenerated, arg1);
                require maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630 <= msg.value
                if msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) > 0:
                    if ATTAddress != msg.sender:
                        call msg.sender with:
                           value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call arg1 with:
                           value msg.value - (maxFirstRoundTokenLimit - totalNormalTokenGenerated / 630) wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
    return 1
}



}
