contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
uint256 stor16; offset 16
uint256 stor16; offset 8
uint256 stor17;
uint256 stor18;
uint8 stor19;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 11
    stor3.length.field_8 = 'BLUNT BUCKS' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'BBS' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor8 = 0
    stor9 = 0
    stor10 = 500000 * 10^18
    stor11 = 370285
    stor12 = 2252571
    stor13 = 2500000 * 10^18
    stor14 = 5 * 10^16
    stor15 = 10^17
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    Mask(240, 0, stor16.field_16) = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    require not msg.value
    stor8 = code.data[8591 len 20]
    stor9 = code.data[8623 len 20]
    stor6 = code.data[8643 len 32]
    stor7 = code.data[8675 len 32]
    return code.data[894 len 7685]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
address signerAddress;
uint256 etherCap;
uint256 transferLockup;
uint256 founderLockup;
uint256 bountyAllocation;
uint256 ecosystemAllocation;
uint256 founderAllocation;
uint8 stor16;
uint8 stor16; offset 8
uint8 stor16; offset 16
uint256 stor16; offset 16
uint256 stor16; offset 8
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint8 halted;

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function bountyAllocated() {
    return bool(uint8(stor16.field_0))
}

function signer() {
    return signerAddress
}

function decimals() {
    return decimals
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function startBlock() {
    return startBlock
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function etherCap() {
    return etherCap
}

function ecosystemAllocated() {
    return bool(uint8(stor16.field_8))
}

function founderAllocation() {
    return founderAllocation
}

function founderLockup() {
    return founderLockup
}

function symbol() {
    return symbol[0 len symbol.length]
}

function founderAllocated() {
    return bool(uint8(stor16.field_16))
}

function halted() {
    return bool(halted)
}

function ecosystemAllocation() {
    return ecosystemAllocation
}

function transferLockup() {
    return transferLockup
}

function presaleTokenSupply() {
    return presaleTokenSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function bountyAllocation() {
    return bountyAllocation
}

function _fallback() {
    revert
}

function halt() {
    require msg.sender == founderAddress
    halted = 1
}

function unhalt() {
    require msg.sender == founderAddress
    halted = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function testPrice(uint256 arg1) {
    if arg1 < startBlock:
        return 100
    if arg1 < startBlock + 250:
        return 170
    if arg1 < startBlock:
        return 100
    if arg1 > endBlock:
        return 100
    require endBlock + -startBlock + 1
    return ((67 * 4 * endBlock - arg1 / endBlock + -startBlock + 1 / 4) + 100)
}

function price() {
    if block.number < startBlock:
        return 100
    if block.number < startBlock + 250:
        return 170
    if block.number < startBlock:
        return 100
    if block.number > endBlock:
        return 100
    require endBlock + -startBlock + 1
    return ((67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 100)
}

function transfer(address arg1, uint256 arg2) {
    if block.number <= endBlock + transferLockup:
        require msg.sender == founderAddress
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number <= endBlock + transferLockup:
        require msg.sender == founderAddress
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateFounderTokens() {
    require msg.sender == founderAddress
    require block.number > endBlock + founderLockup
    require not uint8(stor16.field_16)
    require uint8(stor16.field_0)
    require uint8(stor16.field_8)
    require balanceOf[stor8] + (presaleTokenSupply * founderAllocation / 10^18) >= balanceOf[stor8]
    require balanceOf[stor8] + (presaleTokenSupply * founderAllocation / 10^18) >= presaleTokenSupply * founderAllocation / 10^18
    balanceOf[stor8] += presaleTokenSupply * founderAllocation / 10^18
    require totalSupply + (presaleTokenSupply * founderAllocation / 10^18) >= totalSupply
    require totalSupply + (presaleTokenSupply * founderAllocation / 10^18) >= presaleTokenSupply * founderAllocation / 10^18
    totalSupply += presaleTokenSupply * founderAllocation / 10^18
    Mask(240, 0, stor16.field_16) = 1
    emit AllocateFounderTokens(msg.sender);
}

function allocateBountyAndEcosystemTokens() {
    require msg.sender == founderAddress
    require block.number > endBlock
    require not uint8(stor16.field_0)
    require not uint8(stor16.field_8)
    presaleTokenSupply = totalSupply
    require balanceOf[stor8] + (presaleTokenSupply * ecosystemAllocation / 10^18) >= balanceOf[stor8]
    require balanceOf[stor8] + (presaleTokenSupply * ecosystemAllocation / 10^18) >= presaleTokenSupply * ecosystemAllocation / 10^18
    balanceOf[stor8] += presaleTokenSupply * ecosystemAllocation / 10^18
    require totalSupply + (presaleTokenSupply * ecosystemAllocation / 10^18) >= totalSupply
    require totalSupply + (presaleTokenSupply * ecosystemAllocation / 10^18) >= presaleTokenSupply * ecosystemAllocation / 10^18
    totalSupply += presaleTokenSupply * ecosystemAllocation / 10^18
    require balanceOf[stor8] + bountyAllocation >= balanceOf[stor8]
    require balanceOf[stor8] + bountyAllocation >= bountyAllocation
    balanceOf[stor8] += bountyAllocation
    require totalSupply + bountyAllocation >= totalSupply
    require totalSupply + bountyAllocation >= bountyAllocation
    totalSupply += bountyAllocation
    uint8(stor16.field_0) = 1
    Mask(248, 0, stor16.field_8) = 1
    emit AllocateBountyAndEcosystemTokens(msg.sender);
}

function buyRecipient(address arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    signer = erecover(hash, arg2 << 248, arg3, arg4) 
    require erecover.result
    require address(signer) == signerAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not halted
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 100 * msg.value / msg.value == 100
        require balanceOf[address(arg1)] + (100 * msg.value) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (100 * msg.value) >= 100 * msg.value
        balanceOf[address(arg1)] += 100 * msg.value
        require totalSupply + (100 * msg.value) >= totalSupply
        require totalSupply + (100 * msg.value) >= 100 * msg.value
        totalSupply += 100 * msg.value
        require presaleEtherRaised + msg.value >= presaleEtherRaised
        require presaleEtherRaised + msg.value >= msg.value
        presaleEtherRaised += msg.value
        call founderAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        emit Buy(msg.value, 100 * msg.value, arg1);
    else:
        if block.number < startBlock + 250:
            if msg.value:
                require msg.value
                require 170 * msg.value / msg.value == 170
            require balanceOf[address(arg1)] + (170 * msg.value) >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + (170 * msg.value) >= 170 * msg.value
            balanceOf[address(arg1)] += 170 * msg.value
            require totalSupply + (170 * msg.value) >= totalSupply
            require totalSupply + (170 * msg.value) >= 170 * msg.value
            totalSupply += 170 * msg.value
            require presaleEtherRaised + msg.value >= presaleEtherRaised
            require presaleEtherRaised + msg.value >= msg.value
            presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            emit Buy(msg.value, 170 * msg.value, arg1);
        else:
            if block.number < startBlock:
                if msg.value:
                    require msg.value
                    require 100 * msg.value / msg.value == 100
                require balanceOf[address(arg1)] + (100 * msg.value) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (100 * msg.value) >= 100 * msg.value
                balanceOf[address(arg1)] += 100 * msg.value
                require totalSupply + (100 * msg.value) >= totalSupply
                require totalSupply + (100 * msg.value) >= 100 * msg.value
                totalSupply += 100 * msg.value
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                call founderAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit Buy(msg.value, 100 * msg.value, arg1);
            else:
                if block.number > endBlock:
                    if msg.value:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                    require balanceOf[address(arg1)] + (100 * msg.value) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] + (100 * msg.value) >= 100 * msg.value
                    balanceOf[address(arg1)] += 100 * msg.value
                    require totalSupply + (100 * msg.value) >= totalSupply
                    require totalSupply + (100 * msg.value) >= 100 * msg.value
                    totalSupply += 100 * msg.value
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 100 * msg.value, arg1);
                else:
                    require endBlock + -startBlock + 1
                    if msg.value:
                        require msg.value
                        require (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) / msg.value == (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 100
                    require balanceOf[address(arg1)] + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] >= 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require totalSupply + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= totalSupply
                    require totalSupply >= 0
                    totalSupply = totalSupply + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), arg1);
}

function buy(uint8 arg1, bytes32 arg2, bytes32 arg3) {
    hash = sha256hash(msg.sender) 
    require sha256hash.result
    signer = erecover(hash, arg1 << 248, arg2, arg3) 
    require erecover.result
    require address(signer) == signerAddress
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not halted
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 100 * msg.value / msg.value == 100
        require balanceOf[address(msg.sender)] + (100 * msg.value) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (100 * msg.value) >= 100 * msg.value
        balanceOf[address(msg.sender)] += 100 * msg.value
        require totalSupply + (100 * msg.value) >= totalSupply
        require totalSupply + (100 * msg.value) >= 100 * msg.value
        totalSupply += 100 * msg.value
        require presaleEtherRaised + msg.value >= presaleEtherRaised
        require presaleEtherRaised + msg.value >= msg.value
        presaleEtherRaised += msg.value
        call founderAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        emit Buy(msg.value, 100 * msg.value, msg.sender);
    else:
        if block.number < startBlock + 250:
            if msg.value:
                require msg.value
                require 170 * msg.value / msg.value == 170
            require balanceOf[address(msg.sender)] + (170 * msg.value) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (170 * msg.value) >= 170 * msg.value
            balanceOf[address(msg.sender)] += 170 * msg.value
            require totalSupply + (170 * msg.value) >= totalSupply
            require totalSupply + (170 * msg.value) >= 170 * msg.value
            totalSupply += 170 * msg.value
            require presaleEtherRaised + msg.value >= presaleEtherRaised
            require presaleEtherRaised + msg.value >= msg.value
            presaleEtherRaised += msg.value
            call founderAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            emit Buy(msg.value, 170 * msg.value, msg.sender);
        else:
            if block.number < startBlock:
                if msg.value:
                    require msg.value
                    require 100 * msg.value / msg.value == 100
                require balanceOf[address(msg.sender)] + (100 * msg.value) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (100 * msg.value) >= 100 * msg.value
                balanceOf[address(msg.sender)] += 100 * msg.value
                require totalSupply + (100 * msg.value) >= totalSupply
                require totalSupply + (100 * msg.value) >= 100 * msg.value
                totalSupply += 100 * msg.value
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                call founderAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit Buy(msg.value, 100 * msg.value, msg.sender);
            else:
                if block.number > endBlock:
                    if msg.value:
                        require msg.value
                        require 100 * msg.value / msg.value == 100
                    require balanceOf[address(msg.sender)] + (100 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (100 * msg.value) >= 100 * msg.value
                    balanceOf[address(msg.sender)] += 100 * msg.value
                    require totalSupply + (100 * msg.value) >= totalSupply
                    require totalSupply + (100 * msg.value) >= 100 * msg.value
                    totalSupply += 100 * msg.value
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 100 * msg.value, msg.sender);
                else:
                    require endBlock + -startBlock + 1
                    if msg.value:
                        require msg.value
                        require (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) / msg.value == (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 100
                    require balanceOf[address(msg.sender)] + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require totalSupply + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= totalSupply
                    require totalSupply >= 0
                    totalSupply = totalSupply + (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), msg.sender);
}



}
