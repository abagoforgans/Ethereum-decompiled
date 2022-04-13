contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor6;
uint256 stor9;
address stor12;

function _fallback() payable {
    stor6 = 0
    stor9 = 1000
    create contract with 0 wei
                    code: code.data[6035 len 2546]
    require create.new_address
    stor12 = address(create.new_address)
    stor0 = msg.sender
    return code.data[147 len 5888]
}



// =====================  Runtime code  =====================


address owner;
uint256 start;
uint256 totalPeriod;
uint256 totalHardCap;
uint256 totalInvested;
array of struct stages;
uint8 stor6;
address multisigWalletAddress; offset 8
address foundersTokensWalletAddress;
address bountyTokensWalletAddress;
uint256 percentRate;
uint256 foundersPercent;
uint256 bountyPercent;
address tokenAddress;

function stagesCount() {
    return stages.length
}

function foundersTokensWallet() {
    return foundersTokensWalletAddress
}

function totalInvested() {
    return totalInvested
}

function paused() {
    return bool(stor6)
}

function foundersPercent() {
    return foundersPercent
}

function totalHardCap() {
    return totalHardCap
}

function percentRate() {
    return percentRate
}

function stages(uint256 arg1) {
    require arg1 < stages.length
    return stages[arg1].field_0, stages[arg1].field_256, stages[arg1].field_512, stages[arg1].field_768, stages[arg1].field_1024
}

function owner() {
    return owner
}

function multisigWallet() {
    return multisigWalletAddress
}

function bountyTokensWallet() {
    return bountyTokensWalletAddress
}

function start() {
    return start
}

function bountyPercent() {
    return bountyPercent
}

function totalPeriod() {
    return totalPeriod
}

function token() {
    return tokenAddress
}

function setStart(uint256 arg1) {
    require owner == msg.sender
    start = arg1
}

function unpause() {
    require owner == msg.sender
    require stor6
    stor6 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor6
    stor6 = 1
    emit Pause()
}

function setMultisigWallet(address arg1) {
    require owner == msg.sender
    multisigWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setBountyTokensWallet(address arg1) {
    require owner == msg.sender
    bountyTokensWalletAddress = arg1
}

function setFoundersTokensWallet(address arg1) {
    require owner == msg.sender
    foundersTokensWalletAddress = arg1
}

function setBountyPercent(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 < percentRate
    bountyPercent = arg1
}

function setFoundersPercent(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 < percentRate
    foundersPercent = arg1
}

function lastSaleDate() {
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    return s
}

function changeStage(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg1 >= 0
    require arg1 < stages.length
    require stages[arg1].field_256 <= totalHardCap
    totalHardCap -= stages[arg1].field_256
    require stages[arg1].field_0 <= totalPeriod
    totalPeriod -= stages[arg1].field_0
    stages[arg1].field_256 = arg3
    stages[arg1].field_0 = arg2
    stages[arg1].field_512 = arg4
    require arg3 + totalHardCap >= totalHardCap
    totalHardCap += arg3
    require arg2 + totalPeriod >= totalPeriod
    totalPeriod += arg2
}

function clearStages() {
    require owner == msg.sender
    idx = 0
    while idx < stages.length:
        mem[0] = 5
        stages[idx].field_0 = 0
        stages[idx].field_256 = 0
        stages[idx].field_512 = 0
        stages[idx].field_768 = 0
        stages[idx].field_1024 = 0
        idx = idx + 1
        continue 
    stages.length = 0
    if not stages.length <= 0:
        idx = 0
        while 5 * stages.length > idx:
            stages[idx].field_0 = 0
            stages[idx].field_256 = 0
            stages[idx].field_512 = 0
            stages[idx].field_768 = 0
            stages[idx].field_1024 = 0
            idx = idx + 5
            continue 
    totalPeriod = 0
    totalHardCap = 0
}

function addStage(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    stages.length++
    if not stages.length <= stages.length + 1:
        idx = (5 * stages.length) + 5
        while 5 * stages.length > idx:
            stages[idx].field_0 = 0
            stages[idx].field_256 = 0
            stages[idx].field_512 = 0
            stages[idx].field_768 = 0
            stages[idx].field_1024 = 0
            idx = idx + 5
            continue 
    stages[stages.length].field_0 = arg1
    stages[stages.length].field_256 = arg2
    stages[stages.length].field_512 = arg3
    stages[stages.length].field_768 = 0
    stages[stages.length].field_1024 = 0
    require arg1 + totalPeriod >= totalPeriod
    totalPeriod += arg1
    require arg2 + totalHardCap >= totalHardCap
    totalHardCap += arg2
}

function removeStage(uint8 arg1) {
    require owner == msg.sender
    require arg1 >= 0
    require arg1 < stages.length
    require stages[arg1].field_256 <= totalHardCap
    totalHardCap -= stages[arg1].field_256
    require stages[arg1].field_0 <= totalPeriod
    totalPeriod -= stages[arg1].field_0
    require arg1 < stages.length
    stages[arg1].field_0 = 0
    stages[arg1].field_256 = 0
    stages[arg1].field_512 = 0
    stages[arg1].field_768 = 0
    stages[arg1].field_1024 = 0
    idx = arg1
    while idx < stages.length - 1:
        require idx + 1 < stages.length
        require idx < stages.length
        mem[0] = 5
        stages[idx].field_0 = stages[idx].field_1280
        stages[idx].field_256 = stages[idx].field_1536
        stages[idx].field_512 = stages[idx].field_1792
        stages[idx].field_768 = stages[idx].field_2048
        stages[idx].field_1024 = stages[idx].field_2304
        idx = idx + 1
        continue 
    stages.length--
    if not stages.length <= stages.length - 1:
        idx = (5 * stages.length) - 5
        while 5 * stages.length > idx:
            stages[idx].field_0 = 0
            stages[idx].field_256 = 0
            stages[idx].field_512 = 0
            stages[idx].field_768 = 0
            stages[idx].field_1024 = 0
            idx = idx + 5
            continue 
}

function insertStage(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    require arg1 < stages.length
    require arg2 + totalPeriod >= totalPeriod
    totalPeriod += arg2
    require arg3 + totalHardCap >= totalHardCap
    totalHardCap += arg3
    stages.length++
    if not stages.length <= stages.length + 1:
        idx = (5 * stages.length) + 5
        while 5 * stages.length > idx:
            stages[idx].field_0 = 0
            stages[idx].field_256 = 0
            stages[idx].field_512 = 0
            stages[idx].field_768 = 0
            stages[idx].field_1024 = 0
            idx = idx + 5
            continue 
    idx = stages.length - 2
    while idx > arg1:
        require idx < stages.length
        require idx + 1 < stages.length
        mem[0] = 5
        stages[idx].field_1280 = stages[idx].field_0
        stages[idx].field_1536 = stages[idx].field_256
        stages[idx].field_1792 = stages[idx].field_512
        stages[idx].field_2048 = stages[idx].field_768
        stages[idx].field_2304 = stages[idx].field_1024
        idx = idx - 1
        continue 
    require uint8(arg1 + 1) < stages.length
    stages[uint8(arg1 + 1)].field_0 = arg2
    stages[uint8(arg1 + 1)].field_256 = arg3
    stages[uint8(arg1 + 1)].field_512 = arg4
    stages[uint8(arg1 + 1)].field_768 = 0
    stages[uint8(arg1 + 1)].field_1024 = 0
}

function currentStage() {
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        if block.timestamp < s:
            if idx < stages.length:
                mem[0] = 5
                if (24 * 3600 * stages[idx].field_0) + s >= s:
                    idx = idx + 1
                    s = (24 * 3600 * stages[idx].field_0) + s
                    continue 
        else:
            if idx < stages.length:
                if block.timestamp < s + (24 * 3600 * stages[idx].field_0):
                    return idx
                if idx < stages.length:
                    mem[0] = 5
                    if (24 * 3600 * stages[idx].field_0) + s >= s:
                        idx = idx + 1
                        s = (24 * 3600 * stages[idx].field_0) + s
                        continue 
        revert
    return 1
}

function finishMinting() {
    require not stor6
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require (bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / ext_call.return_data[0] == bountyPercent + foundersPercent
    require percentRate - bountyPercent - foundersPercent
    require percentRate
    if ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate:
        require ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate
        require foundersPercent * ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate / ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate == foundersPercent
    require percentRate
    if ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate:
        require ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate
        require bountyPercent * ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate / ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate == bountyPercent
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args foundersTokensWalletAddress, foundersPercent * ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args bountyTokensWalletAddress, bountyPercent * ((bountyPercent * ext_call.return_data[0]) + (foundersPercent * ext_call.return_data[0]) / percentRate - bountyPercent - foundersPercent) + ext_call.return_data[0] / percentRate
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require not stor6
    require totalInvested <= totalHardCap
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        if block.timestamp < s:
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        if block.timestamp >= s + (24 * 3600 * stages[idx].field_0):
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if stages[idx].field_512:
            require stages[idx].field_512
            require msg.value * stages[idx].field_512 / stages[idx].field_512 == msg.value
        require stages.length > 0
        require block.timestamp >= start
        require stages.length > 0
        s = 0
        t = start
        while s < stages.length:
            if stages[s].field_768 >= stages[s].field_256:
                require s < stages.length
                mem[0] = 5
                s = s + 1
                t = stages[s].field_1024
                continue 
            require s < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[s].field_0) + t >= t
            s = s + 1
            t = (24 * 3600 * stages[s].field_0) + t
            continue 
        require block.timestamp < t
        s = 0
        t = start
        while s < stages.length:
            if stages[s].field_768 >= stages[s].field_256:
                require s < stages.length
                mem[0] = 5
                s = s + 1
                t = stages[s].field_1024
                continue 
            if block.timestamp < t:
                require s < stages.length
                mem[0] = 5
                require (24 * 3600 * stages[s].field_0) + t >= t
                s = s + 1
                t = (24 * 3600 * stages[s].field_0) + t
                continue 
            require s < stages.length
            if block.timestamp >= t + (24 * 3600 * stages[s].field_0):
                require s < stages.length
                mem[0] = 5
                require (24 * 3600 * stages[s].field_0) + t >= t
                s = s + 1
                t = (24 * 3600 * stages[s].field_0) + t
                continue 
            require msg.value + totalInvested >= totalInvested
            totalInvested += msg.value
            require s < stages.length
            require msg.value + stages[s].field_768 >= stages[s].field_768
            stages[s].field_768 += msg.value
            if msg.value + stages[s].field_768 >= stages[s].field_256:
                stages[s].field_1024 = block.timestamp
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stages[idx].field_512 / 10^18
            require ext_call.success
        require msg.value + totalInvested >= totalInvested
        totalInvested += msg.value
        require 1 < stages.length
        require msg.value + uint256(stages.field_2048) >= uint256(stages.field_2048)
        uint256(stages.field_2048) += msg.value
        if msg.value + uint256(stages.field_2048) >= uint256(stages.field_1536):
            uint256(stages.field_2304) = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stages[idx].field_512 / 10^18
        require ext_call.success
    require 1 < stages.length
    call multisigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if uint256(stages.field_1792):
        require uint256(stages.field_1792)
        require msg.value * uint256(stages.field_1792) / uint256(stages.field_1792) == msg.value
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        if block.timestamp < s:
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        if block.timestamp >= s + (24 * 3600 * stages[idx].field_0):
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require msg.value + totalInvested >= totalInvested
        totalInvested += msg.value
        require idx < stages.length
        require msg.value + stages[idx].field_768 >= stages[idx].field_768
        stages[idx].field_768 += msg.value
        if msg.value + stages[idx].field_768 >= stages[idx].field_256:
            stages[idx].field_1024 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * uint256(stages.field_1792) / 10^18
        require ext_call.success
    require msg.value + totalInvested >= totalInvested
    totalInvested += msg.value
    require 1 < stages.length
    require msg.value + uint256(stages.field_2048) >= uint256(stages.field_2048)
    uint256(stages.field_2048) += msg.value
    if msg.value + uint256(stages.field_2048) >= uint256(stages.field_1536):
        uint256(stages.field_2304) = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * uint256(stages.field_1792) / 10^18
    require ext_call.success
}

function createTokens() payable {
    require not stor6
    require totalInvested <= totalHardCap
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        if block.timestamp < s:
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        if block.timestamp >= s + (24 * 3600 * stages[idx].field_0):
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        call multisigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if stages[idx].field_512:
            require stages[idx].field_512
            require msg.value * stages[idx].field_512 / stages[idx].field_512 == msg.value
        require stages.length > 0
        require block.timestamp >= start
        require stages.length > 0
        s = 0
        t = start
        while s < stages.length:
            if stages[s].field_768 >= stages[s].field_256:
                require s < stages.length
                mem[0] = 5
                s = s + 1
                t = stages[s].field_1024
                continue 
            require s < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[s].field_0) + t >= t
            s = s + 1
            t = (24 * 3600 * stages[s].field_0) + t
            continue 
        require block.timestamp < t
        s = 0
        t = start
        while s < stages.length:
            if stages[s].field_768 >= stages[s].field_256:
                require s < stages.length
                mem[0] = 5
                s = s + 1
                t = stages[s].field_1024
                continue 
            if block.timestamp < t:
                require s < stages.length
                mem[0] = 5
                require (24 * 3600 * stages[s].field_0) + t >= t
                s = s + 1
                t = (24 * 3600 * stages[s].field_0) + t
                continue 
            require s < stages.length
            if block.timestamp >= t + (24 * 3600 * stages[s].field_0):
                require s < stages.length
                mem[0] = 5
                require (24 * 3600 * stages[s].field_0) + t >= t
                s = s + 1
                t = (24 * 3600 * stages[s].field_0) + t
                continue 
            require msg.value + totalInvested >= totalInvested
            totalInvested += msg.value
            require s < stages.length
            require msg.value + stages[s].field_768 >= stages[s].field_768
            stages[s].field_768 += msg.value
            if msg.value + stages[s].field_768 >= stages[s].field_256:
                stages[s].field_1024 = block.timestamp
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stages[idx].field_512 / 10^18
            require ext_call.success
        require msg.value + totalInvested >= totalInvested
        totalInvested += msg.value
        require 1 < stages.length
        require msg.value + uint256(stages.field_2048) >= uint256(stages.field_2048)
        uint256(stages.field_2048) += msg.value
        if msg.value + uint256(stages.field_2048) >= uint256(stages.field_1536):
            uint256(stages.field_2304) = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stages[idx].field_512 / 10^18
        require ext_call.success
    require 1 < stages.length
    call multisigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if uint256(stages.field_1792):
        require uint256(stages.field_1792)
        require msg.value * uint256(stages.field_1792) / uint256(stages.field_1792) == msg.value
    require stages.length > 0
    require block.timestamp >= start
    require stages.length > 0
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        require idx < stages.length
        mem[0] = 5
        require (24 * 3600 * stages[idx].field_0) + s >= s
        idx = idx + 1
        s = (24 * 3600 * stages[idx].field_0) + s
        continue 
    require block.timestamp < s
    idx = 0
    s = start
    while idx < stages.length:
        if stages[idx].field_768 >= stages[idx].field_256:
            require idx < stages.length
            mem[0] = 5
            idx = idx + 1
            s = stages[idx].field_1024
            continue 
        if block.timestamp < s:
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require idx < stages.length
        if block.timestamp >= s + (24 * 3600 * stages[idx].field_0):
            require idx < stages.length
            mem[0] = 5
            require (24 * 3600 * stages[idx].field_0) + s >= s
            idx = idx + 1
            s = (24 * 3600 * stages[idx].field_0) + s
            continue 
        require msg.value + totalInvested >= totalInvested
        totalInvested += msg.value
        require idx < stages.length
        require msg.value + stages[idx].field_768 >= stages[idx].field_768
        stages[idx].field_768 += msg.value
        if msg.value + stages[idx].field_768 >= stages[idx].field_256:
            stages[idx].field_1024 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * uint256(stages.field_1792) / 10^18
        require ext_call.success
    require msg.value + totalInvested >= totalInvested
    totalInvested += msg.value
    require 1 < stages.length
    require msg.value + uint256(stages.field_2048) >= uint256(stages.field_2048)
    uint256(stages.field_2048) += msg.value
    if msg.value + uint256(stages.field_2048) >= uint256(stages.field_1536):
        uint256(stages.field_2304) = block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * uint256(stages.field_1792) / 10^18
    require ext_call.success
}



}
