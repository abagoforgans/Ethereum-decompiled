contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    return code.data[101 len 3995]
}



// =====================  Runtime code  =====================


const sub_b757326e(?) = 30


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 sub_783cec80;

function isActive() {
    return bool(uint8(stor0.field_160))
}

function sub_3e5dc46a(?) {
    require arg1 < sub_3e5dc46a.length
    require arg1 >= 0
    require arg1 < sub_3e5dc46a.length
    mem[160] = uint256(sub_3e5dc46a[4 * uint8(arg1)].field_0)
    idx = 160
    s = 0
    while sub_3e5dc46a[4 * uint8(arg1)].length + 128 > idx:
        mem[idx + 32] = uint256(sub_3e5dc46a[(4 * uint8(arg1)) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_3e5dc46a[4 * uint8(arg1)].length, data=mem[160 len sub_3e5dc46a[4 * uint8(arg1)].length]), 
           bool(uint8(sub_3e5dc46a[4 * uint8(arg1)].field_512))
}

function sub_6fd63351(?) {
    return sub_3e5dc46a.length
}

function sub_783cec80(?) {
    return sub_783cec80
}

function owner() {
    return owner
}

function sub_b80368c0(?) {
    require arg1 < sub_3e5dc46a.length
    require arg1 >= 0
    require arg1 < sub_3e5dc46a.length
    return bool(uint8(sub_3e5dc46a[4 * uint8(arg1)].field_512))
}

function _fallback() payable {
    revert
}

function sub_083db228(?) {
    require owner == msg.sender
    sub_783cec80 = arg1
}

function setIsActive(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c25e2c4(?) {
    require owner == msg.sender
    require uint8(cd[4]) < sub_3e5dc46a.length
    require uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) == ('cd', 36).length
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        require uint8(cd[4]) < sub_3e5dc46a.length
        require idx < ('cd', 36).length
        require uint8(cd[4]) < sub_3e5dc46a.length
        mem[0] = uint8(2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1))
        mem[32] = (4 * uint8(cd[4])) + sha3(2) + 3
        uint256(stor[(4 * uint8(cd[4])) + ('name', 'sub_3e5dc46a', 2) + 3][2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1) << 248].field_0) = cd[((32 * idx) + cd[36] + 36)]
        s = uint8(2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1))
        idx = idx + 1
        continue 
}

function sub_1f6783f3(?) {
    require owner == msg.sender
    require uint8(cd[4]) < sub_3e5dc46a.length
    require uint8(cd[4]) >= 0
    require uint8(cd[4]) < sub_3e5dc46a.length
    uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_0) = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        uint256(sub_3e5dc46a[(4 * uint8(cd[4])) + s].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while sub_3e5dc46a[4 * uint8(cd[4])].length + 31 / 32 > idx:
        uint256(sub_3e5dc46a[(4 * uint8(cd[4])) + idx].field_0) = 0
        idx = idx + 1
        continue 
    require uint8(cd[4]) < sub_3e5dc46a.length
    uint8(sub_3e5dc46a[4 * uint8(cd[4])].field_512) = uint8(bool(cd[68]))
}

function sub_8f46c12b(?) {
    require owner == msg.sender
    sub_3e5dc46a.length++
    if not sub_3e5dc46a.length <= sub_3e5dc46a.length + 1:
        mem[0] = 2
        idx = 4 * sub_3e5dc46a.length + 1
        while sha3(2) + (4 * sub_3e5dc46a.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(idx + sha3(mem[0]) + 1)
            while sha3(idx + sha3(mem[0]) + 1) + uint256(stor[idx + sha3(mem[0]) + 1]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 4
            continue 
    uint256(sub_3e5dc46a[sub_3e5dc46a.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_3e5dc46a[sub_3e5dc46a.length].field_256) = 0
    idx = 0
    while uint256(sub_3e5dc46a[sub_3e5dc46a.length].field_256) > idx:
        uint256(stor[idx + sha3((4 * sub_3e5dc46a.length) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0) = 0
        idx = idx + 1
        continue 
    uint8(sub_3e5dc46a[sub_3e5dc46a.length].field_512) = uint8(arg2)
}

function sub_be1d8f42(?) {
    require owner == msg.sender
    require uint8(cd[4]) < sub_3e5dc46a.length
    require sub_3e5dc46a.length > 0
    require uint8(cd[4]) < sub_3e5dc46a.length
    require uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1 <= 30
    s = 0
    idx = 0
    while idx < ('cd', 36).length:
        require uint8(cd[4]) < sub_3e5dc46a.length
        uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256)++
        if not uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) <= uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1:
            s = uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + sha3((4 * uint8(cd[4])) + sha3(2) + 1) + 1
            while sha3((4 * uint8(cd[4])) + sha3(2) + 1) + uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        uint8(stor[uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + sha3((4 * uint8(cd[4])) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0) = uint8(2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1))
        Mask(248, 0, stor[uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + sha3((4 * uint8(cd[4])) + ('name', 'sub_3e5dc46a', 2) + 1)].field_8) = 0
        require idx < ('cd', 36).length
        require uint8(cd[4]) < sub_3e5dc46a.length
        mem[0] = uint8(2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1))
        mem[32] = (4 * uint8(cd[4])) + sha3(2) + 3
        uint256(stor[(4 * uint8(cd[4])) + ('name', 'sub_3e5dc46a', 2) + 3][2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1) << 248].field_0) = cd[((32 * idx) + cd[36] + 36)]
        s = uint8(2^(uint256(sub_3e5dc46a[4 * uint8(cd[4])].field_256) + 1))
        idx = idx + 1
        continue 
}

function sub_690a75f3(?) {
    require arg1 < sub_3e5dc46a.length
    require arg1 >= 0
    require arg1 < sub_3e5dc46a.length
    require arg1 < sub_3e5dc46a.length
    if 256 < (32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256:
        mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256] = uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
        require arg1 < sub_3e5dc46a.length
        idx = var37001
        s = var37002
        while idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256):
            require arg1 < sub_3e5dc46a.length
            require idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
            require arg1 < sub_3e5dc46a.length
            mem[32] = (4 * uint8(arg1)) + sha3(2) + 3
            require idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
            mem[(32 * idx) + 256] = uint256(stor[(4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 3][uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)].field_0)
            require idx < mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256]
            mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + (32 * idx) + 288] = uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)
            require arg1 < sub_3e5dc46a.length
            mem[0] = 2
            idx = idx + 1
            s = uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)
            continue 
        mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 288] = 64
        mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 352] = uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
        mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 384 len floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256))] = mem[256 len floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256))]
        mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 320] = (32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 96
        mem[(98 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 384] = mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256]
        mem[(98 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 416 len floor32(mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256])] = mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 288 len floor32(mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256])]
        return memory
          from (64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 288
           len (32 * mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 256]) + (161 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 128
    mem[256] = uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
    require arg1 < sub_3e5dc46a.length
    idx = var38001
    s = var38002
    while idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256):
        require arg1 < sub_3e5dc46a.length
        require idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
        require arg1 < sub_3e5dc46a.length
        mem[32] = (4 * uint8(arg1)) + sha3(2) + 3
        require idx < uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
        mem[(32 * idx) + 256] = uint256(stor[(4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 3][uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)].field_0)
        require idx < mem[256]
        mem[(32 * idx) + 288] = uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)
        require arg1 < sub_3e5dc46a.length
        mem[0] = 2
        idx = idx + 1
        s = uint256(stor[idx + sha3((4 * uint8(arg1)) + ('name', 'sub_3e5dc46a', 2) + 1)].field_0)
        continue 
    mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 288] = 64
    mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 352] = uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)
    mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 384 len floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256))] = mem[256 len floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256))]
    mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 320] = (32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 96
    mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 384] = mem[256]
    mem[(64 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    return Array(len=uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256), data=mem[256 len floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256))], mem[(32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 384 len (32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + (32 * mem[256]) + -floor32(uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 32]), 
           (32 * uint256(sub_3e5dc46a[4 * uint8(arg1)].field_256)) + 96
}



}
