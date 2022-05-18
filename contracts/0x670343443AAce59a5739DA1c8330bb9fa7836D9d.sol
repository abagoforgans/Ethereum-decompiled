contract main {




// =====================  Runtime code  =====================


array of uint8 stor0;
array of uint8 stor1;
array of uint8 stor2;
uint8 stor5;
address creatorAddress; offset 8

function creator() {
    return creatorAddress
}

function shiva() {
    require msg.sender == creatorAddress
    selfdestruct(creatorAddress)
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == creatorAddress
    call creatorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function draw(uint8 arg1, uint8 arg2) {
    require arg1 < 78
    require uint8(stor5 + -arg2 - 1) < 78
    require arg1 < 78
    uint256(stor2[uint8(arg1) / 32]) = uint8(stor2[uint8(stor5 + -arg2 - 1)]) * 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor2[uint8(arg1) / 32])
    require uint8(stor5 + -arg2 - 1) < 78
    uint256(stor2[uint8(stor5 + -arg2 - 1) / 32]) = uint8(stor2[uint8(arg1)]) * 256^(stor5 + -arg2 - 1 % 32) or !(255 * 256^(stor5 + -arg2 - 1 % 32)) and uint256(stor2[uint8(stor5 + -arg2 - 1) / 32])
}

function reading() {
    if not uint256(stor0[address(msg.sender)]):
        mem[(32 * uint256(stor0[address(msg.sender)])) + 128] = 32
        mem[(32 * uint256(stor0[address(msg.sender)])) + 160] = uint256(stor0[address(msg.sender)])
        mem[(32 * uint256(stor0[address(msg.sender)])) + 192 len floor32(uint256(stor0[address(msg.sender)]))] = mem[128 len floor32(uint256(stor0[address(msg.sender)]))]
        return memory
          from (32 * uint256(stor0[address(msg.sender)])) + 128
           len (96 * uint256(stor0[address(msg.sender)])) + 64
    mem[128] = uint8(stor0[address(msg.sender)])
    idx = 128
    s = 0
    while (32 * uint256(stor0[address(msg.sender)])) + 96 > idx:
        mem[idx + 32] = stor('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor0', 0))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor0[address(msg.sender)])) + 192 len floor32(uint256(stor0[address(msg.sender)]))] = mem[128 len floor32(uint256(stor0[address(msg.sender)]))]
    return Array(len=uint256(stor0[address(msg.sender)]), data=mem[128 len floor32(uint256(stor0[address(msg.sender)]))], mem[(32 * uint256(stor0[address(msg.sender)])) + floor32(uint256(stor0[address(msg.sender)])) + 192 len (32 * uint256(stor0[address(msg.sender)])) - floor32(uint256(stor0[address(msg.sender)]))]), 
}

function orientation() {
    if not uint256(stor1[address(msg.sender)]):
        mem[(32 * uint256(stor1[address(msg.sender)])) + 128] = 32
        mem[(32 * uint256(stor1[address(msg.sender)])) + 160] = uint256(stor1[address(msg.sender)])
        mem[(32 * uint256(stor1[address(msg.sender)])) + 192 len floor32(uint256(stor1[address(msg.sender)]))] = mem[128 len floor32(uint256(stor1[address(msg.sender)]))]
        return memory
          from (32 * uint256(stor1[address(msg.sender)])) + 128
           len (96 * uint256(stor1[address(msg.sender)])) + 64
    mem[128] = uint8(stor1[address(msg.sender)])
    idx = 128
    s = 0
    while (32 * uint256(stor1[address(msg.sender)])) + 96 > idx:
        mem[idx + 32] = stor('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor1', 1))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[(32 * uint256(stor1[address(msg.sender)])) + 192 len floor32(uint256(stor1[address(msg.sender)]))] = mem[128 len floor32(uint256(stor1[address(msg.sender)]))]
    return Array(len=uint256(stor1[address(msg.sender)]), data=mem[128 len floor32(uint256(stor1[address(msg.sender)]))], mem[(32 * uint256(stor1[address(msg.sender)])) + floor32(uint256(stor1[address(msg.sender)])) + 192 len (32 * uint256(stor1[address(msg.sender)])) - floor32(uint256(stor1[address(msg.sender)]))]), 
}

function one_card() payable {
    mem[96] = 1
    mem[128] = code.data[2894 len 32]
    mem[160] = 1
    mem[64] = 224
    mem[192] = code.data[2894 len 32]
    idx = 0
    while uint8(idx) < 1:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[160]
        mem[(32 * uint8(idx)) + 192] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[160]
    if not mem[160]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 192
        while (32 * mem[160]) + 192 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[160]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[160]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function two_card() payable {
    mem[96] = 2
    mem[128 len 64] = code.data[2894 len 64]
    mem[192] = 2
    mem[64] = 288
    mem[224 len 64] = code.data[2894 len 64]
    idx = 0
    while uint8(idx) < 2:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[192]
        mem[(32 * uint8(idx)) + 224] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[192]
    if not mem[192]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 224
        while (32 * mem[192]) + 224 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[192]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[192]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function success() payable {
    mem[96] = 5
    mem[128 len 160] = code.data[2894 len 160]
    mem[288] = 5
    mem[64] = 480
    mem[320 len 160] = code.data[2894 len 160]
    idx = 0
    while uint8(idx) < 5:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[288]
        mem[(32 * uint8(idx)) + 320] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[288]
    if not mem[288]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 320
        while (32 * mem[288]) + 320 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[288]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[288]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function career_path() payable {
    mem[96] = 7
    mem[128 len 224] = code.data[2894 len 224]
    mem[352] = 7
    mem[64] = 608
    mem[384 len 224] = code.data[2894 len 224]
    idx = 0
    while uint8(idx) < 7:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[352]
        mem[(32 * uint8(idx)) + 384] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[352]
    if not mem[352]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 384
        while (32 * mem[352]) + 384 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[352]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[352]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function seventeen() payable {
    mem[96] = 17
    mem[128 len 544] = code.data[2894 len 544]
    mem[672] = 17
    mem[64] = 1248
    mem[704 len 544] = code.data[2894 len 544]
    idx = 0
    while uint8(idx) < 17:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[672]
        mem[(32 * uint8(idx)) + 704] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[672]
    if not mem[672]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 704
        while (32 * mem[672]) + 704 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[672]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[672]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function past_present_future() payable {
    mem[96] = 3
    mem[128 len 96] = code.data[2894 len 96]
    mem[224] = 3
    mem[64] = 352
    mem[256 len 96] = code.data[2894 len 96]
    idx = 0
    while uint8(idx) < 3:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[224]
        mem[(32 * uint8(idx)) + 256] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[224]
    if not mem[224]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 256
        while (32 * mem[224]) + 256 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[224]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[224]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function celtic_cross() payable {
    mem[96] = 10
    mem[128 len 320] = code.data[2894 len 320]
    mem[448] = 10
    mem[64] = 800
    mem[480 len 320] = code.data[2894 len 320]
    idx = 0
    while uint8(idx) < 10:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[448]
        mem[(32 * uint8(idx)) + 480] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[448]
    if not mem[448]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 480
        while (32 * mem[448]) + 480 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[448]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[448]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}

function spiritual_guidance() payable {
    mem[96] = 8
    mem[128 len 256] = code.data[2894 len 256]
    mem[384] = 8
    mem[64] = 672
    mem[416 len 256] = code.data[2894 len 256]
    idx = 0
    while uint8(idx) < 8:
        _44 = mem[64]
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 0
        _45 = mem[64]
        mem[mem[64]] = 33
        mem[64] = mem[64] + 65
        _47 = mem[_45]
        t = _45 + 32
        u = _44 + 65
        s = mem[_45]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + floor32(mem[_45]) + 65] = mem[_45 + -(mem[_45] % 32) + floor32(mem[_45]) + 64 len mem[_45] % 32] or Mask(8 * -(mem[_45] % 32) + 32, -(8 * -(mem[_45] % 32) + 32) + 256, mem[_44 + floor32(mem[_45]) + 65])
        mem[_44 + 97] = sha3(mem[_44 + 65 len _47])
        mem[_44 + 129] = block.timestamp + uint8(idx)
        mem[_44 + 65] = 64
        mem[64] = _44 + 161
        t = _44 + 97
        u = _44 + 161
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 225] = None or mem[_44 + 225]
        require uint8(stor5 - idx)
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        require uint8(stor5 + -idx - 1) < 78
        require uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) < 78
        uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32]) = uint8(stor2[uint8(stor5 + -idx - 1)]) * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32) or !(255 * 256^(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx) % 32)) and uint256(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx)) / 32])
        require uint8(stor5 + -idx - 1) < 78
        uint256(stor2[uint8(stor5 + -idx - 1) / 32]) = uint8(stor2[uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))]) * 256^(stor5 + -idx - 1 % 32) or !(255 * 256^(stor5 + -idx - 1 % 32)) and uint256(stor2[uint8(stor5 + -idx - 1) / 32])
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = uint8(uint8(sha3(mem[_44 + 161 len 64])) % uint8(stor5 - idx))
        mem[_44 + 193] = block.hash(block.number)
        mem[_44 + 225] = 0
        mem[_44 + 161] = 33
        mem[64] = _44 + 226
        t = _44 + 193
        u = _44 + 226
        s = 33
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 258] = mem[_44 + 256 len 1] or Mask(248, 8, mem[_44 + 258])
        mem[_44 + 258] = sha3(mem[_44 + 226 len 33])
        mem[_44 + 290] = block.timestamp + uint8(idx)
        mem[_44 + 226] = 64
        mem[64] = _44 + 322
        t = _44 + 258
        u = _44 + 322
        s = 64
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_44 + 386] = None or mem[_44 + 386]
        require uint8(idx) < mem[384]
        mem[(32 * uint8(idx)) + 416] = bool(sha3(mem[_44 + 322 len 64]))
        idx = idx + 1
        continue 
    uint256(stor1[address(msg.sender)]) = mem[384]
    if not mem[384]:
        idx = 0
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 416
        while (32 * mem[384]) + 416 > idx:
            uint256(stor1[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor1[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[384]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 1))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[384]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor1[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor1[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    uint256(stor0[address(msg.sender)]) = mem[96]
    if not mem[96]:
        idx = 0
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            uint256(stor0[address(msg.sender)]) = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and uint256(stor0[address(msg.sender)])
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        s = sha3(sha3(address(msg.sender), 0))
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * mem[96]) + 31) >> 5 * None + 3 / 32)
        while uint256(stor0[address(msg.sender)]) + 31 / 32 > idx:
            uint8(stor0[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
}



}
