contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[82 len 32]
    return code.data[39 len 43]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
  stop
}

function multiply(int256 arg1) payable {
    return (arg1 * stor0)
}



}
