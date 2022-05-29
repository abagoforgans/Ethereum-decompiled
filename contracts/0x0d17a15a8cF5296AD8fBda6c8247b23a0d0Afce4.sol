contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 approvals;

function name() {
    return name[0 len name.length].field_0
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
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length].field_0
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

function approve(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    approvals[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= approvals[address(arg1)][msg.sender]
    approvals[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_d95d93d9(?) {
    uint8(name.length) = 12
    name.length.field_8 = 'Cashew' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    uint8(symbol.length) = 6
    symbol.length.field_8 = 'CSH' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    totalSupply = 10^10 * stor5
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    balanceOf[msg.sender] = 10^10 * stor5
}



}
