contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 6
    stor0.length.field_8 = 'XXXXXX' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'XXX' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 500000000 * 10^18
    stor4 = 0
    stor5 = 5 * 10^15 * 3600
    require not msg.value
    stor6[address(msg.sender)] = stor3
    return code.data[500 len 5858]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 currentTotalSupply;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint8 stor7;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function currentTotalSupply() {
    return currentTotalSupply
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return stor6[address(arg1)]
    if stor7[address(arg1)]:
        return stor6[address(arg1)]
    require stor6[address(arg1)] + stor5 >= stor6[address(arg1)]
    return (stor6[address(arg1)] + stor5)
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor7[address(msg.sender)]:
        if currentTotalSupply < totalSupply:
            require stor6[address(msg.sender)] + stor5 >= stor6[address(msg.sender)]
            stor6[address(msg.sender)] += stor5
            stor7[address(msg.sender)] = 1
            require currentTotalSupply + stor5 >= currentTotalSupply
            currentTotalSupply += stor5
    require arg2 <= stor6[address(msg.sender)]
    require arg2 <= stor6[address(msg.sender)]
    stor6[address(msg.sender)] -= arg2
    require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
    stor6[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if not stor7[address(arg1)]:
        if currentTotalSupply < totalSupply:
            stor7[address(arg1)] = 1
            require stor6[address(arg1)] + stor5 >= stor6[address(arg1)]
            stor6[address(arg1)] += stor5
            require currentTotalSupply + stor5 >= currentTotalSupply
            currentTotalSupply += stor5
    require arg3 <= stor6[address(arg1)]
    require arg3 <= stor6[address(arg1)]
    stor6[address(arg1)] -= arg3
    require stor6[address(arg2)] + arg3 >= stor6[address(arg2)]
    stor6[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
