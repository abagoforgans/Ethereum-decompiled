contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;

function _fallback() payable {
    stor7 = 10^18
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 12
    stor3.length.field_8 = 'Cherry Token' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'CTO' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 2 * 10^9 * stor7
    stor2 = msg.sender
    stor8[address(msg.sender)] = 2 * 10^9 * stor7
    return code.data[453 len 1843]
}



// =====================  Runtime code  =====================


address stor1;
address owner;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 approvals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approvals(address arg1, address arg2) {
    return approvals[arg1][arg2]
}

function allowance(address arg1, address arg2) {
    return approvals[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    require stor1 != arg1
    require arg1
    stor1 = arg1
    emit OwnerTransferPropose(arg1, arg1);
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require approvals[address(arg1)][address(msg.sender)] >= arg3
    approvals[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
