contract main {




// =====================  Runtime code  =====================


#
#  - sub_f54488ef(?)
#
address owner;
address newOwner;
mapping of uint8 isAuthorized;
uint256 authorizedCount;
uint8 stor4;
uint256 fund;
address coldWalletAddress;
array of struct stor7;
uint256 sub_3414b473;
uint256 sub_7b99a2e5;
uint256 sub_eafc28c8;
uint256 sub_c61de713;
mapping of address sub_a858a4f0;
mapping of uint256 sub_34c6b7a5;
mapping of uint256 sub_c10dcde3;
mapping of uint256 sub_33ec4781;
uint256 minBet;
address sub_ca5cbd07Address;
address sub_4dd7eec6Address;
address sub_b1080263Address;
address sub_9e417fbdAddress;
uint256 sub_69c6934b;
mapping of uint16 sub_0c54a1ef;
uint8 sub_0a493dc8;
uint8 sub_1d682816; offset 8
uint8 sub_a6ed2c59; offset 112
uint8 sub_bb4d9be4; offset 152
uint16 sub_7fd0bba3; offset 16
uint16 sub_f83b925d; offset 32
uint16 sub_089cc82d; offset 48
uint16 sub_b4dfeff4; offset 64
uint16 sub_4feed0b8; offset 80
uint16 sub_73d04e08; offset 96
uint16 sub_1313be30; offset 120
uint16 sub_68fc65da; offset 136
uint64 stor23; offset 112
uint128 stor23; offset 16
uint128 stor23; offset 160
uint128 stor23; offset 152
uint256 stor23; offset 16
uint256 stor23; offset 8
uint16 stor24;
uint256 stor24; offset 16
uint256 sub_2d0a59a4;
uint8 sub_0f571a6a;

function sub_089cc82d(?) {
    return sub_089cc82d
}

function sub_0a493dc8(?) {
    return bool(sub_0a493dc8)
}

function sub_0c54a1ef(?) {
    return sub_0c54a1ef[arg1][arg2][arg3][arg4]
}

function sub_0f571a6a(?) {
    return bool(sub_0f571a6a)
}

function sub_1313be30(?) {
    return sub_1313be30
}

function authorizedCount() {
    return authorizedCount
}

function sub_1d682816(?) {
    return bool(sub_1d682816)
}

function sub_2d0a59a4(?) {
    return sub_2d0a59a4
}

function sub_33ec4781(?) {
    return sub_33ec4781[arg1]
}

function sub_3414b473(?) {
    return sub_3414b473
}

function sub_34c6b7a5(?) {
    return sub_34c6b7a5[arg1]
}

function sub_4dd7eec6(?) {
    return sub_4dd7eec6Address
}

function sub_4feed0b8(?) {
    return sub_4feed0b8
}

function paused() {
    return bool(stor4)
}

function sub_68fc65da(?) {
    return sub_68fc65da
}

function sub_69c6934b(?) {
    return sub_69c6934b
}

function coldWallet() {
    return coldWalletAddress
}

function sub_73d04e08(?) {
    return sub_73d04e08
}

function sub_7b99a2e5(?) {
    return sub_7b99a2e5
}

function sub_7fd0bba3(?) {
    return sub_7fd0bba3
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function sub_9e417fbd(?) {
    return sub_9e417fbdAddress
}

function sub_a6ed2c59(?) {
    return bool(sub_a6ed2c59)
}

function sub_a76ece97(?) {
    return sub_c10dcde3[arg1]
}

function sub_a858a4f0(?) {
    return sub_a858a4f0[arg1]
}

function sub_b1080263(?) {
    return sub_b1080263Address
}

function sub_b4dfeff4(?) {
    return sub_b4dfeff4
}

function fund() {
    return fund
}

function sub_bb4d9be4(?) {
    return bool(sub_bb4d9be4)
}

function sub_c10dcde3(?) {
    return sub_c10dcde3[arg1]
}

function sub_c61de713(?) {
    return sub_c61de713
}

function sub_ca5cbd07(?) {
    return sub_ca5cbd07Address
}

function newOwner() {
    return newOwner
}

function sub_eafc28c8(?) {
    return sub_eafc28c8
}

function sub_f83b925d(?) {
    return sub_f83b925d
}

function isAuthorized(address arg1) {
    require arg1
    require isAuthorized[address(arg1)] <= 3
    return isAuthorized[address(arg1)]
}

function _fallback() payable {
  stop
}

function unpause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require stor4
    stor4 = 0
    emit Unpause()
}

function pause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require not stor4
    stor4 = 1
    emit Pause()
}

function setColdWallet(address arg1) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 1
    coldWalletAddress = arg1
    return 1
}

function setMinBet(uint256 arg1) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    require arg1 > 0
    minBet = arg1
    return 1
}

function sub_6d652439(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    sub_9e417fbdAddress = arg1
    sub_69c6934b = arg2
    return 1
}

function sub_8c4e3dca(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    sub_0c54a1ef[arg1 << 248][arg2 << 248][arg3 << 248][arg4 << 248] = arg5
    return 1
}

function sub_53777bdc(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    sub_ca5cbd07Address = arg3
    sub_b1080263Address = arg2
    sub_4dd7eec6Address = arg1
    return 1
}

function unAuthorized(address arg1) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if isAuthorized[address(arg1)] > 0:
        authorizedCount--
    isAuthorized[address(arg1)] = 0
    emit UnAuthorized(arg1);
}

function authorized(address arg1, uint8 arg2) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require arg1
    require arg2 <= 3
    require arg2 > 0
    require arg2 <= 3
    require 3 >= arg2
    require isAuthorized[address(arg1)] <= 3
    if not isAuthorized[address(arg1)]:
        authorizedCount++
    require arg2 <= 3
    isAuthorized[address(arg1)] = arg2
    emit Authorized(arg2, arg1);
}

function sub_b9e5da0d(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    sub_7fd0bba3 = arg1
    sub_f83b925d = arg2
    sub_089cc82d = arg3
    sub_b4dfeff4 = arg4
    sub_4feed0b8 = arg5
    sub_73d04e08 = arg6
    sub_1313be30 = arg7
    sub_68fc65da = arg8
    uint16(stor24.field_0) = arg9
    Mask(240, 0, stor24.field_16) = 0
    return 1
}

function withdrawTokens(address arg1, uint256 arg2) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function withdrawFund() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    if owner:
        call owner with:
           value fund wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value fund wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawAmount(uint256 arg1) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    if owner:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdraw() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    if owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_efe2d2c9(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    sub_0a493dc8 = uint8(arg3)
    Mask(248, 0, stor23.field_8) = Mask(248, 0, arg4)
    Mask(240, 0, stor23.field_16) = Mask(240, 16, arg3) >> 16
    Mask(240, 0, stor23.field_16) = Mask(96, 0, stor23.field_16)
    stor23.field_112 % 1099511627776 = arg1 % 1099511627776
    Mask(104, 0, stor23.field_152) = Mask(104, 0, arg2)
    Mask(96, 0, stor23.field_160) = Mask(96, 48, arg1) >> 48
    Mask(96, 0, stor23.field_160) = 0
    sub_0f571a6a = uint8(arg5)
    return 1
}

function sub_0e9b3799(?) {
    if arg1 > sub_69c6934b:
        require arg1 + -sub_69c6934b - 1 < stor7.length
        idx = 1344
        s = 0
        while stor[('name', 'stor7', 7) + (12 * arg1) + (-12 * stor21) - 5].length + 1312 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor7', 7) + (12 * arg1) + (-12 * stor21) - 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0
        return stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0, 
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0
    require ext_code.size(sub_9e417fbdAddress)
    call sub_9e417fbdAddress.0xe9b3799 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[31 len 1], 
           ext_call.return_data[32] << 248,
           ext_call.return_data[64] << 248,
           ext_call.return_data[96] << 248,
           ext_call.return_data[128] << 248,
           uint8(ext_call.return_data[160])
}

function sub_de9f141e(?) {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] <= 2
    stor7.length++
    stor7[stor7.length].field_0 = arg1
    stor7[stor7.length].field_256 = 0
    stor7[stor7.length].field_512 = 0
    stor7[stor7.length].field_264 = 0
    stor7[stor7.length].field_512 = 0
    stor7[stor7.length].field_272 = 0
    stor7[stor7.length].field_512 = 0
    stor7[stor7.length].field_512 = arg2
    stor7[stor7.length].field_768 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_776 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_784 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_1024 = arg4
    stor7[stor7.length].field_1280 = arg9
    stor7[stor7.length].field_1536 = arg6
    stor7[stor7.length].field_1544 = arg7
    stor7[stor7.length].field_1552 = arg8
    stor7[stor7.length].field_1792 = 0
    stor7[stor7.length].field_1793 = 0
    stor7[stor7.length].field_1800 = mem[1344 len 31]
    idx = 0
    while stor[(12 * stor7.length) + ('name', 'stor7', 7) + 7].length + 31 / 32 > idx:
        stor[idx + sha3((12 * stor7.length) + ('name', 'stor7', 7) + 7)].field_0 = 0
        idx = idx + 1
        continue 
    stor7[stor7.length].field_2048 = 0
    stor7[stor7.length].field_2304 = arg3
    stor7[stor7.length].field_2560 = arg5
    stor7[stor7.length].field_2816 = uint8(arg10)
    stor7[stor7.length].field_2824 = Mask(248, 0, arg11)
    stor7[stor7.length].field_2832 = Mask(240, 16, arg10) >> 16
    require ext_code.size(sub_ca5cbd07Address)
    call sub_ca5cbd07Address.0xc3c70591 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_a858a4f0[stor7.length + 1] = address(ext_call.return_data[0])
    sub_3414b473++
    if arg10:
        sub_eafc28c8++
    if arg11:
        sub_c61de713++
}

function getRace(uint256 arg1) {
    if arg1 > sub_69c6934b:
        require arg1 + -sub_69c6934b - 1 < stor7.length
        idx = 1344
        s = 0
        while stor[('name', 'stor7', 7) + (12 * arg1) + (-12 * stor21) - 5].length + 1312 > idx:
            mem[idx + 32] = stor[s + sha3(('name', 'stor7', 7) + (12 * arg1) + (-12 * stor21) - 5)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require 0 < stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0
        return stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0, 
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0,
               bool(stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0),
               bool(stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0),
               bool(stor[('name', 'stor7', 7) + (12 * arg1) - (12 * stor21)].field_0)
    require ext_code.size(sub_9e417fbdAddress)
    call sub_9e417fbdAddress.getRace(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160] << 248,
           ext_call.return_data[192] << 248,
           ext_call.return_data[224] << 248,
           ext_call.return_data[256],
           bool(ext_call.return_data[288]),
           bool(ext_call.return_data[320]),
           bool(ext_call.return_data[352])
}

function sub_d596380e(?) {
    require not stor4
    require arg1 > sub_69c6934b
    require sub_a858a4f0[arg1] == msg.sender
    if arg1 <= sub_69c6934b:
        require arg1 < stor7.length
        require stor7[arg1].field_0 > 0
        require not stor7[arg1].field_2816
        require not stor7[arg1].field_2824
        stor7[arg1].field_2824 = 1
        if 0 < stor7[arg1].field_1024:
            call sub_a858a4f0[arg1] with:
               value stor7[arg1].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        sub_34c6b7a5[stor12[arg1]]--
        sub_c10dcde3[stor7[arg1].field_0] = 0
        sub_c61de713++
        sub_7b99a2e5--
        require ext_code.size(sub_ca5cbd07Address)
        call sub_ca5cbd07Address.0xc3c70591 with:
             gas gas_remaining wei
            args stor7[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_33ec4781[ext_call.return_data[12 len 20]] -= stor7[arg1].field_1024
        emit 0xe00ad897: arg1, sub_a858a4f0[arg1], stor7[arg1].field_1024, block.timestamp
    else:
        require arg1 + -sub_69c6934b - 1 < stor7.length
        require stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0 > 0
        require not stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0
        require not stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0
        stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0 = 1
        if 0 < stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0:
            call sub_a858a4f0[arg1] with:
               value stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        sub_34c6b7a5[stor12[arg1]]--
        sub_c10dcde3[stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0] = 0
        sub_c61de713++
        sub_7b99a2e5--
        require ext_code.size(sub_ca5cbd07Address)
        call sub_ca5cbd07Address.0xc3c70591 with:
             gas gas_remaining wei
            args stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_33ec4781[ext_call.return_data[12 len 20]] -= stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0
        emit 0xe00ad897: arg1, sub_a858a4f0[arg1], stor[(12 * arg1) - (12 * stor21) + ('name', 'stor7', 7)].field_0, block.timestamp
    return 1
}

function sub_7b4dad71(?) payable {
    require not stor4
    require arg1 > 0
    require not sub_c10dcde3[arg1]
    require ext_code.size(sub_ca5cbd07Address)
    call sub_ca5cbd07Address.0xc3c70591 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    if msg.value:
        require msg.value >= minBet
    else:
        require ext_code.size(sub_b1080263Address)
        call sub_b1080263Address.0xeed32ea6 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_b1080263Address)
            call sub_b1080263Address.0xeed32ea6 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] < block.timestamp
    stor7.length++
    stor7[stor7.length].field_0 = arg1
    stor7[stor7.length].field_256 = arg2
    stor7[stor7.length].field_264 = arg3
    stor7[stor7.length].field_272 = arg4
    stor7[stor7.length].field_512 = 0
    stor7[stor7.length].field_768 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_776 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_784 = 0
    stor7[stor7.length].field_1024 = 0
    stor7[stor7.length].field_1024 = msg.value
    stor7[stor7.length].field_1280 = block.timestamp
    stor7[stor7.length].field_1536 = 0
    stor7[stor7.length].field_1792 = 0
    stor7[stor7.length].field_1544 = 0
    stor7[stor7.length].field_1792 = 0
    stor7[stor7.length].field_1552 = 0
    stor7[stor7.length].field_1792 = 0
    if arg5.length == 32:
        stor[sha3((12 * stor7.length) + ('name', 'stor7', 7) + 7)][].field_0 = Array(len=arg5.length, data=arg5[all])
        stor7[stor7.length].field_2048 = 1
        stor7[stor7.length].field_2304 = 0
        stor7[stor7.length].field_2560 = 0
        stor7[stor7.length].field_2816 = 0
        stor7[stor7.length].field_2824 = 0
        sub_34c6b7a5[address(msg.sender)]++
        sub_a858a4f0[stor7.length + stor21 + 1] = msg.sender
        sub_c10dcde3[arg1] = stor7.length + sub_69c6934b + 1
        sub_3414b473++
        sub_7b99a2e5++
        sub_33ec4781[address(msg.sender)] += msg.value
        emit 0x9ca00daa: stor7.length + sub_69c6934b + 1, msg.value, arg1, arg2 << 248, arg3 << 248, arg4 << 248, 1, block.timestamp, msg.sender
    else:
        stor7[stor7.length].field_1792 = 0
        stor7[stor7.length].field_1793 = 0
        stor7[stor7.length].field_1800 = arg1 / 256
        idx = 0
        while stor[(12 * stor7.length) + ('name', 'stor7', 7) + 7].length + 31 / 32 > idx:
            stor[idx + sha3((12 * stor7.length) + ('name', 'stor7', 7) + 7)].field_0 = 0
            idx = idx + 1
            continue 
        stor7[stor7.length].field_2048 = 0
        stor7[stor7.length].field_2304 = 0
        stor7[stor7.length].field_2560 = 0
        stor7[stor7.length].field_2816 = 0
        stor7[stor7.length].field_2824 = 0
        sub_34c6b7a5[address(msg.sender)]++
        sub_a858a4f0[stor7.length + stor21 + 1] = msg.sender
        sub_c10dcde3[arg1] = stor7.length + sub_69c6934b + 1
        sub_3414b473++
        sub_7b99a2e5++
        sub_33ec4781[address(msg.sender)] += msg.value
        emit 0x9ca00daa: stor7.length + sub_69c6934b + 1, msg.value, arg1, arg2 << 248, arg3 << 248, arg4 << 248, 0, block.timestamp, msg.sender
    return 1
}



}
