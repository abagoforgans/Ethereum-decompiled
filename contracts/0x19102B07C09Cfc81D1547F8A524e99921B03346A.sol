contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 contracts;
mapping of address sub_b11524c5;
uint256 nonce;

function contracts(address arg1) {
    return contracts[arg1]
}

function nonce() {
    return nonce
}

function sub_b11524c5(?) {
    return sub_b11524c5[arg1]
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4109d12(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor1
    s = 0
    while nonce < arg1 + nonce:
        _15 = mem[64]
        mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 34] = address(this.address)
        mem[mem[64] + 54] = nonce
        _16 = mem[64]
        mem[mem[64]] = 54
        mem[64] = mem[64] + 86
        _17 = mem[_16]
        s = _16 + 32
        t = _15 + 86
        idx = mem[_16]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[_15 + floor32(mem[_16]) + 86] = mem[_15 + floor32(mem[_16]) + 86] and 256^(-(mem[_16] % 32) + 32) - 1 or mem[_16 + floor32(mem[_16]) + 32] and !(256^(-(mem[_16] % 32) + 32) - 1)
        _32 = sha3(mem[mem[64] len _15 + _17 + -mem[64] + 86])
        mem[mem[64] len 794] = code.data[1942 len 794]
        create contract with 0 wei
                        code: code.data[1942 len 794]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        contracts[address(_32)] = 1
        mem[0] = nonce
        mem[32] = 5
        sub_b11524c5[stor6] = address(_32)
        nonce++
        mem[mem[64]] = address(_32)
        emit C(address(_32));
        s = _32
        continue 
}

function checkPwnData() payable {
    mem[64] = 96
    require ext_code.size(stor0)
    call stor0.0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    t = 0
    u = 0
    v = 0
    v = 0
    idx = 1
    while idx < nonce:
        mem[0] = sub_b11524c5[idx]
        mem[32] = 4
        _46 = mem[64]
        mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 34] = sub_b11524c5[idx]
        mem[mem[64] + 54] = contracts[stor5[idx]] + 1
        _47 = mem[64]
        mem[mem[64]] = 54
        mem[64] = mem[64] + 86
        _48 = mem[_47]
        w = _47 + 32
        x = _46 + 86
        v = mem[_47]
        while v >= 32:
            mem[x] = mem[w]
            w = w + 32
            x = x + 32
            v = v - 32
            continue 
        mem[_46 + floor32(mem[_47]) + 86] = 256^(-(mem[_47] % 32) + 32) - 1 and mem[_46 + floor32(mem[_47]) + 86] or mem[_47 + floor32(mem[_47]) + 32] and !(256^(-(mem[_47] % 32) + 32) - 1)
        _85 = mem[64]
        _86 = sha3(mem[mem[64] len _46 + _48 + -mem[64] + 86])
        mem[mem[64] + 32] = address(sha3(mem[mem[64] len _46 + _48 + -mem[64] + 86]))
        _87 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _88 = mem[_87]
        w = _87 + 32
        x = _85 + 52
        v = mem[_87]
        while v >= 32:
            mem[x] = mem[w]
            w = w + 32
            x = x + 32
            v = v - 32
            continue 
        mem[_85 + floor32(mem[_87]) + 52] = mem[_85 + floor32(mem[_87]) + 52] and 256^(-(mem[_87] % 32) + 32) - 1 or mem[_87 + floor32(mem[_87]) + 32] and !(256^(-(mem[_87] % 32) + 32) - 1)
        _118 = sha3(mem[mem[64] len _85 + _88 + -mem[64] + 52])
        require block.timestamp
        _120 = mem[64]
        mem[mem[64] + 32] = address(block.coinbase)
        _121 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _123 = mem[_121]
        w = _121 + 32
        x = mem[64]
        v = mem[_121]
        while v >= 32:
            mem[x] = mem[w]
            w = w + 32
            x = x + 32
            v = v - 32
            continue 
        mem[mem[64] + floor32(mem[_121])] = mem[mem[64] + floor32(mem[_121])] and 256^(-(mem[_121] % 32) + 32) - 1 or mem[_121 + floor32(mem[_121]) + 32] and !(256^(-(mem[_121] % 32) + 32) - 1)
        require block.timestamp
        _145 = mem[64]
        mem[mem[64] + 32] = block.timestamp + block.difficulty + (sha3(mem[mem[64] len _120 + _123 + -mem[64] + 52]) / block.timestamp) + block.gas_limit + (_118 / block.timestamp) + block.number
        _146 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _148 = mem[_146]
        u = _146 + 32
        w = _145 + 64
        v = mem[_146]
        while v >= 32:
            mem[w] = mem[u]
            u = u + 32
            w = w + 32
            v = v - 32
            continue 
        mem[_145 + floor32(mem[_146]) + 64] = mem[_145 + floor32(mem[_146]) + 64] and 256^(-(mem[_146] % 32) + 32) - 1 or mem[_146 + floor32(mem[_146]) + 32] and !(256^(-(mem[_146] % 32) + 32) - 1)
        _159 = sha3(mem[_145 + 64 len _148])
        if sha3(mem[_145 + 64 len _148]) - (1000 * sha3(mem[_145 + 64 len _148]) / 1000) >= ext_call.return_data[0]:
            u = u
            w = _86
            v = contracts[stor5[idx]]
            v = sub_b11524c5[idx]
            v = sha3(mem[_145 + 64 len _148])
            idx = idx + 1
            continue 
        mem[_145 + 64] = 0x70d1abe100000000000000000000000000000000000000000000000000000000
        mem[_145 + 68] = contracts[stor5[idx]]
        require ext_code.size(sub_b11524c5[idx])
        call sub_b11524c5[idx].0x70d1abe1 with:
             gas gas_remaining wei
            args contracts[stor5[idx]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        u = sub_b11524c5[idx]
        w = _86
        v = contracts[stor5[idx]]
        v = sub_b11524c5[idx]
        v = _159
        idx = idx + 1
        continue 
    return 0
}



}
