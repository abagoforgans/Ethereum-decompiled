contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
mapping of struct stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor7 = 0
    stor10 = 0
    stor16 = 0
    stor17 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = code.data[6510 len 20]
    stor4 = code.data[6542 len 20]
    stor1 = code.data[6574 len 20]
    stor2 = code.data[6606 len 20]
    stor3 = code.data[6638 len 20]
    stor9 = code.data[6658 len 32]
    stor8 = code.data[6690 len 32]
    stor6 = code.data[6722 len 32]
    stor17++
    stor15[stor17].field_0 = 12090 * 10^18
    stor15[stor17].field_256 = 1450
    stor17++
    stor15[stor17].field_0 = 20590 * 10^18
    stor15[stor17].field_256 = 1350
    stor17++
    stor15[stor17].field_0 = 605 * 10^16 * 3600
    stor15[stor17].field_256 = 1200
    stor17++
    stor15[stor17].field_0 = 229070 * 10^18
    stor15[stor17].field_256 = 1190
    stor17++
    stor15[stor17].field_0 = 24160 * 10^18
    stor15[stor17].field_256 = 1180
    stor17++
    stor15[stor17].field_0 = 25350 * 10^18
    stor15[stor17].field_256 = 1170
    stor17++
    stor15[stor17].field_0 = 26540 * 10^18
    stor15[stor17].field_256 = 1160
    stor17++
    stor15[stor17].field_0 = 27730 * 10^18
    stor15[stor17].field_256 = 1150
    stor17++
    stor15[stor17].field_0 = 28920 * 10^18
    stor15[stor17].field_256 = 1140
    stor17++
    stor15[stor17].field_0 = 30110 * 10^18
    stor15[stor17].field_256 = 1130
    stor17++
    stor15[stor17].field_0 = 31300 * 10^18
    stor15[stor17].field_256 = 1120
    stor17++
    stor15[stor17].field_0 = 9025 * 10^15 * 3600
    stor15[stor17].field_256 = 1110
    stor17++
    stor15[stor17].field_0 = 33680 * 10^18
    stor15[stor17].field_256 = 1100
    stor17++
    stor15[stor17].field_0 = 34870 * 10^18
    stor15[stor17].field_256 = 1090
    stor17++
    stor15[stor17].field_0 = 34870 * 10^18
    stor15[stor17].field_256 = 1080
    stor17++
    stor15[stor17].field_0 = 36060 * 10^18
    stor15[stor17].field_256 = 1070
    stor17++
    stor15[stor17].field_0 = 37250 * 10^18
    stor15[stor17].field_256 = 1060
    stor17++
    stor15[stor17].field_0 = 38440 * 10^18
    stor15[stor17].field_256 = 1050
    stor17++
    stor15[stor17].field_0 = 39630 * 10^18
    stor15[stor17].field_256 = 1040
    stor17++
    stor15[stor17].field_0 = 40820 * 10^18
    stor15[stor17].field_256 = 1030
    stor17++
    stor15[stor17].field_0 = 42010 * 10^18
    stor15[stor17].field_256 = 1020
    stor17++
    stor15[stor17].field_0 = 12 * 10^18 * 24 * 3600
    stor15[stor17].field_256 = 1010
    stor17++
    stor15[stor17].field_0 = 44390 * 10^18
    stor15[stor17].field_256 = 1000
    stor18 = stor15[stor16].field_0
    return code.data[1536 len 4962]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
address stor3;
address bankAddress;
address tokenAddress;
uint256 maxTokensAmount;
uint256 issuedTokensAmount;
uint256 minBuyableAmount;
uint256 tokenRate;
uint8 stor10;
mapping of uint256 tokens;
mapping of uint8 stor12;
mapping of address receiver;
uint32 receiversCount;
mapping of struct rateBoundaries;
uint256 currentBoundary;
uint256 numOfBoundaries;
uint256 nextBoundaryAmount;

function maxTokensAmount() {
    return maxTokensAmount
}

function minBuyableAmount() {
    return minBuyableAmount
}

function tokenRate() {
    return tokenRate
}

function getReceiver(uint32 arg1) {
    require owner == msg.sender
    return receiver[arg1 << 224]
}

function rateBoundaries(uint256 arg1) {
    return rateBoundaries[arg1].field_0, rateBoundaries[arg1].field_256
}

function paused() {
    return bool(stor0)
}

function bankAddress() {
    return bankAddress
}

function isFinished() {
    return bool(stor10)
}

function owner() {
    return owner
}

function currentBoundary() {
    return currentBoundary
}

function getReceiversCount() {
    require owner == msg.sender
    return receiversCount
}

function numOfBoundaries() {
    return numOfBoundaries
}

function approved(address arg1) {
    return bool(stor12[arg1])
}

function tokens(address arg1) {
    return tokens[arg1]
}

function issuedTokensAmount() {
    return issuedTokensAmount
}

function nextBoundaryAmount() {
    return nextBoundaryAmount
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setTokenRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    tokenRate = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function approve(address arg1) {
    require owner == msg.sender
    require not stor0
    stor12[address(arg1)] = 1
}

function claim() {
    require not stor0
    require stor12[address(msg.sender)]
    require tokens[address(msg.sender)] > 0
    tokens[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args bankAddress, msg.sender, tokens[address(msg.sender)]
    require ext_call.success
    emit TokenSent(tokens[address(msg.sender)], msg.sender);
}

function claimOne(address arg1) {
    require owner == msg.sender
    require not stor0
    require stor12[address(arg1)]
    require tokens[address(arg1)] > 0
    tokens[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args bankAddress, address(arg1), tokens[address(arg1)]
    require ext_call.success
    emit TokenSent(tokens[address(arg1)], arg1);
}

function finish() {
    require owner == msg.sender
    require issuedTokensAmount <= maxTokensAmount
    require not stor10
    stor10 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args bankAddress, ext_call.return_data[0]
    require ext_call.success
}

function sub(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor0
    if tokenRate:
        require tokenRate
        require arg2 * tokenRate / tokenRate == arg2
    require tokens[address(arg1)] >= arg2 * tokenRate
    require arg2 * tokenRate <= tokens[address(arg1)]
    tokens[address(arg1)] += -1 * arg2 * tokenRate
    require arg2 * tokenRate <= issuedTokensAmount
    issuedTokensAmount += -1 * arg2 * tokenRate
    emit TokenSubtracted(arg2 * tokenRate, arg2, arg1);
}

function topUp(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor0
    if tokenRate:
        require tokenRate
        require arg2 * tokenRate / tokenRate == arg2
    require (arg2 * tokenRate) + issuedTokensAmount >= issuedTokensAmount
    issuedTokensAmount += arg2 * tokenRate
    require not stor0
    if not tokens[address(arg1)]:
        receiver[stor14] = arg1
        receiversCount = uint32(receiversCount + 1)
        stor12[address(arg1)] = 0
    require (arg2 * tokenRate) + tokens[address(arg1)] >= tokens[address(arg1)]
    tokens[address(arg1)] += arg2 * tokenRate
    if issuedTokensAmount >= nextBoundaryAmount:
        currentBoundary++
        if currentBoundary + 1 >= numOfBoundaries:
            nextBoundaryAmount = maxTokensAmount
        else:
            nextBoundaryAmount = rateBoundaries[stor16].field_0
            tokenRate = rateBoundaries[stor16].field_256
    emit TokenToppedUp(arg2 * tokenRate, arg2, arg1);
}

function add(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor10
    require issuedTokensAmount <= maxTokensAmount
    require not stor0
    if tokenRate:
        require tokenRate
        require arg2 * tokenRate / tokenRate == arg2
    require (arg2 * tokenRate) + issuedTokensAmount >= issuedTokensAmount
    issuedTokensAmount += arg2 * tokenRate
    require not stor0
    if not tokens[address(arg1)]:
        receiver[stor14] = arg1
        receiversCount = uint32(receiversCount + 1)
        stor12[address(arg1)] = 0
    require (arg2 * tokenRate) + tokens[address(arg1)] >= tokens[address(arg1)]
    tokens[address(arg1)] += arg2 * tokenRate
    if issuedTokensAmount >= nextBoundaryAmount:
        currentBoundary++
        if currentBoundary + 1 >= numOfBoundaries:
            nextBoundaryAmount = maxTokensAmount
        else:
            nextBoundaryAmount = rateBoundaries[stor16].field_0
            tokenRate = rateBoundaries[stor16].field_256
    emit TokenAdded(arg2 * tokenRate, arg2, arg1);
}

function claimAll() {
    require owner == msg.sender
    require not stor0
    s = 0
    idx = 0
    while uint32(idx) < receiversCount:
        mem[0] = receiver[idx << 224]
        mem[32] = 12
        if stor12[stor13[idx << 224]]:
            mem[0] = receiver[idx << 224]
            mem[32] = 11
            if tokens[stor13[idx << 224]] > 0:
                require not stor0
                require stor12[stor13[idx << 224]]
                require tokens[stor13[idx << 224]] > 0
                mem[0] = receiver[idx << 224]
                mem[32] = 11
                tokens[stor13[idx << 224]] = 0
                mem[100] = bankAddress
                mem[132] = receiver[idx << 224]
                mem[164] = tokens[stor13[idx << 224]]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args bankAddress, receiver[idx << 224], tokens[stor13[idx << 224]]
                require ext_call.success
                mem[96] = tokens[stor13[idx << 224]]
                emit TokenSent(tokens[stor13[idx << 224]], receiver[idx << 224]);
        s = receiver[idx << 224]
        idx = idx + 1
        continue 
}

function buy() payable {
    require not stor10
    require issuedTokensAmount <= maxTokensAmount
    require not stor0
    if not tokenRate:
        if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
            require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
            issuedTokensAmount += msg.value * tokenRate
            require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
            require not stor0
            if not tokens[address(msg.sender)]:
                receiver[stor14] = msg.sender
                receiversCount = uint32(receiversCount + 1)
                stor12[address(msg.sender)] = 0
            require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
            tokens[address(msg.sender)] += msg.value * tokenRate
            if issuedTokensAmount >= nextBoundaryAmount:
                currentBoundary++
                if currentBoundary + 1 >= numOfBoundaries:
                    nextBoundaryAmount = maxTokensAmount
                else:
                    nextBoundaryAmount = rateBoundaries[stor16].field_0
                    tokenRate = rateBoundaries[stor16].field_256
            emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor2 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor3 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
        if issuedTokensAmount <= maxTokensAmount:
            if tokenRate:
                if maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value:
                    if maxTokensAmount >= issuedTokensAmount:
                        issuedTokensAmount = maxTokensAmount
                        require maxTokensAmount <= maxTokensAmount
                        require not stor0
                        if not tokens[address(msg.sender)]:
                            receiver[stor14] = msg.sender
                            receiversCount = uint32(receiversCount + 1)
                            stor12[address(msg.sender)] = 0
                        if maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]:
                            tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
                            if issuedTokensAmount >= nextBoundaryAmount:
                                currentBoundary++
                                if currentBoundary + 1 >= numOfBoundaries:
                                    nextBoundaryAmount = maxTokensAmount
                                else:
                                    nextBoundaryAmount = rateBoundaries[stor16].field_0
                                    tokenRate = rateBoundaries[stor16].field_256
                            emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
                            call stor1 with:
                               value maxTokensAmount - issuedTokensAmount / tokenRate / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                call stor2 with:
                                   value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                     gas 2300 * is_zero(value) wei
                                call stor3 with:
                                   value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                     gas 2300 * is_zero(value) wei
                                if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) <= 0:
                                call msg.sender with:
                                   value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if tokenRate:
            if msg.value * tokenRate / tokenRate == msg.value:
                if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
                    require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
                    issuedTokensAmount += msg.value * tokenRate
                    require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
                    require not stor0
                    if not tokens[address(msg.sender)]:
                        receiver[stor14] = msg.sender
                        receiversCount = uint32(receiversCount + 1)
                        stor12[address(msg.sender)] = 0
                    require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
                    tokens[address(msg.sender)] += msg.value * tokenRate
                    if issuedTokensAmount >= nextBoundaryAmount:
                        currentBoundary++
                        if currentBoundary + 1 >= numOfBoundaries:
                            nextBoundaryAmount = maxTokensAmount
                        else:
                            nextBoundaryAmount = rateBoundaries[stor16].field_0
                            tokenRate = rateBoundaries[stor16].field_256
                    emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor2 with:
                       value msg.value / 4 wei
                         gas 2300 * is_zero(value) wei
                    call stor3 with:
                       value msg.value / 4 wei
                         gas 2300 * is_zero(value) wei
                if issuedTokensAmount <= maxTokensAmount:
                    if tokenRate:
                        if maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value:
                            if maxTokensAmount >= issuedTokensAmount:
                                issuedTokensAmount = maxTokensAmount
                                require maxTokensAmount <= maxTokensAmount
                                require not stor0
                                if not tokens[address(msg.sender)]:
                                    receiver[stor14] = msg.sender
                                    receiversCount = uint32(receiversCount + 1)
                                    stor12[address(msg.sender)] = 0
                                if maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]:
                                    tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
                                    if issuedTokensAmount >= nextBoundaryAmount:
                                        currentBoundary++
                                        if currentBoundary + 1 >= numOfBoundaries:
                                            nextBoundaryAmount = maxTokensAmount
                                        else:
                                            nextBoundaryAmount = rateBoundaries[stor16].field_0
                                            tokenRate = rateBoundaries[stor16].field_256
                                    emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
                                    call stor1 with:
                                       value maxTokensAmount - issuedTokensAmount / tokenRate / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        call stor2 with:
                                           value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                             gas 2300 * is_zero(value) wei
                                        call stor3 with:
                                           value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                             gas 2300 * is_zero(value) wei
                                        if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) <= 0:
                                        call msg.sender with:
                                           value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    revert
}

function _fallback() payable {
    require not stor10
    require issuedTokensAmount <= maxTokensAmount
    require not stor0
    if not tokenRate:
        if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
            require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
            issuedTokensAmount += msg.value * tokenRate
            require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
            require not stor0
            if not tokens[address(msg.sender)]:
                receiver[stor14] = msg.sender
                receiversCount = uint32(receiversCount + 1)
                stor12[address(msg.sender)] = 0
            require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
            tokens[address(msg.sender)] += msg.value * tokenRate
            if issuedTokensAmount >= nextBoundaryAmount:
                currentBoundary++
                if currentBoundary + 1 >= numOfBoundaries:
                    nextBoundaryAmount = maxTokensAmount
                else:
                    nextBoundaryAmount = rateBoundaries[stor16].field_0
                    tokenRate = rateBoundaries[stor16].field_256
            emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
            call stor1 with:
               value msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor2 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
            call stor3 with:
               value msg.value / 4 wei
                 gas 2300 * is_zero(value) wei
        if issuedTokensAmount <= maxTokensAmount:
            if tokenRate:
                if maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value:
                    if maxTokensAmount >= issuedTokensAmount:
                        issuedTokensAmount = maxTokensAmount
                        require maxTokensAmount <= maxTokensAmount
                        require not stor0
                        if not tokens[address(msg.sender)]:
                            receiver[stor14] = msg.sender
                            receiversCount = uint32(receiversCount + 1)
                            stor12[address(msg.sender)] = 0
                        if maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]:
                            tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
                            if issuedTokensAmount >= nextBoundaryAmount:
                                currentBoundary++
                                if currentBoundary + 1 >= numOfBoundaries:
                                    nextBoundaryAmount = maxTokensAmount
                                else:
                                    nextBoundaryAmount = rateBoundaries[stor16].field_0
                                    tokenRate = rateBoundaries[stor16].field_256
                            emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
                            call stor1 with:
                               value maxTokensAmount - issuedTokensAmount / tokenRate / 2 wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                                call stor2 with:
                                   value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                     gas 2300 * is_zero(value) wei
                                call stor3 with:
                                   value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                     gas 2300 * is_zero(value) wei
                                if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) <= 0:
                                call msg.sender with:
                                   value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
    else:
        if tokenRate:
            if msg.value * tokenRate / tokenRate == msg.value:
                if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
                    require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
                    issuedTokensAmount += msg.value * tokenRate
                    require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
                    require not stor0
                    if not tokens[address(msg.sender)]:
                        receiver[stor14] = msg.sender
                        receiversCount = uint32(receiversCount + 1)
                        stor12[address(msg.sender)] = 0
                    require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
                    tokens[address(msg.sender)] += msg.value * tokenRate
                    if issuedTokensAmount >= nextBoundaryAmount:
                        currentBoundary++
                        if currentBoundary + 1 >= numOfBoundaries:
                            nextBoundaryAmount = maxTokensAmount
                        else:
                            nextBoundaryAmount = rateBoundaries[stor16].field_0
                            tokenRate = rateBoundaries[stor16].field_256
                    emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
                    call stor1 with:
                       value msg.value / 2 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor2 with:
                       value msg.value / 4 wei
                         gas 2300 * is_zero(value) wei
                    call stor3 with:
                       value msg.value / 4 wei
                         gas 2300 * is_zero(value) wei
                if issuedTokensAmount <= maxTokensAmount:
                    if tokenRate:
                        if maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value:
                            if maxTokensAmount >= issuedTokensAmount:
                                issuedTokensAmount = maxTokensAmount
                                require maxTokensAmount <= maxTokensAmount
                                require not stor0
                                if not tokens[address(msg.sender)]:
                                    receiver[stor14] = msg.sender
                                    receiversCount = uint32(receiversCount + 1)
                                    stor12[address(msg.sender)] = 0
                                if maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]:
                                    tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
                                    if issuedTokensAmount >= nextBoundaryAmount:
                                        currentBoundary++
                                        if currentBoundary + 1 >= numOfBoundaries:
                                            nextBoundaryAmount = maxTokensAmount
                                        else:
                                            nextBoundaryAmount = rateBoundaries[stor16].field_0
                                            tokenRate = rateBoundaries[stor16].field_256
                                    emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
                                    call stor1 with:
                                       value maxTokensAmount - issuedTokensAmount / tokenRate / 2 wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                                        call stor2 with:
                                           value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                             gas 2300 * is_zero(value) wei
                                        call stor3 with:
                                           value maxTokensAmount - issuedTokensAmount / tokenRate / 4 wei
                                             gas 2300 * is_zero(value) wei
                                        if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) <= 0:
                                        call msg.sender with:
                                           value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                                             gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    revert
}



}
