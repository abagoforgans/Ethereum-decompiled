contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    mem[96 len -6] = code.data[497 len -6]
    mem[64] = 90
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = block.timestamp
    return code.data[491 len 6]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
