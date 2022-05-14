contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;

function isWhitelisted(address arg1) {
    return bool(stor1[address(arg1)])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor1[arg1])
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_15))
        call address(_15).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[0]
        s = _15
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeAddress(address arg1) {
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xf3c7960e: msg.sender, arg1
    return 1
}

function addAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xba23efe5: msg.sender, arg1
    return 1
}



}
