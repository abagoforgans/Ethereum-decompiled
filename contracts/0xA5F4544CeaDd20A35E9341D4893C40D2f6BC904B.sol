contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
uint256 stor3;

function owner() {
    return owner
}

function sub_c48d3c3d(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_2fc872cd(?) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function sub_6fab83b5(?) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function sub_dbbad456(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor1[msg.sender]) == 1
    require 1 < arg2.length
    require 0 < arg2.length
    emit 0x4cadee6f: arg1, mem[140 len 20], mem[172 len 20]
    return 1
}

function drop(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor1[msg.sender]) == 1
    if not arg2.length:
        return 0
    if arg2.length >= 256:
        return 0
    if not arg3:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length
    if arg3 >= -1 / arg2.length:
        return 0
    if ext_call.return_data[0] < arg2.length * arg3:
        return 0
    if ext_call.return_data[0] < arg2.length * arg3:
        return 0
    s = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _35 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = msg.sender
        mem[(32 * arg2.length) + 164] = address(_35)
        mem[(32 * arg2.length) + 196] = arg3
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_35), arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            s = _35
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        return bool(ext_call.return_data[0])
    return bool(_41 * arg2.length)
}

function sub_b5960619(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor1[msg.sender]) == 1
    if not arg2.length:
        return 0
    if arg2.length >= 256:
        return 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 132] = msg.sender
    mem[(32 * arg2.length) + 164] = this.address
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= stor2
    require ext_call.return_data[0] >= stor2
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _33 = mem[(32 * idx) + 128]
        s = mem[(32 * idx) + 152 len 8]
        while s > stor2:
            s = s / 4
            continue 
        if s <= stor3:
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_33)
            mem[(32 * arg2.length) + 196] = stor3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_33), stor3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                s = stor3
                s = _33
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
        else:
            require stor3
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_33)
            mem[(32 * arg2.length) + 196] = s / stor3 * stor3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_33), s / stor3 * stor3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                s = s / stor3 * stor3
                s = _33
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
        ('iszero', ('ext_call.return_data', 0, 32))
        return bool(ext_call.return_data[0])
    return bool(s)
}



}
