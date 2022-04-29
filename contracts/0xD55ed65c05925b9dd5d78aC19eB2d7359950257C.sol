contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor3 = 420984 * 24 * 3600
    stor4 = 421512 * 24 * 3600
    stor5 = 11646235181805
    stor6 = 1410 * 10^6
    stor7 = 10^6
    stor8 = 0
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    return code.data[197 len 3072]
}



// =====================  Runtime code  =====================


address authorityAddress;
address owner;
address implementationAddress;
uint256 sub_51a6b5ab;
uint256 sub_08b01349;
uint256 sub_5748966c;
uint256 sub_0b58c8e8;
uint256 sub_40097b23;
uint256 sub_f9afbc2b;

function sub_08b01349(?) {
    return sub_08b01349
}

function sub_0b58c8e8(?) {
    return sub_0b58c8e8
}

function sub_40097b23(?) {
    return sub_40097b23
}

function sub_51a6b5ab(?) {
    return sub_51a6b5ab
}

function sub_5748966c(?) {
    return sub_5748966c
}

function implementation() {
    return implementationAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function sub_f9afbc2b(?) {
    return sub_f9afbc2b
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
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
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
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
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    implementationAddress = arg1
    emit SetImplementation(msg.sender, arg1);
    return 1
}

function transferFunds(address arg1, uint256 arg2) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function _fallback() payable {
    require sub_0b58c8e8
    require msg.value / sub_0b58c8e8 >= sub_40097b23
    require block.timestamp >= sub_51a6b5ab
    require block.timestamp < sub_08b01349
    require (msg.value / sub_0b58c8e8) + sub_f9afbc2b >= msg.value / sub_0b58c8e8
    require (msg.value / sub_0b58c8e8) + sub_f9afbc2b <= sub_5748966c
    require sub_f9afbc2b + (msg.value / sub_0b58c8e8) >= sub_f9afbc2b
    sub_f9afbc2b += msg.value / sub_0b58c8e8
    require ext_code.size(implementationAddress)
    call implementationAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / sub_0b58c8e8
    require ext_call.success
    emit 0x1a19c7eb: msg.value, msg.value / sub_0b58c8e8, msg.sender
}



}
