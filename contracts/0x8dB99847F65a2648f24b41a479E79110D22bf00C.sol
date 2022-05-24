contract main {




// =====================  Runtime code  =====================


address tokenAddress;
array of uint256 stor1;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor5; offset 160
address owner;
uint256 individualMinPurchaseWei;
array of struct individualMaxCaps;
mapping of uint256 contributions;
array of uint256 whitelistGrades;
mapping of uint8 whitelist;
mapping of uint256 balances;
uint8 stor12;
uint256 tokenDeliveryDue;
mapping of uint256 refundedDeposits;

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function withdrawable() {
    return bool(stor12)
}

function wallet() {
    return address(stor1.length)
}

function paused() {
    return bool(stor5)
}

function refundedDeposits(address arg1) {
    return refundedDeposits[arg1]
}

function tokenDeliveryDue() {
    return tokenDeliveryDue
}

function whitelistGrades(uint256 arg1) {
    require arg1 < whitelistGrades.length
    return whitelistGrades[arg1]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return whitelist[arg1]
}

function individualMinPurchaseWei() {
    return individualMinPurchaseWei
}

function individualMaxCaps(uint256 arg1) {
    require arg1 < individualMaxCaps.length
    return individualMaxCaps[arg1].field_0, individualMaxCaps[arg1].field_256
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function setWithdrawable(bool arg1) {
    require msg.sender == owner
    stor12 = uint8(arg1)
}

function unpause() {
    require msg.sender == owner
    require stor5
    stor5 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor5
    stor5 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressesToWhitelist(address[] arg1, uint8 arg2) {
    require msg.sender == owner
    if arg2 >= whitelistGrades.length:
        revert with 0, 'No such grade number.'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        whitelist[address(cd[((32 * idx) + arg1 + 36)])] = arg2
        idx = idx + 1
        continue 
}

function receiveRefund(address arg1) {
    if refundedDeposits[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_beneficiary has never purchased.'
    refundedDeposits[address(msg.sender)] = 0
    require refundedDeposits[address(msg.sender)] <= contributions[address(msg.sender)]
    contributions[address(msg.sender)] -= refundedDeposits[address(msg.sender)]
    call arg1 with:
       value refundedDeposits[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refunded(refundedDeposits[address(msg.sender)], msg.sender, arg1);
}

function withdrawTokens() {
    if not stor12:
        if block.timestamp < tokenDeliveryDue:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Currently tokens cannot be withdrawn.'
    if balances[address(msg.sender)] > 0:
        balances[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balances[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenDelivered(balances[address(msg.sender)], msg.sender);
}

function depositRefund(address arg1) payable {
    if owner != msg.sender:
        if address(stor1.length) != msg.sender:
            revert with 0, 'No permission to access.'
    if msg.value > weiRaised:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Sent ethers is higher than even the total raised ethers.'
    if not msg.value:
        if balances[address(arg1)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sent ethers is higher than the ethers _beneficiary has purchased.'
        require msg.value <= weiRaised
        weiRaised -= msg.value
        require 0 <= balances[address(arg1)]
        require msg.value + refundedDeposits[address(arg1)] >= refundedDeposits[address(arg1)]
        refundedDeposits[address(arg1)] += msg.value
        emit RefundDeposited(0, msg.value, arg1);
    else:
        require rate * msg.value / msg.value == rate
        if balances[address(arg1)] < rate * msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Sent ethers is higher than the ethers _beneficiary has purchased.'
        require msg.value <= weiRaised
        weiRaised -= msg.value
        require rate * msg.value <= balances[address(arg1)]
        balances[address(arg1)] += -1 * rate * msg.value
        require msg.value + refundedDeposits[address(arg1)] >= refundedDeposits[address(arg1)]
        refundedDeposits[address(arg1)] += msg.value
        emit RefundDeposited(rate * msg.value, msg.value, arg1);
}

function deliverTokens(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if stor12:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            _32 = sha3(mem[(32 * idx) + 140 len 20], 11)
            if balances[mem[(32 * idx) + 140 len 20]] > 0:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 11
                balances[address(mem[(32 * idx) + 128])] = 0
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = stor[_32]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], stor[_32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = stor[_32]
                emit TokenDelivered(stor[_32], address(_30));
            idx = idx + 1
            continue 
    else:
        if block.timestamp < tokenDeliveryDue:
            revert with 0, 'Currently tokens cannot be withdrawn.'
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _31 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 11
            _33 = sha3(mem[(32 * idx) + 140 len 20], 11)
            if balances[mem[(32 * idx) + 140 len 20]] > 0:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 11
                balances[address(mem[(32 * idx) + 128])] = 0
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = stor[_33]
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132], stor[_33]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                mem[(32 * arg1.length) + 128] = stor[_33]
                emit TokenDelivered(stor[_33], address(_31));
            idx = idx + 1
            continue 
}

function buyTokens(address arg1) payable {
    mem[64] = 96
    require not stor5
    if block.gasprice > 4 * 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Gas price is too expensive. Don't be competitive.'
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if whitelist[address(arg1)] <= 0:
        revert with 0, 'Not whitelisted.'
    require whitelist[address(arg1)] < whitelistGrades.length
    if block.timestamp < whitelistGrades[stor10[address(arg1)]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Currently unavailable to purchase tokens.'
    mem[0] = arg1
    mem[32] = 8
    require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
    if msg.value + contributions[address(arg1)] < individualMinPurchaseWei:
        revert with 0, 'Sent ethers is not enough.'
    s = 0
    idx = 0
    s = 0
    while idx < individualMaxCaps.length:
        if individualMaxCaps[idx].field_0 <= block.timestamp:
            require idx < individualMaxCaps.length
            mem[0] = 7
            s = individualMaxCaps[idx].field_0
            idx = idx + 1
            s = individualMaxCaps[idx].field_256
            continue 
        if idx > 1:
            t = 0
            while t < individualMaxCaps.length + -idx + 1:
                require t + idx - 1 < individualMaxCaps.length
                require t < individualMaxCaps.length
                mem[0] = 7
                individualMaxCaps[t].field_0 = individualMaxCaps[t + idx - 1].field_0
                individualMaxCaps[t].field_256 = individualMaxCaps[t + idx - 1].field_256
                t = t + 1
                continue 
            individualMaxCaps.length = individualMaxCaps.length + -idx + 1
            if individualMaxCaps.length > individualMaxCaps.length + -idx + 1:
                t = (2 * individualMaxCaps.length + -idx + 1) + sha3(7)
                while sha3(7) + (2 * individualMaxCaps.length) > t:
                    stor[t] = 0
                    uint256(stor1[t]) = 0
                    t = t + 2
                    continue 
        if s > 0:
            mem[128] = 'Total ethers you've purchased is'
            mem[160] = ' too much.'
            if msg.value + contributions[address(arg1)] > s:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 42:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[314 len 10]
                revert with 0, 32, 42, mem[260 len 64]
        else:
            mem[128] = 'Purchase is currently disallowed'
            mem[160] = '.'
            if msg.value + contributions[address(arg1)] > s:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 33:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[323 len 1]
                revert with 0, 32, 33, mem[260 len 64]
        ('le', ('add', 'callvalue', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'contributions', 8)))), ('var', 1))
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require balances[address(arg1)] >= balances[address(arg1)]
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require rate * msg.value / msg.value == rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (rate * msg.value) + balances[address(arg1)] >= balances[address(arg1)]
            balances[address(arg1)] += rate * msg.value
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
        require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
        contributions[address(arg1)] += msg.value
        call address(stor1.length) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if s > 0:
        if msg.value + contributions[address(arg1)] > s:
            revert with 0, 
                        'Total ethers you've purchased is too much.',
                        Mask(80, -256, 'Total ethers you've purchased is', ' too much.') << 256
    else:
        if msg.value + contributions[address(arg1)] > s:
            revert with 0, 'Purchase is currently disallowed.', Mask(8, -256, 'Purchase is currently disallowed', '.') << 256
    ('le', ('add', 'callvalue', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'contributions', 8)))), ('var', 1))
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balances[address(arg1)] >= balances[address(arg1)]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (rate * msg.value) + balances[address(arg1)] >= balances[address(arg1)]
        balances[address(arg1)] += rate * msg.value
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require msg.value + contributions[address(arg1)] >= contributions[address(arg1)]
    contributions[address(arg1)] += msg.value
    call address(stor1.length) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    mem[64] = 96
    require not stor5
    if block.gasprice > 4 * 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Gas price is too expensive. Don't be competitive.'
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if whitelist[address(msg.sender)] <= 0:
        revert with 0, 'Not whitelisted.'
    require whitelist[address(msg.sender)] < whitelistGrades.length
    if block.timestamp < whitelistGrades[stor10[address(msg.sender)]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Currently unavailable to purchase tokens.'
    mem[0] = msg.sender
    mem[32] = 8
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    if msg.value + contributions[address(msg.sender)] < individualMinPurchaseWei:
        revert with 0, 'Sent ethers is not enough.'
    s = 0
    idx = 0
    s = 0
    while idx < individualMaxCaps.length:
        if individualMaxCaps[idx].field_0 <= block.timestamp:
            require idx < individualMaxCaps.length
            mem[0] = 7
            s = individualMaxCaps[idx].field_0
            idx = idx + 1
            s = individualMaxCaps[idx].field_256
            continue 
        if idx > 1:
            t = 0
            while t < individualMaxCaps.length + -idx + 1:
                require t + idx - 1 < individualMaxCaps.length
                require t < individualMaxCaps.length
                mem[0] = 7
                individualMaxCaps[t].field_0 = individualMaxCaps[t + idx - 1].field_0
                individualMaxCaps[t].field_256 = individualMaxCaps[t + idx - 1].field_256
                t = t + 1
                continue 
            individualMaxCaps.length = individualMaxCaps.length + -idx + 1
            if individualMaxCaps.length > individualMaxCaps.length + -idx + 1:
                t = (2 * individualMaxCaps.length + -idx + 1) + sha3(7)
                while sha3(7) + (2 * individualMaxCaps.length) > t:
                    stor[t] = 0
                    uint256(stor1[t]) = 0
                    t = t + 2
                    continue 
        if s > 0:
            mem[128] = 'Total ethers you've purchased is'
            mem[160] = ' too much.'
            if msg.value + contributions[address(msg.sender)] > s:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 42:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[314 len 10]
                revert with 0, 32, 42, mem[260 len 64]
        else:
            mem[128] = 'Purchase is currently disallowed'
            mem[160] = '.'
            if msg.value + contributions[address(msg.sender)] > s:
                mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[196] = 32
                idx = 0
                while idx < 33:
                    mem[idx + 260] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[292] = mem[323 len 1]
                revert with 0, 32, 33, mem[260 len 64]
        ('le', ('add', 'callvalue', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'contributions', 8)))), ('var', 1))
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require balances[address(msg.sender)] >= balances[address(msg.sender)]
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require rate * msg.value / msg.value == rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (rate * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
            balances[address(msg.sender)] += rate * msg.value
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
        require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
        contributions[address(msg.sender)] += msg.value
        call address(stor1.length) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if s > 0:
        if msg.value + contributions[address(msg.sender)] > s:
            revert with 0, 
                        'Total ethers you've purchased is too much.',
                        Mask(80, -256, 'Total ethers you've purchased is', ' too much.') << 256
    else:
        if msg.value + contributions[address(msg.sender)] > s:
            revert with 0, 'Purchase is currently disallowed.', Mask(8, -256, 'Purchase is currently disallowed', '.') << 256
    ('le', ('add', 'callvalue', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'contributions', 8)))), ('var', 1))
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require balances[address(msg.sender)] >= balances[address(msg.sender)]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require (rate * msg.value) + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += rate * msg.value
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    call address(stor1.length) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
