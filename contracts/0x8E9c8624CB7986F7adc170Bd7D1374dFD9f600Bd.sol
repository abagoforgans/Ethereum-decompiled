contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    mem[96] = 0
    mem[128] = 1
    mem[160] = 1
    mem[192] = 2
    mem[224] = 1
    mem[256] = 2
    mem[288] = 2
    mem[320] = 3
    mem[352] = 1
    mem[384] = 2
    mem[416] = 2
    mem[448] = 3
    mem[480] = 2
    mem[512] = 3
    mem[544] = 3
    mem[576] = 4
    s = 0
    idx = 96
    while 608 > idx:
        stor1 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor1
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 16
    s = 1
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-14 * None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    require ext_code.size(0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10)
    delegate 0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10.0x76a8de2a with:
         gas gas_remaining - 710 wei
        args 2, code.data[2842 len 32]
    require delegate.return_code
    return code.data[661 len 2181]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 stor1;

function _fallback() payable {
    revert
}

function sub_3b7015c8(?) {
    require ext_code.size(0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10)
    delegate 0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10.0x5d5d5cb1 with:
         gas gas_remaining - 710 wei
        args 2, 4, stor0, call.data[4 len 1024], Mask(64, 192, arg1)
    require delegate.return_code
    emit 0x871dc7a0: delegate.return_data[31 len 1]
    return uint8(delegate.return_data[0])
}

function evaluate() {
    require ext_code.size(0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10)
    delegate 0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10.0x179d3059 with:
         gas gas_remaining - 710 wei
        args 36, stor0
    require delegate.return_code
    emit 0x1b9b79b3: delegate.return_data[31 len 1], address(delegate.return_data[32]), delegate.return_data[64], uint16(delegate.return_data[96])
    return delegate.return_data[0] << 248, 
           address(delegate.return_data[32]),
           delegate.return_data[64],
           uint16(delegate.return_data[96])
}

function sub_7f1c7e3d(?) {
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10)
    delegate 0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10.0xdd26031f with:
         gas gas_remaining - 710 wei
        args 3, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)])
    require delegate.return_code
    emit 0xa22c259f: delegate.return_data[31 len 1]
    return uint8(delegate.return_data[0])
}

function sub_2ed085bc(?) {
    idx = 2276
    s = 0
    while 2788 > idx + 32:
        mem[idx + 32] = stor1[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    require ext_code.size(0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10)
    delegate 0xfad26e55c6a616c57e428e1beb6cdc6b8c42bb10.0x24b9719d with:
         gas gas_remaining - 710 wei
        args 4, 3, 36, call.data[4 len 1024], Mask(64, 192, arg1), stor1.length, mem[2308 len 480]
    require delegate.return_code
    emit 0x597353a9: delegate.return_data[31 len 1]
    return uint8(delegate.return_data[0])
}



}
