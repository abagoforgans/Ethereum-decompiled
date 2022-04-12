contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
uint8 stor5; offset 152
address stor5;
address stor5;
uint8 stor6; offset 152
address stor6;
address stor6;
uint8 stor7; offset 152
address stor7;
address stor7;
uint8 stor8; offset 152
address stor8;
address stor8;
uint8 stor9; offset 152
address stor9;
address stor9;
uint8 stor10; offset 152
address stor10;
address stor10;
uint8 stor11; offset 152
address stor11;
address stor11;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    Mask(152, 0, stor5.field_0) = 0x53b91e38b207c97cbff06f48a0f7ab2dd81449
    uint8(stor5.field_152) = 0
    Mask(152, 0, stor6.field_0) = 0x83fdfb328fc8d07e2a7933e3013e181f9798ad
    uint8(stor6.field_152) = 0
    Mask(152, 0, stor7.field_0) = 0x7ab99fbf023cb41b50ae7d24621729295edbfa
    uint8(stor7.field_152) = 0
    Mask(152, 0, stor8.field_0) = 0x11349f715cf59f75f0a00185e7b1c36f55c3ab
    uint8(stor8.field_152) = 0
    Mask(152, 0, stor9.field_0) = 0x97ec8840e682d058b24e6e19e68358d97a6e5c
    uint8(stor9.field_152) = 0
    Mask(152, 0, stor10.field_0) = 0xd1bcbcde9ca431f6dd92077dfae98f94e446e4
    uint8(stor10.field_152) = 0
    Mask(152, 0, stor11.field_0) = 0xd31206e625f1f30039d1fa472303e71317870a
    uint8(stor11.field_152) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor1[address(stor5.field_0)] = 31603785 * 10^18
    stor1[address(stor6.field_0)] = 3566341 * 10^18
    stor1[address(stor7.field_0)] = 6387575 * 10^15 * 3600
    stor1[address(stor8.field_0)] = 7799865 * 10^15 * 24 * 3600
    stor1[address(stor9.field_0)] = 10919811 * 10^18
    stor1[address(stor10.field_0)] = 58832579 * 10^18
    stor1[address(stor11.field_0)] = 14624747 * 10^18
    stor0 = 170622047 * 10^18
    emit Transfer(31603785 * 10^18, 0, address(stor5.field_0));
    emit Transfer(3566341 * 10^18, 0, address(stor6.field_0));
    emit Transfer((6387575 * 10^15 * 3600), 0, address(stor7.field_0));
    emit Transfer((7799865 * 10^15 * 24 * 3600), 0, address(stor8.field_0));
    emit Transfer(10919811 * 10^18, 0, address(stor9.field_0));
    emit Transfer(58832579 * 10^18, 0, address(stor10.field_0));
    emit Transfer(14624747 * 10^18, 0, address(stor11.field_0));
    return code.data[2705 len 5603]
}



// =====================  Runtime code  =====================


const indCommunity = 10919811 * 10^18

const name = 'Indorse Token'

const indFuture = 58832579 * 10^18

const decimals = 18

const indPreSale = (6387575 * 10^15 * 3600)

const indInflation = 14624747 * 10^18

const indVesting = (7799865 * 10^15 * 24 * 3600)

const indSale = 31603785 * 10^18

const symbol = 'IND'

const indSeed = 3566341 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 version;
address indSaleDepositAddress;
address indSeedDepositAddress;
address indPresaleDepositAddress;
address indVestingDepositAddress;
address indCommunityDepositAddress;
address indFutureDepositAddress;
address indInflationDepositAddress;

function indVestingDeposit() {
    return indVestingDepositAddress
}

function totalSupply() {
    return totalSupply
}

function indFutureDeposit() {
    return indFutureDepositAddress
}

function indCommunityDeposit() {
    return indCommunityDepositAddress
}

function indPresaleDeposit() {
    return indPresaleDepositAddress
}

function version() {
    return version[0 len version.length]
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function indSeedDeposit() {
    return indSeedDepositAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function indSaleDeposit() {
    return indSaleDepositAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function indInflationDeposit() {
    return indInflationDepositAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require calldata.size >= 68
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
