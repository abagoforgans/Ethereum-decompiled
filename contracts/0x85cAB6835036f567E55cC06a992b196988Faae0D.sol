contract main {




// =====================  Runtime code  =====================


#
#  - sub_779f21bb(?)
#
mapping of struct stor0;
uint256 sub_59f24271;

function sub_59f24271(?) {
    return sub_59f24271
}

function _fallback() payable {
    revert
}

function children(uint256 arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_0, stor0[arg1].field_256
}

function sub_e64f0e13(?) payable {
    mem[64] = 96
    s = 0
    idx = sub_59f24271
    while idx < sub_59f24271 + arg1:
        create contract with 0 wei
                        code: code.data[2515 len 47]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + 96
        mem[_21] = address(create.new_address)
        mem[_21 + 32] = 2
        _22 = mem[64]
        mem[64] = mem[64] + 32
        mem[_22] = (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000
        _24 = mem[64]
        mem[mem[64] + 32] = address(sha3(Mask(184, 72, (address(create.new_address) << 80) - 0x296bffffffffffffffffffffffffffffffffffffffffff000000000000000000) >> 72))
        _25 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _27 = mem[_25]
        t = _25 + 32
        u = _24 + 52
        s = mem[_25]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_24 + floor32(mem[_25]) + 52] = mem[_25 + floor32(mem[_25]) + 32] and !(256^(-(mem[_25] % 32) + 32) - 1) or 256^(-(mem[_25] % 32) + 32) - 1 and mem[_24 + floor32(mem[_25]) + 52]
        mem[_21 + 64] = sha3(mem[_24 + 52 len _27])
        mem[0] = idx
        mem[32] = 0
        stor0[idx].field_0 = mem[_21 + 12 len 20]
        stor0[idx].field_160 = mem[_21 + 52 len 12]
        stor0[idx].field_256 = mem[_21 + 64]
        s = create.new_address
        idx = idx + 1
        continue 
    sub_59f24271 = idx
}



}
