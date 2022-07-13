contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint256 sub_84245968;
uint256 nowTime;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 mintingFinished; offset 8
uint256 stor8; offset 8

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function nowTime() {
    return nowTime
}

function owner(address arg1) {
    return bool(stor0[arg1])
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function sub_84245968(?) {
    return sub_84245968[arg1]
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

function sub_81b8c598(?) {
    require bool(stor0[address(msg.sender)]) == 1
    require arg1
    sub_84245968[address(arg1)] = 0
}

function sub_1506c7a8(?) {
    if sub_84245968[address(arg1)] >= block.timestamp:
        if sub_84245968[address(arg1)]:
            return 0
    return 1
}

function finishMinting() {
    require bool(stor0[address(msg.sender)]) == 1
    require not mintingFinished
    stor8 = 1
    emit MintFinished()
    return 1
}

function addOwnership(address arg1) {
    require bool(stor0[address(msg.sender)]) == 1
    require arg1
    stor0[address(arg1)] = 1
    emit OwnershipAdded(arg1);
}

function sub_f342700a(?) {
    require bool(stor0[address(msg.sender)]) == 1
    require arg1
    require arg2 > 0
    sub_84245968[address(arg1)] = block.timestamp + (24 * 3600 * arg2)
}

function removeOwner(address arg1) {
    require bool(stor0[address(msg.sender)]) == 1
    require arg1
    require arg1 != msg.sender
    stor0[address(arg1)] = 0
    emit OwnershipRemoved(arg1);
}

function approve(address arg1, uint256 arg2) {
    if sub_84245968[address(msg.sender)] >= block.timestamp:
        require not sub_84245968[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require bool(stor0[address(msg.sender)]) == 1
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) {
    require bool(stor0[address(msg.sender)]) == 1
    require not mintingFinished
    require arg1
    require arg2 > 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(address(arg1), arg2);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if sub_84245968[address(msg.sender)] >= block.timestamp:
        require not sub_84245968[address(msg.sender)]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if sub_84245968[address(msg.sender)] >= block.timestamp:
        require not sub_84245968[address(msg.sender)]
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintTo(address arg1, address arg2, uint256 arg3) {
    require bool(stor0[address(msg.sender)]) == 1
    require not mintingFinished
    require arg1
    require arg2
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Mint(address(arg2), arg3);
    emit Transfer(arg3, 0, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if sub_84245968[address(msg.sender)] >= block.timestamp:
        require not sub_84245968[address(msg.sender)]
    emit 0xabb70973: msg.sender, arg2
    require arg1
    require arg1 != this.address
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if sub_84245968[address(arg1)] >= block.timestamp:
        if sub_84245968[address(arg1)]:
            return 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
