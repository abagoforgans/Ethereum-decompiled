contract main {


// =======================  Init code  ======================


array of struct stor0;

function _fallback() payable {
    stor0[address(msg.sender)].field_0++
    if not stor0[address(msg.sender)].field_0 <= stor0[address(msg.sender)].field_0 + 1:
        mem[0] = sha3(address(msg.sender), 0)
        idx = 2 * stor0[address(msg.sender)].field_0 + 1
        while sha3(sha3(address(msg.sender), 0)) + (2 * stor0[address(msg.sender)].field_0) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 1] = 0
            idx = idx + 1
            continue 
    uint8(stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_0) = 28
    Mask(248, 0, stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_8) = 'hash1righthere' / 256
    idx = 0
    while stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].length + 31 / 32 > idx:
        stor0[address(msg.sender)][(2 * stor0[address(msg.sender)].field_0) + idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0[address(msg.sender)][stor0[address(msg.sender)].field_0].field_256 = 2
    return code.data[377 len 6]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
