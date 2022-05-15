contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimContract(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function send(address[] arg1, uint256[] arg2) {
    require owner == msg.sender
    require arg2.length == arg1.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = cd[((32 * idx) + arg2 + 36)]
        s = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 1
}



}
