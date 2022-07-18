contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getOutputAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor0)
    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
}

function sub_96126204(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), 10^uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18
    require ext_code.size(stor0)
    staticcall stor0.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18
    return (arg3 * arg3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] * 10^uint8(ext_call.return_data[0]) / 10^18 / ext_call.return_data[0] * 10^ext_call.return_data[31 len 1] / 10^18)
}



}
