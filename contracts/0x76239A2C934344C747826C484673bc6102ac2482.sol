contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint16 stor13;
uint16 stor13; offset 16
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getVolume() {
    return stor9, stor8, stor7
}

function getPrice() {
    return stor11, stor10, stor12
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_fc47bb61(?) {
    require msg.sender == stor6
    if stor11 < stor10:
        require 100 < balanceOf[stor6]
        require balanceOf[stor6]
        stor11 = eth.balance(this.address) / balanceOf[stor6]
        stor10 = eth.balance(this.address) / balanceOf[stor6]
        stor12 = 2 * eth.balance(this.address) / balanceOf[stor6]
}

function balanceOfToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(stor0[address(arg1)]) != 1:
        return ext_call.return_data[0]
    require ext_call.return_data[0] >= stor1[address(arg1)][address(arg2)]
    return stor1[address(arg1)][address(arg2)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + arg3 + balanceOf[address(arg2)]
    emit 0xfeddf252: arg3, arg1, arg2
    emit Approval(allowance[address(arg1)][msg.sender], arg1, msg.sender);
    return 1
}

function sub_ffcffb3c(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    if 1 == bool(stor0[address(arg1)]):
        require stor1[address(arg1)][msg.sender] >= arg3
        stor1[address(arg1)][msg.sender] -= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6b5d2413: arg3, arg1, arg2
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function buy() payable {
    require not ext_code.size(msg.sender)
    require stor11
    s = stor7 - stor9
    t = 0
    u = msg.value / stor11
    v = msg.value
    while u >= s:
        stor8 = stor7
        stor7 += Mask(236, 0, uint16(stor13.field_16) * stor7) >> 20
        totalSupply = stor7 + (Mask(236, 0, uint16(stor13.field_16) * stor7) >> 20) + totalSupply
        stor9 = 0
        stor11 += Mask(236, 0, uint16(stor13.field_16) * stor11) >> 20
        if stor11 > stor12:
            stor12 = 2 * stor12
            mem[32] = 14
            balanceOf[stor6] += totalSupply / 100
            totalSupply += totalSupply / 100
            mem[96] = totalSupply / 100
            mem[0] = stor6
            emit 0xfeddf252: (totalSupply / 100), this.address, stor6
        require stor11
        s = stor7
        t = s + t
        u = v - (s * stor11) / stor11
        v = v - (s * stor11)
        continue 
    if not u:
        balanceOf[msg.sender] += t
        emit Buy(t, msg.sender);
        emit 0xfeddf252: t, this.address, msg.sender
    else:
        stor9 += u
        balanceOf[msg.sender] = u + t + balanceOf[msg.sender]
        emit Buy((u + t), msg.sender);
        emit 0xfeddf252: (u + t), this.address, msg.sender
}

function _fallback() payable {
    require not ext_code.size(msg.sender)
    require stor11
    s = stor7 - stor9
    t = 0
    u = msg.value / stor11
    v = msg.value
    while u >= s:
        stor8 = stor7
        stor7 += Mask(236, 0, uint16(stor13.field_16) * stor7) >> 20
        totalSupply = stor7 + (Mask(236, 0, uint16(stor13.field_16) * stor7) >> 20) + totalSupply
        stor9 = 0
        stor11 += Mask(236, 0, uint16(stor13.field_16) * stor11) >> 20
        if stor11 > stor12:
            stor12 = 2 * stor12
            mem[32] = 14
            balanceOf[stor6] += totalSupply / 100
            totalSupply += totalSupply / 100
            mem[96] = totalSupply / 100
            mem[0] = stor6
            emit 0xfeddf252: (totalSupply / 100), this.address, stor6
        require stor11
        s = stor7
        t = s + t
        u = v - (s * stor11) / stor11
        v = v - (s * stor11)
        continue 
    if not u:
        balanceOf[msg.sender] += t
        emit Buy(t, msg.sender);
        emit 0xfeddf252: t, this.address, msg.sender
    else:
        stor9 += u
        balanceOf[msg.sender] = u + t + balanceOf[msg.sender]
        emit Buy((u + t), msg.sender);
        emit 0xfeddf252: (u + t), this.address, msg.sender
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= balanceOf[msg.sender]
    idx = arg1
    s = 0
    while idx >= stor9:
        totalSupply -= stor7
        stor7 = stor8
        stor8 -= Mask(236, 0, uint16(stor13.field_0) * stor8) >> 20
        stor9 = stor8 - (Mask(236, 0, uint16(stor13.field_0) * stor8) >> 20)
        stor11 -= Mask(236, 0, uint16(stor13.field_0) * stor11) >> 20
        if stor11 > stor12:
            stor12 = 2 * stor12
            mem[32] = 14
            balanceOf[stor6] += totalSupply / 100
            totalSupply += totalSupply / 100
            mem[96] = totalSupply / 100
            mem[0] = stor6
            emit 0xfeddf252: (totalSupply / 100), this.address, stor6
        idx = idx - stor9
        s = (stor9 * stor11) + s
        continue 
    if not idx:
        balanceOf[msg.sender] -= arg1
        call msg.sender with:
           value s wei
             gas 2300 * is_zero(value) wei
    else:
        stor9 -= idx
        balanceOf[msg.sender] -= arg1
        call msg.sender with:
           value s + (idx * stor11) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sell(arg1, msg.sender);
    emit 0xfeddf252: arg1, msg.sender, this.address
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    stor0[msg.sender] = 1
    stor1[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x52ccd934: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256, msg.sender, arg1
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        emit 0x52ccd934: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32], msg.sender, arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address == arg1:
        require arg2 <= balanceOf[msg.sender]
        idx = arg2
        s = 0
        while idx >= stor9:
            totalSupply -= stor7
            stor7 = stor8
            stor8 -= Mask(236, 0, uint16(stor13.field_0) * stor8) >> 20
            stor9 = stor8 - (Mask(236, 0, uint16(stor13.field_0) * stor8) >> 20)
            stor11 -= Mask(236, 0, uint16(stor13.field_0) * stor11) >> 20
            if stor11 > stor12:
                stor12 = 2 * stor12
                mem[32] = 14
                balanceOf[stor6] += totalSupply / 100
                totalSupply += totalSupply / 100
                mem[96] = totalSupply / 100
                mem[0] = stor6
                emit 0xfeddf252: (totalSupply / 100), this.address, stor6
            idx = idx - stor9
            s = (stor9 * stor11) + s
            continue 
        if not idx:
            balanceOf[msg.sender] -= arg2
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
        else:
            stor9 -= idx
            balanceOf[msg.sender] -= arg2
            call msg.sender with:
               value s + (idx * stor11) wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Sell(arg2, msg.sender);
        emit 0xfeddf252: arg2, msg.sender, this.address
    else:
        if ext_code.size(arg1):
            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
        emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not ext_code.size(arg1):
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
        balanceOf[msg.sender] -= arg2
        balanceOf[address(arg1)] += arg2
        require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
        mem[ceil32(arg3.length) + 128] = arg2
        emit 0xfeddf252: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], msg.sender, arg1
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = 64
        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                          msg.sender,
                          arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                          msg.sender,
                          arg1,
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 228] = arg3.length
    mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
    emit 0xfeddf252: 0, Mask(224, 0, arg2), msg.sender, arg1
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                      msg.sender,
                      arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                      mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                      msg.sender,
                      arg1,
    return 0, 1
}



}
