contract main {




// =====================  Runtime code  =====================


uint64 stor0;
address sub_f2d71785Address;
uint64 stor1;
address _toAddress;
address sub_2e6dac38Address;

function sub_2e6dac38(?) payable {
    return sub_2e6dac38Address
}

function _to() payable {
    return address(_toAddress)
}

function sub_f2d71785(?) payable {
    return address(sub_f2d71785Address)
}

function _fallback() payable {
    revert
}

function sub_d486478f(?) payable {
    require calldata.size - 4 >= 32
    address(sub_f2d71785Address) = arg1
}

function setToAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    address(_toAddress) = arg1
}

function sub_bb945274(?) payable {
    if stor0 % 1099511627776 <= stor1 % 1099511627776:
        return (stor1 % 1099511627776 - stor0 % 1099511627776 / 100000)
    return (stor0 % 1099511627776 - stor1 % 1099511627776 / 100000)
}

function sub_bc47d9ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.getKitty(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    return ext_call.return_data[192], ext_call.return_data[224]
}

function sub_946d8ebf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.getKitty(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.0x6352211e with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.0x6352211e with:
            gas gas_remaining wei
           args ext_call.return_data[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function sub_8c40dd7e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.getKitty(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.0x6352211e with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2e6dac38Address)
    staticcall sub_2e6dac38Address.0x6352211e with:
            gas gas_remaining wei
           args ext_call.return_data[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] % 1099511627776 <= ext_call.return_data[27 len 5]:
        return (ext_call.return_data[27 len 5] - (ext_call.return_data[0] % 1099511627776) / 100000)
    return ((ext_call.return_data[0] % 1099511627776) - ext_call.return_data[27 len 5] / 100000)
}



}
