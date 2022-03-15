contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 3676]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403021;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function removeMember(address arg1) payable {
    if msg.sender == address(owner):
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if arg1 == address(stor[code.data[3644 len 32] + idx]):
                require idx < stor1.length
                mem[0] = 1
                address(stor[code.data[3644 len 32] + idx]) = 0
            idx = idx + 1
            continue 
}

function getMembers() payable {
    if address(owner) != msg.sender:
        return ''
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = address(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function addMember(address arg1) payable {
    if msg.sender == address(owner):
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + code.data[3644 len 32] + 1
            while code.data[3644 len 32] + stor1.length > idx:
                uint256(stor[idx]) = 0
                idx = idx + 1
                continue 
        require stor1.length < stor1.length
        uint256(stor1[stor1.length].field_0) = Mask(96, 0, stor1[stor1.length].field_160)
}

function findTag(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _15 = mem[64]
        if not uint256(stor3[idx].field_256):
            if sha3(None) != sha3(arg1[all]):
                idx = idx + 1
                continue 
        else:
            mem[0] = (2 * idx) + sha3(3) + 1
            mem[mem[64]] = uint256(stor[sha3((2 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = mem[64]
            t = sha3(mem[0])
            while _15 + uint256(stor3[idx].field_256) > s + 32:
                mem[s + 32] = uint256(stor1[t].field_0)
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[mem[64] len _15 + uint256(stor3[idx].field_256) - mem[64]]) != sha3(arg1[all]):
                idx = idx + 1
                continue 
        return idx
    return -1
}

function checkOut(int256 arg1) payable {
    if arg1 != -1:
        require arg1 < stor2.length
        if stor4057[arg1]:
            mem[160] = uint256(stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
            idx = 160
            s = 0
            while stor4057[arg1] + 128 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
                idx = idx + 32
                s = s + 1
                continue 
        return Array(len=stor4057[arg1], data=mem[160 len stor4057[arg1]])
    require stor2.length - 1 < stor2.length
    if stor4057[stor2.length]:
        mem[160] = uint256(stor[sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acd)])
        idx = 160
        s = 0
        while stor4057[stor2.length] + 128 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acd) + 1])
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor4057[stor2.length], data=mem[160 len stor4057[stor2.length]])
}

function untag(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _13 = mem[64]
        if not uint256(stor3[idx].field_256):
            if sha3(None) != sha3(arg1[all]):
                idx = idx + 1
                continue 
        else:
            mem[0] = (2 * idx) + sha3(3) + 1
            mem[mem[64]] = uint256(stor[sha3((2 * idx) + ('name', 'stor3', 3) + 1)].field_0)
            s = mem[64]
            t = sha3(mem[0])
            while _13 + uint256(stor3[idx].field_256) > s + 32:
                mem[s + 32] = uint256(stor1[t].field_0)
                s = s + 32
                t = t + 1
                continue 
            if sha3(mem[mem[64] len _13 + uint256(stor3[idx].field_256) - mem[64]]) != sha3(arg1[all]):
                idx = idx + 1
                continue 
        if idx != -1:
            require idx < stor3.length
            uint32(stor3[idx].field_0) = 0
            storC257[idx] = 0
            s = sha3((2 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
            while sha3((2 * idx) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (storC257[idx] + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            emit UntagEvent(string rg1)
            emit 0x60 
}

function tag(uint256 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg1
    stor3.length++
    if not stor3.length > stor3.length + 1:
        require stor3.length < stor3.length
        uint256(stor3[stor3.length].field_0) = arg1 or Mask(224, 32, uint256(stor3[stor3.length].field_0))
    else:
        idx = (2 * stor3.length + 1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
        while (2 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            uint32(stor[idx]) = 0
            uint256(stor1[idx].field_0) = 0
            mem[0] = idx + 1
            s = sha3(s + 1)
            while sha3(s + 1) + (uint256(stor1[s].field_0) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
        require stor3.length < stor3.length
        uint256(stor3[stor3.length].field_0) = arg1
    uint256(stor3[stor3.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor3[stor3.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor3.length) + ('name', 'stor3', 3) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((2 * stor3.length) + ('name', 'stor3', 3) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor3[stor3.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * stor3.length) + ('name', 'stor3', 3) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    emit TagEvent(arg1, 96);
}

function sub_c7c4a615(?) payable {
    require arg1 < stor2.length
    if not stor4057[arg1]:
        if not stor4057[arg1]:
            return uint64(stor2[arg1].field_0), address(stor2[arg1].field_0), 128, 160, stor4057[arg1], stor4057[arg1]
        mem[288] = uint256(stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
        idx = 288
        s = 0
        while stor4057[arg1] + 288 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        return uint64(stor2[arg1].field_0), 
               address(stor2[arg1].field_0),
               128,
               160,
               stor4057[arg1],
               stor4057[arg1],
               mem[288 len stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32)]
    mem[256] = uint256(stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 256
    s = 0
    while stor4057[arg1] + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    if not stor4057[arg1]:
        return uint64(stor2[arg1].field_0), 
               address(stor2[arg1].field_0),
               Array(len=stor4057[arg1], data=mem[256 len stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32)], stor4057[arg1]),
               stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + 160
    mem[stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + 288] = uint256(stor[sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
    idx = stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + 288
    s = 0
    while stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + stor4057[arg1] + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return uint64(stor2[arg1].field_0), 
           address(stor2[arg1].field_0),
           Array(len=stor4057[arg1], data=mem[256 len stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32)], stor4057[arg1], mem[stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + 288 len stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32)]),
           stor4057[arg1] + (floor32(stor4057[arg1] - 1) + -stor4057[arg1] + 32 % 32) + 160
}

function checkOutTag(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _32 = mem[64]
        if not uint256(stor3[idx].field_256):
            if sha3(None) != sha3(arg1[all]):
                idx = idx + 1
                continue 
            if idx == -1:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
                _44 = mem[ceil32(arg1.length) + 128]
                mem[mem[64] + 64 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                if not _44 % 32:
                    return 32, mem[mem[64] + 32 len _44 + 32]
                mem[floor32(_44) + mem[64] + 64] = mem[floor32(_44) + mem[64] + -(_44 % 32) + 96 len _44 % 32]
                return 32, mem[mem[64] + 32 len floor32(_44) + 64]
            require idx < stor3.length
            require uint32(stor3[idx].field_0) < stor2.length
            mem[0] = 2
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(stor4057[uint32(stor3[idx].field_0)]) + 32
            mem[_47] = stor4057[uint32(stor3[idx].field_0)]
            if not stor4057[uint32(stor3[idx].field_0)]:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor4057[uint32(stor3[idx].field_0)]
                mem[mem[64] + 64 len stor4057[uint32(stor3[idx].field_0)]] = mem[_47 + 32 len stor4057[uint32(stor3[idx].field_0)]]
                return Array(len=stor4057[uint32(stor3[idx].field_0)], data=mem[mem[64] + 64 len stor4057[uint32(stor3[idx].field_0)]])
            mem[0] = (3 * uint32(stor3[idx].field_0)) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0
            mem[_47 + 32] = uint256(stor[sha3((3 * uint32(stor3[idx].field_0)) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
            s = _47 + 32
            t = sha3(mem[0])
            while _47 + stor4057[uint32(stor3[idx].field_0)] > s:
                mem[s + 32] = uint256(stor1[t].field_0)
                s = s + 32
                t = t + 1
                continue 
            _62 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[_47]
            _64 = mem[_47]
            mem[mem[64] + 64 len mem[_47]] = mem[_47 + 32 len mem[_47]]
            if not _64 % 32:
                return 32, mem[mem[64] + 32 len _64 + 32]
            mem[floor32(_64) + mem[64] + 64] = mem[floor32(_64) + mem[64] + -(_64 % 32) + 96 len _64 % 32]
            return memory
              from mem[64]
               len floor32(_64) + _62 + -mem[64] + 96
        mem[0] = (2 * idx) + sha3(3) + 1
        mem[mem[64]] = uint256(stor[sha3((2 * idx) + ('name', 'stor3', 3) + 1)].field_0)
        s = mem[64]
        t = sha3(mem[0])
        while _32 + uint256(stor3[idx].field_256) > s + 32:
            mem[s + 32] = uint256(stor1[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        if sha3(mem[mem[64] len _32 + uint256(stor3[idx].field_256) - mem[64]]) != sha3(arg1[all]):
            idx = idx + 1
            continue 
        if idx == -1:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
            _72 = mem[ceil32(arg1.length) + 128]
            mem[mem[64] + 64 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
            if not _72 % 32:
                return 32, mem[mem[64] + 32 len _72 + 32]
            mem[floor32(_72) + mem[64] + 64] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 96 len _72 % 32]
            return 32, mem[mem[64] + 32 len floor32(_72) + 64]
        require idx < stor3.length
        require uint32(stor3[idx].field_0) < stor2.length
        mem[0] = 2
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(stor4057[uint32(stor3[idx].field_0)]) + 32
        mem[_75] = stor4057[uint32(stor3[idx].field_0)]
        if not stor4057[uint32(stor3[idx].field_0)]:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor4057[uint32(stor3[idx].field_0)]
            mem[mem[64] + 64 len stor4057[uint32(stor3[idx].field_0)]] = mem[_75 + 32 len stor4057[uint32(stor3[idx].field_0)]]
            return Array(len=stor4057[uint32(stor3[idx].field_0)], data=mem[mem[64] + 64 len stor4057[uint32(stor3[idx].field_0)]])
        mem[0] = (3 * uint32(stor3[idx].field_0)) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0
        mem[_75 + 32] = uint256(stor[sha3((3 * uint32(stor3[idx].field_0)) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
        s = _75 + 32
        t = sha3(mem[0])
        while _75 + stor4057[uint32(stor3[idx].field_0)] > s:
            mem[s + 32] = uint256(stor1[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_75]
        _92 = mem[_75]
        mem[mem[64] + 64 len mem[_75]] = mem[_75 + 32 len mem[_75]]
        if not _92 % 32:
            return 32, mem[mem[64] + 32 len _92 + 32]
        mem[floor32(_92) + mem[64] + 64] = mem[floor32(_92) + mem[64] + -(_92 % 32) + 96 len _92 % 32]
        return memory
          from mem[64]
           len floor32(_92) + _90 + -mem[64] + 96
    _36 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 128]
    _38 = mem[ceil32(arg1.length) + 128]
    mem[mem[64] + 64 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
    if not _38 % 32:
        return 32, mem[mem[64] + 32 len _38 + 32]
    mem[floor32(_38) + mem[64] + 64] = mem[floor32(_38) + mem[64] + -(_38 % 32) + 96 len _38 % 32]
    return memory
      from mem[64]
       len floor32(_38) + _36 + -mem[64] + 96
}

function commit(bytes arg1, string arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor[code.data[3644 len 32] + idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        stor2.length++
        if not stor2.length > stor2.length + 1:
            _94 = mem[64]
            mem[64] = mem[64] + 32
            mem[_94] = block.timestamp
            mem[_94 + 32] = msg.sender
            mem[_94 + 64] = ceil32(arg1.length) + 128
            mem[_94 + 96] = 96
            require stor2.length < stor2.length
            uint256(stor2[stor2.length].field_0) = block.timestamp or Mask(192, 64, uint256(stor2[stor2.length].field_0))
            Mask(192, 0, stor2[stor2.length].field_64) = Mask(192, 0, msg.sender)
            uint256(stor2[stor2.length].field_256) = mem[ceil32(arg1.length) + 128]
            if not mem[ceil32(arg1.length) + 128]:
                s = sha3((3 * stor2.length) + sha3(2) + 1)
                while sha3((3 * stor2.length) + sha3(2) + 1) + (uint256(stor2[stor2.length].field_256) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor2[stor2.length].field_512) = mem[96]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not mem[96]:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _256 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _256 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _256 + 32],
                    else:
                        mem[floor32(_256) + mem[64] + 96] = mem[floor32(_256) + mem[64] + -(_256 % 32) + 128 len _256 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_256) + 64],
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = 128
                    while mem[96] + 128 > s:
                        uint256(stor[t]) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _319 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _319 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _319 + 32],
                    else:
                        mem[floor32(_319) + mem[64] + 96] = mem[floor32(_319) + mem[64] + -(_319 % 32) + 128 len _319 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_319) + 64],
            else:
                t = sha3((3 * stor2.length) + sha3(2) + 1)
                s = ceil32(arg1.length) + 160
                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 1) + (uint256(stor2[stor2.length].field_256) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor2[stor2.length].field_512) = mem[96]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not mem[96]:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _322 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _322 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _322 + 32],
                    else:
                        mem[floor32(_322) + mem[64] + 96] = mem[floor32(_322) + mem[64] + -(_322 % 32) + 128 len _322 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_322) + 64],
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = 128
                    while mem[96] + 128 > s:
                        uint256(stor[t]) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _366 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _366 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _366 + 32],
                    else:
                        mem[floor32(_366) + mem[64] + 96] = mem[floor32(_366) + mem[64] + -(_366 % 32) + 128 len _366 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_366) + 64],
        else:
            mem[0] = 2
            s = sha3(mem[0]) + (3 * stor2.length) + 3
            while sha3(2) + (3 * stor2.length) > s:
                Mask(224, 0, stor[s]) = 0
                uint256(stor1[s].field_0) = 0
                t = sha3(s + 1)
                while sha3(s + 1) + (uint256(stor1[s].field_0) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                uint256(stor2[s].field_0) = 0
                mem[0] = s + 2
                t = sha3(s + 2)
                while sha3(s + 2) + (uint256(stor2[s].field_0) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                s = s + 1
                continue 
            _182 = mem[64]
            mem[64] = mem[64] + 32
            mem[_182] = block.timestamp
            mem[_182 + 32] = msg.sender
            mem[_182 + 64] = ceil32(arg1.length) + 128
            mem[_182 + 96] = 96
            require stor2.length < stor2.length
            uint256(stor2[stor2.length].field_0) = block.timestamp or Mask(192, 64, uint256(stor2[stor2.length].field_0))
            Mask(192, 0, stor2[stor2.length].field_64) = Mask(192, 0, msg.sender)
            uint256(stor2[stor2.length].field_256) = mem[ceil32(arg1.length) + 128]
            if not mem[ceil32(arg1.length) + 128]:
                t = sha3((3 * stor2.length) + sha3(2) + 1)
                while sha3((3 * stor2.length) + sha3(2) + 1) + (uint256(stor2[stor2.length].field_256) + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
                uint256(stor2[stor2.length].field_512) = mem[96]
                mem[0] = (3 * stor2.length) + sha3(2) + 2
                if not mem[96]:
                    s = sha3((3 * stor2.length) + sha3(2) + 2)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _325 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _325 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _325 + 32],
                    else:
                        mem[floor32(_325) + mem[64] + 96] = mem[floor32(_325) + mem[64] + -(_325 % 32) + 128 len _325 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_325) + 64],
                else:
                    t = sha3((3 * stor2.length) + sha3(2) + 2)
                    s = 128
                    while mem[96] + 128 > s:
                        uint256(stor[t]) = mem[s]
                        t = t + 1
                        s = s + 32
                        continue 
                    s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, mem[96] + 31) >> 5)
                    while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    mem[mem[64]] = stor2.length
                    mem[mem[64] + 32] = 64
                    mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                    _369 = mem[ceil32(arg1.length) + 128]
                    mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                    if not _369 % 32:
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len _369 + 32],
                    else:
                        mem[floor32(_369) + mem[64] + 96] = mem[floor32(_369) + mem[64] + -(_369 % 32) + 128 len _369 % 32]
                        emit CommitEvent(uint256 rg1, string rg2):
                                         stor2.length,
                                         64,
                                         mem[mem[64] + 64 len floor32(_369) + 64],
                idx = idx + 1
                t = stor2.length
                continue 
            t = sha3((3 * stor2.length) + sha3(2) + 1)
            s = ceil32(arg1.length) + 160
            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > s:
                uint256(stor[t]) = mem[s]
                t = t + 1
                s = s + 32
                continue 
            s = sha3((3 * stor2.length) + sha3(2) + 1) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
            while sha3((3 * stor2.length) + sha3(2) + 1) + (uint256(stor2[stor2.length].field_256) + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor2[stor2.length].field_512) = mem[96]
            mem[0] = (3 * stor2.length) + sha3(2) + 2
            if not mem[96]:
                s = sha3((3 * stor2.length) + sha3(2) + 2)
                while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[mem[64]] = stor2.length
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                _372 = mem[ceil32(arg1.length) + 128]
                mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                if not _372 % 32:
                    emit CommitEvent(uint256 rg1, string rg2):
                                     stor2.length,
                                     64,
                                     mem[mem[64] + 64 len _372 + 32],
                else:
                    mem[floor32(_372) + mem[64] + 96] = mem[floor32(_372) + mem[64] + -(_372 % 32) + 128 len _372 % 32]
                    emit CommitEvent(uint256 rg1, string rg2):
                                     stor2.length,
                                     64,
                                     mem[mem[64] + 64 len floor32(_372) + 64],
            else:
                t = sha3((3 * stor2.length) + sha3(2) + 2)
                s = 128
                while mem[96] + 128 > s:
                    uint256(stor[t]) = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3((3 * stor2.length) + sha3(2) + 2) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3((3 * stor2.length) + sha3(2) + 2) + (uint256(stor2[stor2.length].field_512) + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                mem[mem[64]] = stor2.length
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = mem[ceil32(arg1.length) + 128]
                _390 = mem[ceil32(arg1.length) + 128]
                mem[mem[64] + 96 len mem[ceil32(arg1.length) + 128]] = mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]]
                if not _390 % 32:
                    emit CommitEvent(uint256 rg1, string rg2):
                                     stor2.length,
                                     64,
                                     mem[mem[64] + 64 len _390 + 32],
                else:
                    mem[floor32(_390) + mem[64] + 96] = mem[floor32(_390) + mem[64] + -(_390 % 32) + 128 len _390 % 32]
                    emit CommitEvent(uint256 rg1, string rg2):
                                     stor2.length,
                                     64,
                                     mem[mem[64] + 64 len floor32(_390) + 64],
        idx = idx + 1
        s = stor2.length
        continue 
    return s
}



}
