contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5491e30f(?) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(stor1)
    call stor1.0xcfdfb5ac with:
       value msg.value wei
         gas gas_remaining wei
        args 0, arg1, arg2, arg3 << 248, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) >= msg.value
}



}
