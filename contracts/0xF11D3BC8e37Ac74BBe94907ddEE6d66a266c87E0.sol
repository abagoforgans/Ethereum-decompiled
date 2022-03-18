contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    return code.data[63 len 486]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    require tx.origin == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_bf45554e(?) payable {
    emit 0xc47613ef: Array(len=arg1.length, data=arg1[all]), arg2
}



}
