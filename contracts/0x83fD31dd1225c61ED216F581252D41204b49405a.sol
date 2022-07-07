contract main {




// =====================  Runtime code  =====================


#
#  - sub_51299e50(?)
#
const getBalance = eth.balance(this.address)


address owner;
address croupierAddress;
address sub_48996a11Address;
uint256 minBetAmount;
uint256 maxBetAmount;
uint256 sub_236d302e;
uint256 sub_bc3dfaf1;
uint256 sub_11fcf98e;
uint256 minJackpotBet;
uint256 jackpotFee;
uint256 sub_7a4360c1;
uint256 jackpotAmount;
uint256 sub_511c93f8;
uint256 withdrawAmount;
array of struct stor14;
uint256 sub_903cafbe;
uint256 sub_e34a69e0;
array of struct stor17;
array of struct stor18;
uint256 sub_85b44e2c;
array of struct stor20;
array of struct stor21;
uint8 isInit;
uint256 sub_ec5f402b;
uint256 sub_472cc701;
array of struct bets;
mapping of struct games;
array of address sub_5ead4698;
address stor28;

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return games[arg1].field_0, 
           games[arg1].field_256,
           games[arg1].field_512,
           games[arg1].field_768,
           bool(uint8(games[arg1].field_1024))
}

function sub_11fcf98e(?) {
    return sub_11fcf98e
}

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    return address(bets[arg1].field_0), bets[arg1].field_256, bets[arg1].field_512, bool(uint8(bets[arg1].field_1024))
}

function sub_236d302e(?) {
    return sub_236d302e
}

function minJackpotBet() {
    return minJackpotBet
}

function sub_472cc701(?) {
    return sub_472cc701
}

function sub_48996a11(?) {
    return sub_48996a11Address
}

function sub_511c93f8(?) {
    return sub_511c93f8
}

function withdrawAmount() {
    return withdrawAmount
}

function sub_5ead4698(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_5ead4698[arg1])
    return address(sub_5ead4698[arg1][arg2])
}

function croupier() {
    return croupierAddress
}

function sub_7a4360c1(?) {
    return sub_7a4360c1
}

function sub_85b44e2c(?) {
    return sub_85b44e2c
}

function owner() {
    return owner
}

function sub_903cafbe(?) {
    return sub_903cafbe
}

function isInit() {
    return bool(isInit)
}

function jackpotAmount() {
    return jackpotAmount
}

function sub_bc3dfaf1(?) {
    return sub_bc3dfaf1
}

function maxBetAmount() {
    return maxBetAmount
}

function sub_e34a69e0(?) {
    return sub_e34a69e0
}

function jackpotFee() {
    return jackpotFee
}

function sub_ec5f402b(?) {
    return sub_ec5f402b
}

function minBetAmount() {
    return minBetAmount
}

function _fallback() payable {
    revert
}

function recharge() payable {
    require sub_511c93f8 + msg.value >= sub_511c93f8
    sub_511c93f8 += msg.value
    emit 0x9814dc9f: msg.sender, msg.value, block.timestamp
}

function sub_3ecc8961(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_236d302e = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require arg1
    owner = arg1
}

function sub_5ebed2c3(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    games[arg1].field_0 = arg2
    games[arg1].field_256 = arg3
    games[arg1].field_512 = arg4
    games[arg1].field_768 = arg5
    uint8(games[arg1].field_1024) = uint8(arg6)
}

function initContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    stor28 = arg1
    if not isInit:
        isInit = 1
        require ext_code.size(stor28)
        call stor28.0x3c043ec6 with:
             gas gas_remaining wei
            args sub_48996a11Address, 'system', 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_d11e2c15(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require ext_code.size(stor28)
    staticcall stor28.0xf858d07f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(48, 208, ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Default gambler account must not be used.'
    sub_48996a11Address = arg1
}

function extract(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 <= 0:
        revert with 0, 'The prize pool is not enough.'
    if arg1 > eth.balance(this.address):
        revert with 0, 'The prize pool is not enough.'
    require withdrawAmount + arg1 >= withdrawAmount
    withdrawAmount += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1, block.timestamp);
}

function sub_32520c51(?) {
    if not stor17.length:
        mem[(32 * stor17.length) + 128] = 32
        mem[(32 * stor17.length) + 160] = stor17.length
        mem[(32 * stor17.length) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
        return memory
          from (32 * stor17.length) + 128
           len (96 * stor17.length) + 64
    mem[128] = uint256(stor17.field_0)
    idx = 128
    s = 0
    while (32 * stor17.length) + 96 > idx:
        mem[idx + 32] = stor17[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor17.length) + 192 len floor32(stor17.length)] = mem[128 len floor32(stor17.length)]
    return Array(len=stor17.length, data=mem[128 len floor32(stor17.length)], mem[(32 * stor17.length) + floor32(stor17.length) + 192 len (32 * stor17.length) - floor32(stor17.length)]), 
}

function sub_cd491048(?) {
    if not stor20.length:
        mem[(32 * stor20.length) + 128] = 32
        mem[(32 * stor20.length) + 160] = stor20.length
        mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
        return memory
          from (32 * stor20.length) + 128
           len (96 * stor20.length) + 64
    mem[128] = uint256(stor20.field_0)
    idx = 128
    s = 0
    while (32 * stor20.length) + 96 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
    return Array(len=stor20.length, data=mem[128 len floor32(stor20.length)], mem[(32 * stor20.length) + floor32(stor20.length) + 192 len (32 * stor20.length) - floor32(stor20.length)]), 
}

function sub_f15601fb(?) {
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = uint256(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
    return Array(len=stor14.length, data=mem[128 len floor32(stor14.length)], mem[(32 * stor14.length) + floor32(stor14.length) + 192 len (32 * stor14.length) - floor32(stor14.length)]), 
}

function sub_bb174ee6(?) {
    if not stor21.length:
        mem[(32 * stor21.length) + 128] = 32
        mem[(32 * stor21.length) + 160] = stor21.length
        mem[(32 * stor21.length) + 192 len floor32(stor21.length)] = mem[128 len floor32(stor21.length)]
        return memory
          from (32 * stor21.length) + 128
           len (96 * stor21.length) + 64
    mem[128] = address(stor21.field_0)
    idx = 128
    s = 0
    while (32 * stor21.length) + 96 > idx:
        mem[idx + 32] = address(stor21[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor21.length) + 192 len floor32(stor21.length)] = mem[128 len floor32(stor21.length)]
    return Array(len=stor21.length, data=mem[128 len floor32(stor21.length)], mem[(32 * stor21.length) + floor32(stor21.length) + 192 len (32 * stor21.length) - floor32(stor21.length)]), 
}

function sub_cfe4a200(?) {
    if not stor18.length:
        mem[(32 * stor18.length) + 128] = 32
        mem[(32 * stor18.length) + 160] = stor18.length
        mem[(32 * stor18.length) + 192 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
        return memory
          from (32 * stor18.length) + 128
           len (96 * stor18.length) + 64
    mem[128] = address(stor18.field_0)
    idx = 128
    s = 0
    while (32 * stor18.length) + 96 > idx:
        mem[idx + 32] = address(stor18[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18.length) + 192 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
    return Array(len=stor18.length, data=mem[128 len floor32(stor18.length)], mem[(32 * stor18.length) + floor32(stor18.length) + 192 len (32 * stor18.length) - floor32(stor18.length)]), 
}

function sub_f148d213(?) {
    require calldata.size - 4 >= 32
    if sub_ec5f402b:
        mem[128 len 32 * sub_ec5f402b] = code.data[21974 len 32 * sub_ec5f402b]
    idx = arg1
    s = 0
    while idx < bets.length:
        mem[0] = 25
        if bool(uint8(bets[idx].field_1024)) != 1:
            require idx + 1 >= idx
            idx = idx + 1
            s = s
            continue 
        require s < sub_ec5f402b
        mem[(32 * s) + 128] = idx
        require s + 1 >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * sub_ec5f402b) + 224 len floor32(sub_ec5f402b)] = mem[128 len floor32(sub_ec5f402b)]
    return sub_472cc701, 
           Array(len=sub_ec5f402b, data=mem[128 len floor32(sub_ec5f402b)], mem[(32 * sub_ec5f402b) + floor32(sub_ec5f402b) + 224 len (32 * sub_ec5f402b) - floor32(sub_ec5f402b)])
}

function sub_45b7387b(?) {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    if not bets[arg1].field_768:
        mem[(32 * bets[arg1].field_768) + 128] = 32
        mem[(32 * bets[arg1].field_768) + 160] = bets[arg1].field_768
        mem[(32 * bets[arg1].field_768) + 192 len floor32(bets[arg1].field_768)] = mem[128 len floor32(bets[arg1].field_768)]
        return memory
          from (32 * bets[arg1].field_768) + 128
           len (96 * bets[arg1].field_768) + 64
    mem[128] = stor[sha3((5 * arg1) + ('name', 'bets', 25) + 3)].field_0
    idx = 128
    s = 0
    while (32 * bets[arg1].field_768) + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'bets', 25) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * bets[arg1].field_768) + 192 len floor32(bets[arg1].field_768)] = mem[128 len floor32(bets[arg1].field_768)]
    return Array(len=bets[arg1].field_768, data=mem[128 len floor32(bets[arg1].field_768)], mem[(32 * bets[arg1].field_768) + floor32(bets[arg1].field_768) + 192 len (32 * bets[arg1].field_768) - floor32(bets[arg1].field_768)]), 
}

function sub_c872a7f0(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    idx = 0
    while idx < stor21.length:
        require idx < stor20.length
        if not arg1:
            require idx < stor21.length
            call address(stor21[idx].field_0) with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < stor21.length
            mem[0] = 21
            mem[mem[64]] = address(stor21[idx].field_0)
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = arg2
            emit 0x5cbb5edd: address(stor21[idx].field_0), 0, arg2
        else:
            require arg1
            require arg1 * stor20[idx].field_0 / arg1 == stor20[idx].field_0
            require idx < stor21.length
            call address(stor21[idx].field_0) with:
               value arg1 * stor20[idx].field_0 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < stor21.length
            mem[0] = 21
            mem[mem[64]] = address(stor21[idx].field_0)
            mem[mem[64] + 32] = arg1 * stor20[idx].field_0 / 100
            mem[mem[64] + 64] = arg2
            emit 0x5cbb5edd: address(stor21[idx].field_0), arg1 * stor20[idx].field_0 / 100, arg2
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function sub_957ee3a0(?) {
    require calldata.size - 4 >= 416
    require cd[292] <= 4294967296
    require cd[292] + 36 <= calldata.size
    require ('cd', 292).length <= 4294967296 and cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    mem[128 len 32 * ('cd', 292).length] = call.data[cd[292] + 36 len 32 * ('cd', 292).length]
    mem[(32 * ('cd', 292).length) + 128] = 0
    idx = 0
    s = 0
    while idx < ('cd', 292).length:
        require idx < ('cd', 292).length
        require s + mem[(32 * idx) + 128] >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    if s * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length * ('cd', 292).length != 100:
        revert with 0, 'The total ratio of must be 100%.'
    if cd[196] <= cd[132]:
        revert with 0, 'The minimum prize amount for the grand prize is lower than the handling fee.'
    if cd[196] < cd[36]:
        revert with 0, 'The minimum bet amount is too low.'
    require cd[324] + cd[260] >= cd[324]
    if cd[324] + cd[260] > 100:
        revert with 0, 'Platform and invite ratio does not exceed 100%.'
    croupierAddress = address(cd[4])
    minBetAmount = cd[36]
    maxBetAmount = cd[68]
    jackpotAmount = cd[100]
    jackpotFee = cd[132]
    sub_7a4360c1 = cd[164]
    minJackpotBet = cd[196]
    sub_903cafbe = cd[228]
    sub_e34a69e0 = cd[260]
    stor14.length = ('cd', 292).length
    if not ('cd', 292).length:
        idx = 0
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[292] + 36
        while cd[292] + (32 * ('cd', 292).length) + 36 > idx:
            stor14[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 292).length) + 31) >> 5
        while stor14.length > idx:
            stor14[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_85b44e2c = cd[324]
    sub_bc3dfaf1 = cd[356]
    sub_11fcf98e = cd[388]
}

function sub_0cd6d581(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 128] = 0
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        require s + mem[(32 * idx) + 128] >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length != 100:
        revert with 0, 'The total ratio of must be 100%.'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Platform dividend account number and proportion do not match.'
    stor17.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        t = sha3(17)
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor[t * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length] = cd[idx]
            t = (t * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor18.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor18.length > idx:
            address(stor18[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(stor18[s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor18.length > idx:
            address(stor18[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_e3fd2f94(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + 128] = 0
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        require s + mem[(32 * idx) + 128] >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length != 100:
        revert with 0, 'The total ratio of must be 100%.'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Platform dividend account number and proportion do not match.'
    stor20.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor20.length > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        t = sha3(20)
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor[t * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length] = cd[idx]
            t = (t * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor20.length > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor21.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor21.length > idx:
            address(stor21[idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(stor21[s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor21.length > idx:
            address(stor21[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_6ad97cec(?) {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] < bets.length
    if bool(uint8(bets[('cd', 68)[0]].field_1024)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an "unopen" state.'
    require bets[('cd', 68)[0]].field_256 + sub_236d302e >= bets[('cd', 68)[0]].field_256
    require 4 < ('cd', 68).length
    if ('cd', 68)[4] >= bets[('cd', 68)[0]].field_256 + sub_236d302e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'winAmount should be a reasonable number.'
    if bets[('cd', 68)[0]].field_256 < minJackpotBet:
        require 3 < ('cd', 68).length
        if ('cd', 68)[3] != 1:
            if 1 > eth.balance(this.address):
                revert with 0, 'The prize pool is not enough.'
            uint8(bets[('cd', 68)[0]].field_1024) = 0
            require 1 <= sub_ec5f402b
            sub_ec5f402b--
            require bets[('cd', 68)[0]].field_256 <= sub_472cc701
            sub_472cc701 -= bets[('cd', 68)[0]].field_256
            mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
            mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
            require 0 < ('cd', 68).length
            require mem[128] < bets.length
            require 0 < ('cd', 68).length
            require 1 < ('cd', 68).length
            _46 = mem[160]
            require 2 < ('cd', 68).length
            _54 = mem[192]
            require 3 < ('cd', 68).length
            _65 = mem[224]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _46
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _54
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _65
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
            mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
            if not bets[mem[128]].field_768:
                emit 0x355a6f41: bets[mem[128]].field_512, _46, _54, 0, _65, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
            else:
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                s = 0
                while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                    mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
            call address(bets[('cd', 68)[0]].field_0) with:
               value 1 wei
                 gas 0 wei
        else:
            require 4 < ('cd', 68).length
            require ('cd', 68)[4] >= 0
            if ('cd', 68)[4]:
                if ('cd', 68)[4] > eth.balance(this.address):
                    revert with 0, 'The prize pool is not enough.'
                uint8(bets[('cd', 68)[0]].field_1024) = 0
                require 1 <= sub_ec5f402b
                sub_ec5f402b--
                require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                sub_472cc701 -= bets[('cd', 68)[0]].field_256
                mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                require 0 < ('cd', 68).length
                require mem[128] < bets.length
                require 0 < ('cd', 68).length
                require 1 < ('cd', 68).length
                _99 = mem[160]
                require 2 < ('cd', 68).length
                _119 = mem[192]
                require 3 < ('cd', 68).length
                _136 = mem[224]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _99
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _119
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _136
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = ('cd', 68)[4]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                if not bets[mem[128]].field_768:
                    emit 0x355a6f41: bets[mem[128]].field_512, _99, _119, 0, _136, ('cd', 68)[4], 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                else:
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                    idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                    s = 0
                    while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                        mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                call address(bets[('cd', 68)[0]].field_0) with:
                   value ('cd', 68)[4] wei
                     gas 2300 * is_zero(value) wei
            else:
                if 1 > eth.balance(this.address):
                    revert with 0, 'The prize pool is not enough.'
                uint8(bets[('cd', 68)[0]].field_1024) = 0
                require 1 <= sub_ec5f402b
                sub_ec5f402b--
                require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                sub_472cc701 -= bets[('cd', 68)[0]].field_256
                mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                require 0 < ('cd', 68).length
                require mem[128] < bets.length
                require 0 < ('cd', 68).length
                require 1 < ('cd', 68).length
                _121 = mem[160]
                require 2 < ('cd', 68).length
                _140 = mem[192]
                require 3 < ('cd', 68).length
                _158 = mem[224]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _121
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _140
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _158
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                if not bets[mem[128]].field_768:
                    emit 0x355a6f41: bets[mem[128]].field_512, _121, _140, 0, _158, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                else:
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                    idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                    s = 0
                    while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                        mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                call address(bets[('cd', 68)[0]].field_0) with:
                   value 1 wei
                     gas 0 wei
    else:
        require 1 < ('cd', 68).length
        if ('cd', 68)[1] != 1:
            require 3 < ('cd', 68).length
            if ('cd', 68)[3] != 1:
                if 1 > eth.balance(this.address):
                    revert with 0, 'The prize pool is not enough.'
                uint8(bets[('cd', 68)[0]].field_1024) = 0
                require 1 <= sub_ec5f402b
                sub_ec5f402b--
                require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                sub_472cc701 -= bets[('cd', 68)[0]].field_256
                mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                require 0 < ('cd', 68).length
                require mem[128] < bets.length
                require 0 < ('cd', 68).length
                require 1 < ('cd', 68).length
                _72 = mem[160]
                require 2 < ('cd', 68).length
                _87 = mem[192]
                require 3 < ('cd', 68).length
                _103 = mem[224]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _72
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _87
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _103
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                if not bets[mem[128]].field_768:
                    emit 0x355a6f41: bets[mem[128]].field_512, _72, _87, 0, _103, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                else:
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                    idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                    s = 0
                    while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                        mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                call address(bets[('cd', 68)[0]].field_0) with:
                   value 1 wei
                     gas 0 wei
            else:
                require 4 < ('cd', 68).length
                require ('cd', 68)[4] >= 0
                if ('cd', 68)[4]:
                    if ('cd', 68)[4] > eth.balance(this.address):
                        revert with 0, 'The prize pool is not enough.'
                    uint8(bets[('cd', 68)[0]].field_1024) = 0
                    require 1 <= sub_ec5f402b
                    sub_ec5f402b--
                    require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                    sub_472cc701 -= bets[('cd', 68)[0]].field_256
                    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                    require 0 < ('cd', 68).length
                    require mem[128] < bets.length
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 68).length
                    _143 = mem[160]
                    require 2 < ('cd', 68).length
                    _164 = mem[192]
                    require 3 < ('cd', 68).length
                    _181 = mem[224]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _143
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _164
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _181
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = ('cd', 68)[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                    if not bets[mem[128]].field_768:
                        emit 0x355a6f41: bets[mem[128]].field_512, _143, _164, 0, _181, ('cd', 68)[4], 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                    else:
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                        idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                        s = 0
                        while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                            mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                    call address(bets[('cd', 68)[0]].field_0) with:
                       value ('cd', 68)[4] wei
                         gas 2300 * is_zero(value) wei
                else:
                    if 1 > eth.balance(this.address):
                        revert with 0, 'The prize pool is not enough.'
                    uint8(bets[('cd', 68)[0]].field_1024) = 0
                    require 1 <= sub_ec5f402b
                    sub_ec5f402b--
                    require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                    sub_472cc701 -= bets[('cd', 68)[0]].field_256
                    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                    require 0 < ('cd', 68).length
                    require mem[128] < bets.length
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 68).length
                    _166 = mem[160]
                    require 2 < ('cd', 68).length
                    _185 = mem[192]
                    require 3 < ('cd', 68).length
                    _202 = mem[224]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _166
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _185
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _202
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                    if not bets[mem[128]].field_768:
                        emit 0x355a6f41: bets[mem[128]].field_512, _166, _185, 0, _202, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                    else:
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                        idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                        s = 0
                        while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                            mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                    call address(bets[('cd', 68)[0]].field_0) with:
                       value 1 wei
                         gas 0 wei
        else:
            require 2 < ('cd', 68).length
            if ('cd', 68)[2] != sub_7a4360c1:
                require 3 < ('cd', 68).length
                if ('cd', 68)[3] != 1:
                    if 1 > eth.balance(this.address):
                        revert with 0, 'The prize pool is not enough.'
                    uint8(bets[('cd', 68)[0]].field_1024) = 0
                    require 1 <= sub_ec5f402b
                    sub_ec5f402b--
                    require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                    sub_472cc701 -= bets[('cd', 68)[0]].field_256
                    mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                    mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                    require 0 < ('cd', 68).length
                    require mem[128] < bets.length
                    require 0 < ('cd', 68).length
                    require 1 < ('cd', 68).length
                    _110 = mem[160]
                    require 2 < ('cd', 68).length
                    _127 = mem[192]
                    require 3 < ('cd', 68).length
                    _147 = mem[224]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _110
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _127
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _147
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                    mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                    mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                    if not bets[mem[128]].field_768:
                        emit 0x355a6f41: bets[mem[128]].field_512, _110, _127, 0, _147, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                    else:
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                        idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                        s = 0
                        while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                            mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                    call address(bets[('cd', 68)[0]].field_0) with:
                       value 1 wei
                         gas 0 wei
                else:
                    require 4 < ('cd', 68).length
                    require ('cd', 68)[4] >= 0
                    if ('cd', 68)[4]:
                        if ('cd', 68)[4] > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _188 = mem[160]
                        require 2 < ('cd', 68).length
                        _208 = mem[192]
                        require 3 < ('cd', 68).length
                        _227 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _188
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _208
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _227
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = ('cd', 68)[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _188, _208, 0, _227, ('cd', 68)[4], 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value ('cd', 68)[4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 1 > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _210 = mem[160]
                        require 2 < ('cd', 68).length
                        _231 = mem[192]
                        require 3 < ('cd', 68).length
                        _245 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _210
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _231
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 0
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _245
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _210, _231, 0, _245, 1, 384, bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, ('cd', 100).length, call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32], mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value 1 wei
                             gas 0 wei
            else:
                require jackpotAmount >= 0
                jackpotAmount = 0
                require 3 < ('cd', 68).length
                if ('cd', 68)[3] != 1:
                    if jackpotAmount:
                        if jackpotAmount > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _172 = mem[160]
                        require 2 < ('cd', 68).length
                        _192 = mem[192]
                        require 3 < ('cd', 68).length
                        _212 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _172
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _192
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = jackpotAmount
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _212
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = jackpotAmount
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _172, _192, jackpotAmount, _212, jackpotAmount, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32]), bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value jackpotAmount wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 1 > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _194 = mem[160]
                        require 2 < ('cd', 68).length
                        _216 = mem[192]
                        require 3 < ('cd', 68).length
                        _233 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _194
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _216
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = jackpotAmount
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _233
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _194, _216, jackpotAmount, _233, 1, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32]), bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value 1 wei
                             gas 0 wei
                else:
                    require 4 < ('cd', 68).length
                    require jackpotAmount + ('cd', 68)[4] >= jackpotAmount
                    if jackpotAmount + ('cd', 68)[4]:
                        if jackpotAmount + ('cd', 68)[4] > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _262 = mem[160]
                        require 2 < ('cd', 68).length
                        _275 = mem[192]
                        require 3 < ('cd', 68).length
                        _285 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _262
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _275
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = jackpotAmount
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _285
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = jackpotAmount + ('cd', 68)[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _262, _275, jackpotAmount, _285, jackpotAmount + ('cd', 68)[4], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32]), bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value jackpotAmount + ('cd', 68)[4] wei
                             gas 2300 * is_zero(value) wei
                    else:
                        if 1 > eth.balance(this.address):
                            revert with 0, 'The prize pool is not enough.'
                        uint8(bets[('cd', 68)[0]].field_1024) = 0
                        require 1 <= sub_ec5f402b
                        sub_ec5f402b--
                        require bets[('cd', 68)[0]].field_256 <= sub_472cc701
                        sub_472cc701 -= bets[('cd', 68)[0]].field_256
                        mem[128 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
                        mem[(32 * ('cd', 68).length) + 128] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + 160 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = 0
                        require 0 < ('cd', 68).length
                        require mem[128] < bets.length
                        require 0 < ('cd', 68).length
                        require 1 < ('cd', 68).length
                        _277 = mem[160]
                        require 2 < ('cd', 68).length
                        _289 = mem[192]
                        require 3 < ('cd', 68).length
                        _293 = mem[224]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160] = bets[mem[128]].field_512
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 192] = _277
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = _289
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = jackpotAmount
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = _293
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320] = 1
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 384] = bets[mem[128]].field_256
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 448] = cd[4]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 480] = cd[36]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 512] = block.timestamp
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 352] = 384
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 544] = ('cd', 100).length
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 576 len floor32(('cd', 100).length)] = call.data[cd[100] + 36 len floor32(('cd', 100).length)]
                        mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 416] = (32 * ('cd', 100).length) + 416
                        mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 576] = bets[mem[128]].field_768
                        if not bets[mem[128]].field_768:
                            emit 0x355a6f41: bets[mem[128]].field_512, _277, _289, jackpotAmount, _293, 1, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len floor32(('cd', 100).length)], mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + floor32(('cd', 100).length) + 576 len (32 * ('cd', 100).length) + -floor32(('cd', 100).length) + 32]), bets[mem[128]].field_256, (32 * ('cd', 100).length) + 416, cd[4], cd[36], block.timestamp, mem[128], address(bets[mem[128]].field_0)
                        else:
                            mem[(64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608] = stor[sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_0
                            idx = (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + 608
                            s = 0
                            while (64 * ('cd', 100).length) + (32 * ('cd', 68).length) + (32 * bets[mem[128]].field_768) + 608 > idx + 32:
                                mem[idx + 32] = stor[s + sha3((5 * mem[128]) + ('name', 'bets', 25) + 3)].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x355a6f41: mem[(32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 160 len (32 * ('cd', 100).length) + (32 * bets[mem[128]].field_768) + 448], mem[128], address(bets[mem[128]].field_0)
                        call address(bets[('cd', 68)[0]].field_0) with:
                           value 1 wei
                             gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
