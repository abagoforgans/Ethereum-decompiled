contract main {




// =====================  Runtime code  =====================


const name = 'unttest'

const decimals = 8

const symbol = 'UNTTEST'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint256 sub_55644ac8;
array of address stor5;
uint8 stor6;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function sub_55644ac8(?) {
    return sub_55644ac8[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function freezeToken() {
    require owner == msg.sender
    stor6 = 1
}

function unfreezeToken() {
    require owner == msg.sender
    stor6 = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    return 1
}

function unlockToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            idx = idx + 1
            continue 
        if sub_55644ac8[address(arg1)] >= arg2:
            sub_55644ac8[address(arg1)] -= arg2
}

function lockToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            idx = idx + 1
            continue 
        if balanceOf[address(arg1)] - sub_55644ac8[address(arg1)] >= arg2:
            sub_55644ac8[address(arg1)] += arg2
    if balanceOf[address(arg1)] >= arg2:
        stor5.length++
        stor5[stor5.length] = arg1
        sub_55644ac8[address(arg1)] = arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor6
    if owner != msg.sender:
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            if stor5[idx] != msg.sender:
                idx = idx + 1
                continue 
            require balanceOf[address(msg.sender)] - sub_55644ac8[address(msg.sender)] >= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
    else:
        idx = 0
        while idx < stor5.length:
            mem[0] = 5
            if stor5[idx] != arg1:
                idx = idx + 1
                continue 
            sub_55644ac8[address(arg1)] += arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        stor5.length++
        stor5[stor5.length] = arg1
        sub_55644ac8[address(arg1)] = arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
