contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[27 len 1100]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of struct stor3;

function _fallback() payable {
  stop
}

function sub_2891a990(?) payable {
    if block.number % 10 <= 5:
        return 0
    return 1
}

function sub_f9f66dee(?) payable {
    if block.number % 10 >= 5:
        return 0
    return 1
}

function addHash(bytes32 arg1) payable {
    if block.number % 10 >= 5:
        return 0
    stor2[address(msg.sender)] = arg1
    return arg1
}

function sub_16b59f3a(?) payable {
    if block.number % 10 <= 5:
        return 0
    if sha3(arg1) != stor2[address(msg.sender)]:
        return 0
    stor3[address(msg.sender)].field_0 = stor2[address(msg.sender)]
    stor3[address(msg.sender)].field_256 = uint64(arg1)
    stor3[address(msg.sender)].field_320 = 0
    uint256(stor1[stor0]) = msg.sender or Mask(96, 160, uint256(stor1[stor0]))
    stor0++
    return 1
}

function sub_6c4f7da4(?) payable {
    idx = 0
    s = 0
    while idx < stor0:
        mem[0] = address(stor1[idx])
        mem[32] = 3
        idx = idx + 1
        s = s xor stor3[address(stor1[idx])].field_256
        continue 
    return uint32((s * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 * stor0 % uint32(arg2 + -arg1 + 1)) + uint32(arg1))
}



}
