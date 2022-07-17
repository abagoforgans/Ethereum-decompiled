contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit 0xddecd21a: Array(len=12, data='OwnerChanged'), arg1
    return 1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit eth_deposit(msg.sender, msg.value);
}

function sub_ce7be2d6(?) {
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa4a78035: msg.sender, address(arg1), owner, arg2
}



}
