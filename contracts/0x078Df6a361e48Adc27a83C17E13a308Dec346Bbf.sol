contract main {


// =======================  Init code  ======================


const _fallback = code.data[21 len 1162]




// =====================  Runtime code  =====================


array of struct stor0;
uint256 numAssets;

function numAssets() payable {
    return numAssets
}

function _fallback() payable {
  stop
}

function assets(uint256 arg1) payable {
    require arg1 < stor0.length
    if not uint256(stor0[arg1].field_256):
        return address(stor0[arg1].field_0), 
               128,
               uint256(stor0[arg1].field_512),
               uint8(stor0[arg1].field_768),
               uint256(stor0[arg1].field_256)
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 256
    s = 0
    while uint256(stor0[arg1].field_256) + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=uint256(stor0[arg1].field_256), data=mem[256 len uint256(stor0[arg1].field_256) + (floor32(uint256(stor0[arg1].field_256) - 1) + -uint256(stor0[arg1].field_256) + 32 % 32)]),
           uint256(stor0[arg1].field_512),
           uint8(stor0[arg1].field_768)
}

function sub_59c7cee5(?) payable {
    mem[128 len arg2.length] = arg2[all]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = 4 * stor0.length + 1
        while sha3(0) + (4 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (uint256(stor[s + sha3(mem[0]) + 1]) + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2]) = 0
            uint8(stor[s + sha3(mem[0]) + 3]) = 0
            s = s + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = arg1 or Mask(96, 160, uint256(stor0[stor0.length].field_0))
    uint256(stor0[stor0.length].field_256) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            uint256(stor[s + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while uint256(stor0[stor0.length].field_256) + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor0[stor0.length].field_512) = block.timestamp
    uint8(stor0[stor0.length].field_768) = 1
    emit AssetAdded(stor0.length, Array(len=arg2.length, data=arg2[all]));
    numAssets = stor0.length + 1
    return stor0.length
}



}
