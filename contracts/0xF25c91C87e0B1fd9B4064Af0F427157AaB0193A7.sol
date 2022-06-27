contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 stor3;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address newOwner;
mapping of uint8 stor8;
uint8 stor9;
address implementationAddress; offset 8
array of struct timelockList;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function implementation() {
    return implementationAddress
}

function paused() {
    return bool(stor9)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function timelockList(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < timelockList[arg1].field_0
    return timelockList[arg1][arg2].field_0, timelockList[arg1][arg2].field_256
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != arg1:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require implementationAddress != arg1
    implementationAddress = arg1
}

function unpause() {
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require stor9
    stor9 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require not stor9
    stor9 = 1
    emit Paused(msg.sender);
}

function acceptOwnership() {
    require msg.sender
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 0
}

function removePauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor8[address(arg1)]
    stor8[address(arg1)] = 0
    emit PauserRemoved(arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit 0x2e8c5be1: arg2, msg.sender, arg1
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= stor3[address(msg.sender)]
    stor3[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function unfreezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require stor11[address(arg1)]
    stor11[address(arg1)] = 0
    emit Unfreeze(arg1);
    return 1
}

function freezeAccount(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require not stor11[address(arg1)]
    stor11[address(arg1)] = 1
    emit Freeze(arg1);
    return 1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit 0x2e8c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    return 1
}

function _fallback() payable {
    require implementationAddress
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor9
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0x2e8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= stor3[address(arg1)]
    stor3[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit 0x2e8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor11[msg.sender]
    if timelockList[msg.sender].field_0:
        # nil
    else:
        require not stor9
        require arg1
        require arg2 <= stor3[address(msg.sender)]
        stor3[address(msg.sender)] -= arg2
        require arg2 + stor3[arg1] >= stor3[arg1]
        stor3[address(arg1)] = arg2 + stor3[arg1]
        emit Transfer(arg2, msg.sender, arg1);
        return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not stor11[address(arg1)]
    if timelockList[address(arg1)].field_0:
        # nil
    else:
        require not stor9
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
        require arg2
        require arg3 <= stor3[address(arg1)]
        stor3[address(arg1)] -= arg3
        require arg3 + stor3[arg2] >= stor3[arg2]
        stor3[address(arg2)] = arg3 + stor3[arg2]
        emit Transfer(arg3, arg1, arg2);
        emit 0x2e8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
        return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not timelockList[address(arg1)].field_0:
        return stor3[address(arg1)]
    idx = 0
    s = stor3[address(arg1)]
    while idx < timelockList[address(arg1)].field_0:
        require idx < timelockList[address(arg1)].field_0
        _14 = sha3(sha3(address(arg1), 10))
        require timelockList[address(arg1)][idx].field_256 + s >= s
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        s = timelockList[address(arg1)][idx].field_256 + s
        continue 
    return (stor3[address(arg1)] + (stor[(2 * stor10[address(arg1)].field_0) + _14 + 1] * timelockList[address(arg1)].field_0))
}

function transferWithLock(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    require arg1
    require arg2 <= stor3[address(msg.sender)]
    stor3[address(msg.sender)] -= arg2
    require arg2 + stor3[arg1] >= stor3[arg1]
    stor3[address(arg1)] = arg2 + stor3[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require arg2 <= stor3[address(arg1)]
    stor3[address(arg1)] -= arg2
    timelockList[address(arg1)].field_0++
    timelockList[address(arg1)][timelockList[address(arg1)].field_0].field_0 = arg3
    timelockList[address(arg1)][timelockList[address(arg1)].field_0].field_256 = arg2
    emit Lock(arg2, arg3, arg1);
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    if arg2 > stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe5468657265206973206e6f7420656e6f7567682062616c616e636573206f6620686f6c646572,
                    mem[203 len 25]
    require arg2 <= stor3[address(arg1)]
    stor3[address(arg1)] -= arg2
    timelockList[address(arg1)].field_0++
    timelockList[address(arg1)][timelockList[address(arg1)].field_0].field_0 = arg3
    timelockList[address(arg1)][timelockList[address(arg1)].field_0].field_256 = arg2
    emit Lock(arg2, arg3, arg1);
    return 1
}

function unlock(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    if not stor8[address(msg.sender)]:
        require owner == msg.sender
    if arg2 >= timelockList[address(arg1)].field_0:
        revert with 0, 'There is not lock info.'
    require arg2 < timelockList[address(arg1)].field_0
    require arg2 < timelockList[address(arg1)].field_0
    timelockList[address(arg1)][arg2].field_0 = 0
    timelockList[address(arg1)][arg2].field_256 = 0
    require 1 <= timelockList[address(arg1)].field_0
    require timelockList[address(arg1)].field_0 - 1 < timelockList[address(arg1)].field_0
    require arg2 < timelockList[address(arg1)].field_0
    timelockList[address(arg1)][arg2].field_0 = timelockList[address(arg1)][timelockList[address(arg1)].field_0 - 1].field_0
    timelockList[address(arg1)][arg2].field_256 = timelockList[address(arg1)][timelockList[address(arg1)].field_0 - 1].field_256
    timelockList[address(arg1)].field_0--
    if timelockList[address(arg1)].field_0 > timelockList[address(arg1)].field_0 - 1:
        idx = 2 * timelockList[address(arg1)].field_0 - 1
        while 2 * timelockList[address(arg1)].field_0 > idx:
            timelockList[address(arg1)][idx].field_0 = 0
            timelockList[address(arg1)][idx].field_256 = 0
            idx = idx + 2
            continue 
    emit Unlock(timelockList[address(arg1)][arg2].field_256, arg1);
    require timelockList[address(arg1)][arg2].field_256 + stor3[address(arg1)] >= stor3[address(arg1)]
    stor3[address(arg1)] += timelockList[address(arg1)][arg2].field_256
    return 1
}



}
