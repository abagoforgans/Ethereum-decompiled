contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 decimals;
array of uint256 name;
array of uint256 symbol;
uint8 running;
address stor6;
address owner; offset 8
uint256 stor6; offset 8
address ownerTemp;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function ownerTemp() payable {
    return ownerTemp
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function running() payable {
    return bool(running)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function acceptOwnership() payable {
    require msg.sender == ownerTemp
    Mask(248, 0, stor6.field_8) = ownerTemp
    ownerTemp = 0
}

function setRunning(bool arg1) payable {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    running = uint8(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    ownerTemp = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require running
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require totalSupply >= arg2
    require balanceOf[address(arg1)] >= arg2
    totalSupply -= arg2
    balanceOf[address(arg1)] -= arg2
}

function createTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
    require totalSupply + arg2 >= totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require owner == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function approve(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require running
    require allowance[address(msg.sender)][address(arg1)] == arg3
    require running
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function collectERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require running
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor6.field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require running
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require running
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require running
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require running
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                      mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                      msg.sender,
                      arg1,
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  0,
                  Mask(224, 0, arg2),
                  msg.sender,
                  arg1,
    return 0, 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require running
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                      mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                      msg.sender,
                      arg1,
    else:
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(address arg1, address arg2, uint256 arg3):
                      0,
                      Mask(224, 0, arg2),
                      msg.sender,
                      arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function transfer(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require running
    require arg1.length > 0
    require arg1.length <= 1000
    require arg1.length
    require arg1.length * arg2 / arg1.length == arg2
    require balanceOf[address(msg.sender)] >= arg1.length * arg2
    mem[0] = msg.sender
    mem[32] = 1
    balanceOf[address(msg.sender)] += -1 * arg1.length * arg2
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _28 = mem[(32 * idx) + 128]
        require balanceOf[address(mem[(32 * idx) + 128])] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * idx) + 128])] += arg2
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            mem[(32 * arg1.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = arg2
            mem[(32 * arg1.length) + 196] = 96
            mem[(32 * arg1.length) + 228] = arg1.length
            s = 0
            while s < arg1.length:
                mem[(32 * arg1.length) + s + 260] = mem[s + 128]
                s = s + 32
                continue 
            if not arg1.length % 32:
                require ext_code.size(address(_28))
                call address(_28).tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args mem[(32 * arg1.length) + 132 len arg1.length + 128]
            else:
                mem[floor32(arg1.length) + (32 * arg1.length) + 260] = mem[floor32(arg1.length) + (32 * arg1.length) + -(arg1.length % 32) + 292 len arg1.length % 32]
                require ext_code.size(address(_28))
                call address(_28).tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args msg.sender, arg2, Array(len=arg1.length, data=mem[(32 * arg1.length) + 260 len floor32(arg1.length) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, msg.sender, address(_28));
        idx = idx + 1
        s = _28
        continue 
    return 1
}

function transfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    require running
    require arg1.length > 0
    require arg1.length <= 1000
    require arg1.length == arg2.length
    idx = 0
    s = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require balanceOf[address(msg.sender)] >= s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    mem[0] = msg.sender
    mem[32] = 1
    balanceOf[address(msg.sender)] += -1 * s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    idx = 0
    s = _38 * arg1.length
    s = _36 * arg1.length
    while idx < arg1.length:
        require idx < arg1.length
        _64 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _66 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        if ext_code.size(mem[(32 * idx) + 128]) <= 0:
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_64));
        else:
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = msg.sender
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _66
            mem[(32 * arg1.length) + (32 * arg2.length) + 228] = 96
            mem[(32 * arg1.length) + (32 * arg2.length) + 260] = arg1.length
            s = 0
            while s < arg1.length:
                mem[(32 * arg1.length) + (32 * arg2.length) + s + 292] = mem[s + 128]
                s = s + 32
                continue 
            if not arg1.length % 32:
                require ext_code.size(address(_64))
                call address(_64).tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args msg.sender, _66, 96, mem[(32 * arg1.length) + (32 * arg2.length) + 260 len arg1.length + 32]
            else:
                mem[floor32(arg1.length) + (32 * arg1.length) + (32 * arg2.length) + 292] = mem[floor32(arg1.length) + (32 * arg1.length) + (32 * arg2.length) + -(arg1.length % 32) + 324 len arg1.length % 32]
                require ext_code.size(address(_64))
                call address(_64).tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args msg.sender, _66, Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg1.length) + 32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _66
            emit Transfer(_66, msg.sender, address(_64));
        idx = idx + 1
        s = _64
        s = _66
        continue 
    return 1
}



}
