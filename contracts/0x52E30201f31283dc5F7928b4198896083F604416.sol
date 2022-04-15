contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint8 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint8 stor19;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'MOLD' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'MLD' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor12 = 2000000000 * 10^18
    stor13 = 200000000 * 10^18
    stor14 = 300000000 * 10^18
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    require not msg.value
    stor11 = msg.sender
    stor10 = code.data[4908 len 20]
    stor6 = code.data[4864 len 32]
    stor7 = code.data[4864 len 32] + (120 * 24 * 3600)
    stor8 = code.data[4864 len 32] + (360 * 24 * 3600)
    stor9 = code.data[4864 len 32] + (2400 * 24 * 3600)
    return code.data[560 len 4304]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 startDatetime;
uint256 firstStageDatetime;
uint256 secondStageDatetime;
uint256 endDatetime;
address founderAddress;
address adminAddress;
uint256 coinAllocation;
uint256 angelAllocation;
uint256 founderAllocation;
uint8 founderAllocated;
uint256 saleTokenSupply;
uint256 salesVolume;
uint256 angelTokenSupply;
uint8 halted;

function name() {
    return name[0 len name.length]
}

function salesVolume() {
    return salesVolume
}

function secondStageDatetime() {
    return secondStageDatetime
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function founder() {
    return founderAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function angelAllocation() {
    return angelAllocation
}

function founderAllocation() {
    return founderAllocation
}

function symbol() {
    return symbol[0 len symbol.length]
}

function startDatetime() {
    return startDatetime
}

function founderAllocated() {
    return bool(founderAllocated)
}

function halted() {
    return bool(halted)
}

function saleTokenSupply() {
    return saleTokenSupply
}

function firstStageDatetime() {
    return firstStageDatetime
}

function endDatetime() {
    return endDatetime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function coinAllocation() {
    return coinAllocation
}

function angelTokenSupply() {
    return angelTokenSupply
}

function admin() {
    return adminAddress
}

function halt() {
    require adminAddress == msg.sender
    halted = 1
}

function unhalt() {
    require adminAddress == msg.sender
    halted = 0
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function price(uint256 arg1) {
    if arg1 < startDatetime:
        return 0
    if arg1 <= firstStageDatetime:
        return 15000
    if arg1 <= secondStageDatetime:
        return 12000
    if arg1 > endDatetime:
        return 0
    return 10000
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function allocateFounderTokens() {
    require adminAddress == msg.sender
    require block.timestamp > endDatetime
    require not founderAllocated
    require founderAllocation + balanceOf[stor10] >= balanceOf[stor10]
    require founderAllocation + balanceOf[stor10] >= founderAllocation
    balanceOf[stor10] += founderAllocation
    require founderAllocation + totalSupply >= totalSupply
    require founderAllocation + totalSupply >= founderAllocation
    totalSupply += founderAllocation
    founderAllocated = 1
    emit AllocateFounderTokens(founderAllocation, msg.sender);
}

function allocateAngelTokens(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 + angelTokenSupply >= angelTokenSupply
    require arg2 + angelTokenSupply >= arg2
    require arg2 + angelTokenSupply <= angelAllocation
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + angelTokenSupply >= angelTokenSupply
    require arg2 + angelTokenSupply >= arg2
    angelTokenSupply += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit AllocateAngelTokens(address(arg1), arg2, msg.sender);
}

function arrangeUnsoldTokens(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require block.timestamp > endDatetime
    require arg2 + saleTokenSupply >= saleTokenSupply
    require arg2 + saleTokenSupply >= arg2
    require arg2 + saleTokenSupply <= coinAllocation
    require balanceOf[address(arg1)] > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + saleTokenSupply >= saleTokenSupply
    require arg2 + saleTokenSupply >= arg2
    saleTokenSupply += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit AllocateUnsoldTokens(address(arg1), arg2, msg.sender);
}

function buyRecipient(address arg1) payable {
    require block.timestamp >= startDatetime
    require block.timestamp <= endDatetime
    require not halted
    if block.timestamp < startDatetime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require saleTokenSupply <= coinAllocation
        require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require msg.value + salesVolume >= salesVolume
        require msg.value + salesVolume >= msg.value
        salesVolume += msg.value
        call founderAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        emit Buy(msg.value, 0, arg1);
    else:
        if block.timestamp <= firstStageDatetime:
            if msg.value:
                require msg.value
                require 15000 * msg.value / msg.value == 15000
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply <= coinAllocation
            require (15000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            require (15000 * msg.value) + balanceOf[address(arg1)] >= 15000 * msg.value
            balanceOf[address(arg1)] += 15000 * msg.value
            require (15000 * msg.value) + totalSupply >= totalSupply
            require (15000 * msg.value) + totalSupply >= 15000 * msg.value
            totalSupply += 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            saleTokenSupply += 15000 * msg.value
            require msg.value + salesVolume >= salesVolume
            require msg.value + salesVolume >= msg.value
            salesVolume += msg.value
            call founderAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            emit Buy(msg.value, 15000 * msg.value, arg1);
        else:
            if block.timestamp <= secondStageDatetime:
                if msg.value:
                    require msg.value
                    require 12000 * msg.value / msg.value == 12000
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply <= coinAllocation
                require (12000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                require (12000 * msg.value) + balanceOf[address(arg1)] >= 12000 * msg.value
                balanceOf[address(arg1)] += 12000 * msg.value
                require (12000 * msg.value) + totalSupply >= totalSupply
                require (12000 * msg.value) + totalSupply >= 12000 * msg.value
                totalSupply += 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                saleTokenSupply += 12000 * msg.value
                require msg.value + salesVolume >= salesVolume
                require msg.value + salesVolume >= msg.value
                salesVolume += msg.value
                call founderAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit Buy(msg.value, 12000 * msg.value, arg1);
            else:
                if block.timestamp > endDatetime:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require saleTokenSupply <= coinAllocation
                    require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] >= 0
                    require totalSupply >= totalSupply
                    require totalSupply >= 0
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 0, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply <= coinAllocation
                    require (10000 * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                    require (10000 * msg.value) + balanceOf[address(arg1)] >= 10000 * msg.value
                    balanceOf[address(arg1)] += 10000 * msg.value
                    require (10000 * msg.value) + totalSupply >= totalSupply
                    require (10000 * msg.value) + totalSupply >= 10000 * msg.value
                    totalSupply += 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    saleTokenSupply += 10000 * msg.value
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 10000 * msg.value, arg1);
}

function buy() payable {
    require block.timestamp >= startDatetime
    require block.timestamp <= endDatetime
    require not halted
    if block.timestamp < startDatetime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require saleTokenSupply <= coinAllocation
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require msg.value + salesVolume >= salesVolume
        require msg.value + salesVolume >= msg.value
        salesVolume += msg.value
        call founderAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        emit Buy(msg.value, 0, msg.sender);
    else:
        if block.timestamp <= firstStageDatetime:
            if msg.value:
                require msg.value
                require 15000 * msg.value / msg.value == 15000
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply <= coinAllocation
            require (15000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (15000 * msg.value) + balanceOf[address(msg.sender)] >= 15000 * msg.value
            balanceOf[address(msg.sender)] += 15000 * msg.value
            require (15000 * msg.value) + totalSupply >= totalSupply
            require (15000 * msg.value) + totalSupply >= 15000 * msg.value
            totalSupply += 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            saleTokenSupply += 15000 * msg.value
            require msg.value + salesVolume >= salesVolume
            require msg.value + salesVolume >= msg.value
            salesVolume += msg.value
            call founderAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            emit Buy(msg.value, 15000 * msg.value, msg.sender);
        else:
            if block.timestamp <= secondStageDatetime:
                if msg.value:
                    require msg.value
                    require 12000 * msg.value / msg.value == 12000
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply <= coinAllocation
                require (12000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (12000 * msg.value) + balanceOf[address(msg.sender)] >= 12000 * msg.value
                balanceOf[address(msg.sender)] += 12000 * msg.value
                require (12000 * msg.value) + totalSupply >= totalSupply
                require (12000 * msg.value) + totalSupply >= 12000 * msg.value
                totalSupply += 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                saleTokenSupply += 12000 * msg.value
                require msg.value + salesVolume >= salesVolume
                require msg.value + salesVolume >= msg.value
                salesVolume += msg.value
                call founderAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit Buy(msg.value, 12000 * msg.value, msg.sender);
            else:
                if block.timestamp > endDatetime:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require saleTokenSupply <= coinAllocation
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    require totalSupply >= totalSupply
                    require totalSupply >= 0
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 0, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply <= coinAllocation
                    require (10000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (10000 * msg.value) + balanceOf[address(msg.sender)] >= 10000 * msg.value
                    balanceOf[address(msg.sender)] += 10000 * msg.value
                    require (10000 * msg.value) + totalSupply >= totalSupply
                    require (10000 * msg.value) + totalSupply >= 10000 * msg.value
                    totalSupply += 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    saleTokenSupply += 10000 * msg.value
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 10000 * msg.value, msg.sender);
}

function _fallback() payable {
    require block.timestamp >= startDatetime
    require block.timestamp <= endDatetime
    require not halted
    if block.timestamp < startDatetime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require saleTokenSupply <= coinAllocation
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require saleTokenSupply >= saleTokenSupply
        require saleTokenSupply >= 0
        require msg.value + salesVolume >= salesVolume
        require msg.value + salesVolume >= msg.value
        salesVolume += msg.value
        call founderAddress with:
           value msg.value wei
             gas gas_remaining - 34710 wei
        require ext_call.success
        emit Buy(msg.value, 0, msg.sender);
    else:
        if block.timestamp <= firstStageDatetime:
            if msg.value:
                require msg.value
                require 15000 * msg.value / msg.value == 15000
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply <= coinAllocation
            require (15000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require (15000 * msg.value) + balanceOf[address(msg.sender)] >= 15000 * msg.value
            balanceOf[address(msg.sender)] += 15000 * msg.value
            require (15000 * msg.value) + totalSupply >= totalSupply
            require (15000 * msg.value) + totalSupply >= 15000 * msg.value
            totalSupply += 15000 * msg.value
            require (15000 * msg.value) + saleTokenSupply >= saleTokenSupply
            require (15000 * msg.value) + saleTokenSupply >= 15000 * msg.value
            saleTokenSupply += 15000 * msg.value
            require msg.value + salesVolume >= salesVolume
            require msg.value + salesVolume >= msg.value
            salesVolume += msg.value
            call founderAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            emit Buy(msg.value, 15000 * msg.value, msg.sender);
        else:
            if block.timestamp <= secondStageDatetime:
                if msg.value:
                    require msg.value
                    require 12000 * msg.value / msg.value == 12000
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply <= coinAllocation
                require (12000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require (12000 * msg.value) + balanceOf[address(msg.sender)] >= 12000 * msg.value
                balanceOf[address(msg.sender)] += 12000 * msg.value
                require (12000 * msg.value) + totalSupply >= totalSupply
                require (12000 * msg.value) + totalSupply >= 12000 * msg.value
                totalSupply += 12000 * msg.value
                require (12000 * msg.value) + saleTokenSupply >= saleTokenSupply
                require (12000 * msg.value) + saleTokenSupply >= 12000 * msg.value
                saleTokenSupply += 12000 * msg.value
                require msg.value + salesVolume >= salesVolume
                require msg.value + salesVolume >= msg.value
                salesVolume += msg.value
                call founderAddress with:
                   value msg.value wei
                     gas gas_remaining - 34710 wei
                require ext_call.success
                emit Buy(msg.value, 12000 * msg.value, msg.sender);
            else:
                if block.timestamp > endDatetime:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require saleTokenSupply <= coinAllocation
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] >= 0
                    require totalSupply >= totalSupply
                    require totalSupply >= 0
                    require saleTokenSupply >= saleTokenSupply
                    require saleTokenSupply >= 0
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 0, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply <= coinAllocation
                    require (10000 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    require (10000 * msg.value) + balanceOf[address(msg.sender)] >= 10000 * msg.value
                    balanceOf[address(msg.sender)] += 10000 * msg.value
                    require (10000 * msg.value) + totalSupply >= totalSupply
                    require (10000 * msg.value) + totalSupply >= 10000 * msg.value
                    totalSupply += 10000 * msg.value
                    require (10000 * msg.value) + saleTokenSupply >= saleTokenSupply
                    require (10000 * msg.value) + saleTokenSupply >= 10000 * msg.value
                    saleTokenSupply += 10000 * msg.value
                    require msg.value + salesVolume >= salesVolume
                    require msg.value + salesVolume >= msg.value
                    salesVolume += msg.value
                    call founderAddress with:
                       value msg.value wei
                         gas gas_remaining - 34710 wei
                    require ext_call.success
                    emit Buy(msg.value, 10000 * msg.value, msg.sender);
}



}
