contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18

const INITIAL_SUPPLY = 0


address owner;
address adminAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
mapping of uint256 allowance;
uint256 max_supply;
uint256 totalSupply;
array of struct stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
mapping of uint8 stor14;
uint8 paused;
mapping of uint8 stor16;

function totalSupply() payable {
    return totalSupply
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor14[address(arg1)])
}

function paused() payable {
    return bool(paused)
}

function showLockState(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor16[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function Max_supply() payable {
    return max_supply
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function snapshot() payable {
    stor13++
    emit Snapshot(stor13);
    return stor13
}

function unpause() payable {
    require msg.sender
    require stor14[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor14[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor14[address(msg.sender)]
    stor14[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor16[address(msg.sender)]
    stor16[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function lock(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    return 1
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require adminAddress != arg1
    require owner != arg1
    adminAddress = arg1
}

function unlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(stor3[address(arg1)]) == 1
    stor3[address(arg1)] = 0
    return 1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor14[address(msg.sender)]
    require arg1
    require not stor14[address(arg1)]
    stor14[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor16[address(msg.sender)]
    require arg1
    require not stor16[address(arg1)]
    stor16[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require arg1 != owner
    require arg1 != adminAddress
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
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
    require arg1 <= stor13
    if stor11.length:
        idx = stor11.length
        while 0 < idx:
            require idx / 2 < stor11.length
            mem[0] = 11
            if stor11[0.5 / idx] <= arg1:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor11.length:
        return totalSupply
    require 0 < stor12.length
    return stor12
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[0] = arg1
    require arg2 > 0
    require arg2 <= stor13
    if stor10[address(arg1)].field_0:
        idx = stor10[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor10[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 10)
            if stor10[address(arg1)][0.5 / idx].field_0 <= arg2:
                idx = idx
                continue 
            idx = idx / 2
            continue 
    if 0 == stor10[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor10[address(arg1)].field_256
    return stor10[address(arg1)][1].field_0
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor10[address(arg1)].field_0:
        if 0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor11.length:
        if 0 < stor13:
            stor11.length++
            stor11[stor11.length] = stor13
            stor12.length++
            stor12[stor12.length] = totalSupply
    else:
        require stor11.length - 1 < stor11.length
        if stor11[stor11.length] < stor13:
            stor11.length++
            stor11[stor11.length] = stor13
            stor12.length++
            stor12[stor12.length] = totalSupply
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor16[address(msg.sender)]
    if not stor10[address(arg1)].field_0:
        if 0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor11.length:
        if 0 < stor13:
            stor11.length++
            stor11[stor11.length] = stor13
            stor12.length++
            stor12[stor12.length] = totalSupply
    else:
        require stor11.length - 1 < stor11.length
        if stor11[stor11.length] < stor13:
            stor11.length++
            stor11[stor11.length] = stor13
            stor12.length++
            stor12[stor12.length] = totalSupply
    require arg1
    require max_supply > totalSupply
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not paused
    if not stor10[address(msg.sender)].field_0:
        if 0 < stor13:
            stor10[address(msg.sender)].field_0++
            stor10[address(msg.sender)][stor10[address(msg.sender)].field_0].field_0 = stor13
            stor10[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10))) + stor10[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    else:
        require stor10[address(msg.sender)].field_0 - 1 < stor10[address(msg.sender)].field_0
        if stor10[address(msg.sender)][stor10[address(msg.sender)].field_0].field_0 < stor13:
            stor10[address(msg.sender)].field_0++
            stor10[address(msg.sender)][stor10[address(msg.sender)].field_0].field_0 = stor13
            stor10[address(msg.sender)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor10', 10))) + stor10[address(msg.sender)].field_256].field_0 = balanceOf[address(msg.sender)]
    if not stor10[address(arg1)].field_0:
        if 0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    require arg1
    require not stor3[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not paused
    if not stor10[address(arg1)].field_0:
        if 0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    else:
        require stor10[address(arg1)].field_0 - 1 < stor10[address(arg1)].field_0
        if stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 < stor13:
            stor10[address(arg1)].field_0++
            stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor13
            stor10[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor10', 10))) + stor10[address(arg1)].field_256].field_0 = balanceOf[address(arg1)]
    if not stor10[address(arg2)].field_0:
        if 0 < stor13:
            stor10[address(arg2)].field_0++
            stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = stor13
            stor10[address(arg2)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor10', 10))) + stor10[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
    else:
        require stor10[address(arg2)].field_0 - 1 < stor10[address(arg2)].field_0
        if stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 < stor13:
            stor10[address(arg2)].field_0++
            stor10[address(arg2)][stor10[address(arg2)].field_0].field_0 = stor13
            stor10[address(arg2)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor10', 10))) + stor10[address(arg2)].field_256].field_0 = balanceOf[address(arg2)]
    require arg2
    require not stor3[address(msg.sender)]
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
