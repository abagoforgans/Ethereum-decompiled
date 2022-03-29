contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'brain' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'falsch'
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'falsch' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224 len -822] = code.data[1507 len -822]
    stor1[] = Array(len=mem[mem[224] + 224], data=mem[mem[224] + 256 len mem[mem[224] + 224]])
    return code.data[685 len 822]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of uint256 test;

function test(int256 arg1) {
    return test[0 len test.length]
}

function kill() {
    if address(stor0) != msg.sender:
    selfdestruct(address(stor0))
}

function _fallback() payable {
    revert 
}

function mortal() {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}



}
