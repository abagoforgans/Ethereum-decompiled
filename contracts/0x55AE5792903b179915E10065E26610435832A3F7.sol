contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
array of uint256 stor26;
array of uint256 stor27;
array of uint256 stor28;
array of uint256 stor29;
array of uint256 stor30;

function _fallback() payable {
    bool(stor26.length) = 0
    stor26.length.field_1 = 23
    stor26.length.field_8 = 'Cofoundit is launching!' / 256
    idx = 0
    while stor26.length + 31 / 32 > idx:
        stor26[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor27.length) = 0
    stor27.length.field_1 = 15
    stor27.length.field_8 = 'Firing Stage 2!' / 256
    idx = 0
    while stor27.length + 31 / 32 > idx:
        stor27[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor28.length) = 0
    stor28.length.field_1 = 15
    stor28.length.field_8 = 'Orbit achieved!' / 256
    idx = 0
    while stor28.length + 31 / 32 > idx:
        stor28[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor29.length) = 0
    stor29.length.field_1 = 20
    stor29.length.field_8 = 'Leaving Earth orbit!' / 256
    idx = 0
    while stor29.length + 31 / 32 > idx:
        stor29[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor30.length) = 0
    stor30.length.field_1 = 15
    stor30.length.field_8 = 'Rocket crashed.' / 256
    idx = 0
    while stor30.length + 31 / 32 > idx:
        stor30[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[11014 len 32]
    stor2 = code.data[11046 len 32]
    stor3 = 4525 * 10^18
    stor4 = 157125 * 10^14 * 24 * 3600
    stor6 = code.data[11090 len 20]
    stor7 = 125000000 * 10^18
    stor8 = 125000000 * 10^18
    stor9 = 100000000 * 10^18
    stor10 = 50000000 * 10^18
    stor11 = 100000000 * 10^18
    return code.data[926 len 10088]
}



// =====================  Runtime code  =====================


address owner;
uint256 startBlock;
uint256 endBlock;
uint256 minEthToRaise;
uint256 maxEthToRaise;
uint256 totalEthRaised;
address multisigAddress;
uint256 icoSupply;
uint256 strategicReserveSupply;
uint256 cashilaTokenSupply;
uint256 iconomiTokenSupply;
uint256 coreTeamTokenSupply;
address cofounditTokenAddress;
mapping of uint8 stor13;
uint256 stor14;
mapping of address stor15;
mapping of uint256 participantContributionInEth;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint8 stor22;
uint8 stor22; offset 8
uint8 stor22; offset 16
uint256 stor22; offset 16
uint256 stor22; offset 8
uint256 stor23;
mapping of uint8 stor24;
uint256 stor25;
array of struct stor26;
array of struct stor27;
array of struct stor28;
array of struct stor29;

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

function icoSupply() {
    return icoSupply
}

function multisigAddress() {
    return multisigAddress
}

function isAddressAllowedInPresale(address arg1) {
    return bool(stor13[address(arg1)])
}

function iconomiTokenSupply() {
    return iconomiTokenSupply
}

function coreTeamTokenSupply() {
    return coreTeamTokenSupply
}

function getCofounditTokenAddress() {
    return cofounditTokenAddress
}

function owner() {
    return owner
}

function strategicReserveSupply() {
    return strategicReserveSupply
}

function cashilaTokenSupply() {
    return cashilaTokenSupply
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

function changeMultisigAddress(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function setTokenContract(address arg1) {
    require msg.sender == owner
    cofounditTokenAddress = arg1
}

function removePresaleContributor(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 0
}

function icoInProgress() {
    if not uint8(stor22.field_0):
        return bool(uint8(stor22.field_0))
    return not bool(uint8(stor22.field_16))
}

function getCfiEstimation(address arg1) {
    require totalEthRaised
    return (icoSupply * participantContributionInEth[address(arg1)] / totalEthRaised)
}

function withdrawRemainingBalanceForManualRecovery() {
    require msg.sender == owner
    require eth.balance(this.address)
    require block.number >= endBlock
    require totalEthRaised < minEthToRaise
    require not stor15[stor23]
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
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function claimEthIfFailed() {
    require block.number > endBlock
    require totalEthRaised < minEthToRaise
    require participantContributionInEth[address(msg.sender)]
    require not stor24[address(msg.sender)]
    stor24[address(msg.sender)] = 1
    call msg.sender with:
       value participantContributionInEth[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit ErrorSendingETH(msg.sender, participantContributionInEth[address(msg.sender)]);
}

function withdrawEth() {
    require msg.sender == owner
    require eth.balance(this.address)
    require totalEthRaised >= minEthToRaise
    if block.number > endBlock:
        Mask(240, 0, stor22.field_16) = 1
        mem[224] = uint256(stor28.field_0)
        idx = 224
        s = 0
        while stor28.length + 224 > idx + 32:
            mem[idx + 32] = stor28[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit ICOEndedSuccessfuly(block.number, totalEthRaised, Array(len=stor28.length, data=mem[224 len stor28.length + (floor32(stor28.length - 1) + -stor28.length + 32 % 32)]));
    call multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function batchReturnEthIfFailed(uint256 arg1) {
    require msg.sender == owner
    require block.number >= endBlock
    require totalEthRaised < minEthToRaise
    idx = 0
    s = 0
    t = 0
    while idx < arg1:
        if not stor15[stor23]:
        mem[0] = stor15[stor23]
        mem[32] = 24
        if stor24[stor15[stor23]]:
            stor23++
            idx = idx + 1
            s = s
            t = stor15[stor23]
            continue 
        mem[0] = msg.sender
        mem[32] = 24
        stor24[address(msg.sender)] = 1
        call stor15[stor23] with:
           value participantContributionInEth[stor15[stor23]] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            mem[96] = stor15[stor23]
            mem[128] = participantContributionInEth[stor15[stor23]]
            emit ErrorSendingETH(stor15[stor23], participantContributionInEth[stor15[stor23]]);
        stor23++
        idx = idx + 1
        s = participantContributionInEth[stor15[stor23]]
        t = stor15[stor23]
        continue 
}

function batchIssueTokens(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor22.field_16)
    idx = 0
    s = 0
    while idx < arg1:
        mem[0] = stor25
        mem[32] = 15
        if stor15[stor25]:
            mem[0] = stor15[stor25]
            mem[32] = 16
            require totalEthRaised
            mem[96] = 0xe67524a300000000000000000000000000000000000000000000000000000000
            mem[100] = stor15[stor25]
            mem[132] = icoSupply * participantContributionInEth[stor15[stor25]] / totalEthRaised
            mem[164] = 96
            mem[196] = 22
            mem[228] = 'Ico participation mint'
            require ext_code.size(cofounditTokenAddress)
            call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
                 gas gas_remaining - 710 wei
                args stor15[stor25], icoSupply * participantContributionInEth[stor15[stor25]] / totalEthRaised, Array(len=22, data='Ico participation mint')
            require ext_call.success
            stor25++
        idx = idx + 1
        s = stor15[stor25]
        continue 
    if stor15[stor25]:
    if ext_code.size(cofounditTokenAddress):
        call cofounditTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        if ext_call.success:
            if ext_call.return_data[0] >= icoSupply:
            if ext_code.size(cofounditTokenAddress):
                call cofounditTokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_code.size(cofounditTokenAddress):
                        call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
                             gas gas_remaining - 710 wei
                            args multisigAddress, icoSupply - ext_call.return_data[0], Array(len=19, data='Mint division error')
                        if ext_call.success:
    revert
}

function _fallback() payable {
    require msg.value
    require not uint8(stor22.field_16)
    require block.number <= endBlock
    if not uint8(stor22.field_0):
        if block.number < startBlock:
            require stor13[address(msg.sender)]
        else:
            uint8(stor22.field_0) = 1
            mem[192] = uint256(stor26.field_0)
            idx = 192
            s = 0
            while stor26.length + 192 > idx + 32:
                mem[idx + 32] = stor26[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit ICOStarted(block.number, Array(len=stor26.length, data=mem[192 len stor26.length + (floor32(stor26.length - 1) + -stor26.length + 32 % 32)]));
    if not participantContributionInEth[address(msg.sender)]:
        stor15[stor14] = msg.sender
        stor14++
    if maxEthToRaise > totalEthRaised + msg.value:
        participantContributionInEth[address(msg.sender)] += msg.value
        totalEthRaised += msg.value
        if not uint8(stor22.field_8):
            if totalEthRaised >= minEthToRaise:
                mem[192] = uint256(stor27.field_0)
                idx = 192
                s = 0
                while stor27.length + 192 > idx + 32:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit ICOMinTresholdReached(block.number, Array(len=stor27.length, data=mem[192 len stor27.length + (floor32(stor27.length - 1) + -stor27.length + 32 % 32)]));
                Mask(248, 0, stor22.field_8) = 1
    else:
        participantContributionInEth[address(msg.sender)] = participantContributionInEth[address(msg.sender)] + maxEthToRaise - totalEthRaised
        totalEthRaised = maxEthToRaise
        Mask(240, 0, stor22.field_16) = 1
        mem[224] = uint256(stor29.field_0)
        idx = 224
        s = 0
        while stor29.length + 224 > idx + 32:
            mem[idx + 32] = stor29[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit ICOEndedSuccessfuly(block.number, totalEthRaised, Array(len=stor29.length, data=mem[224 len stor29.length + (floor32(stor29.length - 1) + -stor29.length + 32 % 32)]));
        call msg.sender with:
           value msg.value - maxEthToRaise + totalEthRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit ErrorSendingETH(msg.sender, msg.value - maxEthToRaise + totalEthRaised);
}

function claimReservedTokens(string arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == owner
    require uint8(stor22.field_16)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 160 len arg1.length % 32]) != sha3('Reserve'):
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == sha3('Cashila'):
            require arg3 <= cashilaTokenSupply - stor19
            require ext_code.size(cofounditTokenAddress)
            call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
                 gas gas_remaining - 710 wei
                args address(arg2), arg3, Array(len=27, data='Reserved tokens for cashila')
            require ext_call.success
            stor19 += arg3
        else:
            if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == sha3('Iconomi'):
                require arg3 <= iconomiTokenSupply - stor20
                require ext_code.size(cofounditTokenAddress)
                call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3, Array(len=27, data='Reserved tokens for iconomi')
                require ext_call.success
                stor20 += arg3
            else:
                require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg4.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == sha3('Core')
                require arg3 <= coreTeamTokenSupply - stor21
                require ext_code.size(cofounditTokenAddress)
                call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3, Array(len=34, data='Reserved tokens for cofoundit te', 'am')
                require ext_call.success
                stor21 += arg3
    else:
        require arg3 <= strategicReserveSupply - stor18
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 0xe67524a300000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 164] = arg2
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 196] = arg3
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 228] = 96
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 260] = arg4.length
        if arg4.length:
            mem[ceil32(arg1.length) + ceil32(arg4.length) + 292] = mem[ceil32(arg1.length) + 160]
            mem[ceil32(arg1.length) + ceil32(arg4.length) + 324 len floor32(arg4.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg4.length - 1)]
        require ext_code.size(cofounditTokenAddress)
        call cofounditTokenAddress.mintTokens(address rg1, uint256 rg2, string rg3) with:
             gas gas_remaining - 710 wei
            args address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg1.length) + ceil32(arg4.length) + 292 len arg4.length])
        require ext_call.success
        stor18 += arg3
}



}
