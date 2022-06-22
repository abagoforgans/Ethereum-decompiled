contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const ROLE_WHITELISTED = ''

const ROLE_MANAGER = ''


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
address owner;
mapping of uint8 stor7;
mapping of uint256 limit;
address vaultAddress;
uint256 tokenSupplyLimit;
uint256 discountTokenAmount;
uint256 discountTokenPercent;
uint256 sub_02e14b47;
uint256 softCapLimit;
uint256 buyLimitSupplyMin;
uint256 buyLimitSupplyMax;
uint256 sub_fe1a2068;
address privateSaleWalletAddress;
uint256 sub_08199e73;
mapping of uint8 stor99;

function sub_02e14b47(?) {
    return sub_02e14b47
}

function sub_08199e73(?) {
    return sub_08199e73
}

function getLimit(address arg1) {
    return limit[address(arg1)]
}

function tokenSupplyLimit() {
    return tokenSupplyLimit
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function limitsList(address arg1) {
    return limit[arg1]
}

function softCapLimit() {
    return softCapLimit
}

function buyLimitSupplyMin() {
    return buyLimitSupplyMin
}

function buyLimitSupplyMax() {
    return buyLimitSupplyMax
}

function isFinalized() {
    return bool(stor6)
}

function owner() {
    return owner
}

function discountTokenAmount() {
    return discountTokenAmount
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 7)][address(arg1)])
}

function discountTokenPercent() {
    return discountTokenPercent
}

function openingTime() {
    return openingTime
}

function privateSaleWallet() {
    return privateSaleWalletAddress
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function sub_fe1a2068(?) {
    return sub_fe1a2068
}

function isDiscount() {
    return block.timestamp <= sub_02e14b47
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function removeLimit(address arg1) {
    require stor7[30787899169924466][address(msg.sender)]
    limit[address(arg1)] = 0
}

function addLimit(address arg1, uint256 arg2) {
    require stor7[30787899169924466][address(msg.sender)]
    limit[address(arg1)] = arg2
}

function setManager(address arg1) {
    require msg.sender == owner
    stor7[30787899169924466][address(arg1)] = 1
    emit RoleAdded('', arg1);
}

function removeManager(address arg1) {
    require msg.sender == owner
    stor7[30787899169924466][address(arg1)] = 0
    emit RoleRemoved('', arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_87c1cd85(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Kyc Eliminator should not be 0.'
    sub_fe1a2068 = arg1
}

function addAddressToWhitelist(address arg1) {
    require stor7[30787899169924466][address(msg.sender)]
    stor[sha3(0, 0, 7)][address(arg1)] = 1
    emit RoleAdded('', arg1);
}

function updateRate(uint256 arg1) {
    require stor7[30787899169924466][address(msg.sender)]
    if not arg1:
        revert with 0, 'Exchange rate should not be 0.'
    rate = arg1
}

function removeAddressFromWhitelist(address arg1) {
    require stor7[30787899169924466][address(msg.sender)]
    stor[sha3(0, 0, 7)][address(arg1)] = 0
    emit RoleRemoved('', arg1);
}

function sub_2e336644(?) {
    require msg.sender == owner
    require ext_code.size(vaultAddress)
    call vaultAddress.0x2e336644 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_54948bd7(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x54948bd7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8b40c51c(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8b40c51c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_df31027a(?) {
    require msg.sender == owner
    require ext_code.size(vaultAddress)
    call vaultAddress.0xdf31027a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function goalReached() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] >= softCapLimit
}

function refundeesListLength() {
    require msg.sender == owner
    require ext_code.size(vaultAddress)
    call vaultAddress.0x455bf142 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRate() {
    if block.timestamp > sub_02e14b47:
        return rate
    if not rate:
        if rate >= rate:
            return rate
    else:
        if discountTokenPercent * rate / rate == discountTokenPercent:
            if (discountTokenPercent * rate / 100) + rate >= rate:
                return ((discountTokenPercent * rate / 100) + rate)
    revert
}

function supplyRest() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= tokenSupplyLimit
    return (tokenSupplyLimit - ext_call.return_data[0])
}

function hasClosed() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return tokenSupplyLimit <= ext_call.return_data[0]
}

function sub_dec7d45b(?) {
    if privateSaleWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet should be the same as private sale wallet.'
    require stor[sha3(0, 0, 7)][address(arg1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xec71351c with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function updateBuyLimitRange(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimal buy limit should not be 0.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximal buy limit should not be 0.'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Maximal buy limit should be greater than minimal buy limit.'
    buyLimitSupplyMin = arg1
    buyLimitSupplyMax = arg2
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 7
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function sub_928a5891(?) {
    require msg.sender == owner
    require arg1 + sub_08199e73 >= sub_08199e73
    if arg1 + sub_08199e73 >= tokenSupplyLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token's private sale supply limit should be less that token supply limit.'
    require arg1 + sub_08199e73 >= sub_08199e73
    sub_08199e73 += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args privateSaleWalletAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_b0eca2c5(?) {
    if privateSaleWalletAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet should be the same as private sale wallet.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= sub_08199e73
    sub_08199e73 -= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x6d8f9035 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 7
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_0d0b658a(?) {
    require msg.sender == owner
    require ext_code.size(vaultAddress)
    call vaultAddress.0xe3a9db1a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.0xd0b658a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] <= weiRaised
    weiRaised -= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x1536637b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRefund() {
    if not stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Claim refunds is only possible f the ICO is finalized.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= softCapLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Claim refunds is only possible f the soft cap goal has not been reached.'
    require ext_code.size(vaultAddress)
    call vaultAddress.0xe3a9db1a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.0x51cff8d9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] <= weiRaised
    weiRaised -= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x1536637b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAddressesLimits(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 224
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 7
    mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 0] = None
    mem[(32 * arg2.length) + (32 * arg1.length) + 224 len 7] = 30787899169924466
    mem[(32 * arg2.length) + (32 * arg1.length) + 231] = 7
    mem[0] = msg.sender
    mem[32] = sha3(30787899169924466, 7)
    require stor7[30787899169924466][address(msg.sender)]
    if arg1.length != arg2.length:
        revert with 0, 'Array sizes should be equal.'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _58 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _60 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _61 = mem[64]
        mem[64] = mem[64] + 64
        mem[_61] = 7
        mem[_61 + 32] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
        t = _61 + 32
        u = mem[64]
        s = mem[_61]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_61])] = 256^(-(mem[_61] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_61])] or mem[_61 + floor32(mem[_61]) + 32] and !(256^(-(mem[_61] % 32) + 32) - 1)
        mem[mem[64] + 7] = 7
        require stor7[mem[mem[64] len 7]][address(msg.sender)]
        mem[0] = address(_58)
        mem[32] = 8
        limit[address(_58)] = _60
        idx = idx + 1
        continue 
}

function finalize() {
    require msg.sender == owner
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= closingTime:
        require tokenSupplyLimit <= ext_call.return_data[0]
    if ext_call.return_data[0] < softCapLimit:
        require ext_code.size(vaultAddress)
        call vaultAddress.0x8c52dc41 with:
             gas gas_remaining wei
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x355274ea with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if tokenSupplyLimit >= ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Token's supply limit should be less that token' cap limit.'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x355274ea with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require tokenSupplyLimit <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args walletAddress, ext_call.return_data[0] - tokenSupplyLimit
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(vaultAddress)
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Finalized()
    stor6 = 1
}

function claimRefundChunk(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if not stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Claim refunds is only possible f the ICO is finalized.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= softCapLimit:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Claim refunds is only possible f the soft cap goal has not been reached.'
    mem[96] = 0xf3c8f08a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = arg2
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf3c8f08a with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require uint32(arg1), Mask(224, 32, arg2) >> 32 <= 4294967296
    require uint32(arg1), Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96] <= 4294967296 and uint32(arg1), Mask(224, 32, arg2) >> 32 + (32 * mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96]) + 32 <= return_data.size
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= weiRaised
    weiRaised -= mem[96 len 4], Mask(224, 32, arg1) >> 32
    _24 = mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96]
    idx = 0
    while idx < _24:
        require idx < mem[uint32(arg1), Mask(224, 32, arg2) >> 32 + 96]
        _26 = mem[(32 * idx) + uint32(arg1), Mask(224, 32, arg2) >> 32 + 128]
        mem[ceil32(return_data.size) + 96] = 0x1536637b00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = address(_26)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x1536637b with:
             gas gas_remaining wei
            args address(_26)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 7
    mem[(32 * arg1.length) + 160] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 192 len 0] = None
    mem[(32 * arg1.length) + 192 len 7] = 30787899169924466
    mem[(32 * arg1.length) + 199] = 7
    mem[0] = msg.sender
    mem[32] = sha3(30787899169924466, 7)
    require stor7[30787899169924466][address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _79 = mem[(32 * idx) + 128]
        _80 = mem[64]
        mem[64] = mem[64] + 64
        mem[_80] = 7
        mem[_80 + 32] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
        t = _80 + 32
        u = mem[64]
        s = mem[_80]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_80])] = 256^(-(mem[_80] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_80])] or mem[_80 + floor32(mem[_80]) + 32] and !(256^(-(mem[_80] % 32) + 32) - 1)
        mem[mem[64] + 7] = 7
        _110 = sha3(mem[mem[64] len 7], 7)
        mem[0] = msg.sender
        mem[32] = _110
        require stor[_110][address(msg.sender)]
        _113 = mem[64]
        mem[64] = mem[64] + 64
        mem[_113] = 9
        mem[0] = msg.sender
        mem[_113 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        t = _113 + 32
        u = mem[64]
        s = mem[_113]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_113])] = 256^(-(mem[_113] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_113])] or mem[_113 + floor32(mem[_113]) + 32] and !(256^(-(mem[_113] % 32) + 32) - 1)
        mem[mem[64] + 9] = 7
        _134 = sha3(mem[mem[64] len 9], 7)
        mem[0] = address(_79)
        mem[32] = _134
        stor[_134][address(_79)] = 0
        _137 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_113]
        _139 = mem[_113]
        s = 0
        while s < _139:
            mem[s + _137 + 64] = mem[s + _113 + 32]
            s = s + 32
            continue 
        if not _139 % 32:
            emit RoleRemoved(mem[mem[64] len _139 + _137 + -mem[64] + 64], address(_79));
        else:
            mem[floor32(_139) + _137 + 64] = mem[floor32(_139) + _137 + -(_139 % 32) + 96 len _139 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_139) + _137 + -mem[64] + 96], address(_79));
        idx = idx + 1
        continue 
}

function addAddressesToWhitelist(address[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 192
    mem[(32 * arg1.length) + 128] = 7
    mem[(32 * arg1.length) + 160] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 192 len 0] = None
    mem[(32 * arg1.length) + 192 len 7] = 30787899169924466
    mem[(32 * arg1.length) + 199] = 7
    mem[0] = msg.sender
    mem[32] = sha3(30787899169924466, 7)
    require stor7[30787899169924466][address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _87 = mem[(32 * idx) + 128]
        _88 = mem[64]
        mem[64] = mem[64] + 64
        mem[_88] = 7
        mem[_88 + 32] = 0x6d616e6167657200000000000000000000000000000000000000000000000000
        t = _88 + 32
        u = mem[64]
        s = mem[_88]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_88])] = 256^(-(mem[_88] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_88])] or mem[_88 + floor32(mem[_88]) + 32] and !(256^(-(mem[_88] % 32) + 32) - 1)
        mem[mem[64] + 7] = 7
        _122 = sha3(mem[mem[64] len 7], 7)
        mem[0] = msg.sender
        mem[32] = _122
        require stor[_122][address(msg.sender)]
        _125 = mem[64]
        mem[64] = mem[64] + 64
        mem[_125] = 9
        mem[0] = msg.sender
        mem[_125 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        t = _125 + 32
        u = mem[64]
        s = mem[_125]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_125])] = 256^(-(mem[_125] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_125])] or mem[_125 + floor32(mem[_125]) + 32] and !(256^(-(mem[_125] % 32) + 32) - 1)
        mem[mem[64] + 9] = 7
        _150 = sha3(mem[mem[64] len 9], 7)
        mem[0] = address(_87)
        mem[32] = _150
        stor[_150][address(_87)] = 1
        _153 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_125]
        _155 = mem[_125]
        if 0 >= mem[_125]:
            if not mem[_125] % 32:
                emit RoleAdded(address arg1, string arg2):
                               32,
                               mem[mem[64] + 32 len mem[_125] + 32],
                               address(_87),
            else:
                mem[floor32(mem[_125]) + mem[64] + 64] = mem[floor32(mem[_125]) + mem[64] + -(mem[_125] % 32) + 96 len mem[_125] % 32]
                emit RoleAdded(address arg1, string arg2):
                               32,
                               mem[mem[64] + 32 len floor32(_155) + 64],
                               address(_87),
        else:
            mem[mem[64] + 64] = mem[_125 + 32]
            s = 32
            while s < _155:
                mem[s + mem[64] + 64] = mem[s + _125 + 32]
                s = s + 32
                continue 
            if not _155 % 32:
                emit RoleAdded(mem[mem[64] len _155 + _153 + -mem[64] + 64], address(_87));
            else:
                mem[floor32(_155) + _153 + 64] = mem[floor32(_155) + _153 + -(_155 % 32) + 96 len _155 % 32]
                emit RoleAdded(mem[mem[64] len floor32(_155) + _153 + -mem[64] + 96], address(_87));
        idx = idx + 1
        continue 
}

function getTokenAmount(uint256 arg1) {
    if block.timestamp > sub_02e14b47:
        if not arg1:
            return 0
        if rate * arg1 / arg1 == rate:
            return (rate * arg1)
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= discountTokenAmount:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'It should be possible to buy tokens only by providing non zero ETH.'
            if block.timestamp > sub_02e14b47:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Getting discount rate should be possible only below the discount tokens limit.'
            if not rate:
                if rate >= rate:
                    if not arg1:
                        if discountTokenAmount - ext_call.return_data[0] >= 0:
                            return 0
                        if block.timestamp > sub_02e14b47:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'Getting discount rate should be possible only below the discount tokens limit.'
                        if not rate:
                            if rate >= rate:
                                if rate:
                                    if discountTokenAmount - ext_call.return_data[0] / rate <= arg1:
                                        if not arg1 - (discountTokenAmount - ext_call.return_data[0] / rate):
                                            return (discountTokenAmount - ext_call.return_data[0])
                                        if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / rate) == rate:
                                            if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0:
                                                return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0])
                        else:
                            if discountTokenPercent * rate / rate == discountTokenPercent:
                                if (discountTokenPercent * rate / 100) + rate >= rate:
                                    if (discountTokenPercent * rate / 100) + rate:
                                        if discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= arg1:
                                            if not arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                                                return (discountTokenAmount - ext_call.return_data[0])
                                            if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate:
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0:
                                                    return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0])
                    else:
                        if rate * arg1 / arg1 == rate:
                            if discountTokenAmount - ext_call.return_data[0] >= rate * arg1:
                                return (rate * arg1)
                            if block.timestamp > sub_02e14b47:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Getting discount rate should be possible only below the discount tokens limit.'
                            if not rate:
                                if rate >= rate:
                                    if rate:
                                        if discountTokenAmount - ext_call.return_data[0] / rate <= arg1:
                                            if not arg1 - (discountTokenAmount - ext_call.return_data[0] / rate):
                                                return (discountTokenAmount - ext_call.return_data[0])
                                            if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / rate) == rate:
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0:
                                                    return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0])
                            else:
                                if discountTokenPercent * rate / rate == discountTokenPercent:
                                    if (discountTokenPercent * rate / 100) + rate >= rate:
                                        if (discountTokenPercent * rate / 100) + rate:
                                            if discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= arg1:
                                                if not arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                                                    return (discountTokenAmount - ext_call.return_data[0])
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate:
                                                    if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0:
                                                        return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0])
            else:
                if discountTokenPercent * rate / rate == discountTokenPercent:
                    if (discountTokenPercent * rate / 100) + rate >= rate:
                        if not arg1:
                            if discountTokenAmount - ext_call.return_data[0] >= 0:
                                return 0
                            if block.timestamp > sub_02e14b47:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            'Getting discount rate should be possible only below the discount tokens limit.'
                            if not rate:
                                if rate >= rate:
                                    if rate:
                                        if discountTokenAmount - ext_call.return_data[0] / rate <= arg1:
                                            if not arg1 - (discountTokenAmount - ext_call.return_data[0] / rate):
                                                return (discountTokenAmount - ext_call.return_data[0])
                                            if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / rate) == rate:
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0:
                                                    return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0])
                            else:
                                if discountTokenPercent * rate / rate == discountTokenPercent:
                                    if (discountTokenPercent * rate / 100) + rate >= rate:
                                        if (discountTokenPercent * rate / 100) + rate:
                                            if discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= arg1:
                                                if not arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                                                    return (discountTokenAmount - ext_call.return_data[0])
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate:
                                                    if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0:
                                                        return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0])
                        else:
                            if (discountTokenPercent * rate / 100 * arg1) + (rate * arg1) / arg1 == (discountTokenPercent * rate / 100) + rate:
                                if discountTokenAmount - ext_call.return_data[0] >= (discountTokenPercent * rate / 100 * arg1) + (rate * arg1):
                                    return ((discountTokenPercent * rate / 100 * arg1) + (rate * arg1))
                                if block.timestamp > sub_02e14b47:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Getting discount rate should be possible only below the discount tokens limit.'
                                if not rate:
                                    if rate >= rate:
                                        if rate:
                                            if discountTokenAmount - ext_call.return_data[0] / rate <= arg1:
                                                if not arg1 - (discountTokenAmount - ext_call.return_data[0] / rate):
                                                    return (discountTokenAmount - ext_call.return_data[0])
                                                if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / rate) == rate:
                                                    if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0:
                                                        return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0])
                                else:
                                    if discountTokenPercent * rate / rate == discountTokenPercent:
                                        if (discountTokenPercent * rate / 100) + rate >= rate:
                                            if (discountTokenPercent * rate / 100) + rate:
                                                if discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= arg1:
                                                    if not arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                                                        return (discountTokenAmount - ext_call.return_data[0])
                                                    if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / arg1 - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate:
                                                        if (arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0:
                                                            return ((arg1 * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0])
    revert
}

function buyTokens(address arg1) payable {
    require stor[sha3(0, 0, 7)][address(arg1)]
    if 0 >= limit[address(arg1)]:
        revert with 0, 'An investor is limited if it has a limit.'
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    if block.timestamp > sub_02e14b47:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            if ext_call.return_data[0] > tokenSupplyLimit:
                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
            if 0 < buyLimitSupplyMin:
                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
            if ext_call.return_data[0] > buyLimitSupplyMax:
                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
        else:
            require rate * msg.value / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (rate * msg.value) >= rate * msg.value
            if ext_call.return_data[0] + (rate * msg.value) > tokenSupplyLimit:
                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
            if rate * msg.value < buyLimitSupplyMin:
                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + (rate * msg.value) >= rate * msg.value
            if ext_call.return_data[0] + (rate * msg.value) > buyLimitSupplyMax:
                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= discountTokenAmount
        if not msg.value:
            revert with 0, 'It should be possible to buy tokens only by providing non zero ETH.'
        if block.timestamp > sub_02e14b47:
            revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
        if not rate:
            require rate >= rate
            if not msg.value:
                if discountTokenAmount - ext_call.return_data[0] >= 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] > tokenSupplyLimit:
                        revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                    if 0 < buyLimitSupplyMin:
                        revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] > buyLimitSupplyMax:
                        revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
            else:
                require rate * msg.value / msg.value == rate
                if discountTokenAmount - ext_call.return_data[0] >= rate * msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + (rate * msg.value) >= rate * msg.value
                    if ext_call.return_data[0] + (rate * msg.value) > tokenSupplyLimit:
                        revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                    if rate * msg.value < buyLimitSupplyMin:
                        revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + (rate * msg.value) >= rate * msg.value
                    if ext_call.return_data[0] + (rate * msg.value) > buyLimitSupplyMax:
                        revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
        else:
            require discountTokenPercent * rate / rate == discountTokenPercent
            require (discountTokenPercent * rate / 100) + rate >= rate
            if not msg.value:
                if discountTokenAmount - ext_call.return_data[0] >= 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] > tokenSupplyLimit:
                        revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                    if 0 < buyLimitSupplyMin:
                        revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] > buyLimitSupplyMax:
                        revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
            else:
                require (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (discountTokenPercent * rate / 100) + rate
                if discountTokenAmount - ext_call.return_data[0] >= (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value):
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] + (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) > tokenSupplyLimit:
                        revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                    if (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) < buyLimitSupplyMin:
                        revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= 0
                    if ext_call.return_data[0] + (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) > buyLimitSupplyMax:
                        revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x18160ddd with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > tokenSupplyLimit:
                                revert with 0, 'Total amount fo sold tokens should not exceed the total supply limit.'
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0] < buyLimitSupplyMin:
                                revert with 0, 'An investor can buy an amount of tokens only above the minimal limit.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= 0
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > buyLimitSupplyMax:
                                revert with 0, 'An investor cannot buy tokens above the maximal limit.'
    if block.timestamp > sub_02e14b47:
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= ext_call.return_data[0]
            if ext_call.return_data[0] >= sub_fe1a2068:
                require ext_call.return_data[0] >= ext_call.return_data[0]
                if ext_call.return_data[0] > limit[address(arg1)]:
                    revert with 0, 'An investor should not exceed its limit on buying.'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require rate * msg.value / msg.value == rate
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            if (rate * msg.value) + ext_call.return_data[0] >= sub_fe1a2068:
                require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                if (rate * msg.value) + ext_call.return_data[0] > limit[address(arg1)]:
                    revert with 0, 'An investor should not exceed its limit on buying.'
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), rate * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= discountTokenAmount
        if not msg.value:
            revert with 0, 'It should be possible to buy tokens only by providing non zero ETH.'
        if block.timestamp > sub_02e14b47:
            revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
        if not rate:
            require rate >= rate
            if not msg.value:
                if discountTokenAmount - ext_call.return_data[0] >= 0:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                    if ext_call.return_data[0] >= sub_fe1a2068:
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                        if ext_call.return_data[0] > limit[address(arg1)]:
                            revert with 0, 'An investor should not exceed its limit on buying.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
            else:
                require rate * msg.value / msg.value == rate
                if discountTokenAmount - ext_call.return_data[0] >= rate * msg.value:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (rate * msg.value) + ext_call.return_data[0] >= sub_fe1a2068:
                        require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (rate * msg.value) + ext_call.return_data[0] > limit[address(arg1)]:
                            revert with 0, 'An investor should not exceed its limit on buying.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), rate * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
        else:
            require discountTokenPercent * rate / rate == discountTokenPercent
            require (discountTokenPercent * rate / 100) + rate >= rate
            if not msg.value:
                if discountTokenAmount - ext_call.return_data[0] >= 0:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= ext_call.return_data[0]
                    if ext_call.return_data[0] >= sub_fe1a2068:
                        require ext_call.return_data[0] >= ext_call.return_data[0]
                        if ext_call.return_data[0] > limit[address(arg1)]:
                            revert with 0, 'An investor should not exceed its limit on buying.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
            else:
                require (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) / msg.value == (discountTokenPercent * rate / 100) + rate
                if discountTokenAmount - ext_call.return_data[0] >= (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value):
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    if (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= sub_fe1a2068:
                        require (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                        if (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value) + ext_call.return_data[0] > limit[address(arg1)]:
                            revert with 0, 'An investor should not exceed its limit on buying.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, (discountTokenPercent * rate / 100 * msg.value) + (rate * msg.value), msg.sender, arg1);
                else:
                    if block.timestamp > sub_02e14b47:
                        revert with 0, 'Getting discount rate should be possible only below the discount tokens limit.'
                    if not rate:
                        require rate >= rate
                        require rate
                        require discountTokenAmount - ext_call.return_data[0] / rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                    else:
                        require discountTokenPercent * rate / rate == discountTokenPercent
                        require (discountTokenPercent * rate / 100) + rate >= rate
                        require (discountTokenPercent * rate / 100) + rate
                        require discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate <= msg.value
                        if not msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate):
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require discountTokenAmount >= ext_call.return_data[0]
                            if discountTokenAmount >= sub_fe1a2068:
                                require discountTokenAmount >= ext_call.return_data[0]
                                if discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
                        else:
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) / msg.value - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate) == rate
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) >= 0
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                            if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= sub_fe1a2068:
                                require (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount >= ext_call.return_data[0]
                                if (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount > limit[address(arg1)]:
                                    revert with 0, 'An investor should not exceed its limit on buying.'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(arg1), (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, (msg.value * rate) - (discountTokenAmount - ext_call.return_data[0] / (discountTokenPercent * rate / 100) + rate * rate) + discountTokenAmount - ext_call.return_data[0], msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(vaultAddress)
    call vaultAddress.0x921b004b with:
         gas gas_remaining wei
        args msg.sender, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
