contract main {




// =====================  Runtime code  =====================


#
#  - sub_51299e50(?)
#  - sub_6ad97cec(?)
#
const getBalance = eth.balance(this.address)


address owner;
address croupierAddress;
address sub_48996a11Address;
address sub_70bf52dfAddress;
uint256 minBetAmount;
uint256 maxBetAmount;
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
    return games[arg1].field_0, games[arg1].field_256, games[arg1].field_512, games[arg1].field_768, bool(games[arg1].field_1024)
}

function sub_11fcf98e(?) {
    return sub_11fcf98e
}

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    return bets[arg1].field_0, bets[arg1].field_256, bets[arg1].field_512, bool(bets[arg1].field_1024)
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

function sub_70bf52df(?) {
    return sub_70bf52dfAddress
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
    require msg.value + sub_511c93f8 >= sub_511c93f8
    sub_511c93f8 += msg.value
    emit 0x9814dc9f: msg.sender, msg.value, block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
    require arg1
    owner = arg1
}

function sub_5ebed2c3(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
    games[arg1].field_0 = arg2
    games[arg1].field_256 = arg3
    games[arg1].field_512 = arg4
    games[arg1].field_768 = arg5
    games[arg1].field_1024 = uint8(arg6)
}

function sub_cd491048(?) {
    if stor20.length:
        mem[128] = uint256(stor20.field_0)
        if (32 * stor20.length) + 32 > 64:
            mem[160] = uint256(stor20.field_256)
            idx = 160
            s = 1
            while (32 * stor20.length) + 96 > idx:
                mem[idx + 32] = stor20[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor20.length) + 128] = 32
    mem[(32 * stor20.length) + 160] = stor20.length
    mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
    return memory
      from (32 * stor20.length) + 128
       len (96 * stor20.length) + 64
}

function sub_cfe4a200(?) {
    if stor18.length:
        mem[128] = address(stor18.field_0)
        if (32 * stor18.length) + 32 > 64:
            mem[160] = address(stor18.field_256)
            idx = 160
            s = 1
            while (32 * stor18.length) + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor18.length) + 128] = 32
    mem[(32 * stor18.length) + 160] = stor18.length
    mem[(32 * stor18.length) + 192 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
    return memory
      from (32 * stor18.length) + 128
       len (96 * stor18.length) + 64
}

function sub_f15601fb(?) {
    if stor14.length:
        mem[128] = uint256(stor14.field_0)
        if (32 * stor14.length) + 32 > 64:
            mem[160] = uint256(stor14.field_256)
            idx = 160
            s = 1
            while (32 * stor14.length) + 96 > idx:
                mem[idx + 32] = stor14[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
    return memory
      from (32 * stor14.length) + 128
       len (96 * stor14.length) + 64
}

function initContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
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
        mem[idx + 32] = stor21[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor21.length) + 192 len floor32(stor21.length)] = mem[128 len floor32(stor21.length)]
    return Array(len=stor21.length, data=mem[128 len floor32(stor21.length)], mem[(32 * stor21.length) + floor32(stor21.length) + 192 len (32 * stor21.length) - floor32(stor21.length)]), 
}

function sub_f148d213(?) {
    require calldata.size - 4 >= 32
    if sub_ec5f402b:
        mem[128 len 32 * sub_ec5f402b] = code.data[14055 len 32 * sub_ec5f402b]
    idx = arg1
    s = 0
    while idx < bets.length:
        mem[0] = 25
        if bool(bets[idx].field_1024) != 1:
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

function sub_d11e2c15(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
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
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
    if arg1 <= 0:
        revert with 0, 'The prize pool is not enough.'
    if arg1 > eth.balance(this.address):
        revert with 0, 'The prize pool is not enough.'
    require arg1 + withdrawAmount >= withdrawAmount
    withdrawAmount += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(msg.sender, arg1, block.timestamp);
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

function sub_957ee3a0(?) {
    require calldata.size - 4 >= 416
    require cd[292] <= 4294967296
    require cd[292] + 36 <= calldata.size
    require ('cd', 292).length <= 4294967296 and cd[292] + (32 * ('cd', 292).length) + 36 <= calldata.size
    if msg.sender == owner:
        mem[128 len 32 * ('cd', 292).length] = call.data[cd[292] + 36 len 32 * ('cd', 292).length]
        mem[(32 * ('cd', 292).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 292).length:
            require idx < ('cd', 292).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _23 * ('cd', 292).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    else:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
        mem[128 len 32 * ('cd', 292).length] = call.data[cd[292] + 36 len 32 * ('cd', 292).length]
        mem[(32 * ('cd', 292).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 292).length:
            require idx < ('cd', 292).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _26 * ('cd', 292).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    if cd[196] <= cd[132]:
        revert with 0, 'The minimum prize amount for the grand prize is lower than the handling fee.'
    if cd[196] < cd[36]:
        revert with 0, 'The minimum bet amount is too low.'
    require cd[260] + cd[324] >= cd[324]
    if cd[260] + cd[324] > 100:
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
    if msg.sender == owner:
        mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 36).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _23 * ('cd', 36).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    else:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
        mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 36).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _26 * ('cd', 36).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Platform dividend account number and proportion do not match.'
    stor17.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor17.length > idx:
            stor17[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor17[s].field_0 = cd[idx]
            s = s + 1
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
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor18[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor18.length > idx:
            stor18[idx].field_0 = 0
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
    if msg.sender == owner:
        mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 36).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _23 * ('cd', 36).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    else:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0xfe4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e,
                        0x6f776e65722e0000000000000000000000000000000000000000000000000000
        mem[128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * ('cd', 36).length) + 128] = 0
        idx = 0
        s = 0
        while idx < ('cd', 36).length:
            require idx < ('cd', 36).length
            require mem[(32 * idx) + 128] + s >= s
            require idx + 1 >= idx
            idx = idx + 1
            s = mem[(32 * idx) + 128] + s
            continue 
        if _26 * ('cd', 36).length != 100:
            revert with 0, 'The total ratio of must be 100%.'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Platform dividend account number and proportion do not match.'
    stor20.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor20.length > idx:
            stor20[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor20[s].field_0 = cd[idx]
            s = s + 1
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
            stor21[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor21[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor21.length > idx:
            stor21[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_4980e000(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if croupierAddress != msg.sender:
        if sub_70bf52dfAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    require withdrawAmount + eth.balance(this.address) >= eth.balance(this.address)
    require sub_472cc701 + sub_511c93f8 >= sub_511c93f8
    require jackpotAmount >= 0
    if arg1 != 1:
        require arg2 <= withdrawAmount + eth.balance(this.address)
        if withdrawAmount + eth.balance(this.address) - arg2 > jackpotAmount + sub_472cc701 + sub_511c93f8:
            require jackpotAmount + sub_472cc701 + sub_511c93f8 <= withdrawAmount + eth.balance(this.address) - arg2
            idx = 0
            while idx < stor21.length:
                require idx < stor20.length
                if not withdrawAmount + eth.balance(this.address) - arg2 - jackpotAmount - sub_472cc701 - sub_511c93f8:
                    require idx < stor21.length
                    call stor21[idx].field_0 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor21.length
                    mem[0] = 21
                    mem[mem[64]] = stor21[idx].field_0
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x5cbb5edd: stor21[idx].field_0, 0, block.timestamp
                else:
                    require (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (arg2 * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / withdrawAmount + eth.balance(this.address) - arg2 - jackpotAmount - sub_472cc701 - sub_511c93f8 == stor20[idx].field_0
                    require idx < stor21.length
                    call stor21[idx].field_0 with:
                       value (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (arg2 * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor21.length
                    mem[0] = 21
                    mem[mem[64]] = stor21[idx].field_0
                    mem[mem[64] + 32] = (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (arg2 * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x5cbb5edd: stor21[idx].field_0, (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (arg2 * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100, block.timestamp
                require idx + 1 >= idx
                idx = idx + 1
                continue 
    else:
        require arg2 >= 0
        if arg2 + withdrawAmount + eth.balance(this.address) > jackpotAmount + sub_472cc701 + sub_511c93f8:
            require jackpotAmount + sub_472cc701 + sub_511c93f8 <= arg2 + withdrawAmount + eth.balance(this.address)
            idx = 0
            while idx < stor21.length:
                require idx < stor20.length
                if not arg2 + withdrawAmount + eth.balance(this.address) - jackpotAmount - sub_472cc701 - sub_511c93f8:
                    require idx < stor21.length
                    call stor21[idx].field_0 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor21.length
                    mem[0] = 21
                    mem[mem[64]] = stor21[idx].field_0
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x5cbb5edd: stor21[idx].field_0, 0, block.timestamp
                else:
                    require (arg2 * stor20[idx].field_0) + (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / arg2 + withdrawAmount + eth.balance(this.address) - jackpotAmount - sub_472cc701 - sub_511c93f8 == stor20[idx].field_0
                    require idx < stor21.length
                    call stor21[idx].field_0 with:
                       value (arg2 * stor20[idx].field_0) + (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < stor21.length
                    mem[0] = 21
                    mem[mem[64]] = stor21[idx].field_0
                    mem[mem[64] + 32] = (arg2 * stor20[idx].field_0) + (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x5cbb5edd: stor21[idx].field_0, (arg2 * stor20[idx].field_0) + (withdrawAmount * stor20[idx].field_0) + (eth.balance(this.address) * stor20[idx].field_0) - (jackpotAmount * stor20[idx].field_0) - (sub_472cc701 * stor20[idx].field_0) - (sub_511c93f8 * stor20[idx].field_0) / 100, block.timestamp
                require idx + 1 >= idx
                idx = idx + 1
                continue 
    emit 0x2e27688f: eth.balance(this.address), sub_511c93f8, withdrawAmount, jackpotAmount, sub_472cc701, arg1, arg2, block.timestamp
}



}
