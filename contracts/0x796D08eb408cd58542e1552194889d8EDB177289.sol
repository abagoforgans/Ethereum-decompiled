contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[272 len 32]
    return code.data[58 len 214]
}



// =====================  Runtime code  =====================


uint256 double;

function get() payable {
    return double
}

function double() payable {
    return (2 * double)
}

function _fallback() payable {
  stop
}

function set(uint256 arg1) payable {
    double = arg1
}



}
