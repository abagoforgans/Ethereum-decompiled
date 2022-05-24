contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint16 stor4; offset 160
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint8 stor8;
array of struct stor9;

function _fallback() payable {
    stor1.length = 0
    uint16(stor4.field_160) = 0
    require not msg.value
    mem[96 len -9440] = code.data[10478 len -9440]
    mem[64] = -9344
    _3 = mem[128]
    _4 = mem[160]
    _7 = mem[256]
    _8 = mem[288]
    _10 = mem[352]
    _11 = mem[384]
    _12 = mem[416]
    stor0 = mem[108 len 20]
    stor8 = uint8(bool(mem[320]))
    stor5 = mem[204 len 20]
    stor6 = mem[236 len 20]
    if not mem[256]:
        stor7 = 0
        require mem[mem[128] + 96] == mem[mem[160] + 96]
        require mem[mem[160] + 96] <= 10
        _74 = mem[mem[128] + 96]
        idx = 0
        s = 0
        while uint8(idx) < _74:
            require uint8(idx) < mem[_3 + 96]
            _78 = mem[(32 * uint8(idx)) + _3 + 128]
            require mem[(32 * uint8(idx)) + _3 + 128] + s >= s
            stor9.length++
            if not stor9.length > stor9.length + 1:
                mem[0] = 9
                _103 = mem[64]
                mem[64] = mem[64] + 64
                require uint8(idx) < mem[_4 + 96]
                mem[_103] = mem[(32 * uint8(idx)) + _4 + 128]
                mem[_103 + 32] = _78 + s
                stor9[stor9.length].field_0 = mem[_103]
            else:
                t = sha3(9) + (2 * stor9.length + 1)
                while sha3(9) + (2 * stor9.length) > t:
                    stor[t] = 0
                    stor1[t] = 0
                    t = t + 2
                    continue 
                mem[0] = 9
                _143 = mem[64]
                mem[64] = mem[64] + 64
                require uint8(idx) < mem[_4 + 96]
                mem[_143] = mem[(32 * uint8(idx)) + _4 + 128]
                mem[_143 + 32] = _78 + s
                stor9[stor9.length].field_0 = mem[_143]
            stor9[stor9.length].field_256 = _78 + s
            idx = idx + 1
            s = _78 + s
            continue 
        require _7 == s
        mem[mem[64] len 4860] = code.data[5618 len 4860]
        mem[mem[64] + 4860] = stor0
        mem[mem[64] + 4892] = _8
        mem[mem[64] + 4924] = 160
        mem[mem[64] + 5020] = mem[_10 + 96]
        _84 = mem[_10 + 96]
        mem[mem[64] + 5052 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
        mem[mem[64] + 4956] = (32 * _84) + 192
        mem[(32 * _84) + mem[64] + 5052] = mem[_11 + 96]
        _131 = mem[_11 + 96]
        mem[(32 * _84) + mem[64] + 5084 len floor32(mem[_11 + 96])] = mem[_11 + 128 len floor32(mem[_11 + 96])]
        mem[mem[64] + 4988] = (32 * _131) + (32 * _84) + 224
        mem[(32 * _131) + (32 * _84) + mem[64] + 5084] = mem[_12 + 96]
        _159 = mem[_12 + 96]
        mem[(32 * _131) + (32 * _84) + mem[64] + 5116 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        create contract with 0 wei
                        code: code.data[5618 len 4860], stor0, _8, Array(len=(32 * _131) + (32 * _84) + 224, data=mem[mem[64] + 5020 len (32 * _159) + (32 * _131) + (32 * _84) + 96]), (32 * _84) + 192
    else:
        require 24 * 3600 * mem[256] / mem[256] == 24 * 3600
        stor7 = 24 * 3600 * mem[256]
        require mem[mem[128] + 96] == mem[mem[160] + 96]
        require mem[mem[160] + 96] <= 10
        _73 = mem[mem[128] + 96]
        idx = 0
        s = 0
        while uint8(idx) < _73:
            require uint8(idx) < mem[_3 + 96]
            _77 = mem[(32 * uint8(idx)) + _3 + 128]
            require mem[(32 * uint8(idx)) + _3 + 128] + s >= s
            stor9.length++
            if not stor9.length > stor9.length + 1:
                mem[0] = 9
                _100 = mem[64]
                mem[64] = mem[64] + 64
                require uint8(idx) < mem[_4 + 96]
                mem[_100] = mem[(32 * uint8(idx)) + _4 + 128]
                mem[_100 + 32] = _77 + s
                stor9[stor9.length].field_0 = mem[_100]
            else:
                t = sha3(9) + (2 * stor9.length + 1)
                while sha3(9) + (2 * stor9.length) > t:
                    stor[t] = 0
                    stor1[t] = 0
                    t = t + 2
                    continue 
                mem[0] = 9
                _140 = mem[64]
                mem[64] = mem[64] + 64
                require uint8(idx) < mem[_4 + 96]
                mem[_140] = mem[(32 * uint8(idx)) + _4 + 128]
                mem[_140 + 32] = _77 + s
                stor9[stor9.length].field_0 = mem[_140]
            stor9[stor9.length].field_256 = _77 + s
            idx = idx + 1
            s = _77 + s
            continue 
        require _7 == s
        mem[mem[64] len 4860] = code.data[5618 len 4860]
        mem[mem[64] + 4860] = stor0
        mem[mem[64] + 4892] = _8
        mem[mem[64] + 4924] = 160
        mem[mem[64] + 5020] = mem[_10 + 96]
        _82 = mem[_10 + 96]
        mem[mem[64] + 5052 len floor32(mem[_10 + 96])] = mem[_10 + 128 len floor32(mem[_10 + 96])]
        mem[mem[64] + 4956] = (32 * _82) + 192
        mem[(32 * _82) + mem[64] + 5052] = mem[_11 + 96]
        _128 = mem[_11 + 96]
        mem[(32 * _82) + mem[64] + 5084 len floor32(mem[_11 + 96])] = mem[_11 + 128 len floor32(mem[_11 + 96])]
        mem[mem[64] + 4988] = (32 * _128) + (32 * _82) + 224
        mem[(32 * _128) + (32 * _82) + mem[64] + 5084] = mem[_12 + 96]
        _156 = mem[_12 + 96]
        mem[(32 * _128) + (32 * _82) + mem[64] + 5116 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        create contract with 0 wei
                        code: code.data[5618 len 4860], stor0, _8, Array(len=(32 * _128) + (32 * _82) + 224, data=mem[mem[64] + 5020 len (32 * _156) + (32 * _128) + (32 * _82) + 96]), (32 * _82) + 192
    require create.new_address
    address(stor4.field_0) = address(create.new_address)
    return code.data[1038 len 4580]
}



// =====================  Runtime code  =====================


address owner;
uint256 weiRaised;
uint256 startsAt;
uint256 endsAt;
uint8 stor4; offset 160
uint8 stor4; offset 168
address tokenAddress;
address walletAddress;
address sub_462e7786Address;
uint256 sub_e9f53bd4;
uint8 stor8;
array of struct rates;
mapping of uint8 stor10;

function endsAt() {
    return endsAt
}

function weiRaised() {
    return weiRaised
}

function sub_462e7786(?) {
    return sub_462e7786Address
}

function isActivated() {
    return bool(uint8(stor4.field_160))
}

function wallet() {
    return walletAddress
}

function crowdfundFinalized() {
    return bool(uint8(stor4.field_168))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor10[arg1])
}

function startsAt() {
    return startsAt
}

function sub_b2da7853(?) {
    return bool(stor8)
}

function rates(uint256 arg1) {
    require arg1 < rates.length
    return rates[arg1].field_0, rates[arg1].field_256
}

function sub_e9f53bd4(?) {
    return sub_e9f53bd4
}

function token() {
    return tokenAddress
}

function kill() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.allocations(address arg1) with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require 1 == bool(uint8(stor4.field_168))
    require not ext_call.return_data[0]
    selfdestruct(owner)
}

function sub_5af2e9fb(?) {
    require owner == msg.sender
    sub_462e7786Address = arg1
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    stor10[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require owner == msg.sender
    stor10[address(arg1)] = 0
}

function changeWalletAddress(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManyToWhitelist(address[] arg1) {
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        stor10[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function removeManyFromWhitelist(address[] arg1) {
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 10
        stor10[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function getRate() {
    require startsAt <= block.timestamp
    idx = 0
    while uint8(idx) < rates.length:
        mem[0] = 9
        if block.timestamp - startsAt / 24 * 3600 >= rates[2 * uint8(idx)].field_256:
            idx = idx + 1
            continue 
        require uint8(idx) < rates.length
        return rates[2 * uint8(idx)].field_0
    return 0
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_2ec44994(?) {
    require owner == msg.sender
    require not uint8(stor4.field_160)
    startsAt = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xafbf9103 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require sub_e9f53bd4 + startsAt >= startsAt
    endsAt = sub_e9f53bd4 + startsAt
    uint8(stor4.field_160) = 1
    require startsAt >= block.timestamp
    require endsAt > startsAt
    return 1
}

function sub_c7b2d362(?) {
    require owner == msg.sender
    require 4 * 3600 <= startsAt
    require block.timestamp < startsAt - (4 * 3600)
    require 1 == bool(uint8(stor4.field_160))
    startsAt = arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xafbf9103 with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require sub_e9f53bd4 + startsAt >= startsAt
    endsAt = sub_e9f53bd4 + startsAt
    require startsAt >= block.timestamp
    require endsAt > startsAt
    return 1
}

function deliverPresaleTokens(address[] arg1, uint256[] arg2) {
    require block.timestamp <= startsAt
    require owner == msg.sender
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x75adc10 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 1
}

function closeCrowdfund() {
    require endsAt > 0
    require block.timestamp > endsAt
    require owner == msg.sender
    require not uint8(stor4.field_168)
    require ext_code.size(tokenAddress)
    call tokenAddress.allocations(address arg1) with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] > 0:
        call tokenAddress.0x75adc10 with:
             gas gas_remaining wei
            args sub_462e7786Address, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    call tokenAddress.unlockTokens() with:
         gas gas_remaining wei
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor4.field_168) = 1
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startsAt
    require block.timestamp <= endsAt
    require arg1
    require msg.value > 0
    if 1 == bool(stor8):
        require stor10[address(msg.sender)]
    require startsAt <= block.timestamp
    idx = 0
    while uint8(idx) < rates.length:
        mem[0] = 9
        if block.timestamp - startsAt / 24 * 3600 >= rates[2 * uint8(idx)].field_256:
            idx = idx + 1
            continue 
        require uint8(idx) < rates.length
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x75adc10 with:
                 gas gas_remaining wei
                args address(arg1), 0
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 0, arg1);
        else:
            require rates[2 * uint8(idx)].field_0 * msg.value / msg.value == rates[2 * uint8(idx)].field_0
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x75adc10 with:
                 gas gas_remaining wei
                args address(arg1), rates[2 * uint8(idx)].field_0 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, rates[2 * uint8(idx)].field_0 * msg.value, arg1);
    if msg.value:
        require not 0 / msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x75adc10 with:
         gas gas_remaining wei
        args address(arg1), 0
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, 0, arg1);
}

function _fallback() payable {
    require block.timestamp >= startsAt
    require block.timestamp <= endsAt
    require msg.sender
    require msg.value > 0
    if 1 == bool(stor8):
        require stor10[address(msg.sender)]
    require startsAt <= block.timestamp
    idx = 0
    while uint8(idx) < rates.length:
        mem[0] = 9
        if block.timestamp - startsAt / 24 * 3600 >= rates[2 * uint8(idx)].field_256:
            idx = idx + 1
            continue 
        require uint8(idx) < rates.length
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x75adc10 with:
                 gas gas_remaining wei
                args msg.sender, 0
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 0, msg.sender);
        else:
            require rates[2 * uint8(idx)].field_0 * msg.value / msg.value == rates[2 * uint8(idx)].field_0
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x75adc10 with:
                 gas gas_remaining wei
                args msg.sender, rates[2 * uint8(idx)].field_0 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, rates[2 * uint8(idx)].field_0 * msg.value, msg.sender);
    if msg.value:
        require not 0 / msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x75adc10 with:
         gas gas_remaining wei
        args msg.sender, 0
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, 0, msg.sender);
}



}
