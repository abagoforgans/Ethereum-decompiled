contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address sub_be328d5bAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;

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
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function sub_be328d5b(?) {
    return sub_be328d5bAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_99b38974(?) {
    require msg.sender == sub_be328d5bAddress
    require arg1
    require sub_be328d5bAddress != arg1
    sub_be328d5bAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg2
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == sub_be328d5bAddress
    require arg1
    stor7[address(arg1)] = uint8(arg2)
    emit FreezeEvent(address(arg1), arg2);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == sub_be328d5bAddress
    require arg1
    require arg2
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit MintToken(address(arg1), arg2);
    return 1
}

function sub_adcb0f8d(?) {
    require msg.sender == sub_be328d5bAddress
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit 0x9b9dd246: address(arg1), arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor7[address(msg.sender)]
    require not stor7[address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    require not stor7[address(arg1)]
    require not stor7[address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
