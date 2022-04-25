contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint8 stor7;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Uni 0.1.0' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'ORI' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 6
    mem[256] = 'Rental Coins 1.0 1st private off'
    mem[288] = 'ering'
    stor5.length = 75
    s = 0
    idx = 256
    while 293 > idx:
        stor5[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5.length + 31 / 32 > idx:
        stor5[idx] = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'RC1' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 6
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[740 len 5268]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address implementationAddress; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(implementationAddress)
    call implementationAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.approve(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(implementationAddress)
    call implementationAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(implementationAddress)
    call implementationAddress.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require implementationAddress
            require ext_code.size(implementationAddress)
            call implementationAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require implementationAddress
            require ext_code.size(implementationAddress)
            call implementationAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function setImplementation(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require implementationAddress
            require ext_code.size(implementationAddress)
            call implementationAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    implementationAddress = arg1
    emit SetImplementation(msg.sender, arg1);
    return 1
}



}
