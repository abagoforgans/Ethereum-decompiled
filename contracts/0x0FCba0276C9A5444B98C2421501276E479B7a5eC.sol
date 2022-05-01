contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4; offset 1
uint256 stor4;
uint256 stor5;
uint16 stor8;
uint16 stor8; offset 16
uint16 stor8; offset 32
uint16 stor8; offset 48
uint32 stor8;
uint32 stor8; offset 32
address stor8; offset 72
uint256 stor8; offset 64
address stor9;
mapping of struct stor10;

function _fallback() payable {
    stor3 = 0
    uint256(stor4.field_0) = 21000000000 * 10^18
    uint16(stor8.field_0) = 6078
    uint16(stor8.field_16) = 0
    uint16(stor8.field_32) = 1216
    uint16(stor8.field_48) = 0
    Mask(192, 0, stor8.field_64) = 0
    require not msg.value
    mem[64] = 160
    stor1 = block.timestamp
    stor2 = block.timestamp + (6720 * 24 * 3600)
    address(stor8.field_72) = code.data[4266 len 20]
    stor9 = code.data[4298 len 20]
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint32(idx) < 40:
        _9 = mem[64]
        mem[64] = mem[64] + 96
        mem[_9] = block.timestamp + uint32(168 * 24 * 3600 * idx)
        mem[_9 + 32] = block.timestamp + uint32((168 * 24 * 3600 * idx) + (168 * 24 * 3600))
        mem[_9 + 64] = uint32(uint32(stor8.field_0) + (uint32(stor8.field_32) * idx))
        mem[0] = uint32(idx)
        mem[32] = 10
        stor10[idx << 224].field_0 = block.timestamp + uint32(168 * 24 * 3600 * idx)
        stor10[idx << 224].field_256 = block.timestamp + uint32((168 * 24 * 3600 * idx) + (168 * 24 * 3600))
        stor10[idx << 224].field_512 = uint32(uint32(stor8.field_0) + (uint32(stor8.field_32) * idx))
        s = block.timestamp + uint32((168 * 24 * 3600 * idx) + (168 * 24 * 3600))
        s = block.timestamp + uint32(168 * 24 * 3600 * idx)
        s = uint32(stor8.field_0) + (uint32(stor8.field_32) * idx)
        idx = idx + 1
        continue 
    stor5 = uint255(stor4.field_1)
    return code.data[695 len 3559]
}



// =====================  Runtime code  =====================


address stor0;
uint256 startDate;
uint256 endDate;
uint256 weekNo;
uint256 allocatedToken;
bool stor5; offset 255
uint256 stor5;
uint256 stor5;
uint256 stor6;
uint256 ethRaised;
uint8 stor8; offset 64
uint32 tokenRate;
uint32 appreciationRate; offset 32
address founderAddress; offset 72
uint256 stor8; offset 64
address beneficiaryAddress;
mapping of struct weeklyRate;

function startDate() {
    return startDate
}

function tokenRate() {
    return tokenRate
}

function founderAddress() {
    return founderAddress
}

function getWeekNo() {
    return weekNo
}

function appreciationRate() {
    return appreciationRate
}

function weeklyRate(uint256 arg1) {
    return weeklyRate[arg1].field_0, weeklyRate[arg1].field_256, weeklyRate[arg1].field_512
}

function endDate() {
    return endDate
}

function beneficiaryAddress() {
    return beneficiaryAddress
}

function allocatedToken() {
    return allocatedToken
}

function ethRaised() {
    return ethRaised
}

function setTokenAddress(address arg1) {
    require msg.sender == founderAddress
    require not uint8(stor8.field_64)
    stor0 = arg1
    Mask(192, 0, stor8.field_64) = Mask(192, 0, not bool(uint8(stor8.field_64)))
    return 1
}

function endCrowdfund() {
    require msg.sender == founderAddress
    require bool(uint8(stor8.field_64)) == 1
    require block.timestamp > endDate
    require ext_code.size(stor0)
    call stor0.burnToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require bool(uint8(stor8.field_64)) == 1
    require arg1
    if block.timestamp > weeklyRate[stor3].field_256:
        if block.timestamp > weeklyRate[stor3 + 1].field_256:
            uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
            bool(stor5.field_255) = 0
            stor6 = 0
            require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
            weekNo += block.timestamp - startDate / 168 * 24 * 3600
            emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
            require weeklyRate[stor3].field_512
            if msg.value / weeklyRate[stor3].field_512:
                require msg.value / weeklyRate[stor3].field_512
                require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
            require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_call.success
            require ext_call.return_data[0]
            require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
            stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_code.size(stor0)
            call stor0.changeSupply(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            require ext_call.success
            require ethRaised + msg.value >= ethRaised
            ethRaised += msg.value
            emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), arg1);
        else:
            if block.timestamp >= weeklyRate[stor3 + 1].field_0:
                weekNo++
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weeklyRate[stor3 + 1].field_512
                if msg.value / weeklyRate[stor3 + 1].field_512:
                    require msg.value / weeklyRate[stor3 + 1].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512 / msg.value / weeklyRate[stor3 + 1].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512), arg1);
            else:
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                weekNo += block.timestamp - startDate / 168 * 24 * 3600
                emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                require weeklyRate[stor3].field_512
                if msg.value / weeklyRate[stor3].field_512:
                    require msg.value / weeklyRate[stor3].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), arg1);
    else:
        if block.timestamp >= weeklyRate[stor3].field_0:
            require weeklyRate[stor3].field_512
            if msg.value / weeklyRate[stor3].field_512:
                require msg.value / weeklyRate[stor3].field_512
                require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
            require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_call.success
            require ext_call.return_data[0]
            require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
            stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_code.size(stor0)
            call stor0.changeSupply(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            require ext_call.success
            require ethRaised + msg.value >= ethRaised
            ethRaised += msg.value
            emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), arg1);
        else:
            if block.timestamp > weeklyRate[stor3 + 1].field_256:
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                weekNo += block.timestamp - startDate / 168 * 24 * 3600
                emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                require weeklyRate[stor3].field_512
                if msg.value / weeklyRate[stor3].field_512:
                    require msg.value / weeklyRate[stor3].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), arg1);
            else:
                if block.timestamp >= weeklyRate[stor3 + 1].field_0:
                    weekNo++
                    uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                    bool(stor5.field_255) = 0
                    stor6 = 0
                    require weeklyRate[stor3 + 1].field_512
                    if msg.value / weeklyRate[stor3 + 1].field_512:
                        require msg.value / weeklyRate[stor3 + 1].field_512
                        require 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512 / msg.value / weeklyRate[stor3 + 1].field_512 == 100 * 10^6
                    require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                    require ext_call.success
                    require ext_call.return_data[0]
                    require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512) >= stor6
                    stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                    require ext_code.size(stor0)
                    call stor0.changeSupply(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                    require ext_call.success
                    require ethRaised + msg.value >= ethRaised
                    ethRaised += msg.value
                    emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512), arg1);
                else:
                    uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                    bool(stor5.field_255) = 0
                    stor6 = 0
                    require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                    weekNo += block.timestamp - startDate / 168 * 24 * 3600
                    emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                    require weeklyRate[stor3].field_512
                    if msg.value / weeklyRate[stor3].field_512:
                        require msg.value / weeklyRate[stor3].field_512
                        require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                    require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                    require ext_call.success
                    require ext_call.return_data[0]
                    require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                    stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                    require ext_code.size(stor0)
                    call stor0.changeSupply(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                    require ext_call.success
                    require ethRaised + msg.value >= ethRaised
                    ethRaised += msg.value
                    emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require bool(uint8(stor8.field_64)) == 1
    require msg.sender
    if block.timestamp > weeklyRate[stor3].field_256:
        if block.timestamp > weeklyRate[stor3 + 1].field_256:
            uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
            bool(stor5.field_255) = 0
            stor6 = 0
            require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
            weekNo += block.timestamp - startDate / 168 * 24 * 3600
            emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
            require weeklyRate[stor3].field_512
            if msg.value / weeklyRate[stor3].field_512:
                require msg.value / weeklyRate[stor3].field_512
                require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
            require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_call.success
            require ext_call.return_data[0]
            require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
            stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_code.size(stor0)
            call stor0.changeSupply(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            require ext_call.success
            require ethRaised + msg.value >= ethRaised
            ethRaised += msg.value
            emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), msg.sender);
        else:
            if block.timestamp >= weeklyRate[stor3 + 1].field_0:
                weekNo++
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weeklyRate[stor3 + 1].field_512
                if msg.value / weeklyRate[stor3 + 1].field_512:
                    require msg.value / weeklyRate[stor3 + 1].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512 / msg.value / weeklyRate[stor3 + 1].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512), msg.sender);
            else:
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                weekNo += block.timestamp - startDate / 168 * 24 * 3600
                emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                require weeklyRate[stor3].field_512
                if msg.value / weeklyRate[stor3].field_512:
                    require msg.value / weeklyRate[stor3].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), msg.sender);
    else:
        if block.timestamp >= weeklyRate[stor3].field_0:
            require weeklyRate[stor3].field_512
            if msg.value / weeklyRate[stor3].field_512:
                require msg.value / weeklyRate[stor3].field_512
                require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
            require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_call.success
            require ext_call.return_data[0]
            require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
            stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
            require ext_code.size(stor0)
            call stor0.changeSupply(uint256 arg1) with:
                 gas gas_remaining - 710 wei
                args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
            require ext_call.success
            require ethRaised + msg.value >= ethRaised
            ethRaised += msg.value
            emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), msg.sender);
        else:
            if block.timestamp > weeklyRate[stor3 + 1].field_256:
                uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                bool(stor5.field_255) = 0
                stor6 = 0
                require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                weekNo += block.timestamp - startDate / 168 * 24 * 3600
                emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                require weeklyRate[stor3].field_512
                if msg.value / weeklyRate[stor3].field_512:
                    require msg.value / weeklyRate[stor3].field_512
                    require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_call.success
                require ext_call.return_data[0]
                require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                require ext_code.size(stor0)
                call stor0.changeSupply(uint256 arg1) with:
                     gas gas_remaining - 710 wei
                    args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                require ext_call.success
                require ethRaised + msg.value >= ethRaised
                ethRaised += msg.value
                emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), msg.sender);
            else:
                if block.timestamp >= weeklyRate[stor3 + 1].field_0:
                    weekNo++
                    uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                    bool(stor5.field_255) = 0
                    stor6 = 0
                    require weeklyRate[stor3 + 1].field_512
                    if msg.value / weeklyRate[stor3 + 1].field_512:
                        require msg.value / weeklyRate[stor3 + 1].field_512
                        require 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512 / msg.value / weeklyRate[stor3 + 1].field_512 == 100 * 10^6
                    require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                    require ext_call.success
                    require ext_call.return_data[0]
                    require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512) >= stor6
                    stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512
                    require ext_code.size(stor0)
                    call stor0.changeSupply(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512)
                    require ext_call.success
                    require ethRaised + msg.value >= ethRaised
                    ethRaised += msg.value
                    emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3 + 1].field_512), msg.sender);
                else:
                    uint255(stor5.field_0) = (2 * uint256(stor5.field_0)) - stor6 / 2
                    bool(stor5.field_255) = 0
                    stor6 = 0
                    require weekNo + (block.timestamp - startDate / 168 * 24 * 3600) >= weekNo
                    weekNo += block.timestamp - startDate / 168 * 24 * 3600
                    emit LogWeekRate(weeklyRate[stor3].field_512, block.timestamp);
                    require weeklyRate[stor3].field_512
                    if msg.value / weeklyRate[stor3].field_512:
                        require msg.value / weeklyRate[stor3].field_512
                        require 100 * 10^6 * msg.value / weeklyRate[stor3].field_512 / msg.value / weeklyRate[stor3].field_512 == 100 * 10^6
                    require uint256(stor5.field_0) >= stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(stor0)
                    call stor0.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                    require ext_call.success
                    require ext_call.return_data[0]
                    require stor6 + (100 * 10^6 * msg.value / weeklyRate[stor3].field_512) >= stor6
                    stor6 += 100 * 10^6 * msg.value / weeklyRate[stor3].field_512
                    require ext_code.size(stor0)
                    call stor0.changeSupply(uint256 arg1) with:
                         gas gas_remaining - 710 wei
                        args (100 * 10^6 * msg.value / weeklyRate[stor3].field_512)
                    require ext_call.success
                    require ethRaised + msg.value >= ethRaised
                    ethRaised += msg.value
                    emit TokenBought((100 * 10^6 * msg.value / weeklyRate[stor3].field_512), msg.sender);
}



}
