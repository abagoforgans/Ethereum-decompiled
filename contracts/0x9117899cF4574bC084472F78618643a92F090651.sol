contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    mem[96 len -10888] = code.data[12030 len -10888]
    mem[64] = -10792
    stor0 = msg.sender
    require mem[96] > 0
    require mem[128] > 0
    require mem[mem[160] + 96] > 0
    require mem[332 len 20]
    stor5 = mem[96]
    stor8 = mem[128]
    stor14 = mem[mem[160] + 96] - 1
    require mem[mem[192] + 96] == mem[mem[160] + 96]
    require mem[mem[224] + 96] == stor14 + 1
    idx = 0
    while idx <= stor14:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            s = stor9.length + sha3(9) + 1
            while sha3(9) + stor9.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require idx < mem[mem[160] + 96]
        if mem[(32 * idx) + mem[160] + 128]:
            require mem[(32 * idx) + mem[160] + 128]
            require 10^18 * mem[(32 * idx) + mem[160] + 128] / mem[(32 * idx) + mem[160] + 128] == 10^18
        stor9[stor9.length] = 10^18 * mem[(32 * idx) + mem[160] + 128]
        stor10.length++
        if not stor10.length <= stor10.length + 1:
            s = stor10.length + sha3(10) + 1
            while sha3(10) + stor10.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        require idx < mem[mem[192] + 96]
        stor10[stor10.length] = mem[(32 * idx) + mem[192] + 128]
        stor11.length++
        if not stor11.length <= stor11.length + 1:
            s = stor11.length + sha3(11) + 1
            while sha3(11) + stor11.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = 11
        require idx < mem[mem[224] + 96]
        stor11[stor11.length] = mem[(32 * idx) + mem[224] + 128]
        idx = idx + 1
        continue 
    stor15 = mem[256]
    create contract with 0 wei
                    code: code.data[8385 len 3645], 1
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).magic() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 'FUND' == Mask(32, 224, ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.blockTransfering() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    stor3 = mem[288]
    stor2 = mem[332 len 20]
    return code.data[1142 len 7243]
}



// =====================  Runtime code  =====================


address owner;
address fundcruTokenAddress;
address crowdsaleOwner;
uint256 fundcruVaultLockTime;
uint8 stor4;
uint256 duration;
uint256 startTime;
uint256 endTime;
uint256 minimumPurchaseInWei;
array of uint256 goalOfState;
array of uint256 durationOfState;
array of uint256 conversionRateOfState;
uint256 currentState;
uint256 currentStateStartTime;
uint256 lastState;
uint256 softCapCountDownTimer;

function crowdsaleActive() {
    return bool(stor4)
}

function currentState() {
    return currentState
}

function goalOfState(uint256 arg1) {
    require arg1 < goalOfState.length
    return goalOfState[arg1]
}

function duration() {
    return duration
}

function currentStateStartTime() {
    return currentStateStartTime
}

function lastState() {
    return lastState
}

function endTime() {
    return endTime
}

function fundcruVaultLockTime() {
    return fundcruVaultLockTime
}

function startTime() {
    return startTime
}

function crowdsaleOwner() {
    return crowdsaleOwner
}

function owner() {
    return owner
}

function minimumPurchaseInWei() {
    return minimumPurchaseInWei
}

function conversionRateOfState(uint256 arg1) {
    require arg1 < conversionRateOfState.length
    return conversionRateOfState[arg1]
}

function softCapCountDownTimer() {
    return softCapCountDownTimer
}

function fundcruToken() {
    return fundcruTokenAddress
}

function durationOfState(uint256 arg1) {
    require arg1 < durationOfState.length
    return durationOfState[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startCrowdsale() {
    require owner == msg.sender
    require not stor4
    stor4 = 1
    startTime = block.timestamp
    require duration + block.timestamp >= block.timestamp
    endTime = duration + block.timestamp
    currentState = 0
    currentStateStartTime = startTime
}

function withdrawTokens() {
    require owner == msg.sender
    require not stor4
    require block.timestamp > fundcruVaultLockTime
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args crowdsaleOwner, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args crowdsaleOwner
    require ext_call.success
}

function endCrowdsale() {
    require owner == msg.sender
    require stor4
    stor4 = 0
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args crowdsaleOwner, ext_call.return_data[0] / 10
    require ext_call.success
    require ext_call.return_data[0] / 10 <= ext_call.return_data[0]
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] / 10)
    require ext_call.success
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.unblockTransfer() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp + fundcruVaultLockTime >= fundcruVaultLockTime
    fundcruVaultLockTime += block.timestamp
}

function buyTokens(address arg1) payable {
    require currentState >= 0
    require currentState <= lastState
    require block.timestamp >= currentStateStartTime
    if currentState != lastState:
        idx = currentState
        s = 0
        while idx < lastState:
            require idx < durationOfState.length
            mem[0] = 10
            require durationOfState[idx] + s >= s
            if durationOfState[idx] + s < block.timestamp - currentStateStartTime:
                idx = idx + 1
                s = durationOfState[idx] + s
                continue 
            if idx != lastState:
                if idx != currentState:
                    emit StateTransition(currentState, idx, block.timestamp);
                    currentState = idx
                    currentStateStartTime = block.timestamp
            else:
                if lastState != currentState:
                    emit StateTransition(currentState, lastState, block.timestamp);
                    currentState = lastState
                    currentStateStartTime = block.timestamp
            require stor4
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value >= minimumPurchaseInWei
            require arg1
            require currentState < conversionRateOfState.length
            if msg.value:
                require msg.value
                require conversionRateOfState[stor12] * msg.value / msg.value == conversionRateOfState[stor12]
            require ext_code.size(fundcruTokenAddress)
            call fundcruTokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), conversionRateOfState[stor12] * msg.value
            require ext_call.success
            emit TokenPurchase(currentState, block.timestamp, msg.value, conversionRateOfState[stor12] * msg.value, msg.sender, arg1);
            require ext_code.size(fundcruTokenAddress)
            call fundcruTokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if currentState < lastState:
                idx = currentState
                while idx < lastState:
                    require idx < goalOfState.length
                    mem[0] = 9
                    if goalOfState[idx] <= ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    if idx != lastState:
                        if idx != currentState:
                            emit StateTransition(currentState, idx, block.timestamp);
                            currentState = idx
                            currentStateStartTime = block.timestamp
                    else:
                        if lastState != currentState:
                            emit StateTransition(currentState, lastState, block.timestamp);
                            currentState = lastState
                            currentStateStartTime = block.timestamp
                    call crowdsaleOwner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if lastState != lastState:
                    if currentState != currentState:
                        emit StateTransition(currentState, currentState, block.timestamp);
                        currentStateStartTime = block.timestamp
                else:
                    if lastState != currentState:
                        emit StateTransition(currentState, lastState, block.timestamp);
                        currentState = lastState
                        currentStateStartTime = block.timestamp
            call crowdsaleOwner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if idx != lastState:
            if currentState != 0:
                emit StateTransition(currentState, 0, block.timestamp);
                currentState = 0
                currentStateStartTime = block.timestamp
        else:
            if lastState != currentState:
                emit StateTransition(currentState, lastState, block.timestamp);
                currentState = lastState
                currentStateStartTime = block.timestamp
    else:
        require ext_code.size(fundcruTokenAddress)
        call fundcruTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require lastState - 1 < goalOfState.length
        if ext_call.return_data[0] >= goalOfState[stor14]:
            require block.timestamp < currentStateStartTime + softCapCountDownTimer
    require stor4
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= minimumPurchaseInWei
    require arg1
    require currentState < conversionRateOfState.length
    if msg.value:
        require msg.value
        require conversionRateOfState[stor12] * msg.value / msg.value == conversionRateOfState[stor12]
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), conversionRateOfState[stor12] * msg.value
    require ext_call.success
    emit TokenPurchase(currentState, block.timestamp, msg.value, conversionRateOfState[stor12] * msg.value, msg.sender, arg1);
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if currentState < lastState:
        idx = currentState
        while idx < lastState:
            require idx < goalOfState.length
            mem[0] = 9
            if goalOfState[idx] <= ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if idx != lastState:
                if idx != currentState:
                    emit StateTransition(currentState, idx, block.timestamp);
                    currentState = idx
                    currentStateStartTime = block.timestamp
            else:
                if lastState != currentState:
                    emit StateTransition(currentState, lastState, block.timestamp);
                    currentState = lastState
                    currentStateStartTime = block.timestamp
            call crowdsaleOwner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if lastState != lastState:
            if currentState != currentState:
                emit StateTransition(currentState, currentState, block.timestamp);
                currentStateStartTime = block.timestamp
        else:
            if lastState != currentState:
                emit StateTransition(currentState, lastState, block.timestamp);
                currentState = lastState
                currentStateStartTime = block.timestamp
    call crowdsaleOwner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require currentState >= 0
    require currentState <= lastState
    require block.timestamp >= currentStateStartTime
    if currentState != lastState:
        idx = currentState
        s = 0
        while idx < lastState:
            require idx < durationOfState.length
            mem[0] = 10
            require durationOfState[idx] + s >= s
            if durationOfState[idx] + s < block.timestamp - currentStateStartTime:
                idx = idx + 1
                s = durationOfState[idx] + s
                continue 
            if idx != lastState:
                if idx != currentState:
                    emit StateTransition(currentState, idx, block.timestamp);
                    currentState = idx
                    currentStateStartTime = block.timestamp
            else:
                if lastState != currentState:
                    emit StateTransition(currentState, lastState, block.timestamp);
                    currentState = lastState
                    currentStateStartTime = block.timestamp
            require stor4
            require block.timestamp >= startTime
            require block.timestamp <= endTime
            require msg.value >= minimumPurchaseInWei
            require msg.sender
            require currentState < conversionRateOfState.length
            if msg.value:
                require msg.value
                require conversionRateOfState[stor12] * msg.value / msg.value == conversionRateOfState[stor12]
            require ext_code.size(fundcruTokenAddress)
            call fundcruTokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, conversionRateOfState[stor12] * msg.value
            require ext_call.success
            emit TokenPurchase(currentState, block.timestamp, msg.value, conversionRateOfState[stor12] * msg.value, msg.sender, msg.sender);
            require ext_code.size(fundcruTokenAddress)
            call fundcruTokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if currentState < lastState:
                idx = currentState
                while idx < lastState:
                    require idx < goalOfState.length
                    mem[0] = 9
                    if goalOfState[idx] <= ext_call.return_data[0]:
                        idx = idx + 1
                        continue 
                    if idx != lastState:
                        if idx != currentState:
                            emit StateTransition(currentState, idx, block.timestamp);
                            currentState = idx
                            currentStateStartTime = block.timestamp
                    else:
                        if lastState != currentState:
                            emit StateTransition(currentState, lastState, block.timestamp);
                            currentState = lastState
                            currentStateStartTime = block.timestamp
                    call crowdsaleOwner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if lastState != lastState:
                    if currentState != currentState:
                        emit StateTransition(currentState, currentState, block.timestamp);
                        currentStateStartTime = block.timestamp
                else:
                    if lastState != currentState:
                        emit StateTransition(currentState, lastState, block.timestamp);
                        currentState = lastState
                        currentStateStartTime = block.timestamp
            call crowdsaleOwner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if idx != lastState:
            if currentState != 0:
                emit StateTransition(currentState, 0, block.timestamp);
                currentState = 0
                currentStateStartTime = block.timestamp
        else:
            if lastState != currentState:
                emit StateTransition(currentState, lastState, block.timestamp);
                currentState = lastState
                currentStateStartTime = block.timestamp
    else:
        require ext_code.size(fundcruTokenAddress)
        call fundcruTokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require lastState - 1 < goalOfState.length
        if ext_call.return_data[0] >= goalOfState[stor14]:
            require block.timestamp < currentStateStartTime + softCapCountDownTimer
    require stor4
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= minimumPurchaseInWei
    require msg.sender
    require currentState < conversionRateOfState.length
    if msg.value:
        require msg.value
        require conversionRateOfState[stor12] * msg.value / msg.value == conversionRateOfState[stor12]
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, conversionRateOfState[stor12] * msg.value
    require ext_call.success
    emit TokenPurchase(currentState, block.timestamp, msg.value, conversionRateOfState[stor12] * msg.value, msg.sender, msg.sender);
    require ext_code.size(fundcruTokenAddress)
    call fundcruTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if currentState < lastState:
        idx = currentState
        while idx < lastState:
            require idx < goalOfState.length
            mem[0] = 9
            if goalOfState[idx] <= ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if idx != lastState:
                if idx != currentState:
                    emit StateTransition(currentState, idx, block.timestamp);
                    currentState = idx
                    currentStateStartTime = block.timestamp
            else:
                if lastState != currentState:
                    emit StateTransition(currentState, lastState, block.timestamp);
                    currentState = lastState
                    currentStateStartTime = block.timestamp
            call crowdsaleOwner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        if lastState != lastState:
            if currentState != currentState:
                emit StateTransition(currentState, currentState, block.timestamp);
                currentStateStartTime = block.timestamp
        else:
            if lastState != currentState:
                emit StateTransition(currentState, lastState, block.timestamp);
                currentState = lastState
                currentStateStartTime = block.timestamp
    call crowdsaleOwner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
