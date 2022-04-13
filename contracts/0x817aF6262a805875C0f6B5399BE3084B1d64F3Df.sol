contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of address stor2;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor1 = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = stor1
    return code.data[321 len 4331]
}



// =====================  Runtime code  =====================


const name = 'ECLIPSE'

const decimals = 0

const symbol = 'ECLPS'


uint256 totalSupply;
address owner;
array of address minters;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function minters(uint256 arg1) {
    require arg1 < minters.length
    return address(minters[arg1])
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
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
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
}

function removeMinter(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < minters.length:
        mem[0] = 2
        idx = idx + 1
        continue 
    require minters.length - 1 < minters.length
    require 0 < minters.length
    address(minters) = address(minters[minters.length])
    require minters.length - 1 < minters.length
    address(minters[minters.length]) = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}

function addMinter(address arg1) {
    require msg.sender == owner
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
