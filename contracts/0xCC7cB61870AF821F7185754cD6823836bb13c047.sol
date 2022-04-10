contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor1;
address stor2;
address stor3;

function _fallback() {
    stor2 = tx.origin
    stor3 = tx.origin
    stor0.length = 2
    if not stor0.length <= 2:
        mem[0] = 0
        idx = 4
        while sha3(0) + (2 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 2
            continue 
    require 1 < stor0.length
    address(stor0.field_512) = tx.origin
    bool(stor0.field_768) = 0
    uint255(stor0.field_769) = 12
    Mask(248, 0, stor0.field_776) = 'Nicolas Luck' / 256
    idx = 0
    while stor0[3].length + 31 / 32 > idx:
        uint256(stor0[idx + 3].field_0) = 0
        idx = idx + 1
        continue 
    stor1[tx.origin] = 1
    return code.data[659 len 5757]
}



// =====================  Runtime code  =====================


array of struct memberName;
array of uint256 memberId;
address treasurerAddress;
address sub_d75c7da8Address;
mapping of struct sub_402c24f5;

function memberCount() {
    return memberName.length
}

function memberId(address arg1) {
    return memberId[arg1]
}

function sub_402c24f5(?) {
    require memberId[address(msg.sender)]
    require sub_402c24f5.length
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    require uint8(sub_402c24f5[sub_402c24f5.length].field_0)
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    return address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(arg1)].field_0)
}

function sub_549a2b0a(?) {
    require memberId[address(msg.sender)]
    require sub_402c24f5.length
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    require uint8(sub_402c24f5[sub_402c24f5.length].field_0)
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    return address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(arg1)].field_0)
}

function votes(uint256 arg1) {
    require arg1 < sub_402c24f5.length
    return uint256(sub_402c24f5[arg1].field_0), bool(uint8(sub_402c24f5[arg1].field_1280))
}

function sub_721ec693(?) {
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    return uint256(sub_402c24f5[sub_402c24f5.length].field_0)
}

function getMemberName(address arg1) {
    return uint256(stor[(2 * stor1[address(arg1)]) + ('name', 'memberName', 0) + 1][0 len stor[(2 * stor1[address(arg1)]) + ('name', 'memberName', 0) + 1].length].field_0)
}

function isMember() {
    return bool(memberId[address(msg.sender)])
}

function sub_d75c7da8(?) {
    return sub_d75c7da8Address
}

function treasurer() {
    return treasurerAddress
}

function _fallback() payable {
  stop
}

function sub_b9feacba(?) {
    return (treasurerAddress == msg.sender)
}

function sub_8f3483c8(?) {
    return (sub_d75c7da8Address == msg.sender)
}

function sub_e2c19c23(?) {
    if not sub_402c24f5.length:
        return 0
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    return bool(uint8(sub_402c24f5[sub_402c24f5.length].field_0))
}

function sendEth(address arg1, uint256 arg2) {
    require treasurerAddress == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function vote(address arg1, address arg2) {
    require memberId[address(msg.sender)]
    require sub_402c24f5.length
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    require uint8(sub_402c24f5[sub_402c24f5.length].field_0)
    require memberId[address(arg1)]
    require memberId[address(arg2)]
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(msg.sender)].field_0) = arg1
    address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(msg.sender)].field_0) = arg2
}

function members(uint256 arg1) {
    require arg1 < memberName.length
    mem[192] = uint256(stor[sha3((2 * arg1) + ('name', 'memberName', 0) + 1)].field_0)
    idx = 192
    s = 0
    while stor[(2 * arg1) + ('name', 'memberName', 0) + 1].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + ('name', 'memberName', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(memberName[arg1].field_0), 
           Array(len=stor[(2 * arg1) + ('name', 'memberName', 0) + 1].length, data=mem[192 len stor[(2 * arg1) + ('name', 'memberName', 0) + 1].length + (floor32(stor[(2 * arg1) + ('name', 'memberName', 0) + 1].length - 1) + -stor[(2 * arg1) + ('name', 'memberName', 0) + 1].length + 32 % 32)])
}

function addMember(address arg1, string arg2) {
    require sub_d75c7da8Address == msg.sender
    if not memberId[address(arg1)]:
        memberId[address(arg1)] = memberName.length
        memberName.length++
        if not memberName.length <= memberName.length + 1:
            mem[0] = 0
            idx = 2 * memberName.length + 1
            while sha3(0) + (2 * memberName.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 2
                continue 
        require memberName.length < memberName.length
        address(memberName[memberName.length].field_0) = arg1
        uint256(stor[sha3((2 * memberName.length) + ('name', 'memberName', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function startVote() {
    require memberId[address(msg.sender)]
    if not sub_402c24f5.length:
        sub_402c24f5.length++
        if not sub_402c24f5.length <= sub_402c24f5.length + 1:
            idx = (6 * sub_402c24f5.length) + 6
            while 6 * sub_402c24f5.length > idx:
                uint256(sub_402c24f5[idx].field_0) = 0
                uint8(sub_402c24f5[idx].field_1280) = 0
                idx = idx + 6
                continue 
        require sub_402c24f5.length < sub_402c24f5.length
        uint256(sub_402c24f5[sub_402c24f5.length].field_0) = block.timestamp + (168 * 24 * 3600)
        uint8(sub_402c24f5[sub_402c24f5.length].field_1280) = 1
    else:
        require sub_402c24f5.length - 1 < sub_402c24f5.length
        if not uint8(sub_402c24f5[sub_402c24f5.length].field_0):
            sub_402c24f5.length++
            if not sub_402c24f5.length <= sub_402c24f5.length + 1:
                idx = (6 * sub_402c24f5.length) + 6
                while 6 * sub_402c24f5.length > idx:
                    uint256(sub_402c24f5[idx].field_0) = 0
                    uint8(sub_402c24f5[idx].field_1280) = 0
                    idx = idx + 6
                    continue 
            require sub_402c24f5.length < sub_402c24f5.length
            uint256(sub_402c24f5[sub_402c24f5.length].field_0) = block.timestamp + (168 * 24 * 3600)
            uint8(sub_402c24f5[sub_402c24f5.length].field_1280) = 1
}

function sub_1fe0bc1f(?) {
    s = 0
    s = 0
    idx = 1
    s = 0
    t = 0
    while idx < memberName.length:
        require sub_402c24f5.length - 1 < sub_402c24f5.length
        require idx < memberName.length
        require sub_402c24f5.length - 1 < sub_402c24f5.length
        require idx < memberName.length
        mem[0] = address(memberName[idx].field_0)
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 4
        if not address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(stor0[idx].field_0)].field_0):
            if not address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0):
                s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0)
                s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(stor0[idx].field_0)].field_0)
                idx = idx + 1
                s = s
                t = t
                continue 
            s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0)
            s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(stor0[idx].field_0)].field_0)
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        if not address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0):
            s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0)
            s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(stor0[idx].field_0)].field_0)
            idx = idx + 1
            s = s
            t = t + 1
            continue 
        s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][address(stor0[idx].field_0)].field_0)
        s = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 5][address(stor0[idx].field_0)].field_0)
        idx = idx + 1
        s = s + 1
        t = t + 1
        continue 
    if t != memberName.length - 1:
        return (t == memberName.length - 1)
    return (s == memberName.length - 1)
}

function removeMember(address arg1) {
    require sub_d75c7da8Address == msg.sender
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < memberName.length - 1:
        require idx + 1 < memberName.length
        require idx < memberName.length
        address(memberName[idx].field_0) = address(memberName[idx + 1].field_0)
        mem[0] = (2 * idx) + sha3(0) + 1
        if 31 >= stor[(2 * idx + 1) + ('name', 'memberName', 0) + 1].length:
            uint256(memberName[idx].field_256) = uint256(memberName[idx + 1].field_256)
            s = sha3((2 * idx) + sha3(0) + 1)
            while sha3((2 * idx) + sha3(0) + 1) + (stor[(2 * idx) + ('name', 'memberName', 0) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        uint256(memberName[idx].field_256) = Mask(255, 1, (256 * not bool(memberName[idx + 1].field_256)) - 1 and uint256(memberName[idx + 1].field_256)) + 1
        if not Mask(255, 1, (256 * not bool(memberName[idx + 1].field_256)) - 1 and uint256(memberName[idx + 1].field_256)):
            s = sha3((2 * idx) + sha3(0) + 1)
            while sha3((2 * idx) + sha3(0) + 1) + (stor[(2 * idx) + ('name', 'memberName', 0) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        mem[0] = (2 * idx + 1) + sha3(0) + 1
        s = sha3((2 * idx) + sha3(0) + 1)
        t = sha3((2 * idx + 1) + sha3(0) + 1)
        while sha3((2 * idx + 1) + sha3(0) + 1) + (stor[(2 * idx + 1) + ('name', 'memberName', 0) + 1].length + 31 / 32) > t:
            uint256(stor[s]) = uint256(stor[t])
            s = s + 1
            t = t + 1
            continue 
        t = s
        while sha3((2 * t) + sha3(0) + 1) + (stor[(2 * t) + ('name', 'memberName', 0) + 1].length + 31 / 32) > t:
            uint256(stor[t]) = 0
            t = t + 1
            continue 
        t = t + 1
        continue 
    require memberName.length - 1 < memberName.length
    address(memberName[memberName.length - 1].field_0) = 0
    uint256(memberName[memberName.length - 1].field_256) = 0
    if 31 < stor[(2 * memberName.length - 1) + ('name', 'memberName', 0) + 1].length:
        idx = 0
        while stor[(2 * memberName.length - 1) + ('name', 'memberName', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((2 * memberName.length - 1) + ('name', 'memberName', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    memberName.length--
    if not memberName.length <= memberName.length - 1:
        mem[0] = 0
        idx = 2 * memberName.length - 1
        while sha3(0) + (2 * memberName.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 2
            continue 
    memberId[address(arg1)] = 0
}

function sub_bfa06830(?) {
    mem[96] = 0
    mem[64] = 192
    mem[160] = 0
    mem[128] = 160
    require sub_402c24f5.length
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    require uint8(sub_402c24f5[sub_402c24f5.length].field_0)
    require sub_402c24f5.length - 1 < sub_402c24f5.length
    mem[0] = 4
    s = 96
    idx = 0
    while idx < memberName.length:
        mem[0] = 0
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = address(memberName[idx].field_0)
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'memberName', 0) + 1].length) + 32
        mem[_54] = stor[(2 * idx) + ('name', 'memberName', 0) + 1].length
        mem[0] = (2 * idx) + sha3(0) + 1
        mem[_54 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'memberName', 0) + 1)].field_0)
        s = _54 + 32
        t = sha3(mem[0])
        while _54 + stor[(2 * idx) + ('name', 'memberName', 0) + 1].length > s:
            mem[s + 32] = memberId[t]
            s = s + 32
            t = t + 1
            continue 
        mem[_53 + 32] = _54
        mem[0] = mem[_53 + 12 len 20]
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 3
        uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][mem[0]].field_0) = 0
        mem[0] = mem[_53 + 12 len 20]
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 2
        uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][mem[0]].field_0) = 0
        s = _53
        idx = idx + 1
        continue 
    t = 0
    t = 0
    t = 0
    u = 0
    v = s
    idx = 1
    while idx < memberName.length:
        mem[0] = 0
        _104 = mem[64]
        mem[64] = mem[64] + 64
        mem[_104] = address(memberName[idx].field_0)
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'memberName', 0) + 1].length) + 32
        mem[_105] = stor[(2 * idx) + ('name', 'memberName', 0) + 1].length
        mem[0] = (2 * idx) + sha3(0) + 1
        mem[_105 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'memberName', 0) + 1)].field_0)
        s = _105 + 32
        v = sha3(mem[0])
        while _105 + stor[(2 * idx) + ('name', 'memberName', 0) + 1].length > s:
            mem[s + 32] = memberId[v]
            s = s + 32
            v = v + 1
            continue 
        mem[_104 + 32] = _105
        mem[0] = mem[_104 + 12 len 20]
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 5
        _176 = sha3(mem[0], (6 * sub_402c24f5.length) + sha3(4) - 5)
        mem[0] = mem[_104 + 12 len 20]
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 4
        _178 = sha3(mem[0], (6 * sub_402c24f5.length) + sha3(4) - 4)
        if not address(stor[_176]):
            if not address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][mem[0]].field_0):
                t = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][mem[0]].field_0)
                t = address(stor[_176])
                t = t
                u = u
                v = _104
                idx = idx + 1
                continue 
            mem[0] = address(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 4][mem[0]].field_0)
            mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 2
            uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][mem[0]].field_0)++
            t = address(stor[_178])
            t = address(stor[_176])
            t = t + 1
            u = u
            v = _104
            idx = idx + 1
            continue 
        mem[0] = address(stor[_176])
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 3
        uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][address(stor[_176])].field_0)++
        if not address(stor[_178]):
            t = address(stor[_178])
            t = address(stor[_176])
            t = t
            u = u + 1
            v = _104
            idx = idx + 1
            continue 
        mem[0] = address(stor[_178])
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 2
        uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][address(stor[_178])].field_0)++
        t = address(stor[_178])
        t = address(stor[_176])
        t = t + 1
        u = u + 1
        v = _104
        idx = idx + 1
        continue 
    s = sub_d75c7da8Address
    w = treasurerAddress
    x = v
    idx = 1
    while idx < memberName.length:
        mem[0] = 0
        _179 = mem[64]
        mem[64] = mem[64] + 64
        mem[_179] = address(memberName[idx].field_0)
        _180 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(2 * idx) + ('name', 'memberName', 0) + 1].length) + 32
        mem[_180] = stor[(2 * idx) + ('name', 'memberName', 0) + 1].length
        mem[0] = (2 * idx) + sha3(0) + 1
        mem[_180 + 32] = uint256(stor[sha3((2 * idx) + ('name', 'memberName', 0) + 1)].field_0)
        t = _180 + 32
        u = sha3(mem[0])
        while _180 + stor[(2 * idx) + ('name', 'memberName', 0) + 1].length > t:
            mem[t + 32] = memberId[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_179 + 32] = _180
        mem[0] = address(w)
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 3
        mem[0] = mem[_179 + 12 len 20]
        if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][mem[0]].field_0) <= uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][address(w)].field_0):
            mem[0] = address(s)
            mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 2
            mem[0] = mem[_179 + 12 len 20]
            if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][mem[0]].field_0) <= uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][address(s)].field_0):
                s = s
                w = w
                x = _179
                idx = idx + 1
                continue 
            s = mem[_179]
            w = w
            x = _179
            idx = idx + 1
            continue 
        _233 = mem[_179]
        mem[0] = address(s)
        mem[32] = (6 * sub_402c24f5.length) + sha3(4) - 2
        mem[0] = mem[_179 + 12 len 20]
        if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][mem[0]].field_0) <= uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][address(s)].field_0):
            s = s
            w = _233
            x = _179
            idx = idx + 1
            continue 
        s = mem[_179]
        w = _233
        x = _179
        idx = idx + 1
        continue 
    if block.timestamp > uint256(sub_402c24f5[sub_402c24f5.length].field_0):
        if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][address(w)].field_0) > u / 2:
            treasurerAddress = address(w)
        if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][address(s)].field_0) > t / 2:
            sub_d75c7da8Address = address(s)
        uint8(sub_402c24f5[sub_402c24f5.length].field_0) = 0
    else:
        if u == memberName.length - 1:
            if t == memberName.length - 1:
                if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 3][address(w)].field_0) > u / 2:
                    treasurerAddress = address(w)
                if uint256(stor[(6 * sub_402c24f5.length) + ('name', 'sub_402c24f5', 4) - 2][address(s)].field_0) > t / 2:
                    sub_d75c7da8Address = address(s)
                uint8(sub_402c24f5[sub_402c24f5.length].field_0) = 0
}



}
