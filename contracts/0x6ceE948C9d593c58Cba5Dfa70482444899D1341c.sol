contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
address stor4;
uint32 stor6; offset 160

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor6 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    require code.data[8735 len 20]
    stor4 = code.data[8735 len 20]
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
    return code.data[357 len 8366]
}



// =====================  Runtime code  =====================


const name = 'SPECTRE SUBSCRIBER TOKEN'

const decimals = 18

const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const symbol = 'SXS'

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0

const TOKENS_AVAILABLE = 240000000 * 10^18

const WHITELIST_PERIOD = (72 * 24 * 3600)

const BONUS_SLAB = 100000000 * 10^18

const MIN_CAP = 5000000 * 10^18

const MIN_FUND_AMOUNT = 10^18

const TOKEN_PRICE = 5 * 10^14


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address specWalletAddress;
address specDWalletAddress;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
address specUWalletAddress;
uint256 presaleStart;
uint256 presaleEnd;
uint256 saleStart;
uint256 saleEnd;
uint256 discountSaleEnd;
mapping of struct whitelist;
mapping of uint256 bonus;

function totalSupply() {
    return totalSupply
}

function presaleEnd() {
    return presaleEnd
}

function paused() {
    return bool(stor3)
}

function discountSaleEnd() {
    return discountSaleEnd
}

function specUWallet() {
    return specUWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAddressesSet() {
    return bool(uint8(stor6.field_176))
}

function configured() {
    return bool(uint8(stor6.field_168))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return whitelist[arg1].field_0
}

function saleStart() {
    return saleStart
}

function refundable() {
    return bool(uint8(stor6.field_160))
}

function specWallet() {
    return specWalletAddress
}

function saleEnd() {
    return saleEnd
}

function bonus(address arg1) {
    return bonus[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function presaleStart() {
    return presaleStart
}

function specDWallet() {
    return specDWalletAddress
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function numberOfTokensLeft() {
    require totalSupply <= 240000000 * 10^18
    return (-totalSupply + 240000000 * 10^18)
}

function unpause() {
    require owner == msg.sender
    require stor3
    require uint8(stor6.field_168)
    stor3 = 0
    emit Unpause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function fundContract() payable {
    if owner != msg.sender:
        require specWalletAddress == msg.sender
    emit ContractFunded(msg.value, eth.balance(this.address), msg.sender);
}

function setWhiteList(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2
    whitelist[address(arg1)].field_0 = arg2
    emit WhiteListSet(arg2, arg1);
}

function setRefundable() {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    require block.timestamp > saleEnd
    require totalSupply < 5000000 * 10^18
    emit Refundable()
    uint8(stor6.field_160) = 1
}

function withdrawEther() {
    require not uint8(stor6.field_160)
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setTokenAddresses(address arg1, address arg2) {
    require owner == msg.sender
    require not uint8(stor6.field_176)
    require arg2
    require arg1
    require ext_code.size(arg2) > 0
    require ext_code.size(arg1) > 0
    specDWalletAddress = arg2
    specUWalletAddress = arg1
    uint8(stor6.field_176) = 1
    if False or bool(uint8(stor6.field_168)):
        require owner == msg.sender
        require stor3
        require uint8(stor6.field_168)
        stor3 = 0
        emit Unpause()
}

function configure(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require owner == msg.sender
    require not uint8(stor6.field_168)
    require arg1 > block.timestamp
    require arg2 > arg1
    require arg3 > arg2
    require arg4 > arg3
    require arg5 > arg3
    require arg5 <= arg4
    presaleStart = arg1
    presaleEnd = arg2
    saleStart = arg3
    saleEnd = arg4
    discountSaleEnd = arg5
    uint8(stor6.field_168) = 1
    if False or bool(uint8(stor6.field_176)):
        require owner == msg.sender
        require stor3
        require uint8(stor6.field_168)
        stor3 = 0
        emit Unpause()
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor6.field_176)
    require block.timestamp > saleEnd
    require totalSupply >= 5000000 * 10^18
    if specDWalletAddress != arg1:
        require specUWalletAddress == arg1
    require ext_code.size(arg1) > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, 96, 0
    require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function refund() {
    require uint8(stor6.field_160)
    require balanceOf[address(msg.sender)] > 0
    require bonus[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    if balanceOf[address(msg.sender)] - bonus[address(msg.sender)]:
        require balanceOf[address(msg.sender)] - bonus[address(msg.sender)]
        require (5 * 10^14 * balanceOf[address(msg.sender)]) - (5 * 10^14 * bonus[address(msg.sender)]) / balanceOf[address(msg.sender)] - bonus[address(msg.sender)] == 5 * 10^14
    call msg.sender with:
       value (5 * 10^14 * balanceOf[address(msg.sender)]) - (5 * 10^14 * bonus[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refund(((5 * 10^14 * balanceOf[address(msg.sender)]) - (5 * 10^14 * bonus[address(msg.sender)]) / 10^18), msg.sender);
}

function multiSetWhiteList(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require owner == msg.sender
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + 128 len 12]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        whitelist[mem[(32 * idx) + 140 len 20]].field_0 = mem[(32 * idx) + 128 len 12]
        whitelist[mem[(32 * idx) + 140 len 20]].field_96 = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 128 len 12]
        emit WhiteListSet(mem[(32 * arg1.length) + 128], address(_12));
        s = Mask(96, 160, _14) >> 160
        s = address(_12)
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor6.field_176)
    require block.timestamp > saleEnd
    require totalSupply >= 5000000 * 10^18
    if specDWalletAddress != arg2:
        require specUWalletAddress == arg2
    require ext_code.size(arg2) > 0
    if owner != msg.sender:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
    else:
        if block.timestamp > saleEnd + (672 * 24 * 3600):
            emit OwnerTransfer(arg3, arg1, arg2);
        else:
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require ext_code.size(arg2)
    call arg2.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3, 96, 0
    require ext_call.success
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor3
    require msg.value >= 10^18
    if block.timestamp < presaleStart:
        require block.timestamp >= saleStart
        require block.timestamp <= saleEnd
        if msg.value:
            require msg.value
            require 10^18 * msg.value / msg.value == 10^18
        if block.timestamp > discountSaleEnd:
            require 10^18 * msg.value / 5 * 10^14 >= 10^18 * msg.value / 5 * 10^14
            require bonus[address(msg.sender)] >= bonus[address(msg.sender)]
            call specWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
            totalSupply += 10^18 * msg.value / 5 * 10^14
            require (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
            require (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / 5 * 10^14
            emit Transfer((10^18 * msg.value / 5 * 10^14), 0, msg.sender);
        else:
            if 10^18 * msg.value / 5 * 10^14:
                require 10^18 * msg.value / 5 * 10^14
                require 11 * 10^18 * msg.value / 5 * 10^14 / 10^18 * msg.value / 5 * 10^14 == 11
            require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) >= 10^18 * msg.value / 5 * 10^14
            require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + bonus[address(msg.sender)] >= bonus[address(msg.sender)]
            bonus[address(msg.sender)] += 11 * 10^18 * msg.value / 5 * 10^14 / 100
            call specWalletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
            totalSupply = (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply
            require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
            require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
            emit Transfer(((11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14)), 0, msg.sender);
    else:
        if block.timestamp > presaleEnd:
            require block.timestamp >= saleStart
            require block.timestamp <= saleEnd
            if msg.value:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
            if block.timestamp > discountSaleEnd:
                require 10^18 * msg.value / 5 * 10^14 >= 10^18 * msg.value / 5 * 10^14
                require bonus[address(msg.sender)] >= bonus[address(msg.sender)]
                call specWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
                totalSupply += 10^18 * msg.value / 5 * 10^14
                require (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
                require (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 10^18 * msg.value / 5 * 10^14
                emit Transfer((10^18 * msg.value / 5 * 10^14), 0, msg.sender);
            else:
                if 10^18 * msg.value / 5 * 10^14:
                    require 10^18 * msg.value / 5 * 10^14
                    require 11 * 10^18 * msg.value / 5 * 10^14 / 10^18 * msg.value / 5 * 10^14 == 11
                require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) >= 10^18 * msg.value / 5 * 10^14
                require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + bonus[address(msg.sender)] >= bonus[address(msg.sender)]
                bonus[address(msg.sender)] += 11 * 10^18 * msg.value / 5 * 10^14 / 100
                call specWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
                totalSupply = (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply
                require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
                require (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
                emit Transfer(((11 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14)), 0, msg.sender);
        else:
            if block.timestamp < presaleStart + (72 * 24 * 3600):
                require whitelist[address(msg.sender)].field_0 > 0
                if whitelist[address(msg.sender)].field_0:
                    require whitelist[address(msg.sender)].field_0
                    require 95 * whitelist[address(msg.sender)].field_0 / whitelist[address(msg.sender)].field_0 == 95
                if whitelist[address(msg.sender)].field_0:
                    require whitelist[address(msg.sender)].field_0
                    require 120 * whitelist[address(msg.sender)].field_0 / whitelist[address(msg.sender)].field_0 == 120
                require msg.value >= 95 * whitelist[address(msg.sender)].field_0 / 100
                require msg.value <= 120 * whitelist[address(msg.sender)].field_0 / 100
                whitelist[address(msg.sender)].field_0 = 0
            if msg.value:
                require msg.value
                require 10^18 * msg.value / msg.value == 10^18
            if totalSupply >= 100000000 * 10^18:
                if 10^18 * msg.value / 5 * 10^14:
                    require 10^18 * msg.value / 5 * 10^14
                    require 22 * 10^18 * msg.value / 5 * 10^14 / 10^18 * msg.value / 5 * 10^14 == 22
                require (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) >= 10^18 * msg.value / 5 * 10^14
                require (22 * 10^18 * msg.value / 5 * 10^14 / 100) + bonus[address(msg.sender)] >= bonus[address(msg.sender)]
                bonus[address(msg.sender)] += 22 * 10^18 * msg.value / 5 * 10^14 / 100
                call specWalletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
                totalSupply = (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply
                require (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
                require (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
                emit Transfer(((22 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14)), 0, msg.sender);
            else:
                require totalSupply <= 100000000 * 10^18
                if -totalSupply + 100000000 * 10^18 >= 10^18 * msg.value / 5 * 10^14:
                    require 10^18 * msg.value / 5 * 10^14 <= 10^18 * msg.value / 5 * 10^14
                    if 10^18 * msg.value / 5 * 10^14:
                        require 10^18 * msg.value / 5 * 10^14
                        require 33 * 10^18 * msg.value / 5 * 10^14 / 10^18 * msg.value / 5 * 10^14 == 33
                    require 33 * 10^18 * msg.value / 5 * 10^14 / 100 >= 33 * 10^18 * msg.value / 5 * 10^14 / 100
                    require (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) >= 10^18 * msg.value / 5 * 10^14
                    require (33 * 10^18 * msg.value / 5 * 10^14 / 100) + bonus[address(msg.sender)] >= bonus[address(msg.sender)]
                    bonus[address(msg.sender)] += 33 * 10^18 * msg.value / 5 * 10^14 / 100
                    call specWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
                    totalSupply = (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply
                    require (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
                    require (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
                    emit Transfer(((33 * 10^18 * msg.value / 5 * 10^14 / 100) + (10^18 * msg.value / 5 * 10^14)), 0, msg.sender);
                else:
                    require -totalSupply + 100000000 * 10^18 <= 10^18 * msg.value / 5 * 10^14
                    if -totalSupply + 100000000 * 10^18:
                        require -totalSupply + 100000000 * 10^18
                        require (-33 * totalSupply) + 3300000000 * 10^18 / -totalSupply + 100000000 * 10^18 == 33
                    if (10^18 * msg.value / 5 * 10^14) + totalSupply - 100000000 * 10^18:
                        require (10^18 * msg.value / 5 * 10^14) + totalSupply - 100000000 * 10^18
                        require (22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / (10^18 * msg.value / 5 * 10^14) + totalSupply - 100000000 * 10^18 == 22
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) >= (-33 * totalSupply) + 3300000000 * 10^18 / 100
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) >= 10^18 * msg.value / 5 * 10^14
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + bonus[address(msg.sender)] >= bonus[address(msg.sender)]
                    bonus[address(msg.sender)] = ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + bonus[address(msg.sender)]
                    call specWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply >= totalSupply
                    totalSupply = ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) + totalSupply <= 240000000 * 10^18
                    require ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = ((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14) + balanceOf[address(msg.sender)]
                    emit Transfer((((22 * 10^18 * msg.value / 5 * 10^14) + (22 * totalSupply) - 2200000000 * 10^18 / 100) + ((-33 * totalSupply) + 3300000000 * 10^18 / 100) + (10^18 * msg.value / 5 * 10^14)), 0, msg.sender);
}



}
