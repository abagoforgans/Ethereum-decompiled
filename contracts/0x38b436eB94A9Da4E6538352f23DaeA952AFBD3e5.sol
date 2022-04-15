contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[3389 len 20]
    stor1 = code.data[3421 len 20]
    return code.data[112 len 3265]
}



// =====================  Runtime code  =====================


address sub_c23aa65aAddress;
address adminAddress;
mapping of struct sub_7c95ac27;

function sub_7c95ac27(?) {
    return sub_7c95ac27[arg1].field_256
}

function sub_7e57208c(?) {
    return sub_7c95ac27[arg1].field_1024
}

function sub_c23aa65a(?) {
    return sub_c23aa65aAddress
}

function getVoter(uint256 arg1) {
    return address(sub_7c95ac27[arg1].field_512)
}

function sub_efbef75a(?) {
    return uint8(sub_7c95ac27[arg1].field_672)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) {
    require adminAddress == msg.sender
    if arg1:
        adminAddress = arg1
}

function sub_cca14931(?) {
    require adminAddress == msg.sender
    if arg1:
        sub_c23aa65aAddress = arg1
}

function sub_0bf3a8b5(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_7c95ac27[arg1].field_256 = arg2
    emit 0x587a1965: arg1, arg2
}

function sub_f5232c6a(?) {
    require sub_c23aa65aAddress == msg.sender
    sub_7c95ac27[arg1].field_1024 = arg2
    emit 0x233cc93d: arg2, arg1
}

function sub_859ea9bc(?) {
    require sub_c23aa65aAddress == msg.sender
    uint8(sub_7c95ac27[arg1].field_672) = arg2
    emit 0xc2d7e17c: arg2, arg1
}

function sub_5d0becce(?) {
    require sub_c23aa65aAddress == msg.sender
    address(sub_7c95ac27[arg1].field_512) = arg2
    emit 0xaaae763f: arg1, arg2
}

function sub_8b5a8db2(?) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    require delegate.return_code
    return delegate.return_data[0]
}

function voteExists(uint256 arg1) {
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x7f562d88 with:
         gas gas_remaining - 710 wei
        args 2, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function getSurvey(uint256 arg1) {
    if not sub_7c95ac27[arg1].field_768:
        mem[(32 * sub_7c95ac27[arg1].field_768) + 160] = 32
        mem[(32 * sub_7c95ac27[arg1].field_768) + 192] = sub_7c95ac27[arg1].field_768
        mem[(32 * sub_7c95ac27[arg1].field_768) + 224 len floor32(sub_7c95ac27[arg1].field_768)] = mem[160 len floor32(sub_7c95ac27[arg1].field_768)]
        return memory
          from (32 * sub_7c95ac27[arg1].field_768) + 160
           len (96 * sub_7c95ac27[arg1].field_768) + 64
    mem[160] = uint8(sub_7c95ac27[arg1][3].field_0)
    idx = 160
    s = 0
    while (32 * sub_7c95ac27[arg1].field_768) + 128 > idx:
        mem[idx + 32] = stor('array', 3, ('map', ('param', 'arg1'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * sub_7c95ac27[arg1].field_768) + 224 len floor32(sub_7c95ac27[arg1].field_768)] = mem[160 len floor32(sub_7c95ac27[arg1].field_768)]
    return Array(len=sub_7c95ac27[arg1].field_768, data=mem[160 len floor32(sub_7c95ac27[arg1].field_768)], mem[(32 * sub_7c95ac27[arg1].field_768) + floor32(sub_7c95ac27[arg1].field_768) + 224 len (32 * sub_7c95ac27[arg1].field_768) - floor32(sub_7c95ac27[arg1].field_768)]), 
}

function sub_21662aa1(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require sub_c23aa65aAddress == msg.sender
    sub_7c95ac27[arg1].field_768 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_7c95ac27[arg1].field_768 + 31 / 32 > idx:
            uint8(sub_7c95ac27[arg1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            sub_7c95ac27[arg1][3].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_7c95ac27[arg1][3].field_0
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        s = sha3(sha3(arg1, 5) + 3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg2.length) + 31) >> 5 * None + 3 / 32)
        while sub_7c95ac27[arg1].field_768 + 31 / 32 > idx:
            uint8(sub_7c95ac27[arg1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    mem[(32 * arg2.length) + 128] = 32
    mem[(32 * arg2.length) + 160] = arg2.length
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0xb6e40cf3: mem[(32 * arg2.length) + 128 len (96 * arg2.length) + 64], arg1
}

function sub_b0042980(?) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require sub_c23aa65aAddress == msg.sender
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0xa69be3d7 with:
         gas gas_remaining - 710 wei
        args 2
    mem[(32 * arg4.length) + 128] = delegate.return_data[0]
    require delegate.return_code
    require not sub_7c95ac27[delegate.return_data[0] + 1].field_0
    sub_7c95ac27[delegate.return_data[0] + 1].field_0 = delegate.return_data[0] + 1
    sub_7c95ac27[delegate.return_data[0] + 1].field_256 = arg2
    address(sub_7c95ac27[delegate.return_data[0] + 1].field_512) = arg1
    uint8(sub_7c95ac27[delegate.return_data[0] + 1].field_672) = arg3
    sub_7c95ac27[delegate.return_data[0] + 1].field_768 = arg4.length
    if not arg4.length:
        idx = 0
        while sub_7c95ac27[delegate.return_data[0] + 1].field_768 + 31 / 32 > idx:
            uint8(sub_7c95ac27[delegate.return_data[0] + 1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            sub_7c95ac27[delegate.return_data[0] + 1][3].field_0 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and sub_7c95ac27[delegate.return_data[0] + 1][3].field_0
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        s = sha3(sha3(delegate.return_data[0] + 1, 5) + 3)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * arg4.length) + 31) >> 5 * None + 3 / 32)
        while sub_7c95ac27[delegate.return_data[0] + 1].field_768 + 31 / 32 > idx:
            uint8(sub_7c95ac27[delegate.return_data[0] + 1][idx + 3].field_0) = 0
            idx = idx + 1
            continue 
    sub_7c95ac27[delegate.return_data[0] + 1].field_1024 = arg5
    require ext_code.size(0xa7266f0da6972b10ebb766aee6091a312c4839b2)
    delegate 0xa7266f0da6972b10ebb766aee6091a312c4839b2.0x48d8aa13 with:
         gas gas_remaining - 710 wei
        args 2, delegate.return_data[0] + 1
    require delegate.return_code
    mem[(32 * arg4.length) + 288 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    emit 0x68082b69: arg3 << 248, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + floor32(arg4.length) + 288 len (32 * arg4.length) - floor32(arg4.length)]), arg5, delegate.return_data[0] + 1, arg2, arg1
    return (delegate.return_data[0] + 1)
}



}
