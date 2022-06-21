contract main {




// =====================  Runtime code  =====================


address owner;
address sub_b3feeac3Address;

function owner() {
    return owner
}

function sub_b3feeac3(?) {
    return sub_b3feeac3Address
}

function _fallback() payable {
    revert
}

function sub_cfd917c1(?) {
    require msg.sender == owner
    sub_b3feeac3Address = arg1
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

function distributeTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    if arg1.length > 200:
        revert with 0, 'Too large array'
    if arg1.length != arg2.length:
        revert with 0, 'the too arrays are not equal'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _27 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_27)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _29
        require ext_code.size(sub_b3feeac3Address)
        call sub_b3feeac3Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_27), _29
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'transaction failed'
        idx = idx + 1
        continue 
    return 1
}



}
