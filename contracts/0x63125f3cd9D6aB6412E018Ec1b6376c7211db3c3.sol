contract main {




// =====================  Runtime code  =====================


address coordinatorAddress;
mapping of uint8 sub_a1c5c871;

function coordinator() {
    return coordinatorAddress
}

function sub_a1c5c871(?) {
    require sub_a1c5c871[address(arg1)] <= 2
    return sub_a1c5c871[address(arg1)]
}

function sub_c1731b4f(?) {
    require sub_a1c5c871[arg1] <= 2
    return sub_a1c5c871[arg1]
}

function _fallback() payable {
    revert
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'multiSigAdmin'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    coordinatorAddress = arg1
}

function sub_81a236f6(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ownerStatus(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] <= 2
    require 2 == ext_call.return_data[32]
    sub_a1c5c871[address(arg1)] = 2
}

function registerUser(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args 'ownerPool'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ownerStatus(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] <= 2
    require 2 == ext_call.return_data[32]
    sub_a1c5c871[address(arg1)] = 1
}



}
