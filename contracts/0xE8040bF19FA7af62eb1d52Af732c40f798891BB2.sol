contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;

function isTheContract() {
    return bool(stor0)
}

function owner() {
    return owner
}

function destroyMe() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sendTokens(address[] arg1, uint256[] arg2, address arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _16
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_14), _16
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
