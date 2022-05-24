contract main {




// =====================  Runtime code  =====================


#
#  - sub_bcbf78a0(?)
#
const sub_3fc070b9(?) = 20180822


address stor0;
address owner;
address sub_26c23715Address;
mapping of struct sub_25fac3c8;
array of uint256 stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address sub_5a0bea72Address;
address stor6;

function sub_15347c7b(?) {
    return bool(uint8(stor5.field_160))
}

function sub_1b3c8406(?) {
    return stor4.length
}

function getTokenContractAddress() {
    return sub_26c23715Address
}

function sub_25fac3c8(?) {
    require sub_25fac3c8[arg1].field_2976 <= 5
    return sub_25fac3c8[arg1].field_2976
}

function sub_26c23715(?) {
    return sub_26c23715Address
}

function sub_2e809014(?) {
    require sub_25fac3c8[arg1].field_1024 <= 2
    return sub_25fac3c8[arg1].field_0, sub_25fac3c8[arg1].field_1024, sub_25fac3c8[arg1].field_2048
}

function sub_38a50a32(?) {
    return sub_25fac3c8[arg1][3][0 len sub_25fac3c8[arg1][3].length].field_0
}

function sub_4836623b(?) {
    return bool(sub_25fac3c8[arg1].field_4352)
}

function sub_5a0bea72(?) {
    return sub_5a0bea72Address
}

function sub_5d917209(?) {
    return bool(sub_25fac3c8[arg1].field_3328), 
           bool(sub_25fac3c8[arg1].field_4352),
           bool(sub_25fac3c8[arg1].field_4368),
           bool(sub_25fac3c8[arg1].field_4864),
           bool(sub_25fac3c8[arg1].field_4872),
           bool(sub_25fac3c8[arg1].field_4880),
           bool(sub_25fac3c8[arg1].field_4888)
}

function sub_5ec2780c(?) {
    require sub_25fac3c8[arg1].field_2976 <= 5
    return sub_25fac3c8[arg1].field_0, 
           sub_25fac3c8[arg1].field_2304,
           sub_25fac3c8[arg1].field_2560,
           sub_25fac3c8[arg1].field_2816,
           sub_25fac3c8[arg1].field_3072,
           sub_25fac3c8[arg1].field_1280,
           sub_25fac3c8[arg1].field_1536
}

function owner() {
    return owner
}

function sub_d1139b3e(?) {
    return sub_25fac3c8[stor4.length].field_0
}

function sub_fbb944e4(?) {
    return sub_25fac3c8[arg1][2][0 len sub_25fac3c8[arg1][2].length].field_0
}

function _fallback() payable {
    revert
}

function sub_72d77feb(?) {
    require msg.sender == stor0
    stor6 = arg1
}

function sub_3113711d(?) {
    if not sub_5a0bea72Address:
        return 1
    else:
        return 0
}

function sub_af7f50f6(?) {
    require msg.sender == owner
    sub_5a0bea72Address = arg1
    emit 0x253e8d48: arg1
}

function sub_9c00f4fc(?) {
    require msg.sender == stor0
    require not sub_5a0bea72Address
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg1)
}

function setTokenContractAddress(address arg1) {
    require msg.sender == owner
    require not sub_5a0bea72Address
    sub_26c23715Address = arg1
    emit 0xbbbf32f0: arg1
}

function sub_8934b007(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require not sub_25fac3c8[arg1].field_4368
    sub_25fac3c8[arg1].field_256 = arg2
}

function sub_8b6d970d(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require arg2 == sub_25fac3c8[arg1].field_256
    emit 0x82036d55: arg1, arg2, arg3
}

function sub_88c597b0(?) {
    require not sub_5a0bea72Address
    require msg.sender == sub_25fac3c8[arg1].field_2304
    require not sub_25fac3c8[arg1].field_4872
    require sub_25fac3c8[arg1].field_4864
    sub_25fac3c8[arg1].field_4872 = 1
    sub_25fac3c8[arg1].field_2976 = 4
}

function sub_ec6448b3(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require not sub_25fac3c8[arg1].field_4368
    sub_25fac3c8[arg1].field_4368 = 1
    sub_25fac3c8[arg1].field_2976 = 1
}

function sub_8787e154(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require sub_25fac3c8[arg1].field_2976 <= 5
    require sub_25fac3c8[arg1].field_2976 == 1
    sub_25fac3c8[arg1].field_2976 = 2
}

function sub_5d97807b(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require not sub_25fac3c8[arg1].field_4864
    sub_25fac3c8[arg1].field_4864 = 1
    sub_25fac3c8[arg1].field_2976 = 3
    sub_25fac3c8[arg1].field_4096 = block.number
}

function depositETH(uint256 arg1) payable {
    require not sub_5a0bea72Address
    require sub_25fac3c8[arg1].field_1024 <= 2
    require sub_25fac3c8[arg1].field_1024 == 1
    sub_25fac3c8[arg1].field_1536 += msg.value
    if sub_25fac3c8[arg1].field_1280 <= msg.value + sub_25fac3c8[arg1].field_1536:
        sub_25fac3c8[arg1].field_4352 = 1
    emit 0x7471784e: arg1, msg.value
}

function sub_52346ef9(?) {
    require not sub_5a0bea72Address
    require sub_25fac3c8[arg1].field_1024 <= 2
    require sub_25fac3c8[arg1].field_1024 == 2
    require msg.sender == sub_25fac3c8[arg1].field_2304
    require arg2 >= 0
    sub_25fac3c8[arg1].field_1536 += arg2
    if sub_25fac3c8[arg1].field_1280 <= arg2 + sub_25fac3c8[arg1].field_1536:
        sub_25fac3c8[arg1].field_4352 = 1
    emit 0xbcc75c98: arg1, msg.value
}

function sub_fdc5f48c(?) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2304 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require not sub_25fac3c8[arg1].field_4880
    require sub_25fac3c8[arg1].field_2976 <= 5
    require sub_25fac3c8[arg1].field_2976
    require sub_25fac3c8[arg1].field_2976 <= 5
    require sub_25fac3c8[arg1].field_2976 != 1
    sub_25fac3c8[arg1].field_4880 = 1
    sub_25fac3c8[arg1].field_2976 = 5
}

function payOut(uint256 arg1) {
    require not sub_5a0bea72Address
    if sub_25fac3c8[arg1].field_2560 != msg.sender:
        require msg.sender == sub_25fac3c8[arg1].field_2816
    require sub_25fac3c8[arg1].field_4872
    require not sub_25fac3c8[arg1].field_4888
    require not sub_25fac3c8[arg1].field_4880
    sub_25fac3c8[arg1].field_4888 = 1
    call sub_25fac3c8[arg1].field_2560 with:
       value sub_25fac3c8[arg1].field_1280 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x691f4914: arg1, sub_25fac3c8[arg1].field_1280
}

function sub_6fce71b7(?) {
    if stor4.length - 100 >= 0:
        idx = stor4.length + 2
        s = 0
        while idx > stor4.length - 100:
            mem[0] = idx
            mem[32] = 3
            if sub_25fac3c8[idx].field_2304 != arg1:
                idx = idx - 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 3
            idx = idx - 1
            s = sub_25fac3c8[idx].field_0
            continue 
    else:
        idx = stor4.length + 2
        s = 0
        while idx > 0:
            mem[0] = idx
            mem[32] = 3
            if sub_25fac3c8[idx].field_2304 != arg1:
                idx = idx - 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 3
            idx = idx - 1
            s = sub_25fac3c8[idx].field_0
            continue 
    return s
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    require not sub_5a0bea72Address
    require msg.sender == sub_26c23715Address
    idx = 0
    s = 0
    while idx < arg4.length:
        require idx < arg4.length
        require idx < arg4.length
        if Mask(8, 248, mem[idx + 128]) >= '0':
            if Mask(8, 248, mem[idx + 128]) <= '9':
                require idx < arg4.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit LogReceiveApproval(arg2, Array(len=arg4.length, data=arg4[all]), msg.sender, arg3);
    sub_25fac3c8[s].field_2048 += arg2
    if sub_25fac3c8[s].field_1792 <= arg2 + sub_25fac3c8[s].field_2048:
        sub_25fac3c8[s].field_4352 = 1
    emit 0xce032400: s, arg2
}

function sub_2147b689(?) {
    require not sub_5a0bea72Address
    sub_25fac3c8[stor4.length + 1].field_0 = stor4.length + 1
    sub_25fac3c8[stor4.length + 1].field_2304 = arg1
    sub_25fac3c8[stor4.length + 1].field_2560 = arg2
    sub_25fac3c8[stor4.length + 1].field_3584 = arg3
    sub_25fac3c8[stor4.length + 1].field_2976 = 0
    sub_25fac3c8[stor4.length + 1].field_3328 = 1
    sub_25fac3c8[stor4.length + 1].field_3072 = 0
    if not arg4:
        sub_25fac3c8[stor4.length + 1].field_1024 = 0
    else:
        if 1 == arg4:
            sub_25fac3c8[stor4.length + 1].field_1024 = 2
        else:
            require 2 == arg4
            sub_25fac3c8[stor4.length + 1].field_1024 = 1
    sub_25fac3c8[stor4.length + 1].field_1280 = arg5
    sub_25fac3c8[stor4.length + 1].field_1536 = 0
    sub_25fac3c8[stor4.length + 1].field_2048 = 0
    sub_25fac3c8[stor4.length + 1].field_2816 = 0
    sub_25fac3c8[stor4.length + 1].field_4608 = 0
    sub_25fac3c8[stor4.length + 1].field_4352 = sub_25fac3c8[stor4.length + 1].field_4352 and -16711936
    sub_25fac3c8[stor4.length + 1].field_4864 = 0
    sub_25fac3c8[stor4.length + 1].field_3840 = block.number
    if stor4.length + 1 >= stor4.length:
        stor4.length++
        stor4[stor4.length] = stor4.length + 1
    emit 0x485397db: stor4.length + 1, address(arg1), address(arg2), arg4
}

function compareStrings(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    _21 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]) == _21
    return memory
      from ceil32(arg1.length) + ceil32(arg2.length) + 160
       len 32
}



}
