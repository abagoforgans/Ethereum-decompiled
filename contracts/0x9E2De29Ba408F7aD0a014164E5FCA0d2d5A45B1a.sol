contract main {




// =====================  Runtime code  =====================


const sub_7de528ad(?) = 26000000 * 10^18

const sub_8b3f520e(?) = (576 * 24 * 3600)

const sub_8eab0f86(?) = (1440 * 24 * 3600)


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
uint256 cap;
uint256 sub_6178dbeb;
uint256 sub_ec0290ad;
uint256 sub_5b909e2d;
uint256 totalMintedBountyTokens;
uint256 privateSaleEndDate;
mapping of uint8 stor13;
uint256 sub_c18bab4a;
mapping of uint8 stor15;
mapping of uint8 stor16;

function privateSaleEndDate() {
    return privateSaleEndDate
}

function rate() {
    return rate
}

function sub_31e8e0a2(?) {
    return bool(stor16[arg1])
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function totalMintedBountyTokens() {
    return totalMintedBountyTokens
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_5b909e2d(?) {
    return sub_5b909e2d
}

function sub_6178dbeb(?) {
    return sub_6178dbeb
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor15[arg1])
}

function openingTime() {
    return openingTime
}

function sub_c18bab4a(?) {
    return sub_c18bab4a
}

function sub_ec0290ad(?) {
    return sub_ec0290ad
}

function minters(address arg1) {
    return bool(stor13[arg1])
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function sub_d81685fc(?) {
    require msg.sender == owner
    stor16[address(arg1)] = 0
}

function sub_36facd8d(?) {
    require msg.sender == owner
    require arg1
    stor16[address(arg1)] = 1
}

function addToWhitelist(address arg1) {
    require stor16[address(msg.sender)]
    stor15[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require stor16[address(msg.sender)]
    stor15[address(arg1)] = 0
}

function removeMinter(address arg1) {
    require msg.sender == owner
    stor13[address(arg1)] = 0
    emit 0x4f2e4573: arg1
}

function addMinter(address arg1) {
    require msg.sender == owner
    require arg1
    stor13[address(arg1)] = 1
    emit 0xf520dd67: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp <= closingTime
    require arg1
    rate = arg1
    emit LogRateChanged(arg1);
    return 1
}

function addManyToWhitelist(address[] arg1) {
    require stor16[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 15
        stor15[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    require block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor6.field_160) = 1
}

function sub_993721d4(?) {
    require msg.sender == owner
    require block.timestamp <= privateSaleEndDate
    if not arg1:
        require privateSaleEndDate >= privateSaleEndDate
        require closingTime >= closingTime
        emit 0x7df78e9f: 0
    else:
        require arg1
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require privateSaleEndDate + (24 * 3600 * arg1) >= privateSaleEndDate
        privateSaleEndDate += 24 * 3600 * arg1
        require closingTime + (24 * 3600 * arg1) >= closingTime
        closingTime += 24 * 3600 * arg1
        emit 0x7df78e9f: (24 * 3600 * arg1)
    return 1
}

function sub_532cf78d(?) {
    require msg.sender == owner
    require block.timestamp > privateSaleEndDate
    require block.timestamp <= closingTime
    require arg1 <= sub_c18bab4a
    require sub_c18bab4a - arg1 >= 0
    if not arg1:
        require arg1 <= sub_c18bab4a
        sub_c18bab4a -= arg1
        require closingTime >= closingTime
    else:
        require arg1
        require 24 * 3600 * arg1 / arg1 == 24 * 3600
        require arg1 <= sub_c18bab4a
        sub_c18bab4a -= arg1
        require closingTime + (24 * 3600 * arg1) >= closingTime
        closingTime += 24 * 3600 * arg1
    emit 0xd56dc2c8: arg1
    return 1
}

function sub_c28f06f7(?) {
    require stor13[address(msg.sender)]
    require block.timestamp <= closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= sub_6178dbeb
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x95a520a2: msg.sender, address(arg1), arg2
    return 1
}

function createBountyToken(address arg1, uint256 arg2) {
    require stor13[address(msg.sender)]
    require block.timestamp <= closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 <= sub_6178dbeb
    require totalMintedBountyTokens + arg2 >= totalMintedBountyTokens
    require totalMintedBountyTokens + arg2 <= sub_ec0290ad
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalMintedBountyTokens + arg2 >= totalMintedBountyTokens
    totalMintedBountyTokens += arg2
    emit LogBountyTokenMinted(msg.sender, address(arg1), arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require msg.value >= 10^16
    require msg.value <= 250 * 10^18
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        if block.timestamp <= privateSaleEndDate:
            require ext_call.return_data[0] < 26000000 * 10^18
        require ext_call.return_data[0] <= sub_6178dbeb
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        if block.timestamp <= privateSaleEndDate:
            require ext_call.return_data[0] + (msg.value * rate) < 26000000 * 10^18
        require ext_call.return_data[0] + (msg.value * rate) <= sub_6178dbeb
    require stor15[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= 10^16
    require msg.value <= 250 * 10^18
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= ext_call.return_data[0]
        if block.timestamp <= privateSaleEndDate:
            require ext_call.return_data[0] < 26000000 * 10^18
        require ext_call.return_data[0] <= sub_6178dbeb
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + (msg.value * rate) >= ext_call.return_data[0]
        if block.timestamp <= privateSaleEndDate:
            require ext_call.return_data[0] + (msg.value * rate) < 26000000 * 10^18
        require ext_call.return_data[0] + (msg.value * rate) <= sub_6178dbeb
    require stor15[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6b7837d4(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor13[address(msg.sender)]
    require block.timestamp <= closingTime
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _40 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + mem[(32 * idx) + (32 * arg1.length) + 160] >= ext_call.return_data[0]
        require ext_call.return_data[0] + mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_6178dbeb
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _40
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _40
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0xb753273e: msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 128
    return 1
}

function sub_352cf07a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor13[address(msg.sender)]
    require block.timestamp <= closingTime
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _40 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + mem[(32 * idx) + (32 * arg1.length) + 160] >= ext_call.return_data[0]
        require ext_call.return_data[0] + mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_6178dbeb
        require totalMintedBountyTokens + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalMintedBountyTokens
        require totalMintedBountyTokens + mem[(32 * idx) + (32 * arg1.length) + 160] <= sub_ec0290ad
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _40
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _40
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalMintedBountyTokens + _40 >= totalMintedBountyTokens
        totalMintedBountyTokens += _40
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + 288 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 288] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x737d5cf0: msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 288 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 128
    return 1
}



}
