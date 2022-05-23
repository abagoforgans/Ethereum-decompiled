contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1652]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function distribute(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _19 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_17)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _19
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(_17), _19
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
