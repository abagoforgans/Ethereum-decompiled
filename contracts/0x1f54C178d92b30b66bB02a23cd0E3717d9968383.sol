contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1095]




// =====================  Runtime code  =====================


array of struct stor0;

function number_of_claims() payable {
    return stor0.length
}

function _fallback() payable {
  stop
}

function claims(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32)]),
           uint256(stor0[arg1].field_512)
}

function claim(string arg1) payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (3 * stor0.length) + 3
        while sha3(0) + (3 * stor0.length) > idx + sha3(mem[0]):
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
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = msg.sender or Mask(96, 160, uint256(stor0[stor0.length].field_0))
    uint256(stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor0[stor0.length].field_512) = block.number
}



}
