contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint128 stor15; offset 160
address stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint8 stor25;
uint256 stor25; offset 48
uint256 stor25; offset 40
uint256 stor25; offset 32
uint256 stor25; offset 24
uint256 stor25; offset 16
uint256 stor25; offset 8
uint256 stor26;
uint256 stor27;
uint8 stor28;
uint256 stor28; offset 8

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 1
    stor4.length.field_8 = 'D' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 1
    stor5.length.field_8 = 'D' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    address(stor15.field_0) = 0
    Mask(96, 0, stor15.field_160) = 0
    stor16 = 15000000 * 10^18
    stor17 = 3185142
    stor18 = 1126285
    stor19 = 2
    stor20 = 5
    stor21 = 8
    stor22 = 2500000 * 10^18
    stor23 = 5
    stor24 = 5
    uint8(stor25.field_0) = 0
    Mask(248, 0, stor25.field_8) = 0
    Mask(240, 0, stor25.field_16) = 0
    Mask(232, 0, stor25.field_24) = 0
    Mask(224, 0, stor25.field_32) = 0
    Mask(216, 0, stor25.field_40) = 0
    Mask(208, 0, stor25.field_48) = 0
    stor26 = 0
    stor27 = 0
    uint8(stor28.field_0) = 0
    Mask(248, 0, stor28.field_8) = 0
    stor3 = msg.sender
    return code.data[1350 len 10887]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 startBlock;
uint256 endBlock;
address founderAddress;
address owner;
address multisigAddress;
address developerAddress;
address rewardsAddress;
address ecosystemAddress;
uint8 rewardAddressesSet; offset 160
uint128 stor15; offset 160
address charityAddress;
uint256 etherCap;
uint256 transferLockup;
uint256 founderLockup;
uint256 rewardsAllocation;
uint256 developerAllocation;
uint256 founderAllocation;
uint256 bountyAllocation;
uint256 ecosystemAllocation;
uint256 sub_b053f822;
uint8 allocated;
uint8 bountyAllocated; offset 8
uint8 rewardsAllocated; offset 16
uint8 sub_15f26b90; offset 24
uint8 ecosystemAllocated; offset 32
uint8 founderAllocated; offset 40
uint8 sub_854432ca; offset 48
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint8 halted;
uint8 marketactive; offset 8
uint256 stor28; offset 8

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function sub_15f26b90(?) {
    return bool(sub_15f26b90)
}

function totalSupply() {
    return totalSupply
}

function bountyAllocated() {
    return bool(bountyAllocated)
}

function rewardsAllocated() {
    return bool(rewardsAllocated)
}

function decimals() {
    return decimals
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function multisig() {
    return multisigAddress
}

function startBlock() {
    return startBlock
}

function rewardsAllocation() {
    return rewardsAllocation
}

function founder() {
    return founderAddress
}

function developerAllocation() {
    return developerAllocation
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function etherCap() {
    return etherCap
}

function ecosystemAllocated() {
    return bool(ecosystemAllocated)
}

function founderAllocation() {
    return founderAllocation
}

function founderLockup() {
    return founderLockup
}

function sub_854432ca(?) {
    return bool(sub_854432ca)
}

function owner() {
    return owner
}

function charity() {
    return charityAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function founderAllocated() {
    return bool(founderAllocated)
}

function ecosystem() {
    return ecosystemAddress
}

function rewards() {
    return rewardsAddress
}

function sub_b053f822(?) {
    return sub_b053f822
}

function allocated() {
    return bool(allocated)
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

function marketactive() {
    return bool(marketactive)
}

function developer() {
    return developerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function rewardAddressesSet() {
    return bool(rewardAddressesSet)
}

function bountyAllocation() {
    return bountyAllocation
}

function changeMultisig(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function transferOwnership(address arg1) {
    if msg.sender == stor3:
        if arg1:
            stor3 = arg1
}

function sub_16a72531(?) {
    owner = msg.sender
    multisigAddress = arg1
    startBlock = arg2
    endBlock = arg3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function halt() {
    if founderAddress != msg.sender:
        if developerAddress != msg.sender:
            if ecosystemAddress != msg.sender:
                require msg.sender == charityAddress
    halted = 1
}

function unhalt() {
    if founderAddress != msg.sender:
        if developerAddress != msg.sender:
            if ecosystemAddress != msg.sender:
                require msg.sender == charityAddress
    halted = 0
}

function sub_3f020dc8(?) {
    require msg.sender == owner
    require not rewardAddressesSet
    founderAddress = arg1
    developerAddress = arg2
    rewardsAddress = arg3
    ecosystemAddress = arg4
    charityAddress = arg5
    Mask(96, 0, stor15.field_160) = 1
}

function testPrice(uint256 arg1) {
    if arg1 < startBlock:
        return 75
    if arg1 < startBlock + 250:
        return 125
    if arg1 < startBlock:
        return 75
    if arg1 > endBlock:
        return 75
    require endBlock + -startBlock + 1
    return ((34 * 4 * endBlock - arg1 / endBlock + -startBlock + 1 / 4) + 75)
}

function price() {
    if block.number < startBlock:
        return 75
    if block.number < startBlock + 250:
        return 125
    if block.number < startBlock:
        return 75
    if block.number > endBlock:
        return 75
    require endBlock + -startBlock + 1
    return ((34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 75)
}

function transfer(address arg1, uint256 arg2) {
    if block.number <= endBlock:
        require marketactive
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.number <= endBlock:
        require marketactive
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateTokens() {
    require founderAddress
    require developerAddress
    require rewardsAddress
    require ecosystemAddress
    require charityAddress
    if owner != msg.sender:
        if founderAddress != msg.sender:
            if developerAddress != msg.sender:
                if rewardsAddress != msg.sender:
                    if ecosystemAddress != msg.sender:
                        require msg.sender == charityAddress
    if block.number <= endBlock:
        require presaleEtherRaised >= etherCap
    require not allocated
    presaleTokenSupply = totalSupply
    require balanceOf[stor9] + (presaleTokenSupply * founderAllocation / 75) >= balanceOf[stor9]
    require balanceOf[stor9] + (presaleTokenSupply * founderAllocation / 75) >= presaleTokenSupply * founderAllocation / 75
    balanceOf[stor9] += presaleTokenSupply * founderAllocation / 75
    require totalSupply + (presaleTokenSupply * founderAllocation / 75) >= totalSupply
    require totalSupply + (presaleTokenSupply * founderAllocation / 75) >= presaleTokenSupply * founderAllocation / 75
    totalSupply += presaleTokenSupply * founderAllocation / 75
    require balanceOf[stor12] + (presaleTokenSupply * developerAllocation / 80) >= balanceOf[stor12]
    require balanceOf[stor12] + (presaleTokenSupply * developerAllocation / 80) >= presaleTokenSupply * developerAllocation / 80
    balanceOf[stor12] += presaleTokenSupply * developerAllocation / 80
    require totalSupply + (presaleTokenSupply * developerAllocation / 75) >= totalSupply
    require totalSupply + (presaleTokenSupply * developerAllocation / 75) >= presaleTokenSupply * developerAllocation / 75
    totalSupply += presaleTokenSupply * developerAllocation / 75
    require balanceOf[stor13] + (presaleTokenSupply * rewardsAllocation / 75) >= balanceOf[stor13]
    require balanceOf[stor13] + (presaleTokenSupply * rewardsAllocation / 75) >= presaleTokenSupply * rewardsAllocation / 75
    balanceOf[stor13] += presaleTokenSupply * rewardsAllocation / 75
    require totalSupply + (presaleTokenSupply * rewardsAllocation / 75) >= totalSupply
    require totalSupply + (presaleTokenSupply * rewardsAllocation / 75) >= presaleTokenSupply * rewardsAllocation / 75
    totalSupply += presaleTokenSupply * rewardsAllocation / 75
    require balanceOf[stor14] + (presaleTokenSupply * ecosystemAllocation / 75) >= balanceOf[stor14]
    require balanceOf[stor14] + (presaleTokenSupply * ecosystemAllocation / 75) >= presaleTokenSupply * ecosystemAllocation / 75
    balanceOf[stor14] += presaleTokenSupply * ecosystemAllocation / 75
    require totalSupply + (presaleTokenSupply * ecosystemAllocation / 75) >= totalSupply
    require totalSupply + (presaleTokenSupply * ecosystemAllocation / 75) >= presaleTokenSupply * ecosystemAllocation / 75
    totalSupply += presaleTokenSupply * ecosystemAllocation / 75
    require balanceOf[address(stor15.field_0)] + (presaleTokenSupply * sub_b053f822 / 75) >= balanceOf[address(stor15.field_0)]
    require balanceOf[address(stor15.field_0)] + (presaleTokenSupply * sub_b053f822 / 75) >= presaleTokenSupply * sub_b053f822 / 75
    balanceOf[address(stor15.field_0)] += presaleTokenSupply * sub_b053f822 / 75
    require totalSupply + (presaleTokenSupply * sub_b053f822 / 75) >= totalSupply
    require totalSupply + (presaleTokenSupply * sub_b053f822 / 75) >= presaleTokenSupply * sub_b053f822 / 75
    totalSupply += presaleTokenSupply * sub_b053f822 / 75
    allocated = 1
}

function buyRecipient(address arg1) {
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not halted
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 75 * msg.value / msg.value == 75
        require balanceOf[address(arg1)] + (75 * msg.value) >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] + (75 * msg.value) >= 75 * msg.value
        balanceOf[address(arg1)] += 75 * msg.value
        require totalSupply + (75 * msg.value) >= totalSupply
        require totalSupply + (75 * msg.value) >= 75 * msg.value
        totalSupply += 75 * msg.value
        require presaleEtherRaised + msg.value >= presaleEtherRaised
        require presaleEtherRaised + msg.value >= msg.value
        presaleEtherRaised += msg.value
        call multisigAddress with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        if presaleEtherRaised == etherCap:
            if not marketactive:
                stor28 = 1
        emit Buy(msg.value, 75 * msg.value, arg1);
    else:
        if block.number < startBlock + 250:
            if msg.value:
                require msg.value
                require 125 * msg.value / msg.value == 125
            require balanceOf[address(arg1)] + (125 * msg.value) >= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] + (125 * msg.value) >= 125 * msg.value
            balanceOf[address(arg1)] += 125 * msg.value
            require totalSupply + (125 * msg.value) >= totalSupply
            require totalSupply + (125 * msg.value) >= 125 * msg.value
            totalSupply += 125 * msg.value
            require presaleEtherRaised + msg.value >= presaleEtherRaised
            require presaleEtherRaised + msg.value >= msg.value
            presaleEtherRaised += msg.value
            call multisigAddress with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            if presaleEtherRaised == etherCap:
                if not marketactive:
                    stor28 = 1
            emit Buy(msg.value, 125 * msg.value, arg1);
        else:
            if block.number < startBlock:
                if msg.value:
                    require msg.value
                    require 75 * msg.value / msg.value == 75
                require balanceOf[address(arg1)] + (75 * msg.value) >= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] + (75 * msg.value) >= 75 * msg.value
                balanceOf[address(arg1)] += 75 * msg.value
                require totalSupply + (75 * msg.value) >= totalSupply
                require totalSupply + (75 * msg.value) >= 75 * msg.value
                totalSupply += 75 * msg.value
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                if presaleEtherRaised == etherCap:
                    if not marketactive:
                        stor28 = 1
                emit Buy(msg.value, 75 * msg.value, arg1);
            else:
                if block.number > endBlock:
                    if msg.value:
                        require msg.value
                        require 75 * msg.value / msg.value == 75
                    require balanceOf[address(arg1)] + (75 * msg.value) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] + (75 * msg.value) >= 75 * msg.value
                    balanceOf[address(arg1)] += 75 * msg.value
                    require totalSupply + (75 * msg.value) >= totalSupply
                    require totalSupply + (75 * msg.value) >= 75 * msg.value
                    totalSupply += 75 * msg.value
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, 75 * msg.value, arg1);
                else:
                    require endBlock + -startBlock + 1
                    if msg.value:
                        require msg.value
                        require (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) / msg.value == (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 75
                    require balanceOf[address(arg1)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] >= 0
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= totalSupply
                    require totalSupply >= 0
                    totalSupply = totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), arg1);
}

function buy() {
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not halted
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 75 * msg.value / msg.value == 75
        require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
        balanceOf[address(msg.sender)] += 75 * msg.value
        require totalSupply + (75 * msg.value) >= totalSupply
        require totalSupply + (75 * msg.value) >= 75 * msg.value
        totalSupply += 75 * msg.value
        require presaleEtherRaised + msg.value >= presaleEtherRaised
        require presaleEtherRaised + msg.value >= msg.value
        presaleEtherRaised += msg.value
        call multisigAddress with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        if presaleEtherRaised == etherCap:
            if not marketactive:
                stor28 = 1
        emit Buy(msg.value, 75 * msg.value, msg.sender);
    else:
        if block.number < startBlock + 250:
            if msg.value:
                require msg.value
                require 125 * msg.value / msg.value == 125
            require balanceOf[address(msg.sender)] + (125 * msg.value) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (125 * msg.value) >= 125 * msg.value
            balanceOf[address(msg.sender)] += 125 * msg.value
            require totalSupply + (125 * msg.value) >= totalSupply
            require totalSupply + (125 * msg.value) >= 125 * msg.value
            totalSupply += 125 * msg.value
            require presaleEtherRaised + msg.value >= presaleEtherRaised
            require presaleEtherRaised + msg.value >= msg.value
            presaleEtherRaised += msg.value
            call multisigAddress with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            if presaleEtherRaised == etherCap:
                if not marketactive:
                    stor28 = 1
            emit Buy(msg.value, 125 * msg.value, msg.sender);
        else:
            if block.number < startBlock:
                if msg.value:
                    require msg.value
                    require 75 * msg.value / msg.value == 75
                require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
                balanceOf[address(msg.sender)] += 75 * msg.value
                require totalSupply + (75 * msg.value) >= totalSupply
                require totalSupply + (75 * msg.value) >= 75 * msg.value
                totalSupply += 75 * msg.value
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                if presaleEtherRaised == etherCap:
                    if not marketactive:
                        stor28 = 1
                emit Buy(msg.value, 75 * msg.value, msg.sender);
            else:
                if block.number > endBlock:
                    if msg.value:
                        require msg.value
                        require 75 * msg.value / msg.value == 75
                    require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
                    balanceOf[address(msg.sender)] += 75 * msg.value
                    require totalSupply + (75 * msg.value) >= totalSupply
                    require totalSupply + (75 * msg.value) >= 75 * msg.value
                    totalSupply += 75 * msg.value
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, 75 * msg.value, msg.sender);
                else:
                    require endBlock + -startBlock + 1
                    if msg.value:
                        require msg.value
                        require (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) / msg.value == (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 75
                    require balanceOf[address(msg.sender)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= totalSupply
                    require totalSupply >= 0
                    totalSupply = totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), msg.sender);
}

function _fallback() {
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not halted
    if block.number < startBlock:
        if msg.value:
            require msg.value
            require 75 * msg.value / msg.value == 75
        require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
        balanceOf[address(msg.sender)] += 75 * msg.value
        require totalSupply + (75 * msg.value) >= totalSupply
        require totalSupply + (75 * msg.value) >= 75 * msg.value
        totalSupply += 75 * msg.value
        require presaleEtherRaised + msg.value >= presaleEtherRaised
        require presaleEtherRaised + msg.value >= msg.value
        presaleEtherRaised += msg.value
        call multisigAddress with:
           value msg.value wei
             gas gas_remaining - 34050 wei
        require ext_call.success
        if presaleEtherRaised == etherCap:
            if not marketactive:
                stor28 = 1
        emit Buy(msg.value, 75 * msg.value, msg.sender);
    else:
        if block.number < startBlock + 250:
            if msg.value:
                require msg.value
                require 125 * msg.value / msg.value == 125
            require balanceOf[address(msg.sender)] + (125 * msg.value) >= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] + (125 * msg.value) >= 125 * msg.value
            balanceOf[address(msg.sender)] += 125 * msg.value
            require totalSupply + (125 * msg.value) >= totalSupply
            require totalSupply + (125 * msg.value) >= 125 * msg.value
            totalSupply += 125 * msg.value
            require presaleEtherRaised + msg.value >= presaleEtherRaised
            require presaleEtherRaised + msg.value >= msg.value
            presaleEtherRaised += msg.value
            call multisigAddress with:
               value msg.value wei
                 gas gas_remaining - 34050 wei
            require ext_call.success
            if presaleEtherRaised == etherCap:
                if not marketactive:
                    stor28 = 1
            emit Buy(msg.value, 125 * msg.value, msg.sender);
        else:
            if block.number < startBlock:
                if msg.value:
                    require msg.value
                    require 75 * msg.value / msg.value == 75
                require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
                balanceOf[address(msg.sender)] += 75 * msg.value
                require totalSupply + (75 * msg.value) >= totalSupply
                require totalSupply + (75 * msg.value) >= 75 * msg.value
                totalSupply += 75 * msg.value
                require presaleEtherRaised + msg.value >= presaleEtherRaised
                require presaleEtherRaised + msg.value >= msg.value
                presaleEtherRaised += msg.value
                call multisigAddress with:
                   value msg.value wei
                     gas gas_remaining - 34050 wei
                require ext_call.success
                if presaleEtherRaised == etherCap:
                    if not marketactive:
                        stor28 = 1
                emit Buy(msg.value, 75 * msg.value, msg.sender);
            else:
                if block.number > endBlock:
                    if msg.value:
                        require msg.value
                        require 75 * msg.value / msg.value == 75
                    require balanceOf[address(msg.sender)] + (75 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] + (75 * msg.value) >= 75 * msg.value
                    balanceOf[address(msg.sender)] += 75 * msg.value
                    require totalSupply + (75 * msg.value) >= totalSupply
                    require totalSupply + (75 * msg.value) >= 75 * msg.value
                    totalSupply += 75 * msg.value
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, 75 * msg.value, msg.sender);
                else:
                    require endBlock + -startBlock + 1
                    if msg.value:
                        require msg.value
                        require (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) / msg.value == (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4) + 75
                    require balanceOf[address(msg.sender)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value) >= totalSupply
                    require totalSupply >= 0
                    totalSupply = totalSupply + (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value)
                    require presaleEtherRaised + msg.value >= presaleEtherRaised
                    require presaleEtherRaised + msg.value >= msg.value
                    presaleEtherRaised += msg.value
                    call multisigAddress with:
                       value msg.value wei
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    if presaleEtherRaised == etherCap:
                        if not marketactive:
                            stor28 = 1
                    emit Buy(msg.value, (75 * msg.value) + (34 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), msg.sender);
}



}
