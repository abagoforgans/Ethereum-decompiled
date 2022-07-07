contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 mintingFinished; offset 160
uint128 stor3; offset 160
address owner;
array of struct stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor11;
uint256 MAX_TOTAL_SUPPLY;
array of struct locks;

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function MAX_TOTAL_SUPPLY() {
    return MAX_TOTAL_SUPPLY
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TRANSFERS_ALLOWED() {
    return bool(stor11)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function locks(uint256 arg1) {
    require arg1 < locks.length
    return locks[arg1].field_0, locks[arg1].field_256, locks[arg1].field_512
}

function _fallback() {
    owner = msg.sender
}

function Pause() {
    require msg.sender == owner
    stor11 = 0
}

function Unpause() {
    require msg.sender == owner
    stor11 = 1
}

function snapshot() {
    stor7++
    emit Snapshot(stor7);
    return stor7
}

function finishMinting() {
    require msg.sender == owner
    require not mintingFinished
    stor3 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    locks.length++
    locks[locks.length].field_0 = arg2
    locks[locks.length].field_256 = arg1
    locks[locks.length].field_512 = arg3
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function burnFrom(uint256 arg1, address arg2) {
    require msg.sender == owner
    require not mintingFinished
    require arg1 <= balanceOf[address(arg2)]
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, arg2);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function totalSupplyAt(uint256 arg1) {
    require arg1 > 0
    require arg1 <= stor7
    if stor5.length:
        s = 0
        idx = stor5.length
        while 0 < idx:
            require idx / 2 < stor5.length
            mem[0] = 5
            if stor5[0.5 / idx] <= arg1:
                s = idx / 2
                idx = idx
                continue 
            s = idx / 2
            idx = idx / 2
            continue 
    if 0 == stor5.length:
        return totalSupply
    require 0 < stor6.length
    return stor6
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require totalSupply + arg2 >= totalSupply
    if totalSupply + arg2 > MAX_TOTAL_SUPPLY:
        return 0
    require msg.sender == owner
    require not mintingFinished
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function canBeTransfered(address arg1, uint256 arg2) {
    require msg.sender == owner
    idx = 0
    while idx < locks.length:
        mem[0] = 13
        if locks[idx].field_256 != arg1:
            idx = idx + 1
            continue 
        require idx < locks.length
        mem[0] = arg1
        mem[32] = 0
        require locks[idx].field_512 <= balanceOf[address(arg1)]
        if arg2 <= balanceOf[address(arg1)] - locks[idx].field_512:
            idx = idx + 1
            continue 
        require idx < locks.length
        mem[0] = 13
        if locks[idx].field_0 <= block.timestamp:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function balanceOfAt(address arg1, uint256 arg2) {
    mem[0] = arg1
    require arg2 > 0
    require arg2 <= stor7
    if stor4[address(arg1)].field_0:
        s = 0
        idx = stor4[mem[0]].field_0
        while 0 < idx:
            require idx / 2 < stor4[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if stor4[address(arg1)][0.5 / idx].field_0 <= arg2:
                s = idx / 2
                idx = idx
                continue 
            s = idx / 2
            idx = idx / 2
            continue 
    if 0 == stor4[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    require 0 < stor4[address(arg1)].field_256
    return stor4[address(arg1)][1].field_0
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    idx = 0
    while idx < locks.length:
        mem[0] = 13
        if locks[idx].field_256 == msg.sender:
            require idx < locks.length
            mem[0] = msg.sender
            mem[32] = 0
            require locks[idx].field_512 <= balanceOf[address(msg.sender)]
            if arg2 > balanceOf[address(msg.sender)] - locks[idx].field_512:
                require idx < locks.length
                mem[0] = 13
                require locks[idx].field_0 <= block.timestamp
        idx = idx + 1
        continue 
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    idx = 0
    while idx < locks.length:
        mem[0] = 13
        if locks[idx].field_256 == arg1:
            require idx < locks.length
            mem[0] = arg1
            mem[32] = 0
            require locks[idx].field_512 <= balanceOf[address(arg1)]
            if arg3 > balanceOf[address(arg1)] - locks[idx].field_512:
                require idx < locks.length
                mem[0] = 13
                require locks[idx].field_0 <= block.timestamp
        idx = idx + 1
        continue 
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
