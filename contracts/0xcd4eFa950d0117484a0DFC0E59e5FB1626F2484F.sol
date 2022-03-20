contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = block.number - 1
    stor1 = block.hash(block.number - 1)
    return code.data[32 len 39]
}



// =====================  Runtime code  =====================


uint256 random;

function Random() payable {
    return random
}

function _fallback() payable {
  stop
}



}
