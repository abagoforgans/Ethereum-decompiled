contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    call owner with:
       value 8 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value 2 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    emit eth_deposit(msg.sender, msg.value);
}

function sub_ce7be2d6(?) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, 8 * arg2 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 2 * arg2 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa4a78035: msg.sender, address(arg1), owner, arg2
}



}
