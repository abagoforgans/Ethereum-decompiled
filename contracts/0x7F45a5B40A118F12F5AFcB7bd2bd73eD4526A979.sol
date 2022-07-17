contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address pendingOwner;
address tokenAddress;
address sub_ea61226cAddress;
uint256 sub_cb0856bb;
uint256 sub_dd43b0e2;
uint256 sub_86922b34;
uint256 sub_88dab1df;
uint256 sub_694f1564;
uint256 sub_c864d7bb;
address sub_c0ceece2Address;
address sub_79c92764Address;
array of struct conversions;
array of struct stor13;
uint256 totalLockedTokens;
uint256 fees;

function conversions(uint256 arg1) {
    require arg1 < conversions.length
    mem[128] = stor[sha3((6 * arg1) + ('name', 'conversions', 12) + 1)].field_0
    idx = 128
    s = 0
    while stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'conversions', 12) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if conversions[arg1].field_1288 <= 3:
        return conversions[arg1].field_0, 
               Array(len=stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length, data=mem[128 len stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length]),
               conversions[arg1].field_512,
               conversions[arg1].field_768,
               conversions[arg1].field_1024,
               bool(conversions[arg1].field_1280),
               conversions[arg1].field_1280
    revert
}

function paused() {
    return bool(stor1)
}

function sub_694f1564(?) {
    return sub_694f1564
}

function sub_79c92764(?) {
    return sub_79c92764Address
}

function sub_86922b34(?) {
    return sub_86922b34
}

function sub_88dab1df(?) {
    return sub_88dab1df
}

function owner() {
    return owner
}

function fees() {
    return fees
}

function sub_c0ceece2(?) {
    return sub_c0ceece2Address
}

function sub_c864d7bb(?) {
    return sub_c864d7bb
}

function sub_cb0856bb(?) {
    return sub_cb0856bb
}

function sub_dd43b0e2(?) {
    return sub_dd43b0e2
}

function pendingOwner() {
    return pendingOwner
}

function sub_ea61226c(?) {
    return sub_ea61226cAddress
}

function totalLockedTokens() {
    return totalLockedTokens
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function sub_0b4dc8ca(?) {
    require msg.sender == owner
    require stor1
    sub_cb0856bb = arg1
}

function sub_32c8b32c(?) {
    require msg.sender == owner
    require stor1
    sub_c864d7bb = arg1
}

function sub_a554bba5(?) {
    require msg.sender == owner
    require stor1
    sub_86922b34 = arg1
}

function sub_ca614320(?) {
    require msg.sender == owner
    require stor1
    sub_dd43b0e2 = arg1
}

function unpause() {
    require msg.sender == owner
    require stor1
    stor1 = 0
    emit Unpaused()
}

function pause() {
    require msg.sender == owner
    require not stor1
    stor1 = 1
    emit Paused()
}

function sub_5364e5ec(?) {
    require msg.sender == owner
    require stor1
    sub_c0ceece2Address = arg1
}

function sub_a5967b8f(?) {
    require msg.sender == owner
    require stor1
    sub_79c92764Address = arg1
}

function sub_fb84d069(?) {
    require msg.sender == owner
    require stor1
    sub_ea61226cAddress = arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_97f2c60c(?) {
    require msg.sender == owner
    require stor1
    if arg1 > sub_dd43b0e2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Discount cannot be higher than non-discounted rate'
    sub_88dab1df = arg1
}

function sub_d0bdb820(?) {
    require msg.sender == owner
    require stor1
    if arg1 > sub_86922b34:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Discount cannot be higher than non-discounted rate'
    sub_694f1564 = arg1
}

function collectFees() {
    require msg.sender == owner
    fees = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_c0ceece2Address, fees
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    emit 0x8404a1a2: sub_c0ceece2Address, fees, block.timestamp
}

function sub_bbc5b496(?) {
    require msg.sender == owner
    require stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_79c92764Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    emit 0xafa610e2: sub_79c92764Address, arg1, block.timestamp
}

function sub_ab3e9bb2(?) {
    require msg.sender == owner
    require not stor1
    require arg1 < conversions.length
    require conversions[arg1].field_1288 <= 3
    if conversions[arg1].field_1288 != 1:
        revert with 0, 'Conversion should be open'
    require arg1 < conversions.length
    conversions[arg1].field_1288 = 2
    require conversions[arg1].field_1024 + totalLockedTokens >= totalLockedTokens
    totalLockedTokens += conversions[arg1].field_1024
    require conversions[arg1].field_768 + fees >= fees
    fees += conversions[arg1].field_768
    mem[352] = stor[sha3((6 * arg1) + ('name', 'conversions', 12) + 1)].field_0
    idx = 352
    s = 0
    while stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length + 352 > idx + 32:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'conversions', 12) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x959e30f6: arg1, Array(len=stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length, data=mem[352 len stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'conversions', 12) + 1].length + 32 % 32)]), conversions[arg1].field_512, conversions[arg1].field_768, conversions[arg1].field_1024, bool(conversions[arg1].field_1280), block.timestamp, conversions[arg1].field_0
}

function sub_16c0be82(?) {
    require msg.sender == owner
    require not stor1
    require arg1 < conversions.length
    require conversions[arg1].field_1288 <= 3
    if conversions[arg1].field_1288 != 1:
        revert with 0, 'Conversion should be open'
    require arg1 < conversions.length
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args conversions[arg1].field_0, conversions[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    conversions[arg1].field_1288 = 3
    mem[352] = stor[sha3(('name', 'conversions', 12) + (6 * arg1) + 1)].field_0
    idx = 352
    s = 0
    while stor[('name', 'conversions', 12) + (6 * arg1) + 1].length + 352 > idx + 32:
        mem[idx + 32] = stor[s + sha3(('name', 'conversions', 12) + (6 * arg1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x927a8083: arg1, Array(len=stor[('name', 'conversions', 12) + (6 * arg1) + 1].length, data=mem[352 len stor[('name', 'conversions', 12) + (6 * arg1) + 1].length + (floor32(stor[('name', 'conversions', 12) + (6 * arg1) + 1].length - 1) + -stor[('name', 'conversions', 12) + (6 * arg1) + 1].length + 32 % 32)]), conversions[arg1].field_512, conversions[arg1].field_768, conversions[arg1].field_1024, bool(0 or conversions[arg1].field_1280), block.timestamp, conversions[arg1].field_0
}

function sub_10f33152(?) {
    require msg.sender == owner
    require not stor1
    require arg1 < stor13.length
    require stor13[arg1].field_1544 <= 3
    if stor13[arg1].field_1544 != 1:
        revert with 0, 'ConversionUnlock should be open'
    require arg1 < stor13.length
    stor13[arg1].field_1544 = 3
    mem[384] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_0
    idx = 384
    s = 0
    while stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 384 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 384] = stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 416] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_0
    idx = stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 416
    s = 0
    while stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + 416 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xb13fec8a: arg1, Array(len=stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length, data=mem[384 len stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + 32 % 32) + 32]), stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 288, stor13[arg1].field_768, stor13[arg1].field_1024, stor13[arg1].field_1280, bool(0 or stor13[arg1].field_1536), block.timestamp, stor13[arg1].field_0
}

function sub_f2e6fc18(?) {
    require msg.sender == owner
    require not stor1
    require arg1 < stor13.length
    require stor13[arg1].field_1544 <= 3
    if stor13[arg1].field_1544 != 1:
        revert with 0, 'ConversionUnlock should be open'
    require arg1 < stor13.length
    if stor13[arg1].field_768 > totalLockedTokens:
        revert with 0, 'Not enough tokens to convert'
    stor13[arg1].field_1544 = 2
    totalLockedTokens -= stor13[arg1].field_768
    require stor13[arg1].field_1024 + fees >= fees
    fees += stor13[arg1].field_1024
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor13[arg1].field_0, stor13[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    mem[384] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_0
    idx = 384
    s = 0
    while stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 384 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 384] = stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 416] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_0
    idx = stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 416
    s = 0
    while stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + 416 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x6b11b0af: arg1, Array(len=stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length, data=mem[384 len stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + 32 % 32) + 32]), stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 32 % 32) + 288, stor13[arg1].field_768, stor13[arg1].field_1024, stor13[arg1].field_1280, bool(stor13[arg1].field_1536), block.timestamp, stor13[arg1].field_0
}

function sub_d48fcecc(?) {
    require arg1 < stor13.length
    mem[96] = stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_0
    idx = 128
    s = 0
    while stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 160
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 128] = stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length
    mem[0] = (7 * arg1) + sha3(13) + 2
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 160] = stor[sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_0
    idx = ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 160
    s = 0
    while ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor13', 13) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 160] = stor13[arg1].field_0
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 256] = stor13[arg1].field_768
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 288] = stor13[arg1].field_1024
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 320] = stor13[arg1].field_1280
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 352] = bool(stor13[arg1].field_1536)
    require stor13[arg1].field_1544 <= 3
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 384] = stor13[arg1].field_1544
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 192] = 256
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 416] = stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 448 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)] = mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)]
    mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 224] = stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 288
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 448] = stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length
    mem[stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 480 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length)] = mem[ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 160 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length)]
    if not stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length % 32:
        return stor13[arg1].field_0, 
               Array(len=stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length, data=mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)], mem[(2 * ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 448 len stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length + stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + -ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 32]),
               stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 288,
               stor13[arg1].field_768,
               stor13[arg1].field_1024,
               stor13[arg1].field_1280,
               bool(stor13[arg1].field_1536),
               stor13[arg1].field_1536
    mem[floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 480] = mem[floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + -stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length % 32 + 512 len stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length % 32]
    return stor13[arg1].field_0, 
           Array(len=stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length, data=mem[128 len ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)], mem[(2 * ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length)) + ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + 448 len floor32(stor[(7 * arg1) + ('name', 'stor13', 13) + 2].length) + stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + -ceil32(stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length) + 64]),
           stor[(7 * arg1) + ('name', 'stor13', 13) + 1].length + 288,
           stor13[arg1].field_768,
           stor13[arg1].field_1024,
           stor13[arg1].field_1280,
           bool(stor13[arg1].field_1536),
           stor13[arg1].field_1536
}

function sub_73f2fd3c(?) {
    mem[128 len arg2.length] = arg2[all]
    require not stor1
    if arg1 < sub_c864d7bb:
        revert with 0, 'Should be above minimum conversion amount'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Allowance should be set'
    require ext_code.size(sub_ea61226cAddress)
    call sub_ea61226cAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_cb0856bb:
        if arg1:
            require sub_dd43b0e2 * arg1 / arg1 == sub_dd43b0e2
            require sub_dd43b0e2 * arg1 / 10000 <= arg1
            conversions.length++
            conversions[conversions.length].field_0 = msg.sender
            stor[sha3((6 * conversions.length) + ('name', 'conversions', 12) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            conversions[conversions.length].field_512 = arg1
            conversions[conversions.length].field_768 = sub_dd43b0e2 * arg1 / 10000
            conversions[conversions.length].field_1024 = arg1 - (sub_dd43b0e2 * arg1 / 10000)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1288 = 1
            conversions[conversions.length].field_1296 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Token transfer failed'
            emit 0xa5ca5e19: conversions.length, Array(len=arg2.length, data=arg2[all]), arg1, sub_dd43b0e2 * arg1 / 10000, arg1 - (sub_dd43b0e2 * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
        else:
            require 0 <= arg1
            mem[ceil32(arg2.length) + 128] = msg.sender
            conversions.length++
            conversions[conversions.length].field_0 = msg.sender
            stor[sha3((6 * conversions.length) + ('name', 'conversions', 12) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            conversions[conversions.length].field_512 = arg1
            conversions[conversions.length].field_768 = 0
            conversions[conversions.length].field_1024 = arg1
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1288 = 1
            conversions[conversions.length].field_1296 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Token transfer failed'
            mem[ceil32(arg2.length) + 608 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit 0xa5ca5e19: conversions.length, 224, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 608] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 640 len arg2.length % 32]
                emit 0xa5ca5e19: conversions.length, 224, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 608 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender
    else:
        if arg1:
            require sub_88dab1df * arg1 / arg1 == sub_88dab1df
            require sub_88dab1df * arg1 / 10000 <= arg1
            conversions.length++
            conversions[conversions.length].field_0 = msg.sender
            stor[sha3((6 * conversions.length) + ('name', 'conversions', 12) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            conversions[conversions.length].field_512 = arg1
            conversions[conversions.length].field_768 = sub_88dab1df * arg1 / 10000
            conversions[conversions.length].field_1024 = arg1 - (sub_88dab1df * arg1 / 10000)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1288 = 1
            conversions[conversions.length].field_1296 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Token transfer failed'
            emit 0xa5ca5e19: conversions.length, Array(len=arg2.length, data=arg2[all]), arg1, sub_88dab1df * arg1 / 10000, arg1 - (sub_88dab1df * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
        else:
            require 0 <= arg1
            mem[ceil32(arg2.length) + 128] = msg.sender
            conversions.length++
            conversions[conversions.length].field_0 = msg.sender
            stor[sha3((6 * conversions.length) + ('name', 'conversions', 12) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            conversions[conversions.length].field_512 = arg1
            conversions[conversions.length].field_768 = 0
            conversions[conversions.length].field_1024 = arg1
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1280 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            conversions[conversions.length].field_1288 = 1
            conversions[conversions.length].field_1296 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Token transfer failed'
            mem[ceil32(arg2.length) + 608 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                emit 0xa5ca5e19: conversions.length, 224, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, msg.sender
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + 608] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 640 len arg2.length % 32]
                emit 0xa5ca5e19: conversions.length, 224, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 608 len floor32(arg2.length) + -ceil32(arg2.length) + 32], msg.sender
}

function sub_5dacd429(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require not stor1
    if arg1 < sub_c864d7bb:
        revert with 0, 'Should be above minimum conversion amount'
    if arg1 > totalLockedTokens:
        revert with 0, 'Not enough tokens to convert'
    require ext_code.size(sub_ea61226cAddress)
    call sub_ea61226cAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_cb0856bb:
        if arg1:
            require sub_86922b34 * arg1 / arg1 == sub_86922b34
            require sub_86922b34 * arg1 / 10000 <= arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
            stor13.length++
            stor13[stor13.length].field_0 = msg.sender
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
            stor13[stor13.length].field_768 = arg1
            stor13[stor13.length].field_1024 = sub_86922b34 * arg1 / 10000
            stor13[stor13.length].field_1280 = arg1 - (sub_86922b34 * arg1 / 10000)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1544 = 1
            stor13[stor13.length].field_1552 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 704 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 704] = arg3.length
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit 0xfaf6ebe7: stor13.length, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg1, sub_86922b34 * arg1 / 10000, arg1 - (sub_86922b34 * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 768 len arg3.length % 32]
                emit 0xfaf6ebe7: stor13.length, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg1, sub_86922b34 * arg1 / 10000, arg1 - (sub_86922b34 * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
        else:
            require 0 <= arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
            stor13.length++
            stor13[stor13.length].field_0 = msg.sender
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
            stor13[stor13.length].field_768 = arg1
            stor13[stor13.length].field_1024 = 0
            stor13[stor13.length].field_1280 = arg1
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1544 = 1
            stor13[stor13.length].field_1552 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 704 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 704] = arg3.length
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit 0xfaf6ebe7: stor13.length, 256, arg2.length + 288, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + arg2.length + -ceil32(arg2.length) + 32], msg.sender
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 768 len arg3.length % 32]
                    emit 0xfaf6ebe7: stor13.length, 256, arg2.length + 288, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64], msg.sender
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 704] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 736 len arg2.length % 32]
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 736] = arg3.length
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 768 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit 0xfaf6ebe7: stor13.length, 256, floor32(arg2.length) + 320, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64], msg.sender
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 768] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 800 len arg3.length % 32]
                    emit 0xfaf6ebe7: stor13.length, 256, floor32(arg2.length) + 320, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96], msg.sender
    else:
        if arg1:
            require sub_694f1564 * arg1 / arg1 == sub_694f1564
            require sub_694f1564 * arg1 / 10000 <= arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
            stor13.length++
            stor13[stor13.length].field_0 = msg.sender
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
            stor13[stor13.length].field_768 = arg1
            stor13[stor13.length].field_1024 = sub_694f1564 * arg1 / 10000
            stor13[stor13.length].field_1280 = arg1 - (sub_694f1564 * arg1 / 10000)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1544 = 1
            stor13[stor13.length].field_1552 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 704 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 704] = arg3.length
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
            if not arg3.length % 32:
                emit 0xfaf6ebe7: stor13.length, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 288, arg1, sub_694f1564 * arg1 / 10000, arg1 - (sub_694f1564 * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
            else:
                mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 768 len arg3.length % 32]
                emit 0xfaf6ebe7: stor13.length, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 288, arg1, sub_694f1564 * arg1 / 10000, arg1 - (sub_694f1564 * arg1 / 10000), ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, msg.sender
        else:
            require 0 <= arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = msg.sender
            stor13.length++
            stor13[stor13.length].field_0 = msg.sender
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
            stor[sha3((7 * stor13.length) + ('name', 'stor13', 13) + 2)][].field_0 = Array(len=arg3.length, data=arg3[all])
            stor13[stor13.length].field_768 = arg1
            stor13[stor13.length].field_1024 = 0
            stor13[stor13.length].field_1280 = arg1
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1536 = uint8(ext_call.return_data[0] >= sub_cb0856bb)
            stor13[stor13.length].field_1544 = 1
            stor13[stor13.length].field_1552 = Mask(240, 16, ext_call.return_data[0] >= sub_cb0856bb) >> 16
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 704 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
            if not arg2.length % 32:
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 704] = arg3.length
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit 0xfaf6ebe7: stor13.length, 256, arg2.length + 288, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + arg2.length + -ceil32(arg2.length) + 32], msg.sender
                else:
                    mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 768 len arg3.length % 32]
                    emit 0xfaf6ebe7: stor13.length, 256, arg2.length + 288, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64], msg.sender
            else:
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 704] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 736 len arg2.length % 32]
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 736] = arg3.length
                mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 768 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
                if not arg3.length % 32:
                    emit 0xfaf6ebe7: stor13.length, 256, floor32(arg2.length) + 320, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64], msg.sender
                else:
                    mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 768] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 800 len arg3.length % 32]
                    emit 0xfaf6ebe7: stor13.length, 256, floor32(arg2.length) + 320, arg1, 0, arg1, ext_call.return_data[0] >= sub_cb0856bb, block.timestamp, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 704 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96], msg.sender
}



}
