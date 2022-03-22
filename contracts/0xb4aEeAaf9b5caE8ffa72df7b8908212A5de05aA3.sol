contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[24 len 67]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
  stop
}

function next() payable {
    stor0++
    if bool(stor0 + 1) != 0:
        return 0
    return 1
}



}
