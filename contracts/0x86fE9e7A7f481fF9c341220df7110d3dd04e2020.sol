contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor7;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketPlaceAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor7 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor7
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    if ext_code.size(arg2) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg2)
        call arg2.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, 0, arg3, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg3
    mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
    emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    if ext_code.size(arg1) > 0:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
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
    else:
        mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + 228] = arg3.length
        mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require msg.sender == stor7
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    if ext_code.size(arg2) <= 0:
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 160] = 64
        mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
                          arg4.length,
                          Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256,
                          arg1,
                          arg2,
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                          mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
                          arg4.length,
                          Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                          mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32],
                          arg1,
                          arg2,
    else:
        mem[ceil32(arg4.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 228] = arg4.length
        mem[ceil32(arg4.length) + 260 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        require ext_code.size(arg2)
        call arg2 with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + 128] = arg3
        mem[ceil32(arg4.length) + 224 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          0,
                          Mask(224, 0, arg3),
                          64,
                          arg4.length,
                          Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256,
                          arg1,
                          arg2,
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 224] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 256 len arg4.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          0,
                          Mask(224, 0, arg3),
                          64,
                          arg4.length,
                          Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                          mem[(2 * ceil32(arg4.length)) + 224 len floor32(arg4.length) + -ceil32(arg4.length) + 32],
                          arg1,
                          arg2,
}



}
