contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of struct stor2;

function _fallback() payable {
    stor0 = msg.sender
    if code.data[4459 len 20]:
        stor0 = code.data[4459 len 20]
    require stor0 == msg.sender
    if not stor1[0]:
        stor1[0] = stor2.length
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = 4 * stor2.length + 1
            while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
        require stor2.length < stor2.length
        address(stor2[stor2.length].field_0) = 0
        stor2[stor2.length].field_256 % 1 = 0
        bool(stor2[stor2.length].field_256) = 0
        uint255(stor2[stor2.length].field_257) = 0
        Mask(248, 0, stor2[stor2.length].field_264) = 0
        if sha3((4 * stor2.length) + sha3(2) + 1) + (stor[(4 * stor2.length) + ('name', 'stor2', 2) + 1].length + 31 / 32) > sha3((4 * stor2.length) + sha3(2) + 1):
            uint256(stor[sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = 1
            while stor[(4 * stor2.length) + ('name', 'stor2', 2) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor2.length].field_512) = 2000
        uint256(stor2[stor2.length].field_768) = block.timestamp
    emit MembershipChanged(0, 1);
    require stor0 == msg.sender
    if not stor1[stor0]:
        stor1[stor0] = stor2.length
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = 4 * stor2.length + 1
            while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
        require stor2.length < stor2.length
        address(stor2[stor2.length].field_0) = stor0
        bool(stor2[stor2.length].field_256) = 0
        uint255(stor2[stor2.length].field_257) = 7
        Mask(248, 0, stor2[stor2.length].field_264) = 'founder' / 256
        if sha3((4 * stor2.length) + sha3(2) + 1) + (stor[(4 * stor2.length) + ('name', 'stor2', 2) + 1].length + 31 / 32) > sha3((4 * stor2.length) + sha3(2) + 1):
            uint256(stor[sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
            idx = 1
            while stor[(4 * stor2.length) + ('name', 'stor2', 2) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(stor2[stor2.length].field_512) = 2000
        uint256(stor2[stor2.length].field_768) = block.timestamp
    emit MembershipChanged(stor0, 1);
    require stor1[stor0] < stor2.length
    uint256(stor2[stor1[stor0]].field_512) = 10^6
    return code.data[1011 len 3436]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 memberId;
array of struct balance;

function getBalance() {
    require memberId[address(msg.sender)] < balance.length
    return uint256(balance[stor1[address(msg.sender)]].field_512)
}

function memberId(address arg1) {
    return memberId[arg1]
}

function members(uint256 arg1) {
    require arg1 < balance.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'balance', 2) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'balance', 2) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'balance', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(balance[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'balance', 2) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'balance', 2) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'balance', 2) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'balance', 2) + 1].length + 32 % 32)]),
           uint256(balance[arg1].field_512),
           uint256(balance[arg1].field_768)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_b4a41a1d(?) {
    if arg2 <= 0:
        return 0
    if not memberId[address(arg1)]:
        return 0
    require memberId[address(msg.sender)] < balance.length
    if uint256(balance[stor1[address(msg.sender)]].field_512) < arg2:
        return 0
    require memberId[address(msg.sender)] < balance.length
    uint256(balance[stor1[address(msg.sender)]].field_512) -= arg2
    require memberId[address(arg1)] < balance.length
    uint256(balance[stor1[address(arg1)]].field_512) += arg2
    require memberId[address(msg.sender)] < balance.length
    emit 0xb61513ca: msg.sender, uint256(balance[stor1[address(msg.sender)]].field_512)
    require memberId[address(arg1)] < balance.length
    emit 0xb61513ca: address(arg1), uint256(balance[stor1[address(arg1)]].field_512)
    return 1
}

function getMemberInfo(address arg1) {
    if not memberId[address(arg1)]:
        return 'N/A'
    require memberId[address(arg1)] < balance.length
    mem[160] = uint256(stor[sha3((4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length) + 160] = 32
    mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length) + 192] = stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length
    if stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length:
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length) + 224] = mem[160]
        mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length) + 256 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length - 1)] = mem[192 len floor32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length - 1)]
    return Array(len=stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length, data=mem[ceil32(stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length) + 224 len stor[(4 * stor1[address(arg1)]) + ('name', 'balance', 2) + 1].length]), 
}

function addMember(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require owner == msg.sender
    if not memberId[address(arg1)]:
        memberId[address(arg1)] = balance.length
        balance.length++
        if not balance.length <= balance.length + 1:
            mem[0] = 2
            idx = 4 * balance.length + 1
            while sha3(2) + (4 * balance.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
        mem[ceil32(arg2.length) + 128] = arg1
        require balance.length < balance.length
        address(balance[balance.length].field_0) = arg1
        uint256(balance[balance.length].field_256) = (2 * arg2.length) + 1
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((4 * balance.length) + ('name', 'balance', 2) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if stor[(4 * balance.length) + ('name', 'balance', 2) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
            uint256(stor[sha3((4 * balance.length) + ('name', 'balance', 2) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
            while stor[(4 * balance.length) + ('name', 'balance', 2) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * balance.length) + ('name', 'balance', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(balance[balance.length].field_512) = 2000
        uint256(balance[balance.length].field_768) = block.timestamp
    emit MembershipChanged(address(arg1), 1);
}

function removeMember(address arg1) {
    require owner == msg.sender
    require memberId[address(arg1)]
    mem[0] = arg1
    idx = memberId[mem[0]]
    while idx < balance.length - 1:
        require idx + 1 < balance.length
        require idx < balance.length
        address(balance[idx].field_0) = address(balance[idx + 1].field_0)
        mem[0] = (4 * idx) + sha3(2) + 1
        if 31 >= stor[(4 * idx + 1) + ('name', 'balance', 2) + 1].length:
            uint256(balance[idx].field_256) = uint256(balance[idx + 1].field_256)
            s = sha3((4 * idx) + sha3(2) + 1)
            while sha3((4 * idx) + sha3(2) + 1) + (stor[(4 * idx) + ('name', 'balance', 2) + 1].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        else:
            uint256(balance[idx].field_256) = Mask(255, 1, uint256(balance[idx + 1].field_256) and (256 * not bool(balance[idx + 1].field_256)) - 1) + 1
            if not Mask(255, 1, uint256(balance[idx + 1].field_256) and (256 * not bool(balance[idx + 1].field_256)) - 1):
                s = sha3((4 * idx) + sha3(2) + 1)
                while sha3((4 * idx) + sha3(2) + 1) + (stor[(4 * idx) + ('name', 'balance', 2) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = (4 * idx + 1) + sha3(2) + 1
                s = sha3((4 * idx) + sha3(2) + 1)
                t = sha3((4 * idx + 1) + sha3(2) + 1)
                while sha3((4 * idx + 1) + sha3(2) + 1) + (stor[(4 * idx + 1) + ('name', 'balance', 2) + 1].length + 31 / 32) > t:
                    uint256(stor[s]) = uint256(stor[t])
                    s = s + 1
                    t = t + 1
                    continue 
                t = s
                while sha3((4 * idx) + sha3(2) + 1) + (stor[(4 * idx) + ('name', 'balance', 2) + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
        uint256(balance[idx].field_512) = uint256(balance[idx + 1].field_512)
        uint256(balance[idx].field_768) = uint256(balance[idx + 1].field_768)
        idx = idx + 1
        continue 
    require balance.length - 1 < balance.length
    address(balance[balance.length - 1].field_0) = 0
    uint256(balance[balance.length - 1].field_256) = 0
    if 31 >= stor[(4 * balance.length - 1) + ('name', 'balance', 2) + 1].length:
        uint256(balance[balance.length - 1].field_512) = 0
        uint256(balance[balance.length - 1].field_768) = 0
        balance.length--
        if not balance.length <= balance.length - 1:
            mem[0] = 2
            idx = 4 * balance.length - 1
            while sha3(2) + (4 * balance.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
    else:
        if sha3((4 * balance.length - 1) + sha3(2) + 1) + (stor[(4 * balance.length - 1) + ('name', 'balance', 2) + 1].length + 31 / 32) > sha3((4 * balance.length - 1) + sha3(2) + 1):
            uint256(stor[sha3((4 * balance.length - 1) + ('name', 'balance', 2) + 1)].field_0) = 0
            idx = 1
            while stor[(4 * balance.length - 1) + ('name', 'balance', 2) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((4 * balance.length - 1) + ('name', 'balance', 2) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        uint256(balance[balance.length - 1].field_512) = 0
        uint256(balance[balance.length - 1].field_768) = 0
        balance.length--
        if not balance.length <= balance.length - 1:
            mem[0] = 2
            idx = 4 * balance.length - 1
            while sha3(2) + (4 * balance.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                        s = sha3(idx + sha3(mem[0]) + 1) + 1
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 4
                continue 
    memberId[address(arg1)] = 0
    emit MembershipChanged(address(arg1), 0);
}



}
