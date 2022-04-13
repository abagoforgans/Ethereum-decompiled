contract main {


// =======================  Init code  ======================


address stor2;
address stor5;
uint8 stor18;

function _fallback() {
    require code.data[4424 len 20]
    stor2 = msg.sender
    stor5 = code.data[4424 len 20]
    stor18 = 0
    return code.data[146 len 4266]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint256 maxDuration;
uint256 minStartDelay;
address owner;
address sysAddress;
address reservationAddress;
address walletAddress;
address easyMineTokenAddress;
uint256 startBlock;
uint256 endBlock;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stage;

function endBlock() {
    return endBlock
}

function reservationAddress() {
    return reservationAddress
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function minStartDelay() {
    return minStartDelay
}

function maxDuration() {
    return maxDuration
}

function owner() {
    return owner
}

function sys() {
    return sysAddress
}

function easyMineToken() {
    return easyMineTokenAddress
}

function stage() {
    require stage <= 4
    return stage
}

function priceThresholds(uint256 arg1) {
    require arg1 < 3
    return stor9[arg1], stor10[arg1], stor11[arg1]
}

function maxTokensSold() {
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = stor9[uint8(idx)] + s
        continue 
    return (stor9[uint8(None)] * None)
}

function scheduleStart(uint256 arg1) {
    require owner == msg.sender
    require stage <= 4
    require stage == 1
    require arg1 > block.number + minStartDelay
    startBlock = arg1
    endBlock = arg1 + maxDuration
    stage = 2
}

function totalTokensSold() {
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = s + stor11[uint8(idx)]
        continue 
    return (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None)
}

function updateStage() {
    require stage <= 4
    if stage == 2:
        if block.number >= startBlock:
            stage = 3
    require stage <= 4
    if stage == 3:
        if block.number >= endBlock:
            stage = 4
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x42966c68 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            emit IcoFinished(ext_call.return_data[0]);
    require stage <= 4
    return stage
}

function cleanup() {
    require owner == msg.sender
    require stage <= 4
    if stage == 2:
        if block.number >= startBlock:
            stage = 3
    require stage <= 4
    if stage == 3:
        if block.number >= endBlock:
            stage = 4
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x42966c68 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            emit IcoFinished(ext_call.return_data[0]);
    require stage <= 4
    require stage == 4
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setup(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require stage <= 4
    require not stage
    require arg1
    require arg2
    require arg3
    require arg4 > 0
    require arg5 > 0
    stor9.length = 2000000 * 10^18
    stor10.length = 7 * 10^14
    stor11.length = 0
    stor12 = 2000000 * 10^18
    stor13 = 75 * 10^13
    stor14 = 0
    stor15 = 23000000 * 10^18
    stor16 = 8 * 10^14
    stor17 = 0
    easyMineTokenAddress = arg1
    sysAddress = arg2
    reservationAddress = arg3
    minStartDelay = arg4
    maxDuration = arg5
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = stor9[uint8(idx)] + s
        continue 
    require ext_code.size(easyMineTokenAddress)
    call easyMineTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == stor9[uint8(None)] * None
    stage = 1
}

function reserveTokens(uint256 arg1) {
    require sysAddress == msg.sender
    require stage <= 4
    if stage == 2:
        if block.number >= startBlock:
            stage = 3
    require stage <= 4
    if stage == 3:
        if block.number >= endBlock:
            stage = 4
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x42966c68 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            emit IcoFinished(ext_call.return_data[0]);
    require stage <= 4
    require stage == 3
    require arg1 > 0
    s = 0
    s = 0
    idx = 0
    s = arg1
    while uint8(idx) < 3:
        require uint8(idx) < 3
        if s <= stor9[uint8(idx)] - stor11[uint8(idx)]:
            stor11[uint8(idx)] += s
            s = s
            s = stor9[uint8(idx)] - stor11[uint8(idx)]
            idx = idx + 1
            s = 0
            continue 
        stor11[uint8(idx)] = stor9[uint8(idx)]
        s = stor9[uint8(idx)] - stor11[uint8(idx)]
        s = stor9[uint8(idx)] - stor11[uint8(idx)]
        idx = idx + 1
        s = s - stor9[uint8(idx)] + stor11[uint8(idx)]
        continue 
    require ext_code.size(easyMineTokenAddress)
    call easyMineTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args reservationAddress, arg1 - s
    require ext_call.success
    require ext_call.return_data[0]
    idx = 0
    t = 0
    while uint8(idx) < 3:
        idx = idx + 1
        t = stor9[uint8(idx)] + t
        continue 
    idx = 0
    t = 0
    while uint8(idx) < 3:
        idx = idx + 1
        t = t + stor11[uint8(idx)]
        continue 
    if t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None == stor9[uint8(None)] * None:
        stage = 4
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        emit IcoFinished(ext_call.return_data[0]);
    emit TokensReserved((arg1 - s));
}

function buyTokens() payable {
    if calldata.size:
        require calldata.size == 4
    require stage <= 4
    if stage == 2:
        if block.number >= startBlock:
            stage = 3
    require stage <= 4
    if stage == 3:
        if block.number >= endBlock:
            stage = 4
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0x42966c68 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            emit IcoFinished(ext_call.return_data[0]);
    require stage <= 4
    require stage == 3
    require msg.value > 0
    s = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    u = msg.value
    while uint8(idx) < 3:
        require stor10[uint8(idx)]
        require uint8(idx) < 3
        if 10^18 * u / stor10[uint8(idx)] <= stor9[uint8(idx)] - stor11[uint8(idx)]:
            stor11[uint8(idx)] += 10^18 * u / stor10[uint8(idx)]
            s = 10^18 * u / stor10[uint8(idx)]
            t = 10^18 * u / stor10[uint8(idx)]
            t = stor9[uint8(idx)] - stor11[uint8(idx)]
            idx = idx + 1
            t = (10^18 * u / stor10[uint8(idx)]) + t
            u = 0
            continue 
        require uint8(idx) < 3
        stor11[uint8(idx)] = stor9[uint8(idx)]
        s = stor9[uint8(idx)] - stor11[uint8(idx)]
        t = 10^18 * u / stor10[uint8(idx)]
        t = stor9[uint8(idx)] - stor11[uint8(idx)]
        idx = idx + 1
        t = stor9[uint8(idx)] - stor11[uint8(idx)] + t
        u = u - ((stor9[uint8(idx)] * stor10[uint8(idx)]) - (stor11[uint8(idx)] * stor10[uint8(idx)]) / 10^18)
        continue 
    require t > 0
    if not u:
        call walletAddress with:
           value msg.value - u wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, t
        require ext_call.success
        require ext_call.return_data[0]
        idx = 0
        s = 0
        while uint8(idx) < 3:
            idx = idx + 1
            s = stor9[uint8(idx)] + s
            continue 
    else:
        call msg.sender with:
           value u wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call walletAddress with:
           value msg.value - u wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, t
        require ext_call.success
        require ext_call.return_data[0]
        idx = 0
        u = 0
        while uint8(idx) < 3:
            idx = idx + 1
            u = stor9[uint8(idx)] + u
            continue 
    idx = 0
    s = 0
    while uint8(idx) < 3:
        idx = idx + 1
        s = s + stor11[uint8(idx)]
        continue 
    if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None == stor9[uint8(None)] * None:
        stage = 4
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        emit IcoFinished(ext_call.return_data[0]);
    emit TokensSold(t, msg.sender);
}



}
