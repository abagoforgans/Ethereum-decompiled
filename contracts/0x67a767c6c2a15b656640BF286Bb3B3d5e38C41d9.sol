contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18

const INITIAL_SUPPLY = 1000000000 * 10^18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function snapshot() payable {
    stor9++
    emit Snapshot(stor9);
    return stor9
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    require arg1 <= stor9
    if stor7.length:
        idx = stor7.length
        while 0 < idx:
            require idx / 2 < stor7.length
            mem[0] = 7
            if stor7[0.5 / idx] <= arg1:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor7.length:
        return totalSupply
    require 0 < stor8.length
    return stor8
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    require arg2 > 0
    require arg2 <= stor9
    if stor6[address(arg1)].field_0:
        idx = stor6[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor6[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 6)
            if stor6[address(arg1)][0.5 / idx].field_0 <= arg2:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor6[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor6[address(arg1)].field_256
    return stor6[address(arg1)][1].field_0
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6[address(msg.sender)].field_0:
        if 0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
        if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    if not stor7.length:
        if 0 < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    else:
        require stor7.length - 1 < stor7.length
        if stor7[stor7.length] < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[address(arg1)].field_0:
        if 0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor7.length:
        if 0 < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    else:
        require stor7.length - 1 < stor7.length
        if stor7[stor7.length] < stor9:
            stor7.length++
            stor7[stor7.length] = stor9
            stor8.length++
            stor8[stor8.length] = totalSupply
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor6[address(msg.sender)].field_0:
        if 0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor6[address(msg.sender)].field_0 - 1 < stor6[address(msg.sender)].field_0
        if stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 < stor9:
            stor6[address(msg.sender)].field_0++
            stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = stor9
            stor6[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    if not stor6[address(arg1)].field_0:
        if 0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor6[address(arg1)].field_0:
        if 0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor6[address(arg1)].field_0 - 1 < stor6[address(arg1)].field_0
        if stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 < stor9:
            stor6[address(arg1)].field_0++
            stor6[address(arg1)][stor6[address(arg1)].field_0].field_0 = stor9
            stor6[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor6[address(arg2)].field_0:
        if 0 < stor9:
            stor6[address(arg2)].field_0++
            stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
            stor6[address(arg2)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
    else:
        require stor6[address(arg2)].field_0 - 1 < stor6[address(arg2)].field_0
        if stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 < stor9:
            stor6[address(arg2)].field_0++
            stor6[address(arg2)][stor6[address(arg2)].field_0].field_0 = stor9
            stor6[address(arg2)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor6', 6))) + stor6[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
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



}
