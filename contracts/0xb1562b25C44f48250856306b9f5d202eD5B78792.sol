contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function whitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function addAddressToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xdf7f453b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_A_SUPER_ADMIN'
    stor1[address(arg1)] = 1
}

function removeAddressFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0xdf7f453b with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_A_SUPER_ADMIN'
    stor1[address(arg1)] = 0
}



}
