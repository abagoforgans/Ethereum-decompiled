contract main {




// =====================  Runtime code  =====================


const name = 'Aqwire Token'

const decimals = 18

const symbol = 'QEY'

const INITIAL_SUPPLY = 250000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint8 stor4;
uint256 unlockTime;

function totalSupply() {
    return totalSupply
}

function unlockTime() {
    return unlockTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setUnlockTime(uint256 arg1) {
    require msg.sender == owner
    unlockTime = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    if stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 1
    emit WhitelistedAddressAdded(arg1);
    return 1
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    if not stor4[address(arg1)]:
        return 0
    stor4[address(arg1)] = 0
    emit WhitelistedAddressRemoved(arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < unlockTime:
        if not stor4[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Unable to transfer as unlock time not passed or address not whitelisted'
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addAddressesToWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < unlockTime:
        if not stor4[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Unable to transfer as unlock time not passed or address not whitelisted'
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            idx = idx + 1
            s = s
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[address(mem[(32 * idx) + 128])] = 0
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistedAddressRemoved(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}



}
