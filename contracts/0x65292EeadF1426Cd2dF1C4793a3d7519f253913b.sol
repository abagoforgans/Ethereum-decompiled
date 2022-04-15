contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'COSS' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'COSS' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'COSS' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 54359820
    stor10 = 10^18
    stor12 = 0xd6b5a54f940bf3d52e438cab785981aaefdf40c
    stor13 = 0x1e1f9b4dae157282b6be74d0e9d48cd8298ed1a8
    stor14 = 0x7dbb1f2114d1bedca41f32bb43df938bcfb13e5c
    stor15 = 0x49a72a02c7f1e36523b74259178eadd5c3c27173
    stor16 = 0xda3705a572ceb85e05b29a0dc89082f1d8ab717d
    stor17 = 0xa08e7f6028e7d2d83a156d7da5db6ce0615493b9
    require not msg.value
    stor11 = msg.sender
    require 80 * 10^6 * stor10 / 80 * 10^6 == stor10
    stor5[stor12] = 80 * 10^6 * stor10
    require 50 * 10^6 * stor10 / 50 * 10^6 == stor10
    stor5[stor13] = 50 * 10^6 * stor10
    require 10 * 10^6 * stor10 / 10 * 10^6 == stor10
    stor5[stor14] = 10 * 10^6 * stor10
    require 20 * 10^6 * stor10 / 20 * 10^6 == stor10
    stor5[stor15] = 20 * 10^6 * stor10
    require 30 * 10^6 * stor10 / 30 * 10^6 == stor10
    stor5[stor16] = 30 * 10^6 * stor10
    require 10 * 10^6 * stor10 / 10 * 10^6 == stor10
    stor5[stor17] = 10 * 10^6 * stor10
    return code.data[1961 len 6377]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 revenueShareIdentifierList;
array of uint256 revenueShareCurrency;
mapping of uint256 revenueShareDistribution;
uint256 decimalMultiplier;
address revenueShareOwnerAddress;
address icoWalletAddress;
address futureFundingWalletAddress;
address charityWalletAddress;
address capWalletAddress;
address shareholdersWalletAddress;
address investorWalletAddress;

function capWalletAddress() {
    return capWalletAddress
}

function name() {
    return name[0 len name.length]
}

function futureFundingWalletAddress() {
    return futureFundingWalletAddress
}

function totalSupply() {
    return totalSupply
}

function decimalMultiplier() {
    return decimalMultiplier
}

function shareholdersWalletAddress() {
    return shareholdersWalletAddress
}

function decimals() {
    return decimals
}

function revenueShareOwnerAddress() {
    return revenueShareOwnerAddress
}

function icoWalletAddress() {
    return icoWalletAddress
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function revenueShareDistribution(address arg1) {
    return revenueShareDistribution[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function investorWalletAddress() {
    return investorWalletAddress
}

function revenueShareIdentifierList(address arg1) {
    return revenueShareIdentifierList[arg1][0 len revenueShareIdentifierList[arg1].length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function revenueShareCurrency(address arg1) {
    return revenueShareCurrency[arg1][0 len revenueShareCurrency[arg1].length]
}

function charityWalletAddress() {
    return charityWalletAddress
}

function _fallback() payable {
    revert
}

function activateRevenueShareIdentifier(string arg1) {
    revenueShareIdentifierList[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function addRevenueShareCurrency(address arg1, string arg2) {
    if msg.sender == revenueShareOwnerAddress:
        revenueShareCurrency[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
        revenueShareDistribution[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function saveRevenueShareDistribution(address arg1, uint256 arg2) {
    if msg.sender == revenueShareOwnerAddress:
        require revenueShareDistribution[address(arg1)] + arg2 >= revenueShareDistribution[address(arg1)]
        revenueShareDistribution[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
