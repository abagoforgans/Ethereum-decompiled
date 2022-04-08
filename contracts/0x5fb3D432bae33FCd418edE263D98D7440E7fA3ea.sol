contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor6;
uint256 stor13;

function _fallback() {
    stor0 = msg.sender
    stor13 = 40320
    stor1 = code.data[7371 len 32]
    stor2 = code.data[7371 len 32] + (4 * stor13)
    stor3 = 5000 * 10^18
    stor4 = 100000 * 10^18
    stor6 = code.data[7415 len 20]
    return code.data[265 len 7106]
}



// =====================  Runtime code  =====================


address owner;
uint256 startBlock;
uint256 endBlock;
uint256 minEthToRaise;
uint256 maxEthToRaise;
uint256 totalEthRaised;
address multisigAddress;
address sncTokenAddress;
mapping of uint8 stor8;
uint256 stor9;
mapping of address stor10;
mapping of uint256 participantContributionInEth;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 stor13;
uint8 stor14;
uint256 stor15;
mapping of uint8 stor16;

function getSncTokenAddress() {
    return sncTokenAddress
}

function endBlock() {
    return endBlock
}

function minEthToRaise() {
    return minEthToRaise
}

function participantContributionInEth(address arg1) {
    return participantContributionInEth[address(arg1)]
}

function startBlock() {
    return startBlock
}

function multisigAddress() {
    return multisigAddress
}

function isAddressAllowedInPresale(address arg1) {
    return bool(stor8[address(arg1)])
}

function owner() {
    return owner
}

function totalEthRaised() {
    return totalEthRaised
}

function maxEthToRaise() {
    return maxEthToRaise
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == owner
    sncTokenAddress = arg1
}

function changeMultisigAddress(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function removePresaleContributor(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
}

function icoInProgress() {
    if not uint8(stor12.field_0):
        return bool(uint8(stor12.field_0))
    return not bool(uint8(stor12.field_16))
}

function endIco() {
    require msg.sender == owner
    require totalEthRaised >= minEthToRaise
    require block.number >= endBlock
    Mask(240, 0, stor12.field_16) = 1
    emit ICOEndedSuccessfuly(block.number, totalEthRaised);
}

function withdrawEth() {
    require msg.sender == owner
    require eth.balance(this.address)
    require totalEthRaised >= minEthToRaise
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function withdrawRemainingBalanceForManualRecovery() {
    require msg.sender == owner
    require eth.balance(this.address)
    require block.number >= endBlock
    require not stor10[stor15]
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function addPresaleContributors(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function claimEthIfFailed() {
    require block.number > endBlock
    require totalEthRaised < minEthToRaise
    require participantContributionInEth[address(msg.sender)]
    require not stor16[address(msg.sender)]
    stor16[address(msg.sender)] = 1
    call msg.sender with:
       value participantContributionInEth[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit ErrorSendingETH(msg.sender, participantContributionInEth[address(msg.sender)]);
}

function claimCoreTeamsTokens(address arg1) {
    require msg.sender == owner
    require uint8(stor12.field_16)
    require not stor14
    require ext_code.size(sncTokenAddress)
    call sncTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sncTokenAddress)
    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), 25 * ext_call.return_data[0] / 100
    require ext_call.success
    stor14 = 1
}

function batchReturnEthIfFailed(uint256 arg1) {
    require msg.sender == owner
    require block.number >= endBlock
    require totalEthRaised < minEthToRaise
    idx = 0
    s = 0
    t = 0
    while idx < arg1:
        if not stor10[stor15]:
        mem[0] = stor10[stor15]
        mem[32] = 16
        if stor16[stor10[stor15]]:
            stor15++
            idx = idx + 1
            s = s
            t = stor10[stor15]
            continue 
        mem[0] = msg.sender
        mem[32] = 16
        stor16[address(msg.sender)] = 1
        call stor10[stor15] with:
           value participantContributionInEth[stor10[stor15]] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            mem[96] = stor10[stor15]
            mem[128] = participantContributionInEth[stor10[stor15]]
            emit ErrorSendingETH(stor10[stor15], participantContributionInEth[stor10[stor15]]);
        stor15++
        idx = idx + 1
        s = participantContributionInEth[stor10[stor15]]
        t = stor10[stor15]
        continue 
}

function getSncTokenIssuance(uint256 arg1, uint256 arg2) {
    if arg1 < startBlock:
        if arg1 < stor13 + startBlock:
            if arg1 < (2 * stor13) + startBlock:
                if arg1 < (3 * stor13) + startBlock:
                    return 0
            else:
                if arg1 < (3 * stor13) + startBlock:
                    return (10500 * arg2)
        else:
            if arg1 < (2 * stor13) + startBlock:
                return (11000 * arg2)
            if arg1 < (3 * stor13) + startBlock:
                return (10500 * arg2)
    else:
        if arg1 < stor13 + startBlock:
            if not stor8[address(msg.sender)]:
                return (11500 * arg2)
            return (11600 * arg2)
        if arg1 < (2 * stor13) + startBlock:
            return (11000 * arg2)
        if arg1 < (3 * stor13) + startBlock:
            return (10500 * arg2)
    ('ge', ('param', 'arg1'), ('add', ('mul', 3, ('stor', ('name', 'stor13', 13))), ('stor', ('name', 'startBlock', 1))))
    if arg1 > (4 * stor13) + startBlock:
        return 0
    return (10000 * arg2)
}

function _fallback() payable {
    require msg.value
    require not uint8(stor12.field_16)
    require block.number <= endBlock
    if not uint8(stor12.field_0):
        require block.number >= startBlock
        uint8(stor12.field_0) = 1
        emit ICOStarted(block.number);
    if not participantContributionInEth[address(msg.sender)]:
        stor10[stor9] = msg.sender
        stor9++
    if maxEthToRaise <= totalEthRaised + msg.value:
        participantContributionInEth[address(msg.sender)] = participantContributionInEth[address(msg.sender)] + maxEthToRaise - totalEthRaised
        totalEthRaised = maxEthToRaise
        require ext_code.size(sncTokenAddress)
        if block.number < startBlock:
            if block.number < stor13 + startBlock:
                if block.number < (2 * stor13) + startBlock:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10000 * maxEthToRaise) - (10000 * totalEthRaised)
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10500 * maxEthToRaise) - (10500 * totalEthRaised)
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10000 * maxEthToRaise) - (10000 * totalEthRaised)
            else:
                if block.number < (2 * stor13) + startBlock:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (11000 * maxEthToRaise) - (11000 * totalEthRaised)
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10500 * maxEthToRaise) - (10500 * totalEthRaised)
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10000 * maxEthToRaise) - (10000 * totalEthRaised)
        else:
            if block.number < stor13 + startBlock:
                if not stor8[address(msg.sender)]:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (11500 * maxEthToRaise) - (11500 * totalEthRaised)
                else:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (11600 * maxEthToRaise) - (11600 * totalEthRaised)
            else:
                if block.number < (2 * stor13) + startBlock:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (11000 * maxEthToRaise) - (11000 * totalEthRaised)
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (10500 * maxEthToRaise) - (10500 * totalEthRaised)
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (10000 * maxEthToRaise) - (10000 * totalEthRaised)
        require ext_call.success
        Mask(240, 0, stor12.field_16) = 1
        emit ICOEndedSuccessfuly(block.number, totalEthRaised);
        call msg.sender with:
           value msg.value - maxEthToRaise + totalEthRaised wei
             gas 2300 * is_zero(value) wei
    else:
        participantContributionInEth[address(msg.sender)] += msg.value
        totalEthRaised += msg.value
        require ext_code.size(sncTokenAddress)
        if block.number < startBlock:
            if block.number < stor13 + startBlock:
                if block.number < (2 * stor13) + startBlock:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10000 * msg.value
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10500 * msg.value
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10000 * msg.value
            else:
                if block.number < (2 * stor13) + startBlock:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 11000 * msg.value
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10500 * msg.value
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10000 * msg.value
        else:
            if block.number < stor13 + startBlock:
                if not stor8[address(msg.sender)]:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 11500 * msg.value
                else:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 11600 * msg.value
            else:
                if block.number < (2 * stor13) + startBlock:
                    call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 11000 * msg.value
                else:
                    if block.number < (3 * stor13) + startBlock:
                        call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10500 * msg.value
                    else:
                        if block.number > (4 * stor13) + startBlock:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                        else:
                            call sncTokenAddress.mintTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10000 * msg.value
        require ext_call.success
        if not uint8(stor12.field_8):
            if totalEthRaised >= minEthToRaise:
                emit ICOMinTresholdReached(block.number);
                Mask(248, 0, stor12.field_8) = 1
}



}
