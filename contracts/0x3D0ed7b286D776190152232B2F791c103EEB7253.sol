contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 342]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function transfer(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
