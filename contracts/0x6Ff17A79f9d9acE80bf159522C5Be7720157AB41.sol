contract main {




// =====================  Runtime code  =====================


address sub_f3ad65f4Address;

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
  stop
}

function sub_56905d50(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'uniswap_dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getEthToTokenOutputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e6879bff(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'uniswap_dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args arg1, block.timestamp + (24 * 3600), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
