contract main {




// =====================  Runtime code  =====================


address sub_5b57f333Address;

function sub_5b57f333(?) payable {
    return sub_5b57f333Address
}

function _fallback() payable {
    revert
}

function sub_4ef7db58(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        s = 0
        s = 96
        s = 96
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64]] = 0xf579f88200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_5b57f333Address)
            staticcall sub_5b57f333Address.games(bytes32 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _40 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_40 + 160] <= 4294967296
            require mem[_40 + 160] + 32 <= return_data.size
            require return_data.size >= mem[_40 + mem[_40 + 160]] + mem[_40 + 160] + 32 and mem[_40 + mem[_40 + 160]] <= 4294967296
            require mem[_40 + 192] <= 4294967296
            require mem[_40 + 192] + 32 <= return_data.size
            require return_data.size >= mem[_40 + mem[_40 + 192]] + mem[_40 + 192] + 32 and mem[_40 + mem[_40 + 192]] <= 4294967296
            s = mem[_40 + 224]
            s = _40 + mem[_40 + 192]
            s = _40 + mem[_40 + 160]
            s = mem[_40 + 128]
            s = mem[_40 + 96]
            s = mem[_40 + 64]
            s = mem[_40 + 32]
            s = mem[_40]
            idx = idx + 1
            s = s + mem[_40]
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = code.data[802 len 32 * ('cd', 4).length]
        s = 0
        s = 96
        s = 96
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64]] = 0xf579f88200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(sub_5b57f333Address)
            staticcall sub_5b57f333Address.games(bytes32 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _41 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_41 + 160] <= 4294967296
            require mem[_41 + 160] + 32 <= return_data.size
            require return_data.size >= mem[_41 + mem[_41 + 160]] + mem[_41 + 160] + 32 and mem[_41 + mem[_41 + 160]] <= 4294967296
            require mem[_41 + 192] <= 4294967296
            require mem[_41 + 192] + 32 <= return_data.size
            require return_data.size >= mem[_41 + mem[_41 + 192]] + mem[_41 + 192] + 32 and mem[_41 + mem[_41 + 192]] <= 4294967296
            s = mem[_41 + 224]
            s = _41 + mem[_41 + 192]
            s = _41 + mem[_41 + 160]
            s = mem[_41 + 128]
            s = mem[_41 + 96]
            s = mem[_41 + 64]
            s = mem[_41 + 32]
            s = mem[_41]
            idx = idx + 1
            s = s + mem[_41]
            continue 
    return (s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length)
}



}
