contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
uint8 paused;
mapping of uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(paused)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function pause() {
    require msg.sender == owner
    if bool(stor2[address(msg.sender)]) != 1:
        require not paused
    paused = 1
    emit Pause()
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
    return 0
}

function sub_54646b2d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require bool(stor4[address(arg1)]) == 1
    stor4[address(arg1)] = 0
    emit 0xa1a1e33f: arg1
    return 1
}

function sub_a76e1bab(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require bool(stor2[address(arg1)]) == 1
    require arg1 != owner
    stor2[address(arg1)] = 0
    emit RemoveWhiteListAddress(arg1);
    return 1
}

function AddWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    require arg1 != this.address
    stor2[address(arg1)] = 1
    emit AddWhiteListAddress(arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_7e239e82(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor4[address(arg1)]
    require arg1 != this.address
    require arg1 != owner
    stor4[address(arg1)] = 1
    emit 0x1fd9488d: arg1
    return 1
}

function mintTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1
    require not stor4[address(arg1)]
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(stor2[address(msg.sender)]) != 1:
        require not paused
    require arg2 <= balanceOf[address(arg1)]
    if bool(stor2[address(msg.sender)]) != 1:
        require msg.sender == owner
    else:
        if arg1 != msg.sender:
            require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if bool(stor2[address(msg.sender)]) != 1:
        require not paused
    require arg1
    require arg1 != this.address
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if bool(stor2[address(msg.sender)]) != 1:
        require not paused
    require arg2
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not stor4[address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
