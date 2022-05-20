contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address addressOfTokenUsedAsReward;

function addressOfTokenUsedAsReward() {
    return addressOfTokenUsedAsReward
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setTokenReward(address arg1) {
    require owner == msg.sender
    stor1 = arg1
    addressOfTokenUsedAsReward = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function distributeFixed(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_9)
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_9), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function distributeVariable(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _14 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_12)
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _14
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_12), _14
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
