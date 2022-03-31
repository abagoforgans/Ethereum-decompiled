contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3104 len 20]
    return code.data[104 len 2988]
}



// =====================  Runtime code  =====================


address owner;
address implementationAddress;

function owner() {
    return owner
}

function getImplementation() {
    return implementationAddress
}

function _fallback() payable {
    revert
}

function setImplementation(address arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        implementationAddress = arg1
}

function totalSupply() {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function name() {
    require ext_code.size(implementationAddress)
    call implementationAddress.name() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return Mask(64, 192, ext_call.return_data[0])
}

function decimals() {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[31 len 1]
}

function symbol() {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x95d89b41 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return Mask(32, 224, ext_call.return_data[0])
}

function balanceOf(address arg1) {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function mint(uint256 arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    require ext_code.size(implementationAddress)
    call implementationAddress.0xa0712d68 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x23b872dd with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        emit 0x23295f0e: msg.sender, owner
    else:
        require ext_code.size(implementationAddress)
        call implementationAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args owner
        require ext_call.success
        require ext_code.size(implementationAddress)
        call implementationAddress.transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 50 wei
            args owner, address(arg1), ext_call.return_data[0]
        require ext_call.success
        owner = arg1
}



}
