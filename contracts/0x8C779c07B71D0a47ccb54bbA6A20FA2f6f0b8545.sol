contract main {




// =====================  Runtime code  =====================


address stor0;

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_771fa920(?) {
    require msg.sender == stor0
    call arg3 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg1 with:
       value 1 wei
         gas 0 wei
    call arg2 with:
       value 1 wei
         gas 0 wei
}



}
