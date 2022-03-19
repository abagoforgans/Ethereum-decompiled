contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (3 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e566
        while (3 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            stor1[idx] = 0
            mem[0] = idx + 1
            s = sha3(mem[0])
            while sha3(idx + 1) + stor1[idx] > s:
                uint256(stor[s]) = 0
                if 31 < stor[s].length:
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            stor2[idx] = 0
            mem[0] = idx + 2
            s = sha3(idx + 2)
            while sha3(idx + 2) + stor2[idx] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor0.length].field_0))
    uint256(stor0[stor0.length].field_256)++
    if not uint256(stor0[stor0.length].field_256) <= uint256(stor0[stor0.length].field_256) + 1:
        mem[0] = (3 * stor0.length) + sha3(0) + 1
        idx = uint256(stor0[stor0.length].field_256) + 1
        while sha3((3 * stor0.length) + sha3(0) + 1) + uint256(stor0[stor0.length].field_256) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require uint256(stor0[stor0.length].field_256) < uint256(stor0[stor0.length].field_256)
    bool(stor[uint256(stor0[stor0.length].field_256) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
    uint255(stor[uint256(stor0[stor0.length].field_256) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_1) = 14
    Mask(248, 0, stor[uint256(stor0[stor0.length].field_256) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].field_8) = 'hash1righthere' / 256
    idx = 0
    while stor[uint256(stor0[stor0.length].field_256) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(uint256(stor0[stor0.length].field_256) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1))].field_0) = 0
        idx = idx + 1
        continue 
    uint256(stor0[stor0.length].field_512)++
    if not uint256(stor0[stor0.length].field_512) <= uint256(stor0[stor0.length].field_512) + 1:
        idx = uint256(stor0[stor0.length].field_512) + 1
        while uint256(stor0[stor0.length].field_512) > idx:
            uint256(stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    require uint256(stor0[stor0.length].field_512) < uint256(stor0[stor0.length].field_512)
    uint256(stor[uint256(stor0[stor0.length].field_512) + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)].field_0) = 2
    return code.data[770 len 119]
}



// =====================  Runtime code  =====================


array of address users;

function users(uint256 arg1) payable {
    require arg1 < users.length
    return users[arg1]
}

function _fallback() payable {
  stop
}



}
