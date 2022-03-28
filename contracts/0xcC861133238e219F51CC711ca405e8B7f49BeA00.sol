contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() {
    mem[96 len -2704] = code.data[2939 len -2704]
    mem[64] = -2608
    stor0 = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[235 len 2704]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 question;
mapping of struct sub_37f91f23;
array of uint256 sub_97f16073;
array of struct proposals;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[192] = uint256(proposals[arg1].field_0)
    idx = 192
    s = 0
    while proposals[arg1].length + 192 > idx + 32:
        mem[idx + 32] = uint256(proposals[(2 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=proposals[arg1].length, data=mem[192 len proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32)]), 
           bool(uint8(proposals[arg1].field_256))
}

function proposalsCount() {
    return proposals.length
}

function sub_37f91f23(?) {
    return bool(uint8(sub_37f91f23[arg1].field_0)), uint256(sub_37f91f23[arg1].field_256), uint256(sub_37f91f23[arg1].field_512)
}

function question() {
    return question[0 len question.length]
}

function sub_84f2d403(?) {
    return sub_97f16073.length
}

function owner() {
    return owner
}

function sub_97f16073(?) {
    require arg1 < sub_97f16073.length
    return sub_97f16073[arg1]
}

function sub_b44518aa(?) {
    return sub_97f16073.length
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function sub_affa6f19(?) {
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < sub_97f16073.length:
        mem[0] = sub_97f16073[idx]
        mem[32] = 2
        if arg1 != uint256(sub_37f91f23[stor3[idx]].field_256):
            s = sha3(sub_97f16073[idx], 2)
            s = sub_97f16073[idx]
            idx = idx + 1
            s = s
            continue 
        if bool(uint8(sub_37f91f23[stor3[idx]].field_0)) != 1:
            s = sha3(sub_97f16073[idx], 2)
            s = sub_97f16073[idx]
            idx = idx + 1
            s = s
            continue 
        s = sha3(sub_97f16073[idx], 2)
        s = sub_97f16073[idx]
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function vote(bytes32 arg1, uint256 arg2) {
    if owner != msg.sender:
        return 0
    if bool(uint8(sub_37f91f23[arg1].field_0)) != 1:
        uint256(sub_37f91f23[arg1].field_512) = sub_97f16073.length
        sub_97f16073.length++
        sub_97f16073[sub_97f16073.length] = arg1
    uint256(sub_37f91f23[arg1].field_256) = arg2
    uint8(sub_37f91f23[arg1].field_0) = 1
    require arg2 < proposals.length
    mem[192] = uint256(proposals[arg2].field_0)
    idx = 192
    s = 0
    while proposals[arg2].length + 192 > idx + 32:
        mem[idx + 32] = uint256(proposals[(2 * arg2) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x2e01fc14: arg1, Array(len=proposals[arg2].length, data=mem[192 len proposals[arg2].length + (floor32(proposals[arg2].length - 1) + -proposals[arg2].length + 32 % 32)])
    return 1
}

function sub_da83bfdd(?) {
    mem[160] = proposals.length
    idx = 0
    while idx < mem[160]:
        require idx < mem[160]
        mem[(32 * idx) + 192] = 0
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    while idx < sub_97f16073.length:
        mem[0] = sub_97f16073[idx]
        mem[32] = 2
        if 1 == bool(uint8(sub_37f91f23[stor3[idx]].field_0)):
            require uint256(sub_37f91f23[stor3[idx]].field_256) < mem[160]
            mem[(32 * uint256(sub_37f91f23[stor3[idx]].field_256)) + 192] = mem[(32 * uint256(sub_37f91f23[stor3[idx]].field_256)) + 192] + 1
        s = sha3(sub_97f16073[idx], 2)
        s = sub_97f16073[idx]
        idx = idx + 1
        continue 
    mem[(32 * proposals.length) + 192] = 32
    mem[(32 * proposals.length) + 224] = mem[160]
    if Mask(251, 0, mem[160]):
        mem[(32 * proposals.length) + 256] = mem[192]
        mem[(32 * proposals.length) + 288 len floor32((32 * mem[160]) - 1)] = mem[224 len floor32((32 * mem[160]) - 1)]
    return 32, mem[(32 * proposals.length) + 224 len (32 * mem[160]) + 32]
}

function addProposal(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner == msg.sender:
        proposals.length++
        if not proposals.length <= proposals.length + 1:
            mem[0] = 4
            idx = 2 * proposals.length + 1
            while sha3(4) + (2 * proposals.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint8(stor[idx + sha3(mem[0]) + 1]) = 0
                idx = idx + 2
                continue 
        mem[ceil32(arg1.length) + 128] = 96
        uint256(proposals[proposals.length].field_0) = (2 * arg1.length) + 1
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            uint256(proposals[(2 * proposals.length) + s].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if proposals[proposals.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
            uint256(stor[('array', ('mul', 2, ('stor', ('length', ('name', 'proposals', 4)))), ('name', 'proposals', 4)) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
            idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
            while proposals[proposals.length].length + 31 / 32 > idx:
                uint256(proposals[(2 * proposals.length) + idx].field_0) = 0
                idx = idx + 1
                continue 
        uint8(proposals[proposals.length].field_256) = 1
}



}
