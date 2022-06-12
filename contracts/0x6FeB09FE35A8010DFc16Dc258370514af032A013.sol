contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


uint8 result; offset 160
address owner;
array of address players;

function result() {
    return result
}

function owner() {
    return owner
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1]
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function guess() payable {
    require msg.sender == owner
    mem[128] = block.hash(block.number - players.length)
    mem[160] = block.timestamp
    mem[96] = 64
    mem[64] = 192
    mem[192 len 64] = block.hash(block.number - players.length), block.timestamp
    idx = 0
    s = 0
    while idx <= players.length - 1:
        require idx < players.length
        mem[0] = 1
        _38 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number - idx)
        mem[mem[64] + 64] = players[idx] xor s + sha3(mem[mem[64] len -mem[64] + 256])
        _39 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _40 = mem[_39]
        u = _39 + 32
        v = _38 + 96
        t = mem[_39]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[_38 + floor32(mem[_39]) + 96] = mem[_38 + floor32(mem[_39]) + 96] and 256^(-(mem[_39] % 32) + 32) - 1 or mem[_39 + floor32(mem[_39]) + 32] and !(256^(-(mem[_39] % 32) + 32) - 1)
        idx = idx + 1
        s = sha3(mem[mem[64] len _38 + _40 + -mem[64] + 96]) xor s
        continue 
    require players.length
    result = uint8((s % players.length) + 1)
    require uint8((s % players.length) + 1) > 1
    return 0
}



}
