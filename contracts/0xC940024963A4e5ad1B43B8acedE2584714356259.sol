contract main {




// =====================  Runtime code  =====================


address registryAddress;
address adminAddress;

function registry() {
    return registryAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function updateRegistry(address arg1) {
    require msg.sender == adminAddress
    registryAddress = arg1
}

function sub_4c32a0d9(?) {
    require ext_code.size(registryAddress)
    call registryAddress.0x54f6127f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return bool(ext_call.return_data[0]), ext_call.return_data[32]
}



}
