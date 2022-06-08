contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d324348(?)
#  - __callback(bytes32 arg1, string arg2)
#  - sub_2d8c5f56(?)
#  - sub_af5cb30c(?)
#
address owner;
array of uint256 stor1;
uint256 oraclizeFee;
uint256 MIN_BET;
uint256 sub_42c4c3d4;
uint256 sub_aff61df0;
uint256 sub_34a0d158;
uint256 sub_b0beec56;
mapping of struct sub_89649688;
array of struct sub_96e8d80c;
mapping of struct stor8;
address sub_0469effbAddress;

function sub_0469effb(?) {
    return sub_0469effbAddress
}

function games(uint256 arg1) {
    require arg1 < sub_96e8d80c.length
    return sub_96e8d80c[arg1].field_0, 
           sub_96e8d80c[arg1].field_256,
           sub_96e8d80c[arg1].field_512,
           sub_96e8d80c[arg1].field_768,
           sub_96e8d80c[arg1].field_1024,
           sub_96e8d80c[arg1].field_1280,
           sub_96e8d80c[arg1].field_1536,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2304,
           bool(sub_96e8d80c[arg1].field_2344),
           bool(sub_96e8d80c[arg1].field_2352),
           sub_96e8d80c[arg1].field_2560
}

function sub_34a0d158(?) {
    return sub_34a0d158
}

function sub_42c4c3d4(?) {
    return sub_42c4c3d4
}

function oraclizeFee() {
    return oraclizeFee
}

function MIN_BET() {
    return MIN_BET
}

function sub_89649688(?) {
    require sub_89649688[arg1].field_0 <= 2
    return sub_89649688[arg1].field_0, sub_89649688[arg1].field_256, sub_89649688[arg1].field_512
}

function owner() {
    return owner
}

function sub_96e8d80c(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg2 < 5
    require arg1 < sub_96e8d80c.length
    require arg2 < 5
    mem[128] = stor[sha3((5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg2 < 5:
        return Array(len=stor[(5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length, data=mem[128 len stor[(5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length]), 
               ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 3328, ('stor', ('add', ('mul', 5, ('param', 'arg2')), ('mul', 37, ('param', 'arg1')), ('name', 'sub_96e8d80c', 7))))))),
               stor[(5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7)].field_3584,
               ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 3840, ('stor', ('add', ('mul', 5, ('param', 'arg2')), ('mul', 37, ('param', 'arg1')), ('name', 'sub_96e8d80c', 7))))))),
               stor[(5 * arg2) + (37 * arg1) + ('name', 'sub_96e8d80c', 7)].field_4096
    revert
}

function sub_aff61df0(?) {
    return sub_aff61df0
}

function sub_b0beec56(?) {
    return sub_b0beec56
}

function sub_d2422a44(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    return sub_96e8d80c[arg1].field_2816
}

function sub_d754b788(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require arg2 < sub_96e8d80c[arg1].field_2816
    return stor[sha3((37 * arg1) + ('name', 'sub_96e8d80c', 7) + 11) + arg2].field_0
}

function numberOfGames() {
    return sub_96e8d80c.length
}

function isOwner() {
    return (msg.sender == owner)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_0ec0a5d7(?) {
    return sub_0469effbAddress, MIN_BET, sub_42c4c3d4, sub_34a0d158, sub_b0beec56, sub_96e8d80c.length
}

function _fallback() payable {
    require msg.value + oraclizeFee >= oraclizeFee
    oraclizeFee += msg.value
    emit 0x5722387d: msg.value
}

function sub_eca1e6fe(?) payable {
    require msg.value + oraclizeFee >= oraclizeFee
    oraclizeFee += msg.value
    emit 0x5722387d: msg.value
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_55b7c64d(?) {
    require msg.sender == owner
    require eth.balance(this.address) >= oraclizeFee
    oraclizeFee = 0
    call owner with:
       value oraclizeFee wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1872a93f(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0x8052b65e with:
         gas gas_remaining wei
        args ((37 * arg1) + sha3(7))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function gameState(uint256 arg1) {
    if arg1 >= sub_96e8d80c.length:
        return 0
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= 7
    return delegate.return_data[31 len 1]
}

function bet(uint256 arg1, uint256 arg2) payable {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg2 < 5
    require msg.value >= MIN_BET
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0x7feb54bb with:
         gas gas_remaining wei
        args 0, uint32((37 * arg1) + sha3(7)), sha3(8) + (60 * arg1), arg2, sub_0469effbAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30e64fdb(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require msg.sender == owner
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c[arg1].field_512 + sub_96e8d80c[arg1].field_1280 < block.timestamp
    require arg1 < stor8.length
    require stor8[arg1].field_15104 <= stor8[arg1].field_14592
    stor8[arg1].field_15104 = stor8[arg1].field_14592
    call owner with:
       value stor8[arg1].field_14592 - stor8[arg1].field_15104 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7db4d942: owner, stor8[arg1].field_14592 - stor8[arg1].field_15104, arg1
}

function sub_a0d1be72(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require msg.sender == owner
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c[arg1].field_512 + sub_96e8d80c[arg1].field_1280 < block.timestamp
    require arg1 < stor8.length
    require stor8[arg1].field_14848 <= stor8[arg1].field_14592
    stor8[arg1].field_14848 = stor8[arg1].field_14592
    call owner with:
       value stor8[arg1].field_14592 - stor8[arg1].field_14848 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x938cdaa9: owner, stor8[arg1].field_14592 - stor8[arg1].field_14848, arg1
}

function sub_73dcdb53(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg2 < 5
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0x8052b65e with:
         gas gas_remaining wei
        args ((37 * arg1) + sha3(7))
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        return 0
    require arg2 < 5
    return stor[(11 * arg2) + (60 * arg1) + ('name', 'stor8', 8)].field_512, 
           stor[(11 * arg2) + (60 * arg1) + ('name', 'stor8', 8)].field_0,
           stor[(11 * arg2) + (60 * arg1) + ('name', 'stor8', 8)].field_768
}

function sub_a8c6acda(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    if arg1 >= sub_96e8d80c.length:
        return 0
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= 7
    if delegate.return_data[0] != 7:
        return 0
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xcdc3d36a with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_da7721e3(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    if arg1 >= sub_96e8d80c.length:
        return 0
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= 7
    if delegate.return_data[0] != 6:
        return 0
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbfd4250 with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_cfa526bc(?) {
    mem[96 len 160] = code.data[20330 len 160]
    mem[256 len 160] = code.data[20330 len 160]
    mem[416 len 160] = code.data[20330 len 160]
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    idx = 0
    while idx < 5:
        mem[580] = (37 * arg1) + sha3(7)
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0x8052b65e with:
             gas gas_remaining wei
            args ((37 * arg1) + sha3(7))
        mem[576] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 5
        if not delegate.return_data[0]:
            mem[(32 * idx) + 96] = stor[(11 * idx) + (60 * arg1) + ('name', 'stor8', 8)].field_512
            mem[(32 * idx) + 256] = stor[(11 * idx) + (60 * arg1) + ('name', 'stor8', 8)].field_0
            mem[(32 * idx) + 416] = stor[(11 * idx) + (60 * arg1) + ('name', 'stor8', 8)].field_768
        else:
            mem[(32 * idx) + 416] = 0
            mem[(32 * idx) + 256] = 0
            mem[(32 * idx) + 96] = 0
        idx = idx + 1
        continue 
    return mem[96 len 160], mem[256 len 160], mem[416 len 160]
}

function sub_19101209(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    if arg1 < sub_96e8d80c.length:
        require arg1 < stor8.length
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
             gas gas_remaining wei
            args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] <= 7
        if 7 == delegate.return_data[0]:
            require arg1 < sub_96e8d80c.length
            require arg1 < stor8.length
            require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
            delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xcdc3d36a with:
                 gas gas_remaining wei
                args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < delegate.return_data[0]:
                require arg1 < stor8.length
                stor[(60 * arg1) + ('name', 'stor8', 8) + 56][msg.sender].field_0 = 1
                require delegate.return_data[0] + stor8[arg1].field_15104 >= stor8[arg1].field_15104
                stor8[arg1].field_15104 += delegate.return_data[0]
                call msg.sender with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0xf3f40228: msg.sender, delegate.return_data[0], arg1
}

function getAwards(uint256 arg1) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    if arg1 < sub_96e8d80c.length:
        require arg1 < stor8.length
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
             gas gas_remaining wei
            args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] <= 7
        if 6 == delegate.return_data[0]:
            require arg1 < sub_96e8d80c.length
            require arg1 < stor8.length
            require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
            delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbfd4250 with:
                 gas gas_remaining wei
                args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < delegate.return_data[0]:
                require arg1 < stor8.length
                require stor8[arg1].field_14848 <= stor8[arg1].field_14592
                require stor8[arg1].field_14592 - stor8[arg1].field_14848 >= delegate.return_data[0]
                stor[(60 * arg1) + ('name', 'stor8', 8) + 55][msg.sender].field_0 = 1
                require delegate.return_data[0] + stor8[arg1].field_14848 >= stor8[arg1].field_14848
                stor8[arg1].field_14848 += delegate.return_data[0]
                call msg.sender with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x985590b2: msg.sender, delegate.return_data[0], arg1
}

function sub_db73c31d(?) {
    mem[96 len 160] = code.data[20330 len 160]
    mem[256 len 160] = code.data[20330 len 160]
    mem[416 len 160] = code.data[20330 len 160]
    mem[576 len 160] = code.data[20330 len 160]
    mem[64] = 896
    mem[736 len 160] = code.data[20330 len 160]
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    mem[0] = 7
    idx = 0
    while idx < 5:
        _19 = mem[64]
        mem[mem[64]] = 0xe4721c9a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length
        mem[0] = (5 * idx) + (37 * arg1) + sha3(7) + 12
        mem[mem[64] + 68] = stor[sha3((5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12)].field_0
        s = mem[64] + 68
        t = sha3(mem[0])
        while _19 + stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length + 68 > s + 32:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _19 + stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length + (s + -_19 + -stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7) + 12].length - 36 % 32) + -mem[64] + 64]
        mem[mem[64]] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 5
        mem[(32 * idx) + 96] = delegate.return_data[0]
        mem[(32 * idx) + 576] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 3328, ('stor', ('add', ('mul', 5, ('var', 0)), ('mul', 37, ('param', 'arg1')), ('name', 'sub_96e8d80c', 7)))))))
        mem[(32 * idx) + 256] = stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7)].field_3584
        mem[(32 * idx) + 736] = ('signextend', 3, ('signextend', 3, ('signextend', 3, ('field', 3840, ('stor', ('add', ('mul', 5, ('var', 0)), ('mul', 37, ('param', 'arg1')), ('name', 'sub_96e8d80c', 7)))))))
        mem[(32 * idx) + 416] = stor[(5 * idx) + (37 * arg1) + ('name', 'sub_96e8d80c', 7)].field_4096
        idx = idx + 1
        continue 
    mem[mem[64] len 160] = mem[96 len 160]
    mem[mem[64] + 160 len 160] = mem[256 len 160]
    mem[mem[64] + 320 len 160] = mem[416 len 160]
    mem[mem[64] + 480 len 160] = mem[576 len 160]
    mem[mem[64] + 640 len 160] = mem[736 len 160]
    return memory
      from mem[64]
       len 800
}

function sub_ccf0e080(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    s = 0
    idx = 0
    while idx < sub_96e8d80c[arg1].field_2816:
        mem[0] = (37 * arg1) + sha3(7) + 11
        s = s or 2^stor[sha3((37 * arg1) + ('name', 'sub_96e8d80c', 7) + 11) + idx].field_0
        idx = idx + 1
        continue 
    return uint8(s * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816)
}

function close(uint256 arg1) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require msg.sender == owner
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= 7
    require delegate.return_data[0] == 5
    if stor8[arg1].field_14592:
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xa79a9fd4 with:
             gas gas_remaining wei
            args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if sub_96e8d80c[arg1].field_2344:
        require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
        delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0x73b330c5 with:
             gas gas_remaining wei
            args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8), stor8[arg1].field_14592
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        emit GameClosed(arg1);
    else:
        sub_96e8d80c[arg1].field_2304 = -71776119061217536 and sub_96e8d80c[arg1].field_2304
        sub_96e8d80c[arg1].field_3840 = 0
        sub_96e8d80c[arg1].field_5120 = 0
        sub_96e8d80c[arg1].field_6400 = 0
        sub_96e8d80c[arg1].field_7680 = 0
        sub_96e8d80c[arg1].field_8960 = 0
        sub_96e8d80c[arg1].field_4096 = 0
        sub_96e8d80c[arg1].field_5376 = 0
        sub_96e8d80c[arg1].field_6656 = 0
        sub_96e8d80c[arg1].field_7936 = 0
        sub_96e8d80c[arg1].field_9216 = 0
        require sub_96e8d80c[arg1].field_256 <= block.timestamp
        require sub_96e8d80c[arg1].field_768 > 0
        require sub_96e8d80c[arg1].field_768
        require (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768) + 1 >= block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768
        if not (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768) + 1:
            require sub_96e8d80c[arg1].field_256 >= 0
            require 1 <= sub_96e8d80c[arg1].field_256
            sub_96e8d80c[arg1].field_512 = sub_96e8d80c[arg1].field_256 - 1
            emit 0xf42bff50: (sub_96e8d80c[arg1].field_256 - 1), arg1
        else:
            require sub_96e8d80c[arg1].field_768 + (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768 * sub_96e8d80c[arg1].field_768) / (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768) + 1 == sub_96e8d80c[arg1].field_768
            require sub_96e8d80c[arg1].field_256 >= 0
            require 1 <= sub_96e8d80c[arg1].field_256 + sub_96e8d80c[arg1].field_768 + (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768 * sub_96e8d80c[arg1].field_768)
            sub_96e8d80c[arg1].field_512 = sub_96e8d80c[arg1].field_256 + sub_96e8d80c[arg1].field_768 + (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768 * sub_96e8d80c[arg1].field_768) - 1
            emit 0xf42bff50: (sub_96e8d80c[arg1].field_256 + sub_96e8d80c[arg1].field_768 + (block.timestamp - sub_96e8d80c[arg1].field_256 / sub_96e8d80c[arg1].field_768 * sub_96e8d80c[arg1].field_768) - 1), arg1
    return bool(sub_96e8d80c[arg1].field_2344)
}

function sub_28307d77(?) {
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    require arg1 < stor8.length
    idx = 1696
    s = 0
    while 3296 > idx + 32:
        mem[idx + 32] = stor((37 * arg1) + ('name', 'stor7', 7) + 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    require ext_code.size(0xa5b483c2a6505fd7effc14f41cef3652630adf8c)
    delegate 0xa5b483c2a6505fd7effc14f41cef3652630adf8c.0xdbed642c with:
         gas gas_remaining wei
        args (37 * arg1) + sha3(7), (60 * arg1) + sha3(8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] <= 7
    require arg1 < sub_96e8d80c.length
    require sub_96e8d80c.length == stor8.length
    require arg1 < sub_96e8d80c.length
    s = 0
    idx = 0
    while idx < sub_96e8d80c[arg1].field_2816:
        mem[0] = (37 * arg1) + sha3(7) + 11
        s = s or 2^stor[sha3((37 * arg1) + ('name', 'sub_96e8d80c', 7) + 11) + idx].field_0
        idx = idx + 1
        continue 
    return sub_96e8d80c[arg1].field_256, 
           sub_96e8d80c[arg1].field_512,
           sub_96e8d80c[arg1].field_768,
           mem[1728 len 1568] >> 12544,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2304,
           delegate.return_data[0] << 248,
           s * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 * sub_96e8d80c[arg1].field_2816 << 248,
           sub_96e8d80c[arg1].field_2304,
           sub_96e8d80c[arg1].field_2560
}



}
