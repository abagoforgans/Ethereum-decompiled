contract main {




// =====================  Runtime code  =====================


#
#  - sub_c7a75ef0(?)
#
const standard = '0.6'


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint256 stor7;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function balanceOf(address arg1) {
    if stor8[address(arg1)]:
        return stor5[address(arg1)]
    if stor5[address(arg1)]:
        return stor5[address(arg1)]
    return (80000 * 10^decimals)
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require block.timestamp > stor7[address(msg.sender)]
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require block.timestamp > stor7[address(arg1)]
    if stor5[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require stor5[address(arg1)] >= arg3
    stor5[address(arg1)] -= arg3
    require stor5[address(arg2)] + arg3 >= stor5[address(arg2)]
    stor5[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require block.timestamp > stor7[address(msg.sender)]
    if not stor8[address(msg.sender)]:
        if not stor5[address(msg.sender)]:
            stor5[address(msg.sender)] = 80000 * 10^decimals
        require stor5[address(msg.sender)] + (100000 * 10^decimals) >= stor5[address(msg.sender)]
        stor5[address(msg.sender)] += 100000 * 10^decimals
    if stor5[address(msg.sender)] < arg2:
        if not stor8[address(msg.sender)]:
            require stor5[address(msg.sender)] >= 100000 * 10^decimals
            stor5[address(msg.sender)] += -100000 * 10^decimals
            return 0
        else:
            return 0
    if arg2 <= 0:
        if not stor8[address(msg.sender)]:
            require stor5[address(msg.sender)] >= 100000 * 10^decimals
            stor5[address(msg.sender)] += -100000 * 10^decimals
            return 0
        else:
            return 0
    require stor5[address(msg.sender)] >= arg2
    stor5[address(msg.sender)] -= arg2
    if not stor8[address(arg1)]:
        if not stor5[address(arg1)]:
            stor5[address(arg1)] = 80000 * 10^decimals
    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
    stor5[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not stor8[address(msg.sender)]:
        stor8[address(msg.sender)] = 1
        require stor5[address(arg1)] + (30000 * 10^decimals) >= stor5[address(arg1)]
        stor5[address(arg1)] += 30000 * 10^decimals
    return 1
}



}
