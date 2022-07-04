contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[260 len 32]
    return code.data[58 len 202]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
  stop
}

function multiply(int256 arg1) payable {
    emit Multiplied((arg1 * stor0), arg1, msg.sender);
    return (arg1 * stor0)
}



}
