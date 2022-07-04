contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_7182549a(?) {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function play(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0x196301b5673714fa91640fe2df34b5c05be7ab19)
    staticcall 0x196301b5673714fa91640fe2df34b5c05be7ab19.0x6a5d580a with:
            gas gas_remaining wei
           args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] >= arg2:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call arg3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
