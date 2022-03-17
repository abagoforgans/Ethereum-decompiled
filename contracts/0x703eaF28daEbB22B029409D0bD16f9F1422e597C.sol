contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 500
    stor1 = 250
    return code.data[27 len 6]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
