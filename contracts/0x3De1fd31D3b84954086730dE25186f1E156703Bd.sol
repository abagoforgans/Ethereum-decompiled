contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
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

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'you are not the owner of this token'
    owner = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'don't send tokens to 0x0'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'not enough money in sender's wallet'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'too much money in receiver's wallet'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        _15 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[-(mem[96] % 32) + floor32(mem[96]) + 160 len mem[96] % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _15]));
    else:
        mem[96] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        staticcall arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len floor32(0, Mask(224, 32, msg.sender) >> 32)] = mem[128 len floor32(0, Mask(224, 32, msg.sender) >> 32)]
        mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + -(Mask(5, 32, msg.sender) >> 32) + 128 len Mask(5, 32, msg.sender) >> 32] = mem[-(Mask(5, 32, msg.sender) >> 32) + floor32(0, Mask(224, 32, msg.sender) >> 32) + 160 len Mask(5, 32, msg.sender) >> 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(0, msg.sender, arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]));
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not arg1:
        revert with 0, 'don't send tokens to 0x0'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'not enough money in sender's wallet'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'too much money in receiver's wallet'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        _52 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
        mem[ceil32(arg3.length) + 128] = arg2
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                      mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                      msg.sender,
                      arg1,
                      _52,
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 132] = msg.sender
        mem[ceil32(arg3.length) + 164] = arg2
        mem[ceil32(arg3.length) + 196] = 96
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        staticcall arg1 with:
                gas gas_remaining wei
               args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      msg.sender,
                      arg1,
                      sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]),
}



}
