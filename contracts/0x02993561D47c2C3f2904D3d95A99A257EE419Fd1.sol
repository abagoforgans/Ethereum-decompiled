contract main {




// =====================  Runtime code  =====================


const MAX_UINT256 = -1


mapping of uint256 balances;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] <= -arg2 - 1
    balances[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] <= -arg2 - 1
    balances[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        _11 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + 96] = 256^(-(mem[96] % 32) + 32) - 1 and mem[floor32(mem[96]) + 96] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _11]));
    else:
        mem[96] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len floor32(0, Mask(224, 32, msg.sender) >> 32)] = mem[128 len floor32(0, Mask(224, 32, msg.sender) >> 32)]
        mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + 96] = 256^(-(Mask(5, 32, msg.sender) >> 32) + 32) - 1 and mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + 96] or mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + 128] and !(256^(-(Mask(5, 32, msg.sender) >> 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(0, msg.sender, arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require balances[address(msg.sender)] >= arg2
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] <= -arg2 - 1
    balances[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 196] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 260] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 292] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 324 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg3.length + 132
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 324] = !(256^(-(arg4.length % 32) + 32) - 1) and call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[ceil32(arg3.length) + arg4.length + 160 len -(arg4.length % 32) + 32] or 256^(-(arg4.length % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 324]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 324 len arg4.length % 32])) >> 224
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(arg3.length + 163)] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 324 len arg4.length % 32])) >> 224, msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 324 len floor32(arg3.length + 163) + -ceil32(arg3.length) - 132]
            if not arg3.length + 132 % 32:
                call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len arg3.length + 128]
            else:
                mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length + 132 % 32) + 356 len arg3.length + 132 % 32]
                call arg1.mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 328 len floor32(arg3.length + 132) + 28]
            require ext_call.success
            if arg3.length < 32:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = 256^(-arg3.length + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] or mem[128] and !(256^(-arg3.length + 32) - 1)
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = mem[128]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg3.length - 32)] = mem[160 len floor32(arg3.length - 32)]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length - 32) + 356] = 256^(-arg3.length + floor32(arg3.length - 32) + 64) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length - 32) + 356] or mem[floor32(arg3.length - 32) + 160] and !(256^(-arg3.length + floor32(arg3.length - 32) + 64) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len arg3.length]));
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 324] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 356 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = floor32(arg3.length) + 164
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 356] = !(256^(-(arg4.length % 32) + 32) - 1) and call.data[arg4 + floor32(arg4.length) + 36 len arg4.length % 32], mem[ceil32(arg3.length) + arg4.length + 160 len -(arg4.length % 32) + 32] or 256^(-(arg4.length % 32) + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 356]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 356 len arg4.length % 32])) >> 224
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len floor32(floor32(arg3.length) + 195)] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 356 len arg4.length % 32])) >> 224, msg.sender, arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 324 len floor32(floor32(arg3.length) + 195) + -ceil32(arg3.length) - 132]
            if not floor32(arg3.length) + 164 % 32:
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len (2 * floor32(arg3.length)) + 160]
            else:
                mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(floor32(arg3.length) + 164 % 32) + 388 len floor32(arg3.length) + 164 % 32]
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 360 len floor32(floor32(arg3.length) + 164) + 28]
            require ext_call.success
            if arg3.length < 32:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = 256^(-arg3.length + 32) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] or mem[128] and !(256^(-arg3.length + 32) - 1)
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356] = mem[128]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 388 len floor32(arg3.length - 32)] = mem[160 len floor32(arg3.length - 32)]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length - 32) + 388] = 256^(-arg3.length + floor32(arg3.length - 32) + 64) - 1 and mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length - 32) + 388] or mem[floor32(arg3.length - 32) + 160] and !(256^(-arg3.length + floor32(arg3.length - 32) + 64) - 1)
            emit Transfer(arg2, msg.sender, arg1, sha3(mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 356 len arg3.length]));
    return 1
}



}
