contract main {




// =====================  Runtime code  =====================


address owner;
address adminOwner;
uint256 grandTotalClaimed;
address tokenAddress;
uint256 stor4;
mapping of uint8 stor5;
array of address addresses;

function adminOwner() {
    return adminOwner
}

function owner() {
    return owner
}

function grandTotalClaimed() {
    return grandTotalClaimed
}

function recipients(address arg1) {
    return bool(stor5[arg1])
}

function addresses(uint256 arg1) {
    require arg1 < addresses.length
    return addresses[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferAdminOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(adminOwner, arg1);
    adminOwner = arg1
}

function returnTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function refundTokens(address arg1, address arg2) {
    require msg.sender == owner
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function transferDirect(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require arg2 < stor4
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require grandTotalClaimed + arg2 >= grandTotalClaimed
    grandTotalClaimed += arg2
}

function transferManyDirect(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if adminOwner != msg.sender:
        require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= arg2
        require arg2 < stor4
        require not stor5[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require grandTotalClaimed + arg2 >= grandTotalClaimed
        grandTotalClaimed += arg2
        idx = idx + 1
        continue 
}



}
