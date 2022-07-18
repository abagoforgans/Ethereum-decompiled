contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function sub_ce7be2d6(?) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa4a78035: msg.sender, address(arg1), owner, arg2
}

function _fallback() payable {
    if not msg.value:
        call owner with:
             gas 2300 wei
    else:
        require 20 * msg.value / msg.value == 20
        call owner with:
           value 20 * msg.value wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eth_deposit(msg.sender, msg.value);
}



}
