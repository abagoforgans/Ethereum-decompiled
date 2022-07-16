contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 createdAt;

function owner() {
    return owner
}

function createdAt() {
    return createdAt
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transfer(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address[] arg2, uint256[] arg3) {
    require msg.sender == owner
    require arg3.length == arg2.length
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        mem[100] = arg1
        mem[132] = address(cd[((32 * idx) + arg2 + 36)])
        mem[164] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
