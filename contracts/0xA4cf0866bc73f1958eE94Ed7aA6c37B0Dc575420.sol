contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 contracts;
mapping of address sub_b11524c5;
uint8 stor3;
uint256 nonce;

function contracts(address arg1) {
    return uint256(contracts[arg1])
}

function nonce() {
    return uint256(nonce)
}

function sub_b11524c5(?) {
    return sub_b11524c5[arg1]
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4109d12(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor0
    s = 0
    while uint256(nonce) < arg1 + uint256(nonce):
        _13 = mem[64]
        mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 34] = address(this.address)
        mem[mem[64] + 54] = Mask(8, 248, uint8(stor3))
        _14 = mem[64]
        mem[mem[64]] = 23
        mem[64] = mem[64] + 55
        _15 = mem[_14]
        s = _14 + 32
        t = _13 + 55
        idx = mem[_14]
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[_13 + floor32(mem[_14]) + 55] = mem[_13 + floor32(mem[_14]) + 55] and 256^(-(mem[_14] % 32) + 32) - 1 or mem[_14 + floor32(mem[_14]) + 32] and !(256^(-(mem[_14] % 32) + 32) - 1)
        _28 = sha3(mem[mem[64] len _13 + _15 + -mem[64] + 55])
        mem[mem[64] len 1271] = code.data[2411 len 1271]
        create contract with 0 wei
                        code: code.data[2411 len 1271]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(contracts[address(_28)]) = 1
        mem[0] = uint256(nonce)
        mem[32] = 2
        sub_b11524c5[uint256(stor3)] = address(_28)
        uint256(nonce)++
        s = _28
        continue 
}

function run(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require ext_code.size(arg1)
    call arg1.0xd87574e0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 4 * 10^17
    require ext_code.size(arg1)
    call arg1.0x11a09ae7 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 1
    while idx < uint256(nonce):
        mem[0] = sub_b11524c5[idx]
        mem[32] = 1
        _57 = mem[64]
        mem[mem[64] + 32] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 33] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 34] = sub_b11524c5[idx]
        mem[mem[64] + 54] = Mask(8, 248, uint8(contracts[stor2[idx]]))
        _58 = mem[64]
        mem[mem[64]] = 23
        mem[64] = mem[64] + 55
        _59 = mem[_58]
        t = _58 + 32
        u = _57 + 55
        s = mem[_58]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_57 + floor32(mem[_58]) + 55] = 256^(-(mem[_58] % 32) + 32) - 1 and mem[_57 + floor32(mem[_58]) + 55] or mem[_58 + floor32(mem[_58]) + 32] and !(256^(-(mem[_58] % 32) + 32) - 1)
        _103 = mem[64]
        _104 = sha3(mem[mem[64] len _57 + _59 + -mem[64] + 55])
        mem[mem[64] + 32] = address(sha3(mem[mem[64] len _57 + _59 + -mem[64] + 55]))
        _105 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _106 = mem[_105]
        t = _105 + 32
        u = _103 + 52
        s = mem[_105]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_103 + floor32(mem[_105]) + 52] = mem[_103 + floor32(mem[_105]) + 52] and 256^(-(mem[_105] % 32) + 32) - 1 or mem[_105 + floor32(mem[_105]) + 32] and !(256^(-(mem[_105] % 32) + 32) - 1)
        _143 = sha3(mem[mem[64] len _103 + _106 + -mem[64] + 52])
        require block.timestamp
        _145 = mem[64]
        mem[mem[64] + 32] = address(block.coinbase)
        _146 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _148 = mem[_146]
        t = _146 + 32
        u = _145 + 52
        s = mem[_146]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_145 + floor32(mem[_146]) + 52] = mem[_145 + floor32(mem[_146]) + 52] and 256^(-(mem[_146] % 32) + 32) - 1 or mem[_146 + floor32(mem[_146]) + 32] and !(256^(-(mem[_146] % 32) + 32) - 1)
        require block.timestamp
        mem[_145 + 84] = block.timestamp + block.difficulty + (sha3(mem[_145 + 52 len _148]) / block.timestamp) + block.gas_limit + (_143 / block.timestamp) + block.number
        mem[_145 + 52] = 32
        mem[64] = _145 + 116
        t = _145 + 84
        u = _145 + 116
        s = 32
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        if sha3(mem[_145 + 116]) - (1000 * sha3(mem[_145 + 116]) / 1000) >= ext_call.return_data[0]:
            s = _104
            s = uint256(contracts[stor2[idx]])
            s = sub_b11524c5[idx]
            s = sha3(mem[_145 + 116])
            idx = idx + 1
            continue 
        call sub_b11524c5[idx] with:
           value 10^17 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_b11524c5[idx])
        call sub_b11524c5[idx].0xad2b884e with:
             gas gas_remaining wei
            args uint256(contracts[stor2[idx]]), address(arg1), arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_b11524c5[idx])
        call sub_b11524c5[idx].airdrop1() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        uint256(contracts[stor2[idx]])++
        return 1
    return 0
}



}
