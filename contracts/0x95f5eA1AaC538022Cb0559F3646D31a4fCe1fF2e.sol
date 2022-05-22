contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 nonce;
uint8 stor2; offset 160
address stor2;

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function get() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_87f7d378(?) payable {
    mem[64] = 96
    require not uint8(stor2.field_160)
    require msg.sender == stor0
    require msg.value == 10^17
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0xd87574e0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(address(stor2.field_0))
    call address(stor2.field_0).0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = nonce
    while uint8(idx) < arg1:
        _54 = mem[64]
        mem[mem[64] + 32] = address(sha3(0, 0, this.address, uint8(s)))
        _55 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _57 = mem[_55]
        u = _55 + 32
        v = mem[64]
        t = mem[_55]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[_55])] = mem[_55 + floor32(mem[_55]) + -(mem[_55] % 32) + 64 len mem[_55] % 32] or Mask(8 * -(mem[_55] % 32) + 32, -(8 * -(mem[_55] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_55])])
        _98 = sha3(mem[mem[64] len _57 + _54 + -mem[64] + 52])
        require block.timestamp
        _100 = mem[64]
        mem[mem[64] + 32] = address(block.coinbase)
        _101 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _103 = mem[_101]
        u = _101 + 32
        v = _100 + 52
        t = mem[_101]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_100 + floor32(mem[_101]) + 52] = mem[_101 + -(mem[_101] % 32) + floor32(mem[_101]) + 64 len mem[_101] % 32] or Mask(8 * -(mem[_101] % 32) + 32, -(8 * -(mem[_101] % 32) + 32) + 256, mem[_100 + floor32(mem[_101]) + 52])
        require block.timestamp
        if block.timestamp + block.difficulty < block.timestamp:
            revert with 0, 'SafeMath add failed'
        if sha3(mem[_100 + 52 len _103]) / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.gas_limit < 0:
            revert with 0, 'SafeMath add failed'
        if _98 / block.timestamp < 0:
            revert with 0, 'SafeMath add failed'
        if block.number < 0:
            revert with 0, 'SafeMath add failed'
        mem[_100 + 84] = block.timestamp + block.difficulty + (sha3(mem[_100 + 52 len _103]) / block.timestamp) + block.gas_limit + (_98 / block.timestamp) + block.number
        mem[_100 + 52] = 32
        mem[64] = _100 + 116
        u = _100 + 84
        v = _100 + 116
        t = 32
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_100 + 148] = None or mem[_100 + 148]
        if sha3(mem[_100 + 116]) - (1000 * sha3(mem[_100 + 116]) / 1000) >= ext_call.return_data[0]:
            idx = idx + 1
            s = s + 1
            continue 
        t = 0
        while uint8(t) < uint8(idx):
            mem[_100 + 116 len 82] = code.data[2302 len 82]
            create contract with 0 wei
                            code: code.data[2302 len 82]
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            t = t + 1
            continue 
        create contract with callvalue wei
                        code: code.data[2384 len 493]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        nonce = s
        require eth.balance(stor0) > eth.balance(stor0) + msg.value
    require eth.balance(stor0) > eth.balance(stor0) + msg.value
}



}
