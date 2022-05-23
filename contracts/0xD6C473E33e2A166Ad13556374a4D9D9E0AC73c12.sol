contract main {




// =====================  Runtime code  =====================


uint256 sub_f7a94f4b;
array of address stor1;
mapping of uint8 nonces;
mapping of address sub_7a30b20b;
array of uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function sub_7a30b20b(?) {
    return sub_7a30b20b[arg1]
}

function nonces(address arg1) {
    return nonces[arg1]
}

function sub_f7a94f4b(?) {
    return sub_f7a94f4b
}

function sub_c37a7d71(?) {
    require msg.sender == stor5
    selfdestruct(stor5)
}

function _fallback() payable {
  stop
}

function sub_aa2478fa(?) {
    require msg.sender == stor5
    stor6 = arg1
}

function setCount(uint256 arg1) {
    require msg.sender == stor5
    stor8 = arg1
}

function setThreshold(uint256 arg1) {
    require msg.sender == stor5
    stor7 = arg1
}

function sub_4e6e9951(?) {
    require arg2 <= 127
    return address(sha3(0, 0, arg1, arg2))
}

function setCode(bytes arg1) {
    require msg.sender == stor5
    stor4[] = Array(len=arg1.length, data=arg1[all])
}

function withdraw() {
    call stor5 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1bf5bd8f(?) {
    nonces[address(arg1)] = uint8(nonces[address(arg1)] + 1)
    require uint8(nonces[address(arg1)] + 1) <= 127
    sub_7a30b20b[address(arg1)] = address(sha3(0, 0, arg1, uint8(nonces[address(arg1)] + 1)))
}

function sub_15eb6853(?) {
    require block.timestamp
    require block.timestamp
    if block.difficulty + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath add failed'
    if sha3(address(block.coinbase, 0)) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.gas_limit < 0:
        revert with 0, 'SafeMath add failed'
    if sha3(address(arg1, 0)) / block.timestamp < 0:
        revert with 0, 'SafeMath add failed'
    if block.number < 0:
        revert with 0, 'SafeMath add failed'
    if sha3(block.number + (sha3(address(arg1, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) - (1000 * sha3(block.number + (sha3(address(arg1, 0)) / block.timestamp) + block.gas_limit + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.difficulty + block.timestamp) / 1000) >= arg2:
        return 0
    return 1
}

function sub_aa182b97(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == stor5
    s = 0
    idx = 0
    while idx < arg1:
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(stor4.length) + 32
        mem[_21] = stor4.length
        mem[_21 + 32] = stor4
        s = _21 + 32
        t = sha3(4)
        while _21 + stor4.length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        create contract with 0 wei
                        code: mem[_21 + 32 len stor4.length]
        stor1.length++
        address(stor1[stor1.length]) = address(create.new_address)
        nonces[address(create.new_address)] = 1
        mem[mem[64]] = 0xd600000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 1] = 0x9400000000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 2] = address(create.new_address)
        mem[mem[64] + 22] = 0x100000000000000000000000000000000000000000000000000000000000000
        mem[0] = address(create.new_address)
        mem[32] = 3
        sub_7a30b20b[address(create.new_address)] = address(sha3(0, 0, address(create.new_address), 1))
        sub_f7a94f4b++
        s = create.new_address
        idx = idx + 1
        continue 
}

function sub_9a288b46(?) payable {
    mem[64] = 96
    require ext_code.size(arg1)
    call arg1.0xd87574e0 with:
         gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor7:
        s = 0
        idx = 0
        while idx < sub_f7a94f4b:
            require idx < stor1.length
            mem[0] = address(stor1[idx])
            mem[32] = 3
            _113 = mem[64]
            mem[mem[64] + 32] = sub_7a30b20b[address(stor1[idx])]
            _114 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _116 = mem[_114]
            t = _114 + 32
            u = _113 + 52
            s = mem[_114]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_113 + floor32(mem[_114]) + 52] = mem[_113 + floor32(mem[_114]) + 52] and 256^(-(mem[_114] % 32) + 32) - 1 or mem[_114 + floor32(mem[_114]) + 32] and !(256^(-(mem[_114] % 32) + 32) - 1)
            _209 = sha3(mem[_113 + 52 len _116])
            require block.timestamp
            mem[_113 + 84] = address(block.coinbase)
            mem[_113 + 52] = 20
            mem[64] = _113 + 104
            t = _113 + 84
            u = _113 + 104
            s = 20
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_113 + 104] = mem[_113 + 124 len 12] or Mask(160, 96, mem[_113 + 84])
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[_113 + 104 len 20]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _209 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            mem[_113 + 136] = block.number + (_209 / block.timestamp) + block.gas_limit + (sha3(mem[_113 + 104 len 20]) / block.timestamp) + block.difficulty + block.timestamp
            mem[_113 + 104] = 32
            mem[64] = _113 + 168
            t = _113 + 136
            u = _113 + 168
            s = 32
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            if sha3(mem[_113 + 168]) - (1000 * sha3(mem[_113 + 168]) / 1000) >= 5:
                s = sub_7a30b20b[address(stor1[idx])]
                idx = idx + 1
                continue 
            require idx < stor1.length
            require ext_code.size(address(stor1[idx]))
            call address(stor1[idx]).0xde3a04ad with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0], stor8, stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < stor1.length
            nonces[address(stor1[idx])] = uint8(nonces[address(stor1[idx])] + 1)
            require uint8(nonces[address(stor1[idx])] + 1) <= 127
            sub_7a30b20b[address(stor1[idx])] = address(sha3(0, 0, address(stor1[idx]), uint8(nonces[address(stor1[idx])] + 1)))
            require eth.balance(tx.origin) >= eth.balance(tx.origin) + msg.value
    else:
        require ext_code.size(arg1)
        call arg1.0x11a09ae7 with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = 0
        idx = 0
        while idx < sub_f7a94f4b:
            require idx < stor1.length
            mem[0] = address(stor1[idx])
            mem[32] = 3
            _109 = mem[64]
            mem[mem[64] + 32] = sub_7a30b20b[address(stor1[idx])]
            _110 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            _112 = mem[_110]
            t = _110 + 32
            u = _109 + 52
            s = mem[_110]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_109 + floor32(mem[_110]) + 52] = mem[_109 + floor32(mem[_110]) + 52] and 256^(-(mem[_110] % 32) + 32) - 1 or mem[_110 + floor32(mem[_110]) + 32] and !(256^(-(mem[_110] % 32) + 32) - 1)
            _204 = sha3(mem[_109 + 52 len _112])
            require block.timestamp
            mem[_109 + 84] = address(block.coinbase)
            mem[_109 + 52] = 20
            mem[64] = _109 + 104
            t = _109 + 84
            u = mem[64]
            s = mem[_109 + 52]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_109 + 52])] = mem[mem[64] + floor32(mem[_109 + 52])] and 256^(-(mem[_109 + 52] % 32) + 32) - 1 or mem[_109 + floor32(mem[_109 + 52]) + 84] and !(256^(-(mem[_109 + 52] % 32) + 32) - 1)
            require block.timestamp
            if block.difficulty + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath add failed'
            if sha3(mem[mem[64] len _109 + -mem[64] + 124]) / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.gas_limit < 0:
                revert with 0, 'SafeMath add failed'
            if _204 / block.timestamp < 0:
                revert with 0, 'SafeMath add failed'
            if block.number < 0:
                revert with 0, 'SafeMath add failed'
            _315 = mem[64]
            mem[mem[64] + 32] = block.number + (_204 / block.timestamp) + block.gas_limit + (sha3(mem[mem[64] len _109 + -mem[64] + 124]) / block.timestamp) + block.difficulty + block.timestamp
            _316 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _318 = mem[_316]
            t = _316 + 32
            u = _315 + 64
            s = mem[_316]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_315 + floor32(mem[_316]) + 64] = mem[_315 + floor32(mem[_316]) + 64] and 256^(-(mem[_316] % 32) + 32) - 1 or mem[_316 + floor32(mem[_316]) + 32] and !(256^(-(mem[_316] % 32) + 32) - 1)
            if sha3(mem[_315 + 64 len _318]) - (1000 * sha3(mem[_315 + 64 len _318]) / 1000) >= ext_call.return_data[0] + 5:
                s = sub_7a30b20b[address(stor1[idx])]
                idx = idx + 1
                continue 
            require idx < stor1.length
            require ext_code.size(address(stor1[idx]))
            call address(stor1[idx]).0xde3a04ad with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg1), ext_call.return_data[0], stor8, stor6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < stor1.length
            nonces[address(stor1[idx])] = uint8(nonces[address(stor1[idx])] + 1)
            require uint8(nonces[address(stor1[idx])] + 1) <= 127
            sub_7a30b20b[address(stor1[idx])] = address(sha3(0, 0, address(stor1[idx]), uint8(nonces[address(stor1[idx])] + 1)))
            require eth.balance(tx.origin) >= eth.balance(tx.origin) + msg.value
    require eth.balance(tx.origin) >= eth.balance(tx.origin) + msg.value
}



}
