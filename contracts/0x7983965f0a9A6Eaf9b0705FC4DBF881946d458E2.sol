contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function pay() payable {
    if stor0 != msg.sender:
        revert with 0, 'only for admin'
    emit Pay(msg.value, msg.sender);
}

function withdraw(address arg1, uint256 arg2, uint256 arg3) {
    if stor0 != msg.sender:
        revert with 0, 'only for admin'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg1, arg2, arg3);
}



}
