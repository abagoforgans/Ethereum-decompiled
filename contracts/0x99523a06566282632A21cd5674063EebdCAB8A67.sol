contract main {


// =======================  Init code  ======================


uint8 stor2;
address stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor11;
uint256 stor13;
uint256 stor15;
uint256 stor17;
mapping of uint256 stor18;

function _fallback() payable {
    stor2 = 8
    bool(stor5.length) = 0
    stor5.length.field_1 = 18
    stor5.length.field_8 = 'Bazista Test Token' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 4
    stor6.length.field_8 = 'BZST' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 14 * 10^9
    stor9 = 10^10
    stor11 = 10^9
    stor13 = 10^9
    stor15 = 10^9
    stor17 = 10^9
    require not msg.value
    stor4 = msg.sender
    stor18[address(this.address)] = stor7
    return code.data[582 len 5157]
}



// =====================  Runtime code  =====================


uint8 decimals;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
address icoWalletAddress;
uint256 icoSupply;
address advisorsWalletAddress;
uint256 advisorsSupply;
address teamWalletAddress;
uint256 teamSupply;
address marketingWalletAddress;
uint256 marketingSupply;
address bountyWalletAddress;
uint256 bountySupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function icoWallet() {
    return icoWalletAddress
}

function teamSupply() {
    return teamSupply
}

function decimals() {
    return decimals
}

function icoSupply() {
    return icoSupply
}

function teamWallet() {
    return teamWalletAddress
}

function marketingSupply() {
    return marketingSupply
}

function advisorsWallet() {
    return advisorsWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function marketingWallet() {
    return marketingWalletAddress
}

function bountySupply() {
    return bountySupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function advisorsSupply() {
    return advisorsSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function bountyWallet() {
    return bountyWalletAddress
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setICO(address arg1) {
    require msg.sender == owner
    icoWalletAddress = arg1
    require icoSupply > 0
    require icoSupply <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= icoSupply
    require balanceOf[stor8] + icoSupply >= balanceOf[stor8]
    balanceOf[stor8] += icoSupply
    emit Transfer(icoSupply, this.address, icoWalletAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setWallets(address arg1, address arg2, address arg3, address arg4) {
    require msg.sender == owner
    advisorsWalletAddress = arg1
    require advisorsSupply > 0
    require advisorsSupply <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= advisorsSupply
    require balanceOf[stor10] + advisorsSupply >= balanceOf[stor10]
    balanceOf[stor10] += advisorsSupply
    emit Transfer(advisorsSupply, this.address, advisorsWalletAddress);
    teamWalletAddress = arg2
    require teamSupply > 0
    require teamSupply <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= teamSupply
    require balanceOf[stor12] + teamSupply >= balanceOf[stor12]
    balanceOf[stor12] += teamSupply
    emit Transfer(teamSupply, this.address, teamWalletAddress);
    marketingWalletAddress = arg3
    require marketingSupply > 0
    require marketingSupply <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= marketingSupply
    require balanceOf[stor14] + marketingSupply >= balanceOf[stor14]
    balanceOf[stor14] += marketingSupply
    emit Transfer(marketingSupply, this.address, marketingWalletAddress);
    bountyWalletAddress = arg4
    require bountySupply > 0
    require bountySupply <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= bountySupply
    require balanceOf[stor16] + bountySupply >= balanceOf[stor16]
    balanceOf[stor16] += bountySupply
    emit Transfer(bountySupply, this.address, bountyWalletAddress);
}



}
