contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address founderAddress; offset 8
mapping of uint256 locker;
array of struct stor7;
uint256 transferCount;
uint256 sub_a7dfc363;
array of struct sub_59d0e2cf;
array of struct stor12;

function getTransferCount() payable {
    return transferCount
}

function name() payable {
    return name[0 len name.length]
}

function sub_0f950ea6(?) payable {
    require msg.sender == founderAddress
    return stor7.length
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_59d0e2cf(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_59d0e2cf[address(arg1)].field_0
    return sub_59d0e2cf[address(arg1)][arg2].field_0, 
           sub_59d0e2cf[address(arg1)][arg2].field_256,
           sub_59d0e2cf[address(arg1)][arg2].field_512
}

function sub_5ddb82d5(?) payable {
    require calldata.size - 4 >= 32
    return sub_59d0e2cf[address(arg1)].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getLocker(address arg1) payable {
    require calldata.size - 4 >= 32
    return locker[address(arg1)]
}

function getFounder() payable {
    return founderAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a7dfc363(?) payable {
    return sub_a7dfc363
}

function sub_c2876aa3(?) payable {
    require msg.sender == founderAddress
    return stor12.length
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function removeLocker(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == founderAddress
    require locker[address(arg1)] > 1
    locker[address(arg1)] = 1
    return 1
}

function changeFounder(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == founderAddress
    require arg1 != msg.sender
    require arg1 != 0
    founderAddress = arg1
    emit ChangeFounder(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require locker[address(msg.sender)] < block.timestamp
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    sub_a7dfc363++
    return 1
}

function sub_709e147a(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == founderAddress
    require arg1 != msg.sender
    require arg1 != 0
    require 0 < arg2
    if 1 > locker[address(arg1)]:
        stor7.length++
        stor7[stor7.length].field_0 = arg1
    locker[address(arg1)] = arg2
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require locker[address(msg.sender)] < block.timestamp
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    transferCount++
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function freeze(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 != msg.sender
    require arg1 != 0
    require 0 < arg3
    if 1 > sub_59d0e2cf[address(arg1)].field_0:
        stor12.length++
        stor12[stor12.length].field_0 = arg1
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    sub_59d0e2cf[address(arg1)].field_0++
    sub_59d0e2cf[address(arg1)][sub_59d0e2cf[address(arg1)].field_0].field_0 = msg.sender
    sub_59d0e2cf[address(arg1)][sub_59d0e2cf[address(arg1)].field_0].field_256 = arg2
    sub_59d0e2cf[address(arg1)][sub_59d0e2cf[address(arg1)].field_0].field_512 = arg3
    return 1
}

function sub_8e7543aa(?) payable {
    require msg.sender == founderAddress
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_83c46f86(?) payable {
    require msg.sender == founderAddress
    if not stor12.length:
        mem[(32 * stor12.length) + 128] = 32
        mem[(32 * stor12.length) + 160] = stor12.length
        mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
        return memory
          from (32 * stor12.length) + 128
           len (96 * stor12.length) + 64
    mem[128] = address(stor12.field_0)
    idx = 128
    s = 0
    while (32 * stor12.length) + 96 > idx:
        mem[idx + 32] = stor12[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor12.length) + 192 len floor32(stor12.length)] = mem[128 len floor32(stor12.length)]
    return Array(len=stor12.length, data=mem[128 len floor32(stor12.length)], mem[(32 * stor12.length) + floor32(stor12.length) + 192 len (32 * stor12.length) - floor32(stor12.length)]), 
}

function unfreeze(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 != 0
    mem[0] = arg1
    mem[32] = 11
    mem[64] = (32 * sub_59d0e2cf[address(arg1)].field_0) + 128
    mem[96] = sub_59d0e2cf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_59d0e2cf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 11)
        _19 = mem[64]
        mem[64] = mem[64] + 96
        mem[_19] = sub_59d0e2cf[address(arg1)][idx].field_0
        mem[_19 + 32] = sub_59d0e2cf[address(arg1)][idx].field_256
        mem[_19 + 64] = sub_59d0e2cf[address(arg1)][idx].field_512
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _33 = mem[96]
    idx = 0
    while idx < _33:
        _36 = mem[64]
        mem[64] = mem[64] + 96
        mem[_36] = 0
        mem[_36 + 32] = 0
        mem[_36 + 64] = 0
        require idx < mem[96]
        if 0 < mem[mem[(32 * idx) + 128] + 64]:
            if mem[mem[(32 * idx) + 128] + 32] < block.timestamp:
                require balanceOf[address(arg1)] + mem[mem[(32 * idx) + 128] + 64] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += mem[mem[(32 * idx) + 128] + 64]
                mem[32] = 11
                require idx < sub_59d0e2cf[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 11)
                sub_59d0e2cf[address(arg1)][idx].field_0 = 0
                sub_59d0e2cf[address(arg1)][idx].field_256 = 0
                sub_59d0e2cf[address(arg1)][idx].field_512 = 0
        _33 = mem[96]
        idx = idx + 1
        continue 
    return 1
}



}
