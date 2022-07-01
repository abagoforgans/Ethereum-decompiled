contract main {




// =====================  Runtime code  =====================


uint8 decimals; offset 160
address owner;

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function _fallback() payable {
    emit Fallback(msg.value, msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setDecimals(uint8 arg1) {
    require msg.sender == owner
    decimals = arg1
    emit ChangeDecimals(decimals);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function execAirDrop(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require calldata.size >= 68
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = owner
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = this.address
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args owner, this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < arg2.length
        _34 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _36 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_34)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _36
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_34), _36
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg3.length
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= ext_call.return_data[0]
        idx = idx + 1
        continue 
    emit AirdropTransferCompleted(arg2.length);
    return arg2.length
}



}
