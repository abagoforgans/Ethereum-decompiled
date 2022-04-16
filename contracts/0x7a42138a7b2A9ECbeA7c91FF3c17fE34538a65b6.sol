contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    if code.data[1659 len 20]:
        stor0 = code.data[1659 len 20]
    return code.data[186 len 1461]
}



// =====================  Runtime code  =====================


address owner;
uint256 numDrops;
uint256 dropAmount;

function dropAmount() {
    return dropAmount
}

function numDrops() {
    return numDrops
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function tranferMinterOwnership(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args 0x3eb01b3391ea15ce752d01cf3d3f09dec596f650, arg2
    require ext_call.success
}

function airDrop(address arg1, address arg2, address[] arg3, uint256 arg4, bool arg5, address arg6) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require owner == msg.sender
    if not arg4:
        if arg4 <= 0:
            if arg5:
                mem[(32 * arg3.length) + 132] = 32
                mem[(32 * arg3.length) + 164] = arg3.length
                mem[(32 * arg3.length) + 196 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                require ext_code.size(arg6)
                call arg6.mint(address[] rg1) with:
                     gas gas_remaining - 710 wei
                    args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                require ext_call.success
        else:
            idx = 0
            while idx < arg3.length:
                require idx < arg3.length
                _104 = mem[(32 * idx) + 128]
                mem[(32 * arg3.length) + 132] = arg2
                mem[(32 * arg3.length) + 164] = address(_104)
                mem[(32 * arg3.length) + 196] = arg4
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(arg2), address(_104), arg4
                mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                require idx < arg3.length
                mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg3.length) + 160] = arg4
                emit TokenDrop(mem[(32 * arg3.length) + 128], arg4);
                idx = idx + 1
                continue 
            if arg5:
                mem[(32 * arg3.length) + 128] = 0xbd075b8400000000000000000000000000000000000000000000000000000000
                mem[(32 * arg3.length) + 132] = 32
                mem[(32 * arg3.length) + 164] = arg3.length
                s = 0
                while arg3.length < 32 * arg3.length:
                    mem[(34 * arg3.length) + 196] = mem[arg3.length + 128]
                    s = arg3.length + 32
                    continue 
                require ext_code.size(arg6)
                call arg6.mint(address[] rg1) with:
                     gas gas_remaining - 710 wei
                    args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                require ext_call.success
    else:
        if 2 * 10^18 == arg4:
            if arg4 <= 0:
                if arg5:
                    mem[(32 * arg3.length) + 132] = 32
                    mem[(32 * arg3.length) + 164] = arg3.length
                    mem[(32 * arg3.length) + 196 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require ext_code.size(arg6)
                    call arg6.mint(address[] rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                    require ext_call.success
            else:
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _108 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = arg2
                    mem[(32 * arg3.length) + 164] = address(_108)
                    mem[(32 * arg3.length) + 196] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(arg2), address(_108), arg4
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    require idx < arg3.length
                    mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg3.length) + 160] = arg4
                    emit TokenDrop(mem[(32 * arg3.length) + 128], arg4);
                    idx = idx + 1
                    continue 
                if arg5:
                    mem[(32 * arg3.length) + 128] = 0xbd075b8400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg3.length) + 132] = 32
                    mem[(32 * arg3.length) + 164] = arg3.length
                    s = 0
                    while arg3.length < 32 * arg3.length:
                        mem[(34 * arg3.length) + 196] = mem[arg3.length + 128]
                        s = arg3.length + 32
                        continue 
                    require ext_code.size(arg6)
                    call arg6.mint(address[] rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                    require ext_call.success
        else:
            require 5 * 10^18 == arg4
            if arg4 <= 0:
                if arg5:
                    mem[(32 * arg3.length) + 132] = 32
                    mem[(32 * arg3.length) + 164] = arg3.length
                    mem[(32 * arg3.length) + 196 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                    require ext_code.size(arg6)
                    call arg6.mint(address[] rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                    require ext_call.success
            else:
                idx = 0
                while idx < arg3.length:
                    require idx < arg3.length
                    _112 = mem[(32 * idx) + 128]
                    mem[(32 * arg3.length) + 132] = arg2
                    mem[(32 * arg3.length) + 164] = address(_112)
                    mem[(32 * arg3.length) + 196] = arg4
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(arg2), address(_112), arg4
                    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
                    require ext_call.success
                    require ext_call.return_data[0]
                    require idx < arg3.length
                    mem[(32 * arg3.length) + 128] = mem[(32 * idx) + 140 len 20]
                    mem[(32 * arg3.length) + 160] = arg4
                    emit TokenDrop(mem[(32 * arg3.length) + 128], arg4);
                    idx = idx + 1
                    continue 
                if arg5:
                    mem[(32 * arg3.length) + 128] = 0xbd075b8400000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg3.length) + 132] = 32
                    mem[(32 * arg3.length) + 164] = arg3.length
                    s = 0
                    while arg3.length < 32 * arg3.length:
                        mem[(34 * arg3.length) + 196] = mem[arg3.length + 128]
                        s = arg3.length + 32
                        continue 
                    require ext_code.size(arg6)
                    call arg6.mint(address[] rg1) with:
                         gas gas_remaining - 710 wei
                        args mem[(32 * arg3.length) + 132 len (96 * arg3.length) + 64]
                    require ext_call.success
    numDrops += arg3.length
    dropAmount += arg4 * arg3.length
}



}
