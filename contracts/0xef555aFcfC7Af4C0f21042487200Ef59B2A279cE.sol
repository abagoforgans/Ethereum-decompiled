contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 sub_282a5255;
mapping of uint256 sub_03bedd60;
mapping of uint8 stor99;

function sub_03bedd60(?) payable {
    require calldata.size - 4 >= 64
    return sub_03bedd60[address(arg1)][address(arg2)]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_282a5255(?) payable {
    require calldata.size - 4 >= 32
    return sub_282a5255[address(arg1)]
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return sub_282a5255[arg1]
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function transferPreSignedHashing(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    return sha3(0, arg1, arg2, arg3, arg4, arg5)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    sub_03bedd60[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require sub_282a5255[address(msg.sender)] >= arg1
    if arg1:
        require arg1
        require 10^6 * arg1 / arg1 == 10^6
        sub_282a5255[stor0] += -1 * 10^6 * arg1
        totalSupply += -1 * 10^6 * arg1
    emit Burn(arg1, owner);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require sub_03bedd60[address(msg.sender)][address(arg1)] + arg2 >= sub_03bedd60[address(msg.sender)][address(arg1)]
    sub_03bedd60[address(msg.sender)][address(arg1)] += arg2
    emit Approval(sub_03bedd60[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        emit Transfer(0, this.address, owner);
    else:
        require arg1
        require 10^6 * arg1 / arg1 == 10^6
        sub_282a5255[stor0] += 10^6 * arg1
        totalSupply += 10^6 * arg1
        emit Transfer((10^6 * arg1), this.address, owner);
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= sub_03bedd60[address(msg.sender)][address(arg1)]:
        sub_03bedd60[address(msg.sender)][address(arg1)] -= arg2
    else:
        sub_03bedd60[address(msg.sender)][address(arg1)] = 0
    emit Approval(sub_03bedd60[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require sub_282a5255[address(msg.sender)] >= arg2
    require sub_282a5255[address(arg1)] + arg2 > sub_282a5255[address(arg1)]
    sub_282a5255[address(msg.sender)] -= arg2
    sub_282a5255[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require sub_282a5255[address(msg.sender)] + sub_282a5255[address(arg1)] == sub_282a5255[address(msg.sender)] + sub_282a5255[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= sub_03bedd60[address(arg1)][address(msg.sender)]
    sub_03bedd60[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require sub_282a5255[address(arg1)] >= arg3
    require sub_282a5255[address(arg2)] + arg3 > sub_282a5255[address(arg2)]
    sub_282a5255[address(arg1)] -= arg3
    sub_282a5255[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require sub_282a5255[address(arg1)] + sub_282a5255[address(arg2)] == sub_282a5255[address(arg1)] + sub_282a5255[address(arg2)]
    return 1
}

function recover(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(arg1, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function transferPreSigned(bytes arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 7
    require not stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    mem[ceil32(arg1.length) + 160] = 0x48664c1600000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = address(this.address)
    mem[ceil32(arg1.length) + 184] = address(arg2)
    mem[ceil32(arg1.length) + 204] = arg3
    mem[ceil32(arg1.length) + 236] = arg4
    mem[ceil32(arg1.length) + 268] = arg5
    mem[ceil32(arg1.length) + 128] = 140
    _77 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    require arg1.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    mem[ceil32(arg1.length) + 332] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + 364] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + 396] = mem[128]
    mem[ceil32(arg1.length) + 428] = mem[160]
    signer = erecover(_77, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require arg3 <= sub_282a5255[address(signer)]
    require arg4 <= sub_282a5255[address(signer)] - arg3
    sub_282a5255[address(signer)] = sub_282a5255[address(signer)] - arg3 - arg4
    require sub_282a5255[address(arg2)] + arg3 >= sub_282a5255[address(arg2)]
    sub_282a5255[address(arg2)] += arg3
    require sub_282a5255[address(msg.sender)] + arg4 >= sub_282a5255[address(msg.sender)]
    sub_282a5255[address(msg.sender)] += arg4
    mem[ceil32(arg1.length) + 332 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 364 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 332] = 7
    stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 332 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 1
    emit Transfer(arg3, address(signer), arg2);
    emit Transfer(arg4, address(signer), msg.sender);
    emit TransferPreSigned(arg3, arg4, address(signer), arg2, msg.sender);
    return 1
}



}
