contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() {
    stor0 = code.data[6270 len 20]
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    return code.data[181 len 6077]
}



// =====================  Runtime code  =====================


address owner;
address sub_409ebb5bAddress;
uint256 sub_b502018f;
uint256 sub_5cb3a6b2;
uint8 isETH;
address sub_ba796948Address; offset 8
mapping of uint16 sub_a7b7b087;
array of address recipients;
uint8 stor7;
uint8 sub_d60c13a1; offset 8
uint256 stor7; offset 8
uint256 stor7;

function sub_409ebb5b(?) {
    return sub_409ebb5bAddress
}

function sub_5cb3a6b2(?) {
    return sub_5cb3a6b2
}

function owner() {
    return owner
}

function isETH() {
    return bool(isETH)
}

function sub_a7b7b087(?) {
    return sub_a7b7b087[arg1]
}

function sub_b502018f(?) {
    return sub_b502018f
}

function sub_ba796948(?) {
    return sub_ba796948Address
}

function recipients(uint256 arg1) {
    require arg1 < recipients.length
    return recipients[arg1]
}

function sub_d60c13a1(?) {
    return bool(sub_d60c13a1)
}

function _fallback() payable {
    revert
}

function status() {
    return ('signextend', 0, ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))))
}

function sub_53e36b57(?) {
    require msg.sender == sub_409ebb5bAddress
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 3
    require not sub_d60c13a1
    Mask(248, 0, stor7.field_8) = 1
}

function sub_7d51d7b9(?) {
    require msg.sender == owner
    require not ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7))))))
    require arg1 > 0
    sub_b502018f = arg1
    isETH = 1
    sub_ba796948Address = 0
    uint8(stor7.field_0) = 1
}

function sub_253fc9b5(?) {
    require msg.sender == owner
    require not ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7))))))
    require arg1 > 0
    sub_b502018f = arg1
    isETH = 0
    sub_ba796948Address = arg2
    uint8(stor7.field_0) = 1
}

function sub_ae002789(?) payable {
    require msg.sender == owner
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 2
    require bool(isETH) == 1
    require not sub_5cb3a6b2
    require sub_b502018f == msg.value
    sub_5cb3a6b2 = msg.value
    uint8(stor7.field_0) = 3
}

function doRefundETH() {
    require msg.sender == sub_409ebb5bAddress
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 3
    require bool(sub_d60c13a1) == 1
    call owner with:
       value sub_5cb3a6b2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_5cb3a6b2 = 0
    uint8(stor7.field_0) = 5
}

function sub_d0ff6ebe(?) {
    if sub_409ebb5bAddress != msg.sender:
        require msg.sender == owner
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 3
    require bool(sub_d60c13a1) == 1
    require ext_code.size(sub_ba796948Address)
    call sub_ba796948Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args owner, sub_5cb3a6b2
    require ext_call.success
    sub_5cb3a6b2 = 0
    uint8(stor7.field_0) = 5
}

function sub_8982053f(?) {
    require msg.sender == owner
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 2
    require not isETH
    require not sub_5cb3a6b2
    require ext_code.size(sub_ba796948Address)
    call sub_ba796948Address.balanceOf(address arg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] != sub_b502018f:
        uint8(stor7.field_0) = 255
    else:
        sub_5cb3a6b2 = ext_call.return_data[0]
        uint8(stor7.field_0) = 3
}

function sub_172d06dd(?) {
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 3
    require msg.sender == owner
    require sub_b502018f == sub_5cb3a6b2
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < recipients.length:
        mem[32] = 5
        require uint16(idx) < recipients.length
        mem[0] = 6
        call recipients[uint16(idx)] with:
           value uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_5cb3a6b2 -= uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100
        s = uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100
        s = uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2
        idx = idx + 1
        continue 
    if sub_5cb3a6b2:
        uint8(stor7.field_0) = 254
    uint8(stor7.field_0) = 4
}

function sub_1f88f53a(?) {
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 3
    require msg.sender == owner
    require sub_b502018f == sub_5cb3a6b2
    s = 0
    s = 0
    idx = 0
    while uint16(idx) < recipients.length:
        mem[32] = 5
        require uint16(idx) < recipients.length
        mem[0] = 6
        mem[100] = recipients[uint16(idx)]
        mem[132] = uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100
        require ext_code.size(sub_ba796948Address)
        call sub_ba796948Address.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args recipients[uint16(idx)], uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2 / 100 / 100
        s = uint16(100 * sub_a7b7b087[stor6[uint16(idx)]]) * sub_5cb3a6b2
        idx = idx + 1
        continue 
    if sub_5cb3a6b2:
        uint8(stor7.field_0) = 254
    uint8(stor7.field_0) = 4
}

function sub_b627cd4d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ('signextend', 0, ('signextend', 0, ('type', 256, ('field', 0, ('stor', ('name', 'stor7', 7)))))) == 1
    require msg.sender == owner
    require arg1.length == arg2.length
    sub_409ebb5bAddress = arg3
    recipients.length = arg1.length
    if not arg1.length:
        idx = 0
        while recipients.length > idx:
            recipients[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            recipients[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while recipients.length > idx:
            recipients[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg2.length
        require uint16(idx) < arg1.length
        mem[0] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[32] = 5
        sub_a7b7b087[mem[(32 * uint16(idx)) + 140 len 20]] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 190 len 2]
        idx = idx + 1
        continue 
    uint8(stor7.field_0) = 2
}



}
