contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address owner;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_f74ad910(?) {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drop(address arg1, address[] arg2, uint256 arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2.length * arg3
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _11 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = address(_11)
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_11), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_7d488464(?) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = this.address
    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = arg4
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _16 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = _16
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(_14), _16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_5bb2d425(?) payable {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 132] = msg.sender
    mem[(32 * arg3.length) + 164] = this.address
    mem[(32 * arg3.length) + 196] = arg4
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args address(_23)
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < arg3.length
            _29 = mem[(32 * idx) + 128]
            require idx < arg3.length
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining wei
                args mem[(32 * idx) + 140 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg3.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3.length) + 132] = address(_29)
            mem[(32 * arg3.length) + 164] = ext_call.return_data[0]
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_29), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
