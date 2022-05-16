contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function deposit() payable {
    stor1 = msg.sender
}

function _fallback() payable {
    require msg.sender == msg.sender
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    stor2 = msg.sender
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a2608d86(?) {
    require msg.sender == stor0
    call arg1 with:
       value arg4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg3 with:
       value 10^14 wei
         gas 0 wei
    call arg2 with:
       value 10^14 wei
         gas 0 wei
}



}
