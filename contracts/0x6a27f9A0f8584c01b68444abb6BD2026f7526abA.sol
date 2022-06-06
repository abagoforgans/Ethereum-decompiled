contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1, address arg2) {
    require msg.sender == stor1
    require arg2 != arg1
    require stor0 != arg1
    require arg1
    require arg2
    stor0 = arg1
    stor1 = arg2
}

function deposit() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(msg.value, msg.sender, stor0);
}

function transfer(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(msg.value, msg.sender, arg1);
}



}
