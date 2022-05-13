contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address registryAddress;
address sub_77b727acAddress;
address sub_38874a1aAddress;

function sub_38874a1a(?) {
    return sub_38874a1aAddress
}

function sub_77b727ac(?) {
    return sub_77b727acAddress
}

function registry() {
    return address(registryAddress)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_abcca75e(?) {
    require msg.sender == owner
    sub_77b727acAddress = arg1
}

function sub_c03cced3(?) {
    require msg.sender == owner
    sub_38874a1aAddress = arg1
}

function setRegistry(address arg1) {
    require msg.sender == owner
    address(registryAddress) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_0fa7f840(?) payable {
    require ext_code.size(sub_38874a1aAddress)
    call sub_38874a1aAddress.0x9193ba0b with:
         gas gas_remaining wei
        args sub_77b727acAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(registryAddress))
    staticcall address(registryAddress).0xdb8d55f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x36b8153c with:
       value msg.value wei
         gas gas_remaining wei
        args 0, uint32(stor1), msg.sender, address(ext_call.return_data[0]), arg1, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2d0c4169: address(ext_call.return_data[0]), arg1, msg.sender
    require ext_code.size(address(registryAddress))
    staticcall address(registryAddress).0x8319a87b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x596030d with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
