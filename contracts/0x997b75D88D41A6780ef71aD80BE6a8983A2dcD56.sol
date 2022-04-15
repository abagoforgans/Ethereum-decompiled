contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
array of uint256 stor2;
address stor3;

function _fallback() {
    mem[96 len -764] = code.data[1079 len -764]
    mem[64] = -668
    stor3 = msg.sender
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = mem[128]
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[315 len 764]
}



// =====================  Runtime code  =====================


array of uint256 book;
uint256 sub_590229b7;
array of uint256 sub_b30c4e27;

function book() {
    return book[0 len book.length]
}

function sub_590229b7(?) {
    return sub_590229b7
}

function sub_b30c4e27(?) {
    return sub_b30c4e27[0 len sub_b30c4e27.length]
}

function _fallback() payable {
    revert
}



}
