contract main {




// =====================  Runtime code  =====================


const decimals = 18

const getNow = block.timestamp


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
array of uint256 name;
array of uint256 symbol;
array of struct holdAmount;
array of struct stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getHoldAmount(address arg1, uint256 arg2) {
    require arg1
    require holdAmount[address(arg1)].field_0 > 0
    require arg2 < holdAmount[address(arg1)].field_0
    require arg2 < holdAmount[address(arg1)].field_0
    return holdAmount[address(arg1)][arg2].field_0, holdAmount[address(arg1)][arg2].field_256
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

function countHoldAmount(address arg1) {
    require arg1
    return holdAmount[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function isValidAddress(address arg1) {
    if not arg1:
        return not not arg1
    return arg1 != this.address
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

function initialSupply(uint256 arg1) {
    require msg.sender == owner
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function removeHoldByAddress(address arg1) {
    require msg.sender == owner
    holdAmount[address(arg1)].field_0 = 0
    idx = 0
    while 2 * holdAmount[address(arg1)].field_0 > idx:
        holdAmount[address(arg1)][idx].field_0 = 0
        holdAmount[address(arg1)][idx].field_256 = 0
        idx = idx + 2
        continue 
}

function changeHoldByAddressIndex(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg2 < holdAmount[address(arg1)].field_0
    holdAmount[address(arg1)][arg2].field_0 = arg4
    require arg2 < holdAmount[address(arg1)].field_0
    holdAmount[address(arg1)][arg2].field_256 = arg3
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setHoldAmount(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    holdAmount[address(arg1)].field_0++
    holdAmount[address(arg1)][holdAmount[address(arg1)].field_0].field_0 = arg3
    holdAmount[address(arg1)][holdAmount[address(arg1)].field_0].field_256 = arg2
    stor7.length++
    stor7[stor7.length].field_0 = arg1
}

function getTotalHoldAmount(address arg1) {
    idx = 0
    s = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if holdAmount[address(arg1)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + holdAmount[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(arg1)][idx].field_256
        continue 
    return s
}

function getAvailableBalance(address arg1) {
    idx = 0
    s = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if holdAmount[address(arg1)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + holdAmount[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(arg1)][idx].field_256
        continue 
    if s <= balanceOf[address(arg1)]:
        return (balanceOf[address(arg1)] - s)
    revert
}

function checkAvailableAmount(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if holdAmount[address(arg1)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + holdAmount[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(arg1)][idx].field_256
        continue 
    if s <= balanceOf[address(arg1)]:
        return arg2 <= balanceOf[address(arg1)] - s
    revert
}

function getHoldAmountAccounts() {
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

function burn(uint256 arg1) {
    idx = 0
    s = 0
    while idx < holdAmount[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 6)
        if holdAmount[address(msg.sender)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 6)
        require s + holdAmount[address(msg.sender)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(msg.sender)][idx].field_256
        continue 
    require s <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)] - s
    require msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if holdAmount[address(arg1)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + holdAmount[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(arg1)][idx].field_256
        continue 
    require s <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)] - s
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    idx = 0
    s = 0
    while idx < holdAmount[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 6)
        if holdAmount[address(msg.sender)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 6)
        require s + holdAmount[address(msg.sender)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(msg.sender)][idx].field_256
        continue 
    require s <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)] - s
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
    require arg2
    require arg2 != this.address
    idx = 0
    s = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        if holdAmount[address(arg1)][idx].field_0 < block.timestamp:
            idx = idx + 1
            s = s
            continue 
        require idx < holdAmount[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 6)
        require s + holdAmount[address(arg1)][idx].field_256 >= s
        idx = idx + 1
        s = s + holdAmount[address(arg1)][idx].field_256
        continue 
    require s <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)] - s
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

function removeHoldByAddressIndex(address arg1, uint256 arg2) {
    require msg.sender == owner
    mem[64] = (32 * holdAmount[address(arg1)].field_0) + 128
    mem[96] = holdAmount[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < holdAmount[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 6)
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = holdAmount[address(arg1)][idx].field_0
        mem[_21 + 32] = holdAmount[address(arg1)][idx].field_256
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    mem[32] = 6
    holdAmount[address(arg1)].field_0 = 0
    mem[0] = sha3(address(arg1), 6)
    idx = 0
    while 2 * holdAmount[address(arg1)].field_0 > idx:
        holdAmount[address(arg1)][idx].field_0 = 0
        holdAmount[address(arg1)][idx].field_256 = 0
        idx = idx + 2
        continue 
    _50 = mem[96]
    idx = 0
    while idx < _50:
        if idx != arg2:
            require idx < mem[96]
            _53 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _56 = mem[mem[(32 * idx) + 128]]
            require msg.sender == owner
            _57 = mem[64]
            mem[64] = mem[64] + 64
            mem[_57] = _56
            mem[_57 + 32] = _53
            mem[32] = 6
            holdAmount[address(arg1)].field_0++
            holdAmount[address(arg1)][holdAmount[address(arg1)].field_0].field_0 = _56
            holdAmount[address(arg1)][holdAmount[address(arg1)].field_0].field_256 = _53
            stor7.length++
            mem[0] = 7
            stor7[stor7.length].field_0 = arg1
        _50 = mem[96]
        idx = idx + 1
        continue 
}



}
