contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xa1eec0a9b7c50b8e79a0d9b8760bc5681fb199ec
    return code.data[56 len 77]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function send(uint256 arg1) payable {
    call stor0 with:
       value arg1 wei
         gas 0 wei
}



}
