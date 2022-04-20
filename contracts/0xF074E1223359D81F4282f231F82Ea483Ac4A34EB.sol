contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor3;

function _fallback() {
    mem[96 len -863] = code.data[1277 len -863]
    mem[64] = -767
    stor0 = msg.sender
    stor3[stor1][] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[414 len 863]
}



// =====================  Runtime code  =====================


address stor1;
mapping of struct stor3;

function _fallback() payable {
    revert
}

function sub_d0ddd086(?) {
    stor3[stor1].field_1024 = arg1
    mem[224] = stor3[stor1].field_0
    idx = 224
    s = 0
    while stor3[stor1].length + 224 > idx + 32:
        mem[idx + 32] = stor3[stor1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xec33d931: Array(len=stor3[stor1].length, data=mem[224 len stor3[stor1].length + (floor32(stor3[stor1].length - 1) + -stor3[stor1].length + 32 % 32)]), stor3[stor1].field_1024, address(arg1)
}



}
