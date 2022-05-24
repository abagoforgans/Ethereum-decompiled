contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function destroy() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function claimOwnership() {
    require msg.sender == stor1
    stor0 = stor1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function transfer(address[] arg1, address arg2, uint256[] arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg1.length) + (32 * arg3.length) + 196] = address(_14)
        mem[(32 * arg1.length) + (32 * arg3.length) + 228] = _16
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_14), _16
        mem[(32 * arg1.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function post(string arg1, address[] arg2, address arg3, uint256[] arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = arg4.length
    mem[ceil32(arg1.length) + (32 * arg2.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 192] = 32
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 224] = arg1.length
    mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit Claim(Array(len=arg1.length, data=arg1[all]));
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _55 = mem[(32 * idx) + ceil32(arg1.length) + 160]
        require idx < arg4.length
        _59 = mem[(32 * idx) + ceil32(arg1.length) + (32 * arg2.length) + 192]
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 196] = msg.sender
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 228] = address(_55)
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 260] = _59
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_55), _59
        mem[ceil32(arg1.length) + (32 * arg2.length) + (32 * arg4.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
