contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
uint16 stor4; offset 160
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    stor0 = 10000
    stor1 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor9 = code.data[12797 len 20]
    return code.data[136 len 12649]
}



// =====================  Runtime code  =====================


uint256 sub_c60bfd07;
uint8 acceptanceThreshold;
address sub_55ef20e6Address; offset 8
address sub_554fbbcdAddress;
address contributorsAddress;
uint8 stor4;
uint8 sub_33bea6b2; offset 160
uint8 sub_4a9c6f10; offset 168
address votesAddress;
uint256 sub_6afa83e5;
uint256 sub_6ae8e4a8;
uint256 sub_e962c664;
uint256 sub_6ca29528;
address adminAddress;

function sub_33bea6b2(?) {
    return sub_33bea6b2
}

function sub_4a9c6f10(?) {
    return sub_4a9c6f10
}

function sub_554fbbcd(?) {
    return sub_554fbbcdAddress
}

function sub_55ef20e6(?) {
    return sub_55ef20e6Address
}

function sub_6ae8e4a8(?) {
    return sub_6ae8e4a8
}

function sub_6afa83e5(?) {
    return sub_6afa83e5
}

function sub_6ca29528(?) {
    return sub_6ca29528
}

function contributors() {
    return contributorsAddress
}

function acceptanceThreshold() {
    return acceptanceThreshold
}

function sub_c60bfd07(?) {
    return sub_c60bfd07
}

function votes() {
    return votesAddress
}

function sub_e962c664(?) {
    return sub_e962c664
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_084e8bfa(?) {
    require adminAddress == msg.sender
    sub_e962c664 = arg1
}

function sub_3c94241a(?) {
    require adminAddress == msg.sender
    sub_6ae8e4a8 = arg1
}

function sub_48c82dde(?) {
    require adminAddress == msg.sender
    sub_6afa83e5 = arg1
}

function sub_a2ffa771(?) {
    require adminAddress == msg.sender
    sub_4a9c6f10 = arg1
}

function sub_aba66146(?) {
    require adminAddress == msg.sender
    sub_c60bfd07 = arg1
}

function sub_acb7412d(?) {
    require adminAddress == msg.sender
    sub_6ca29528 = arg1
}

function sub_b9fc4d66(?) {
    require adminAddress == msg.sender
    votesAddress = arg1
}

function sub_d6fcb8cf(?) {
    require adminAddress == msg.sender
    sub_33bea6b2 = arg1
}

function sub_3f0016b0(?) {
    require adminAddress == msg.sender
    acceptanceThreshold = arg1
}

function sub_dc133e89(?) {
    require adminAddress == msg.sender
    sub_55ef20e6Address = arg1
}

function sub_defd6ed1(?) {
    require adminAddress == msg.sender
    contributorsAddress = arg1
}

function sub_f1740089(?) {
    require adminAddress == msg.sender
    sub_554fbbcdAddress = arg1
}

function setAdmin(address arg1) {
    require adminAddress == msg.sender
    if arg1:
        adminAddress = arg1
}

function sub_01b780a2(?) {
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < sub_6ae8e4a8:
        return ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0] >= sub_6ca29528
}

function sub_3e107e6d(?) {
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] < sub_6ae8e4a8:
        return ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0] >= sub_6ca29528
}

function isExpired(uint256 arg1) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xb0cdce4c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] <= block.number
    return (block.number - ext_call.return_data[0] > sub_c60bfd07)
}

function sub_744f6755(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[3168] = 0
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x33c400aa with:
         gas gas_remaining - 710 wei
        args arg1
    mem[2144 len 1024] = ext_call.return_data[0 len 1024]
    require ext_call.success
    idx = 0
    while idx < 32:
        require ext_code.size(sub_554fbbcdAddress)
        call sub_554fbbcdAddress.0x769f7a23 with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + 2144]
        require ext_call.success
        mem[3200] = 0
        mem[3172] = ext_call.return_data[0]
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xffbdc8cb with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[3168] = ext_call.return_data[0]
        require ext_call.success
        require idx < 32
        mem[(32 * idx) + 96] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return memory
      from 96
       len 1024
}

function sub_c1aff14e(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[3168] = 0
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x33c400aa with:
         gas gas_remaining - 710 wei
        args arg1
    mem[2144 len 1024] = ext_call.return_data[0 len 1024]
    require ext_call.success
    idx = 0
    while idx < 32:
        require ext_code.size(sub_554fbbcdAddress)
        call sub_554fbbcdAddress.0x628cf0a8 with:
             gas gas_remaining - 710 wei
            args mem[(32 * idx) + 2144]
        require ext_call.success
        mem[3200] = 0
        mem[3172] = ext_call.return_data[0]
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xffbdc8cb with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[3168] = ext_call.return_data[0]
        require ext_call.success
        require idx < 32
        mem[(32 * idx) + 96] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return memory
      from 96
       len 1024
}

function sub_9ae17cea(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc41a360a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] == arg2:
        return ext_call.return_data[12 len 20] != arg2
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] < sub_6ae8e4a8:
        return ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] < sub_6ca29528:
        return ext_call.return_data[0] >= sub_6ca29528
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x60c8b28d with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    return not bool(ext_call.return_data[0])
}

function sub_55293334(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x1374b22d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x4a45855e with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x769f7a23 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    return (ext_call.return_data[0] == arg1)
}

function sub_3e67021b(?) {
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ca29528
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x48aeb881 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xfcd691d3 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[28 len 4], arg1, stor4, sub_4a9c6f10, address(msg.sender)
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x9f3d7b0b with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0xef4cd6ea with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require ext_call.success
    emit 0x211c91c3: arg1, msg.sender, ext_call.return_data[0], 0, ext_call.return_data[0]
}

function sub_8702038d(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xb6f34aca with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    idx = 0
    s = 0
    t = 0
    t = 0
    while uint8(idx) < ext_call.return_data[0]:
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0x6f94e502 with:
             gas gas_remaining - 710 wei
            args arg1, uint8(idx)
        require ext_call.success
        mem[132] = address(ext_call.return_data[0])
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0x7ad22cd6 with:
             gas gas_remaining - 710 wei
            args arg1, address(ext_call.return_data[0])
        require ext_call.success
        mem[128] = 0
        mem[100] = ext_call.return_data[0]
        require ext_code.size(votesAddress)
        call votesAddress.0xefbef75a with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] + s >= s
        require ext_call.return_data[0] + s >= ext_call.return_data[0]
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require _37 * None == (ext_call.return_data[0] * _37 * None / ext_call.return_data[0]) + (_37 * None % ext_call.return_data[0])
    return (_37 * None / ext_call.return_data[0] > acceptanceThreshold)
}

function sub_4aa12502(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require adminAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xb174e42e00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_17)
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0xb174e42e with:
             gas gas_remaining - 710 wei
            args address(_17)
        require ext_call.success
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x9fe9ac3d00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_21)
        mem[(32 * arg1.length) + 164] = sub_6afa83e5
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0x9fe9ac3d with:
             gas gas_remaining - 710 wei
            args address(_21), sub_6afa83e5
        require ext_call.success
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xdfcef4e300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_25)
        mem[(32 * arg1.length) + 164] = sub_e962c664
        require ext_code.size(contributorsAddress)
        call contributorsAddress.0xdfcef4e3 with:
             gas gas_remaining - 710 wei
            args address(_25), sub_e962c664
        require ext_call.success
        idx = idx + 1
        continue 
}

function sub_761cd589(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x1374b22d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x4a45855e with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x628cf0a8 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] != arg1:
        return 0
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x769f7a23 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if not ext_call.return_data[0]:
        return not bool(ext_call.return_data[0])
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xb0cdce4c with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] <= block.number
    return (block.number - ext_call.return_data[0] > sub_c60bfd07)
}

function sub_5ac60dc5(?) {
    mem[96] = 0
    mem[128 len 992] = 0
    mem[1120] = 0
    mem[1152 len 992] = 0
    mem[2144] = 0
    mem[2176 len 992] = 0
    mem[4192] = 0
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xec05cd67 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    mem[3168 len 1024] = ext_call.return_data[0 len 1024]
    require ext_call.success
    mem[64] = 4192
    idx = 0
    while idx < 32:
        _38 = mem[(32 * idx) + 3168]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 4] = _38
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xffbdc8cb with:
             gas gas_remaining - 710 wei
            args _38
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        require idx < 32
        mem[(32 * idx) + 96] = ext_call.return_data[0]
        _96 = mem[(32 * idx) + 3168]
        mem[mem[64] + 32] = 0
        mem[mem[64]] = 0x1c4793a700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _96
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.mem[var54003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var54003 + 4 len var54004 - 4]
        mem[var54005] = ext_call.return_data[0]
        require ext_call.success
        if var56006 >= 0x1c4793a700000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            continue 
        require idx < 32
        _200 = mem[(32 * idx) + 3168]
        mem[mem[64]] = 0x6f94e50200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _200
        mem[mem[64] + 36] = var60007
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.mem[var62003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var62003 + 4 len var62004 - 4]
        mem[var62005] = ext_call.return_data[0]
        require ext_call.success
        require idx < 32
        _278 = mem[(32 * idx) + 3168]
        mem[mem[64]] = 0x7ad22cd600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _278
        mem[mem[64] + 36] = arg1
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.mem[var68003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var68003 + 4 len var68004 - 4]
        mem[var68005] = ext_call.return_data[0]
        require ext_call.success
        mem[mem[64] + 32] = 0
        mem[mem[64]] = 0xefbef75a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0x7ad22cd600000000000000000000000000000000000000000000000000000000
        require ext_code.size(votesAddress)
        call votesAddress.mem[var72003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var72003 + 4 len var72004 - 4]
        require ext_call.success
        require idx < 32
        require var78001 + var78002 >= var78002
        # nil
    mem[mem[64] len 1024] = mem[96 len 1024]
    mem[mem[64] + 1024 len 1024] = mem[1120 len 1024]
    return memory
      from mem[64]
       len 2048
}

function sub_2f0f9607(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x1374b22d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x4a45855e with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x628cf0a8 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] == arg1
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x769f7a23 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xc90525f with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xb0cdce4c with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] <= block.number
        require block.number - ext_call.return_data[0] > sub_c60bfd07
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ca29528
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xfcd691d3 with:
         gas gas_remaining - 710 wei
        args 0, 0, ext_call.return_data[28 len 4], arg2, stor4, sub_4a9c6f10, address(msg.sender)
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x9f3d7b0b with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0xc0ecb924 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    if ext_call.return_data[0]:
        call sub_554fbbcdAddress.0xbc28d878 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
    call sub_554fbbcdAddress.0xef4cd6ea with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0], ext_call.return_data[0]
    require ext_call.success
    emit 0x211c91c3: arg2, msg.sender, ext_call.return_data[0], arg1, ext_call.return_data[0]
}

function sub_a54c4b29(?) {
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x1374b22d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x4a45855e with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc90525f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_554fbbcdAddress)
    call sub_554fbbcdAddress.0x769f7a23 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] == arg1
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xc41a360a with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] != msg.sender
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0xab80aa0e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ae8e4a8
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x58e52e6e with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= sub_6ca29528
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x60c8b28d with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xb408f5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[31 len 1] == arg3.length
    mem[(32 * arg3.length) + 324 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(votesAddress)
    call votesAddress.0xb0042980 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1, arg2 << 248, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 324 len (32 * arg3.length) - floor32(arg3.length)]), arg4
    require ext_call.success
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x555055f5 with:
         gas gas_remaining - 710 wei
        args arg1, msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x7830147 with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(contributorsAddress)
    call contributorsAddress.0x9fe9ac3d with:
         gas gas_remaining - 710 wei
        args msg.sender, 1
    require ext_call.success
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0x23fe2947 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit 0x6f070d14: ext_call.return_data[0], msg.sender, arg2 << 248, arg4, ext_call.return_data[0], arg1
    require ext_code.size(sub_55ef20e6Address)
    call sub_55ef20e6Address.0xdb60ec64 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0xb29c7158: ext_call.return_data[0], arg1
        require ext_code.size(sub_55ef20e6Address)
        call sub_55ef20e6Address.0xb6f34aca with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        idx = 0
        s = 0
        t = 0
        t = 0
        while uint8(idx) < ext_call.return_data[0]:
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0x6f94e502 with:
                 gas gas_remaining - 710 wei
                args arg1, uint8(idx)
            require ext_call.success
            mem[(32 * arg3.length) + 164] = address(ext_call.return_data[0])
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0x7ad22cd6 with:
                 gas gas_remaining - 710 wei
                args arg1, address(ext_call.return_data[0])
            require ext_call.success
            mem[(32 * arg3.length) + 160] = 0
            mem[(32 * arg3.length) + 132] = ext_call.return_data[0]
            require ext_code.size(votesAddress)
            call votesAddress.0xefbef75a with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            _237 = ext_call.return_data[0]
            require ext_call.return_data[0] + s >= s
            require ext_call.return_data[0] + s >= ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            t = ext_call.return_data[0]
            t = ext_call.return_data[0]
            continue 
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0]
        require _237 * None == (ext_call.return_data[0] * _237 * None / ext_call.return_data[0]) + (_237 * None % ext_call.return_data[0])
        require ext_code.size(sub_55ef20e6Address)
        if _237 * None / ext_call.return_data[0] <= acceptanceThreshold:
            call sub_55ef20e6Address.0xbc28d878 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(sub_554fbbcdAddress)
            call sub_554fbbcdAddress.0xbc28d878 with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0xdbdd0aab with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0xffbdc8cb with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            emit 0xef27065a: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg1
        else:
            call sub_55ef20e6Address.0xc41a360a with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(contributorsAddress)
            call contributorsAddress.0x9fe9ac3d with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), 1
            require ext_call.success
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0x60c5cc3a with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(sub_554fbbcdAddress)
            call sub_554fbbcdAddress.0x60c5cc3a with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0xdbdd0aab with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            require ext_code.size(sub_55ef20e6Address)
            call sub_55ef20e6Address.0xffbdc8cb with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            emit 0x8fe37232: ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg1
}



}
