contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    mem[128] = '7b3031af5b66cf99bfe3f297467cd446'
    stor1.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    mem[192] = '1f0ac1e16b8ead62a1913e090cd4b702'
    mem[224] = '3254384cb1caffb02beefcd0cfb4be81'
    mem[256] = '874e182d512ee6bf116273bb84d156ba'
    stor2.length = 193
    s = 0
    idx = 192
    while 288 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    return code.data[495 len 2331]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_e78d8ee1;
array of struct sub_87835895;

function sub_87835895(?) {
    return sub_87835895[0 len sub_87835895.length].field_0
}

function owner() {
    return owner
}

function sub_e78d8ee1(?) {
    return sub_e78d8ee1[0 len sub_e78d8ee1.length].field_0
}

function kill() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_a0be17a9(?) {
    require msg.sender == owner
    sub_e78d8ee1.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_e78d8ee1[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_e78d8ee1.length + 31 / 32 > idx:
        sub_e78d8ee1[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_87835895.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        sub_87835895[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_87835895.length + 31 / 32 > idx:
        sub_87835895[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_cf9d71b9(?) payable {
    require msg.sender == owner
    mem[96] = sub_e78d8ee1.length
    mem[128] = uint256(sub_e78d8ee1.field_0)
    idx = 128
    s = 0
    while sub_e78d8ee1.length + 96 > idx:
        mem[idx + 32] = sub_e78d8ee1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 160
    mem[ceil32(sub_e78d8ee1.length) + 128] = sub_87835895.length
    mem[0] = 2
    mem[ceil32(sub_e78d8ee1.length) + 160] = uint256(sub_87835895.field_0)
    idx = ceil32(sub_e78d8ee1.length) + 160
    s = 0
    while ceil32(sub_e78d8ee1.length) + sub_87835895.length + 128 > idx:
        mem[idx + 32] = sub_87835895[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(0xe9e062d7e60c8a6a406488631dae1c5f6db0e7d)
    call 0x0e9e062d7e60c8a6a406488631dae1c5f6db0e7d.costWei() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 160] = 0x30ac305200000000000000000000000000000000000000000000000000000000
    mem[ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 164] = 64
    mem[ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 228] = sub_e78d8ee1.length
    mem[ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 260 len ceil32(sub_e78d8ee1.length)] = mem[128 len ceil32(sub_e78d8ee1.length)]
    mem[ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 196] = sub_e78d8ee1.length + 96
    mem[sub_e78d8ee1.length + ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 260] = sub_87835895.length
    mem[sub_e78d8ee1.length + ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 292 len ceil32(sub_87835895.length)] = mem[ceil32(sub_e78d8ee1.length) + 160 len ceil32(sub_87835895.length)]
    if not sub_87835895.length % 32:
        require ext_code.size(0xe9e062d7e60c8a6a406488631dae1c5f6db0e7d)
        call 0x0e9e062d7e60c8a6a406488631dae1c5f6db0e7d.sendText(string rg1, string rg2) with:
           value ext_call.return_data[0] wei
             gas 80000 wei
            args Array(len=sub_e78d8ee1.length, data=mem[128 len ceil32(sub_e78d8ee1.length)], mem[(2 * ceil32(sub_e78d8ee1.length)) + ceil32(sub_87835895.length) + 260 len sub_e78d8ee1.length + -ceil32(sub_e78d8ee1.length) + 32], mem[ceil32(sub_e78d8ee1.length) + 160 len sub_87835895.length]), sub_e78d8ee1.length + 96
    else:
        mem[floor32(sub_87835895.length) + sub_e78d8ee1.length + ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + 292] = mem[floor32(sub_87835895.length) + sub_e78d8ee1.length + ceil32(sub_e78d8ee1.length) + ceil32(sub_87835895.length) + -sub_87835895.length % 32 + 324 len sub_87835895.length % 32]
        require ext_code.size(0xe9e062d7e60c8a6a406488631dae1c5f6db0e7d)
        call 0x0e9e062d7e60c8a6a406488631dae1c5f6db0e7d.sendText(string rg1, string rg2) with:
           value ext_call.return_data[0] wei
             gas 80000 wei
            args Array(len=sub_e78d8ee1.length, data=mem[128 len ceil32(sub_e78d8ee1.length)], mem[(2 * ceil32(sub_e78d8ee1.length)) + ceil32(sub_87835895.length) + 260 len sub_e78d8ee1.length + -ceil32(sub_e78d8ee1.length) + 32], mem[ceil32(sub_e78d8ee1.length) + 160 len ceil32(sub_87835895.length)], mem[ceil32(sub_e78d8ee1.length) + (2 * ceil32(sub_87835895.length)) + sub_e78d8ee1.length + 292 len floor32(sub_87835895.length) + -ceil32(sub_87835895.length) + 32]), sub_e78d8ee1.length + 96
    require ext_call.success
}



}
