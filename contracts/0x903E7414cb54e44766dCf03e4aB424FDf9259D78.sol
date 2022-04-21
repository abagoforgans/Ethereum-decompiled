contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor5 = 0
    stor9 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = code.data[4380 len 20]
    stor2 = code.data[4412 len 20]
    stor1 = code.data[4444 len 20]
    stor7 = code.data[4464 len 32]
    stor6 = code.data[4496 len 32]
    stor4 = code.data[4528 len 32]
    stor8 = code.data[4560 len 32]
    return code.data[221 len 4147]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
address bankAddress;
address tokenAddress;
uint256 maxTokensAmount;
uint256 issuedTokensAmount;
uint256 minBuyableAmount;
uint256 tokenRate;
uint256 stor8;
uint8 stor9;
mapping of uint256 tokens;
mapping of uint8 stor11;
mapping of address receiver;
uint32 receiversCount;

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

function paused() {
    return bool(stor0)
}

function bankAddress() {
    return bankAddress
}

function isFinished() {
    return bool(stor9)
}

function owner() {
    return owner
}

function getReceiversCount() {
    require owner == msg.sender
    return receiversCount
}

function approved(address arg1) {
    return bool(stor11[arg1])
}

function tokens(address arg1) {
    return tokens[arg1]
}

function issuedTokensAmount() {
    return issuedTokensAmount
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
    stor11[address(arg1)] = 1
}

function claim() {
    require not stor0
    require stor11[address(msg.sender)]
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
    require stor11[address(arg1)]
    require tokens[address(arg1)] > 0
    tokens[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args bankAddress, address(arg1), tokens[address(arg1)]
    require ext_call.success
    emit TokenSent(tokens[address(arg1)], arg1);
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

function finish() {
    require owner == msg.sender
    if issuedTokensAmount < maxTokensAmount:
        require block.timestamp > stor8
    require not stor9
    stor9 = 1
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
        receiver[stor13] = arg1
        receiversCount = uint32(receiversCount + 1)
        stor11[address(arg1)] = 0
    require (arg2 * tokenRate) + tokens[address(arg1)] >= tokens[address(arg1)]
    tokens[address(arg1)] += arg2 * tokenRate
    emit TokenToppedUp(arg2 * tokenRate, arg2, arg1);
}

function add(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor9
    require issuedTokensAmount < maxTokensAmount
    require block.timestamp <= stor8
    require not stor0
    if tokenRate:
        require tokenRate
        require arg2 * tokenRate / tokenRate == arg2
    require (arg2 * tokenRate) + issuedTokensAmount >= issuedTokensAmount
    issuedTokensAmount += arg2 * tokenRate
    require not stor0
    if not tokens[address(arg1)]:
        receiver[stor13] = arg1
        receiversCount = uint32(receiversCount + 1)
        stor11[address(arg1)] = 0
    require (arg2 * tokenRate) + tokens[address(arg1)] >= tokens[address(arg1)]
    tokens[address(arg1)] += arg2 * tokenRate
    emit TokenAdded(arg2 * tokenRate, arg2, arg1);
}

function claimAll() {
    require owner == msg.sender
    require not stor0
    s = 0
    idx = 0
    while uint32(idx) < receiversCount:
        mem[0] = receiver[idx << 224]
        mem[32] = 11
        if stor11[stor12[idx << 224]]:
            mem[0] = receiver[idx << 224]
            mem[32] = 10
            if tokens[stor12[idx << 224]] > 0:
                require not stor0
                require stor11[stor12[idx << 224]]
                require tokens[stor12[idx << 224]] > 0
                mem[0] = receiver[idx << 224]
                mem[32] = 10
                tokens[stor12[idx << 224]] = 0
                mem[100] = bankAddress
                mem[132] = receiver[idx << 224]
                mem[164] = tokens[stor12[idx << 224]]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args bankAddress, receiver[idx << 224], tokens[stor12[idx << 224]]
                require ext_call.success
                mem[96] = tokens[stor12[idx << 224]]
                emit TokenSent(tokens[stor12[idx << 224]], receiver[idx << 224]);
        s = receiver[idx << 224]
        idx = idx + 1
        continue 
}

function buy() payable {
    require not stor9
    require issuedTokensAmount < maxTokensAmount
    require block.timestamp <= stor8
    require not stor0
    if tokenRate:
        require tokenRate
        require msg.value * tokenRate / tokenRate == msg.value
    if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
        require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
        issuedTokensAmount += msg.value * tokenRate
        require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
        require not stor0
        if not tokens[address(msg.sender)]:
            receiver[stor13] = msg.sender
            receiversCount = uint32(receiversCount + 1)
            stor11[address(msg.sender)] = 0
        require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
        tokens[address(msg.sender)] += msg.value * tokenRate
        emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
        call stor1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require issuedTokensAmount <= maxTokensAmount
        require tokenRate
        require maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value
        require maxTokensAmount >= issuedTokensAmount
        issuedTokensAmount = maxTokensAmount
        require maxTokensAmount <= maxTokensAmount
        require not stor0
        if not tokens[address(msg.sender)]:
            receiver[stor13] = msg.sender
            receiversCount = uint32(receiversCount + 1)
            stor11[address(msg.sender)] = 0
        require maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
        tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
        emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
        call stor1 with:
           value maxTokensAmount - issuedTokensAmount / tokenRate wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) > 0:
            call msg.sender with:
               value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function _fallback() payable {
    require not stor9
    require issuedTokensAmount < maxTokensAmount
    require block.timestamp <= stor8
    require not stor0
    if tokenRate:
        require tokenRate
        require msg.value * tokenRate / tokenRate == msg.value
    if issuedTokensAmount + (msg.value * tokenRate) <= maxTokensAmount:
        require (msg.value * tokenRate) + issuedTokensAmount >= issuedTokensAmount
        issuedTokensAmount += msg.value * tokenRate
        require (msg.value * tokenRate) + issuedTokensAmount <= maxTokensAmount
        require not stor0
        if not tokens[address(msg.sender)]:
            receiver[stor13] = msg.sender
            receiversCount = uint32(receiversCount + 1)
            stor11[address(msg.sender)] = 0
        require (msg.value * tokenRate) + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
        tokens[address(msg.sender)] += msg.value * tokenRate
        emit TokenBought(msg.value * tokenRate, msg.value, msg.sender);
        call stor1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require issuedTokensAmount <= maxTokensAmount
        require tokenRate
        require maxTokensAmount - issuedTokensAmount / tokenRate <= msg.value
        require maxTokensAmount >= issuedTokensAmount
        issuedTokensAmount = maxTokensAmount
        require maxTokensAmount <= maxTokensAmount
        require not stor0
        if not tokens[address(msg.sender)]:
            receiver[stor13] = msg.sender
            receiversCount = uint32(receiversCount + 1)
            stor11[address(msg.sender)] = 0
        require maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)] >= tokens[address(msg.sender)]
        tokens[address(msg.sender)] = maxTokensAmount - issuedTokensAmount + tokens[address(msg.sender)]
        emit TokenBought(maxTokensAmount - issuedTokensAmount, maxTokensAmount - issuedTokensAmount / tokenRate, msg.sender);
        call stor1 with:
           value maxTokensAmount - issuedTokensAmount / tokenRate wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) > 0:
            call msg.sender with:
               value msg.value - (maxTokensAmount - issuedTokensAmount / tokenRate) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
