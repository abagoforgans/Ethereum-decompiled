contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 17
    stor3.length.field_8 = 'Contingency Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'CTY' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor8 = 0
    stor9 = 850000 * 10^18
    stor10 = 185142
    stor11 = 1126285
    stor12 = 10^17
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    require not msg.value
    stor8 = code.data[6843 len 20]
    stor6 = code.data[6863 len 32]
    stor7 = code.data[6895 len 32]
    return code.data[779 len 6052]
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
uint256 etherCap;
uint256 transferLockup;
uint256 founderLockup;
uint256 founderAllocation;
uint8 stor13;
uint256 presaleTokenSupply;
uint256 presaleEtherRaised;
uint8 stor16;

function name() {
    return name[0 len name.length]
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
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
    return bool(stor13)
}

function halted() {
    return bool(stor16)
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

function halt() {
    require msg.sender == founderAddress
    stor16 = 1
}

function unhalt() {
    require msg.sender == founderAddress
    stor16 = 0
}

function changeFounder(address arg1) {
    require msg.sender == founderAddress
    founderAddress = arg1
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
    require not stor13
    require balanceOf[stor8] + (presaleTokenSupply * founderAllocation / 10^18) >= balanceOf[stor8]
    require balanceOf[stor8] + (presaleTokenSupply * founderAllocation / 10^18) >= presaleTokenSupply * founderAllocation / 10^18
    balanceOf[stor8] += presaleTokenSupply * founderAllocation / 10^18
    require totalSupply + (presaleTokenSupply * founderAllocation / 10^18) >= totalSupply
    require totalSupply + (presaleTokenSupply * founderAllocation / 10^18) >= presaleTokenSupply * founderAllocation / 10^18
    totalSupply += presaleTokenSupply * founderAllocation / 10^18
    stor13 = 1
    emit AllocateFounderTokens(msg.sender);
}

function buyRecipient(address arg1) {
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not stor16
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
             gas gas_remaining - 34050 wei
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
                 gas gas_remaining - 34050 wei
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
                     gas gas_remaining - 34050 wei
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
                         gas gas_remaining - 34050 wei
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
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    emit Buy(msg.value, (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), arg1);
}

function _fallback() {
    require block.number >= startBlock
    require block.number <= endBlock
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    require presaleEtherRaised + msg.value >= msg.value
    require presaleEtherRaised + msg.value <= etherCap
    require not stor16
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
             gas gas_remaining - 34050 wei
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
                 gas gas_remaining - 34050 wei
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
                     gas gas_remaining - 34050 wei
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
                         gas gas_remaining - 34050 wei
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
                         gas gas_remaining - 34050 wei
                    require ext_call.success
                    emit Buy(msg.value, (100 * msg.value) + (67 * 4 * endBlock - block.number / endBlock + -startBlock + 1 / 4 * msg.value), msg.sender);
}



}
