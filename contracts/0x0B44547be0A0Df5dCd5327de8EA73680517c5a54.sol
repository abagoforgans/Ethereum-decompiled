contract main {




// =====================  Runtime code  =====================


#
#  - operatorSend(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - send(address arg1, uint256 arg2, bytes arg3)
#
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of struct stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
uint8 stor9;
mapping of uint256 allowance;
address owner;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function granularity() payable {
    return granularity
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function decimals() payable {
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    return 18
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isOperatorFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return True
    if stor8[address(arg1)][address(arg2)]:
        return bool(stor8[address(arg1)][address(arg2)])
    if not stor6[address(arg1)]:
        return bool(stor6[address(arg1)])
    return not bool(stor7[address(arg1)][address(arg2)])
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7243616e6e6f74207265766f6b6520796f757273656c6620617320616e206f70657261746f,
                    mem[201 len 27]
    if not stor6[address(arg1)]:
        stor8[address(arg1)][address(msg.sender)] = 0
    else:
        stor7[address(arg1)][address(msg.sender)] = 1
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe43616e6e6f7420617574686f72697a6520796f757273656c6620617320616e206f70657261746f,
                    mem[204 len 24]
    if not stor6[address(arg1)]:
        stor8[address(arg1)][address(msg.sender)] = 1
    else:
        stor7[address(arg1)][address(msg.sender)] = 0
    emit AuthorizedOperator(arg1, msg.sender);
}

function defaultOperators() payable {
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require granularity
    if arg2 % granularity:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974,
                    mem[203 len 25]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[256 len 0] = None
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), sha3(mem[256 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if not arg1:
            revert with 0, 
                        32,
                        53,
                        0x7943616e6e6f742073656e6420746f20636f6e747261637420776974686f757420455243373737546f6b656e73526563697069656e,
                        mem[398 len 11]
        if ext_code.size(arg1):
            revert with 0, 
                        32,
                        53,
                        0x7943616e6e6f742073656e6420746f20636f6e747261637420776974686f757420455243373737546f6b656e73526563697069656e,
                        mem[398 len 11]
        emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    arg2,
                    96,
                    160,
                    0,
                    mem[405],
                    0,
                    mem[469],
                    msg.sender,
                    arg1,
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, 0, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Minted(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                    arg2,
                    96,
                    160,
                    0,
                    uint32(arg2),
                    0,
                    0,
                    0,
                    0,
                    msg.sender,
                    arg1,
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    require granularity
    if arg2 % granularity:
        revert with 0, 32, 39, 0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974, mem[267 len 25]
    mem[256 len 0] = None
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args msg.sender, sha3(mem[256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if not arg1:
            revert with 0, 'Cannot send to 0x0'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'Not enough funds'
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        mem[370 len 0] = None
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), sha3(mem[370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg1:
            revert with 0, 'Cannot send to 0x0'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0, 'Not enough funds'
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg1), sha3(0, Mask(56, 200, arg2) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, msg.sender, address(arg1), arg2, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg2,
              96,
              128,
              0,
              0,
              msg.sender,
              msg.sender,
              arg1,
    if stor9:
        emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor9:
        revert with 0, 'ERC20 is disabled'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'Not enough funds allowed'
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require granularity
    if arg3 % granularity:
        revert with 0, 32, 39, 0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974, mem[267 len 25]
    mem[256 len 0] = None
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), sha3(mem[256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if not arg2:
            revert with 0, 'Cannot send to 0x0'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'Not enough funds'
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        mem[370 len 0] = None
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), sha3(mem[370 len 11], Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            revert with 0, 'Cannot send to 0x0'
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 'Not enough funds'
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
        staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
                gas gas_remaining wei
               args address(arg2), sha3(0, Mask(56, 200, arg3) >> 200, Mask(80, 88, 'ERC777TokensRecipient') >> 88)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).tokensReceived(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), address(arg2), arg3, 192, 224, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Sent(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6):
              arg3,
              96,
              128,
              0,
              0,
              msg.sender,
              arg1,
              arg2,
    if stor9:
        emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 18
    mem[ceil32(arg2.length) + 192] = 'ERC777TokensSender'
    mem[ceil32(arg2.length) + 256 len 0] = None
    mem[ceil32(arg2.length) + 270 len 18] = Mask(144, 0, 'ERC777TokensSender')
    mem[ceil32(arg2.length) + 224] = 18
    mem[64] = ceil32(arg2.length) + 274
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args msg.sender, sha3(mem[ceil32(arg2.length) + 256 len 14], Mask(32, 112, 'ERC777TokensSender') >> 112)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require granularity
        if arg1 % granularity:
            revert with 0, 
                        32,
                        39,
                        0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974,
                        mem[ceil32(arg2.length) + 381 len 25]
    else:
        mem[ceil32(arg2.length) + 274] = 0x75ab978200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 278] = msg.sender
        mem[ceil32(arg2.length) + 310] = msg.sender
        mem[ceil32(arg2.length) + 342] = 0
        mem[ceil32(arg2.length) + 374] = arg1
        mem[ceil32(arg2.length) + 406] = 192
        mem[ceil32(arg2.length) + 470] = arg2.length
        mem[ceil32(arg2.length) + 502 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[ceil32(arg2.length) + 438] = arg2.length + 224
            mem[arg2.length + ceil32(arg2.length) + 502] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[arg2.length + ceil32(arg2.length) + 534 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 278 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 534] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 566 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 278 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 288]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 502] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 534 len arg2.length % 32]
            mem[ceil32(arg2.length) + 438] = floor32(arg2.length) + 256
            mem[floor32(arg2.length) + ceil32(arg2.length) + 534] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[floor32(arg2.length) + ceil32(arg2.length) + 566 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 278 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 566] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 598 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg2.length) + 278 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require granularity
        if arg1 % granularity:
            revert with 0, 32, 39, 0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974, Mask(200, 0, arg1)
    ('iszero', ('mod', ('param', 'arg1'), ('stor', ('name', 'granularity', 2))))
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'Not enough funds'
    require arg1 <= balanceOf[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 4
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    mem[ceil32(arg2.length) + 274] = arg1
    mem[ceil32(arg2.length) + 306] = 96
    mem[ceil32(arg2.length) + 370] = arg2.length
    mem[ceil32(arg2.length) + 402 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + 338] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + 402] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + 434 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 274 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                        msg.sender,
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + 434] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 466 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 274 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                        msg.sender,
                        msg.sender,
        if stor9:
            emit Transfer(arg1, msg.sender, 0);
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 402] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 434 len arg2.length % 32]
        mem[ceil32(arg2.length) + 338] = floor32(arg2.length) + 160
        mem[floor32(arg2.length) + ceil32(arg2.length) + 434] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + 466 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 274 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                        msg.sender,
                        msg.sender,
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + 466] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 498 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg2.length) + 274 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                        msg.sender,
                        msg.sender,
        if stor9:
            emit Transfer(arg1, msg.sender, 0);
}

function operatorBurn(address arg1, uint256 arg2, bytes arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != msg.sender:
        mem[0] = arg1
        mem[32] = sha3(address(msg.sender), 8)
        if not stor8[address(msg.sender)][address(arg1)]:
            if not stor6[address(msg.sender)]:
                revert with 0, 'Not an operator'
            mem[0] = arg1
            mem[32] = sha3(address(msg.sender), 7)
            if stor7[address(msg.sender)][address(arg1)]:
                revert with 0, 'Not an operator'
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 224
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 18
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = 'ERC777TokensSender'
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 288 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 224] = 18
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 274
    require ext_code.size(0x1820a4b7618bde71dce8cdc73aab6c95905fad24)
    staticcall 0x1820a4b7618bde71dce8cdc73aab6c95905fad24.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg1), sha3(mem[ceil32(arg3.length) + ceil32(arg4.length) + 256 len 18])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require granularity
        if arg2 % granularity:
            revert with 0, 
                        32,
                        39,
                        0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 381 len 25]
    else:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 274] = 0x75ab978200000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 278] = msg.sender
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 310] = arg1
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 342] = 0
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 374] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 406] = 192
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 470] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 502 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = arg3.length + 224
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 502] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 278 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 534] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 566 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 278 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 288]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 502] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 534 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 438] = floor32(arg3.length) + 256
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 534] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 566 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 278 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 288]
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 566] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 598 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).tokensToSend(address arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + ceil32(arg4.length) + 278 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require granularity
        if arg2 % granularity:
            revert with 0, 32, 39, 0x72416d6f756e74206973206e6f742061206d756c7469706c65206f66206772616e75616c726974, Mask(200, 0, arg2)
    ('iszero', ('mod', ('param', 'arg2'), ('stor', ('name', 'granularity', 2))))
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'Not enough funds'
    require arg2 <= balanceOf[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 274] = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 306] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 370] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 402 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 338] = arg3.length + 128
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 402] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 274 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                        msg.sender,
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 434] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 466 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 274 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                        msg.sender,
                        arg1,
        if stor9:
            emit Transfer(arg2, arg1, 0);
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 402] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 434 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 338] = floor32(arg3.length) + 160
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 434] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 466 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 274 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                        msg.sender,
                        arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 466] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 498 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit Burned(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5):
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 274 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                        msg.sender,
                        arg1,
        if stor9:
            emit Transfer(arg2, arg1, 0);
}



}
