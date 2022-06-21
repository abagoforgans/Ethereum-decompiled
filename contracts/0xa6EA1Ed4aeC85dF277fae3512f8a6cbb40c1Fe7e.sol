contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_1b0c65dd;

function sub_1b0c65dd(?) payable {
    require calldata.size - 4 >= 32
    return sub_1b0c65dd[arg1]
}

function _fallback() payable {
    revert
}

function sub_960f2685(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_1b0c65dd[address(arg1)] = arg2
    emit 0xdc33ad31: arg2, arg1
}



}
