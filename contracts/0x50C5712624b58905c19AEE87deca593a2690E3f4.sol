contract main {


// =======================  Init code  ======================


const _fallback = code.data[90 len 1720]




// =====================  Runtime code  =====================


array of struct stor0;

function getCount() payable {
    return stor0.length
}

function _fallback() payable {
    revert 
}

function a_document(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[288] = uint256(stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 288
    s = 0
    while stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 288] = stor[(5 * arg1) + ('name', 'stor0', 0) + 3].length
    mem[stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320] = uint256(stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 3)].field_0)
    idx = stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320
    s = 0
    while stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'stor0', 0) + 3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(stor0[arg1].field_0), 
           Array(len=stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[288 len stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(5 * arg1) + ('name', 'stor0', 0) + 3].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 3].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 3].length + 32 % 32) + 32]),
           address(stor0[arg1].field_512),
           stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(5 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 192,
           uint256(stor0[arg1].field_1024)
}

function Add(uint256 arg1, string arg2, string arg3) payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (5 * stor0.length) + 5
        while sha3(0) + (5 * stor0.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                idx = idx + 5
                continue 
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            address(stor[s + sha3(mem[0]) + 2]) = 0
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            if 31 < stor[s + sha3(mem[0]) + 3].length:
                mem[0] = s + sha3(mem[0]) + 3
                t = sha3(s + sha3(mem[0]) + 3)
                while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            uint256(stor[s + sha3(mem[0]) + 4]) = 0
            s = s + 5
            continue 
    uint256(stor0[stor0.length].field_0) = arg1
    uint256(stor[sha3((5 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor0[stor0.length].field_512) = msg.sender or Mask(96, 160, uint256(stor0[stor0.length].field_512))
    uint256(stor[sha3((5 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor0[stor0.length].field_1024) = block.timestamp
    emit Added(msg.sender);
}



}
