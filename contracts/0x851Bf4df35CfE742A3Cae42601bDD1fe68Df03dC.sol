contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgrade(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x3659cfe6 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProxyAdmin(address arg1) {
    require ext_code.size(arg1)
    call arg1.admin() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function changeProxyAdmin(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.changeAdmin(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getProxyImplementation(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x5c60da1b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function upgradeAndCall(address arg1, address arg2, bytes arg3) payable {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.upgradeToAndCall(address arg1, bytes arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
