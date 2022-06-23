contract main {




// =====================  Runtime code  =====================


address sub_f3ad65f4Address;

function sub_f3ad65f4(?) {
    return sub_f3ad65f4Address
}

function _fallback() payable {
  stop
}

function sub_ee8573e6(?) {
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'uniswap_dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), 0x8000000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_98689001(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'uniswap_dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], block.timestamp + (24 * 3600), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_84b12ef8(?) {
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'admin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'Permission Denied'
    require ext_code.size(sub_f3ad65f4Address)
    staticcall sub_f3ad65f4Address.getAddr(string arg1) with:
            gas gas_remaining wei
           args 'dai'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
