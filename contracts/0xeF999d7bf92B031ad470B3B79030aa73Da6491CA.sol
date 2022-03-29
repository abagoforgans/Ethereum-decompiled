contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor7;

function _fallback() payable {
    stor0 = 1
    stor1 = 4
    stor7 = 0x60c419a4b58ba1a9b1991e5f66eac2004fbe1c44
    require not msg.value
    return code.data[79 len 5138]
}



// =====================  Runtime code  =====================


#
#  - sub_59a0335c(?)
#
uint256 stor0;
uint256 stor1;
uint256 sub_c18dac4e;
uint256 sub_16779bf1;
mapping of struct stor4;
array of uint256 stor5;
array of struct stor6;
address stor7;

function sub_16779bf1(?) {
    return sub_16779bf1
}

function sub_c18dac4e(?) {
    return sub_c18dac4e
}

function _fallback() payable {
    revert
}

function isAdmin() {
    return (stor7 == msg.sender)
}

function sub_26412eea(?) {
    if arg1 < 1:
        return 0
    idx = 2304
    s = 2
    while 2560 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1 != stor4[arg1].field_0:
        return 0
    if stor4[arg1].field_0 <= 0:
        return 0
    return stor4[arg1].field_256
}

function sub_b5baeacf(?) {
    if arg1 >= 1:
        idx = 2304
        s = 2
        while 2560 > idx + 32:
            mem[idx + 32] = stor4[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg1 == stor4[arg1].field_0:
            return (stor4[arg1].field_0 > 0)
        return 0
    else:
        return 0
}

function sub_4bbc3cc3(?) {
    if arg1 < 1:
        return 0
    idx = 2304
    s = 2
    while 2560 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1 != stor4[arg1].field_0:
        return 0
    if stor4[arg1].field_0 <= 0:
        return 0
    return (stor4[arg1].field_512 + mem[2336])
}

function sub_98e40f75(?) {
    if arg1 < 1:
        return 0
    idx = 2304
    s = 2
    while 2560 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg1 != stor4[arg1].field_0:
        return 0
    if stor4[arg1].field_0 <= 0:
        return (stor4[arg1].field_0 > 0)
    return bool(stor4[arg1].field_256)
}

function sub_288c8f62(?) {
    require stor7 == msg.sender
    require arg1 == stor4[arg1].field_0
    require ext_code.size(this.address)
    call this.address.0x98e40f75 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    stor4[arg1].field_256 = 0
    if sub_16779bf1 > 0:
        sub_16779bf1--
    return 1
}

function sub_31c933d4(?) {
    if not stor5[arg1]:
        stor5[arg1] = arg1
        stor5[arg1][1][] = Array(len=arg2.length, data=arg2[all])
        stor5[arg1][2][] = Array(len=arg3.length, data=arg3[all])
        stor5[arg1][3][] = Array(len=arg4.length, data=arg4[all])
        stor5[arg1][4][] = Array(len=arg5.length, data=arg5[all])
        stor5[arg1][5][] = Array(len=arg6.length, data=arg6[all])
}

function sub_93cd5969(?) {
    require ext_code.size(this.address)
    call this.address.0xb5baeacf with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0, 0, 1
    if arg1 >= 1:
        idx = 2816
        s = 2
        while 3072 > idx + 32:
            mem[idx + 32] = stor4[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if arg1 == stor4[arg1].field_0:
            return stor4[arg1].field_512, mem[2848 len 224], 0
        return 0
    else:
        return 0
}

function sub_5c75e8c9(?) {
    require stor7 == msg.sender
    require ext_code.size(this.address)
    call this.address.0x98e40f75 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    if arg2 != 1:
        stor4[arg1].field_768++
    else:
        stor4[arg1].field_512++
    if arg3 != 1:
        stor4[arg1].field_1280++
    else:
        stor4[arg1].field_1024++
    if arg4 != 1:
        stor4[arg1].field_1792++
    else:
        stor4[arg1].field_1536++
    if arg5 != 1:
        stor4[arg1].field_2304++
    else:
        stor4[arg1].field_2048++
    return 1
}

function sub_cde96283(?) {
    if stor6.length:
        mem[160] = uint256(stor6.field_0)
        idx = 160
        s = 0
        while (32 * stor6.length) + 128 > idx:
            mem[idx + 32] = stor6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor6.length) + 160] = 32
    mem[(32 * stor6.length) + 192] = stor6.length
    if Mask(251, 0, stor6.length):
        mem[(32 * stor6.length) + 224] = mem[160]
        mem[(32 * stor6.length) + 256 len floor32((32 * stor6.length) - 1)] = mem[192 len floor32((32 * stor6.length) - 1)]
    return Array(len=stor6.length, data=mem[(32 * stor6.length) + 224 len 32 * stor6.length])
}

function sub_ffe39b8f(?) {
    mem[128 len 224] = 0
    require stor7 == msg.sender
    require arg1 >= 1
    require stor4[arg1].field_0 <= 0
    require arg2 >= stor0
    require arg2 <= stor1
    mem[352] = arg1
    stor4[arg1].field_0 = arg1
    stor4[arg1].field_256 = 1
    stor4[arg1].field_264 = arg2
    stor4[arg1].field_272 = 0
    stor4[arg1].field_512 = 0
    s = 3
    idx = 128
    while 352 > idx:
        stor4[arg1][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        stor4[arg1][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_c18dac4e++
    sub_16779bf1++
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = stor6.length + 1
        while stor6.length > idx:
            stor6[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[stor6.length].field_0 = arg1
    return 1
}



}
