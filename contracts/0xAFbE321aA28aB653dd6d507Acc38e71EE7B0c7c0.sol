contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 freezeOf;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint8 stor15; offset 160
uint128 stor15; offset 160
address stor15;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintedWallets() {
    return bool(uint8(stor15.field_160))
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

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
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

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == stor12:
        require block.timestamp >= 429528 * 24 * 3600
    if msg.sender == stor13:
        require block.timestamp >= 438288 * 24 * 3600
    if msg.sender == stor14:
        require block.timestamp >= 447072 * 24 * 3600
    if msg.sender == address(stor15.field_0):
        require block.timestamp >= 455832 * 24 * 3600
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg1 == stor12:
        require block.timestamp >= 429528 * 24 * 3600
    if arg1 == stor13:
        require block.timestamp >= 438288 * 24 * 3600
    if arg1 == stor14:
        require block.timestamp >= 447072 * 24 * 3600
    if arg1 == address(stor15.field_0):
        require block.timestamp >= 455832 * 24 * 3600
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function mintWallets(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg3
    require arg4
    require arg5
    require arg6
    require arg7
    require arg8
    require not uint8(stor15.field_160)
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
    stor11 = arg4
    stor12 = arg5
    stor13 = arg6
    stor14 = arg7
    address(stor15.field_0) = arg8
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 7500000 * 10^18 >= totalSupply
    totalSupply += 7500000 * 10^18
    require balanceOf[stor8] + 7500000 * 10^18 >= balanceOf[stor8]
    balanceOf[stor8] += 7500000 * 10^18
    emit Mint(7500000 * 10^18, stor8);
    emit Transfer(7500000 * 10^18, 0, stor8);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 52500000 * 10^18 >= totalSupply
    totalSupply += 52500000 * 10^18
    require balanceOf[stor9] + 52500000 * 10^18 >= balanceOf[stor9]
    balanceOf[stor9] += 52500000 * 10^18
    emit Mint(52500000 * 10^18, stor9);
    emit Transfer(52500000 * 10^18, 0, stor9);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 30000000 * 10^18 >= totalSupply
    totalSupply += 30000000 * 10^18
    require balanceOf[stor10] + 30000000 * 10^18 >= balanceOf[stor10]
    balanceOf[stor10] += 30000000 * 10^18
    emit Mint(30000000 * 10^18, stor10);
    emit Transfer(30000000 * 10^18, 0, stor10);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 12000000 * 10^18 >= totalSupply
    totalSupply += 12000000 * 10^18
    require balanceOf[stor11] + 12000000 * 10^18 >= balanceOf[stor11]
    balanceOf[stor11] += 12000000 * 10^18
    emit Mint(12000000 * 10^18, stor11);
    emit Transfer(12000000 * 10^18, 0, stor11);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 12000000 * 10^18 >= totalSupply
    totalSupply += 12000000 * 10^18
    require balanceOf[stor12] + 12000000 * 10^18 >= balanceOf[stor12]
    balanceOf[stor12] += 12000000 * 10^18
    emit Mint(12000000 * 10^18, stor12);
    emit Transfer(12000000 * 10^18, 0, stor12);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 12000000 * 10^18 >= totalSupply
    totalSupply += 12000000 * 10^18
    require balanceOf[stor13] + 12000000 * 10^18 >= balanceOf[stor13]
    balanceOf[stor13] += 12000000 * 10^18
    emit Mint(12000000 * 10^18, stor13);
    emit Transfer(12000000 * 10^18, 0, stor13);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 12000000 * 10^18 >= totalSupply
    totalSupply += 12000000 * 10^18
    require balanceOf[stor14] + 12000000 * 10^18 >= balanceOf[stor14]
    balanceOf[stor14] += 12000000 * 10^18
    emit Mint(12000000 * 10^18, stor14);
    emit Transfer(12000000 * 10^18, 0, stor14);
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + 12000000 * 10^18 >= totalSupply
    totalSupply += 12000000 * 10^18
    require balanceOf[address(stor15.field_0)] + 12000000 * 10^18 >= balanceOf[address(stor15.field_0)]
    balanceOf[address(stor15.field_0)] += 12000000 * 10^18
    emit Mint(12000000 * 10^18, address(stor15.field_0));
    emit Transfer(12000000 * 10^18, 0, address(stor15.field_0));
    Mask(96, 0, stor15.field_160) = 1
    emit WalletsMinted()
}



}
