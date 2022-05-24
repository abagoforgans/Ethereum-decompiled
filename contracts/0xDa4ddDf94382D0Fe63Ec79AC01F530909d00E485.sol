contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
uint8 stor6;
address owner; offset 8
uint256 stor6; offset 8
address newOwner;
array of struct name;
array of struct symbol;
uint256 decimals;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    uint8(stor6.field_0) = 1
}

function start() {
    require msg.sender == owner
    uint8(stor6.field_0) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        emit OwnershipTransferred(owner, newOwner);
        Mask(248, 0, stor6.field_8) = newOwner
}

function setTokenInformation(string arg1, string arg2, uint256 arg3) {
    require msg.sender == owner
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    totalSupply = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 256 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + 288 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedTokenInformation(Array(len=name.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[msg.sender] = balanceOf[address(msg.sender)] - arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[msg.sender] = balanceOf[address(msg.sender)] - arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        _11 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + 96] = 256^(-(mem[96] % 32) + 32) - 1 and mem[floor32(mem[96]) + 96] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _11]));
    else:
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
        mem[floor32(ext_call.return_data[0]) + 96] = 256^(-(ext_call.return_data[0] % 32) + 32) - 1 and mem[floor32(ext_call.return_data[0]) + 96] or mem[floor32(ext_call.return_data[0]) + 128] and !(256^(-(ext_call.return_data[0] % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len ext_call.return_data[0]]));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[msg.sender] = balanceOf[address(msg.sender)] - arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 160 len arg3.length % 32]));
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + -(arg4.length % 32) + floor32(arg4.length) + 192 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(2 * floor32(arg4.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len arg4.length % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + floor32(arg4.length) + 224 len arg4.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg4.length) + 192 len arg4.length % 32]))
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = msg.sender
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228] = arg2
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
        else:
            mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 260] = mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 292 len arg3.length % 32]
            call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len 4] with:
                 gas gas_remaining wei
                args msg.sender, arg2, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[arg4.length + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + 260 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
        require ext_call.success
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] = 256^(-(arg3.length % 32) + 32) - 1 and mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg3.length) + 192 len arg3.length % 32]));
    return 1
}



}
