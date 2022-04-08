contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() {
    stor3 = msg.sender
    return code.data[57 len 4457]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 sub_fa165e8f;
address stor3;
array of address stor4;

function getName() {
    return name[0 len name.length]
}

function getPosts() {
    return stor2.length
}

function sub_a120734b(?) {
    return stor4.length
}

function sub_fa165e8f(?) {
    return sub_fa165e8f[0 len sub_fa165e8f.length]
}

function _fallback() payable {
    revert
}

function setName(string arg1) {
    require stor3 == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function sub_fb7e06d8(?) {
    require stor3 == msg.sender
    sub_fa165e8f[] = Array(len=arg1.length, data=arg1[all])
}

function sub_78dd0617(?) {
    require stor3 == msg.sender
    require arg1 < stor4.length
    address(stor4[arg1]) = 0
}

function sub_fa99654a(?) {
    require stor3 == msg.sender
    require arg1 < stor2.length
    uint256(stor2[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(stor2[arg1].field_512) = 1
}

function sub_085ecdac(?) {
    require stor3 == msg.sender
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            uint256(stor4[idx]) = 0
            idx = idx + 1
            continue 
    address(stor4[stor4.length]) = arg1
}

function sub_99c814db(?) {
    mem[128 len arg3.length] = arg3[all]
    require stor3 == msg.sender
    mem[ceil32(arg3.length) + 128] = 0xe139f3f600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = arg2
    mem[ceil32(arg3.length) + 164] = 64
    mem[ceil32(arg3.length) + 196] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 228] = mem[128]
        mem[ceil32(arg3.length) + 260 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    require ext_code.size(arg1)
    call arg1.0xe139f3f6 with:
         gas gas_remaining - 50 wei
        args arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 228 len arg3.length])
    require ext_call.success
}

function sub_37c1806d(?) {
    mem[128 len arg4.length] = arg4[all]
    require stor3 == msg.sender
    mem[ceil32(arg4.length) + 128] = 0x479721a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = arg2
    mem[ceil32(arg4.length) + 164] = arg3
    mem[ceil32(arg4.length) + 196] = 96
    mem[ceil32(arg4.length) + 228] = arg4.length
    if arg4.length:
        mem[ceil32(arg4.length) + 260] = mem[128]
        mem[ceil32(arg4.length) + 292 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
    require ext_code.size(arg1)
    call arg1.0x479721a9 with:
         gas gas_remaining - 50 wei
        args arg2, arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 260 len arg4.length])
    require ext_call.success
}

function getPost(uint256 arg1) {
    require arg1 < stor2.length
    mem[160] = uint256(stor2[arg1].field_0)
    idx = 160
    s = 0
    while stor2[arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor2[(3 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1].length) + 192] = bool(uint8(stor2[arg1].field_512))
    mem[ceil32(stor2[arg1].length) + 224] = uint256(stor2[arg1].field_256)
    mem[ceil32(stor2[arg1].length) + 160] = 96
    mem[ceil32(stor2[arg1].length) + 256] = stor2[arg1].length
    if stor2[arg1].length:
        mem[ceil32(stor2[arg1].length) + 288] = mem[160]
        mem[ceil32(stor2[arg1].length) + 320 len floor32(stor2[arg1].length - 1)] = mem[192 len floor32(stor2[arg1].length - 1)]
    return Array(len=stor2[arg1].length, data=mem[ceil32(stor2[arg1].length) + 288 len stor2[arg1].length]), 
           bool(uint8(stor2[arg1].field_512)),
           uint256(stor2[arg1].field_256)
}

function sub_479721a9(?) {
    require cd[4] < stor2.length
    require cd[36] < uint256(stor2[cd[4]].field_256)
    require address(stor[(3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1)].field_0) == msg.sender
    uint8(stor[(3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1)].field_512) = 1
    uint256(stor[(3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1)].field_256) = (2 * ('cd', 68).length) + 1
    s = 0
    idx = cd[68] + 36
    while cd[68] + ('cd', 68).length + 36 > idx:
        uint256(stor[s + sha3((3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
    while stor[(3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((3 * cd[36]) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_2ebabd89(?) {
    require stor3 == msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (3 * stor2.length) + 3
        while sha3(2) + (3 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 1) + (3 * uint256(stor[idx + sha3(mem[0]) + 1])) > s:
                address(stor[s]) = 0
                sub_fa165e8f[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint8(stor2[s].field_0) = 0
                s = s + 3
                continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length][].field_0) = Array(len=arg1.length, data=arg1[all])
}

function getComment(uint256 arg1, uint256 arg2) {
    require arg1 < stor2.length
    require arg2 < uint256(stor2[arg1].field_256)
    mem[160] = uint256(stor[sha3((3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 160] = address(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_0)
    mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 192] = 64
    mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 224] = stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length
    if stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length:
        mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 256] = mem[160]
        mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 288 len floor32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length - 1)] = mem[192 len floor32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length - 1)]
    return address(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1)].field_0), 
           Array(len=stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length, data=mem[ceil32(stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length) + 256 len stor[(3 * arg2) + sha3((3 * arg1) + ('name', 'stor2', 2) + 1) + 1].length])
}

function sub_e139f3f6(?) {
    require cd[4] < stor2.length
    uint256(stor2[cd[4]].field_256)++
    if not uint256(stor2[cd[4]].field_256) <= uint256(stor2[cd[4]].field_256) + 1:
        mem[0] = (3 * cd[4]) + sha3(2) + 1
        idx = (3 * uint256(stor2[cd[4]].field_256)) + 3
        while sha3((3 * cd[4]) + sha3(2) + 1) + (3 * uint256(stor2[cd[4]].field_256)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require uint256(stor2[cd[4]].field_256) < uint256(stor2[cd[4]].field_256)
    address(stor[(3 * uint256(stor2[cd[4]].field_256)) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1)].field_0) = msg.sender
    uint256(stor[(3 * uint256(stor2[cd[4]].field_256)) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1)].field_256) = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        uint256(stor[s + sha3((3 * uint256(stor2[cd[4]].field_256)) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1)].field_0) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor[(3 * uint256(stor2[cd[4]].field_256)) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((3 * uint256(stor2[cd[4]].field_256)) + sha3((3 * cd[4]) + ('name', 'stor2', 2) + 1) + 1)].field_0) = 0
        idx = idx + 1
        continue 
}



}
