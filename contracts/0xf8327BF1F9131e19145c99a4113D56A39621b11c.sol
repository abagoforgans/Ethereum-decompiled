contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[63 len 2042]
}



// =====================  Runtime code  =====================


address stor0;
array of address read;

function read(address arg1, uint256 arg2) payable {
    require arg2 < uint256(read[address(arg1)].field_0)
    require arg2 < uint256(read[address(arg1)].field_0)
    mem[160] = uint256(stor[sha3((2 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(2 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(read[address(arg1)][arg2].field_0), 
           Array(len=stor[(2 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1].length, data=mem[160 len stor[(2 * arg2) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1].length])
}

function sub_cbf86c80(?) payable {
    return uint256(read[address(arg1)].field_0)
}

function kill() payable {
    if tx.origin == stor0:
        selfdestruct(stor0)
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 0 wei
}

function empty() payable {
    if tx.origin == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function send(address arg1, string arg2) payable {
    uint256(read[address(arg1)].field_0)++
    if not uint256(read[address(arg1)].field_0) <= uint256(read[address(arg1)].field_0) + 1:
        mem[0] = sha3(address(arg1), 1)
        idx = 2 * uint256(read[address(arg1)].field_0) + 1
        while sha3(sha3(address(arg1), 1)) + (2 * uint256(read[address(arg1)].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    uint256(read[address(arg1)][uint256(read[address(arg1)].field_0)].field_0) = tx.origin or Mask(96, 160, uint256(read[address(arg1)][uint256(read[address(arg1)].field_0)].field_0))
    uint256(stor[sha3((2 * uint256(read[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'read', 1)) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    emit 0xa0e9a4c9: address(arg1), tx.origin, Array(len=arg2.length, data=arg2[all])
}



}
