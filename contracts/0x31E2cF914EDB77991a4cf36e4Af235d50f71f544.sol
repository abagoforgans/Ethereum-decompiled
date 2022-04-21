contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor0 = code.data[5544 len 32]
    stor1 = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = stor1
    stor3[stor1] = stor0
    emit Minted(stor0, 0, stor1);
    return code.data[574 len 4970]
}



// =====================  Runtime code  =====================


const name = 'RESTORE'

const decimals = 4

const symbol = 'RESTORE'


uint256 totalSupply;
address owner;
array of address minters;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function minters(uint256 arg1) {
    require arg1 < minters.length
    return address(minters[arg1])
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < minters.length:
        mem[0] = 2
        if address(minters[idx]) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    balances[address(arg1)] += arg2
    totalSupply += arg2
    emit Minted(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function removeMinter(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    s = 0
    while idx < minters.length:
        mem[0] = 2
        if arg1 != address(minters[idx]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require s
    require minters.length - 1 < minters.length
    require 0 < minters.length
    address(minters) = address(minters[minters.length])
    require minters.length - 1 < minters.length
    address(minters[minters.length]) = 0
}

function addMinter(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    s = 0
    while idx < minters.length:
        mem[0] = 2
        if arg1 != address(minters[idx]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        minters.length++
        if not minters.length <= minters.length + 1:
            idx = minters.length + 1
            while minters.length > idx:
                uint256(minters[idx]) = 0
                idx = idx + 1
                continue 
        address(minters[minters.length]) = arg1
}



}
