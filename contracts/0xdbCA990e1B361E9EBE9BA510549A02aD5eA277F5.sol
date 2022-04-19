contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;
uint128 stor9; offset 176
uint128 stor9; offset 168
uint128 stor9; offset 160
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    stor4 = 419146 * 3600
    stor5 = 419890 * 3600
    stor6 = 0xeb8c0b1e99671fc7326679316669c4595052ef5a
    stor7 = 0xb965c25ebf4628add6a603be6623e0999cf15d8e
    stor8 = 0x4fc1ec9cd67be1a99aadb2cbc650df21d2bdd138
    address(stor9.field_0) = 0xea55d6b964e33325686de5ada270e99993046cac
    Mask(96, 0, stor9.field_160) = 0
    Mask(88, 0, stor9.field_168) = 0
    Mask(80, 0, stor9.field_176) = 0
    stor10 = 250000000 * 10^18
    stor11 = 37500000 * 10^18
    stor12 = 25000000 * 10^18
    stor13 = 50000000 * 10^18
    stor14 = 31250 * 10^18 * 3600
    stor15 = 0
    stor16 = 0
    stor17 = 68750 * 10^18
    stor18 = 0
    require not msg.value
    stor3 = msg.sender
    stor1[address(msg.sender)] = stor15
    return code.data[706 len 5692]
}



// =====================  Runtime code  =====================


const name = 'StockBlock'

const decimals = 18

const multisig = 0x16046f1fa88790fe75b528e46c3b7074d3672456

const symbol = 'XMC'

const getPrice = 2000

const PRICE = 2000


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 startBlock;
uint256 endBlock;
address stor6;
address stor7;
address stor8;
uint8 stor9; offset 160
uint8 stor9; offset 168
uint8 stor9; offset 176
uint128 stor9; offset 176
uint128 stor9; offset 168
uint128 stor9; offset 160
address stor9;
uint256 maxsupply;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 INITIAL_SUPPLY;
uint256 sub_08a32db3;
uint256 stor17;
uint256 presaleEtherRaised;

function endBlock() {
    return endBlock
}

function sub_08a32db3(?) {
    return sub_08a32db3
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function presaleEtherRaised() {
    return presaleEtherRaised
}

function startBlock() {
    return startBlock
}

function maxsupply() {
    return maxsupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_0eead1fc(?) {
    require stor6
    require msg.sender == owner
    require not uint8(stor9.field_176)
    require totalSupply + stor14 >= totalSupply
    sub_08a32db3 = totalSupply + stor14
    balanceOf[stor8] = stor13
    totalSupply = sub_08a32db3
    Mask(80, 0, stor9.field_176) = 1
}

function sub_1fccfec9(?) {
    require block.timestamp >= startBlock + (17520 * 24 * 3600)
    require stor6
    require msg.sender == owner
    require not uint8(stor9.field_160)
    require totalSupply + stor14 >= totalSupply
    sub_08a32db3 = totalSupply + stor14
    balanceOf[stor6] = stor11
    balanceOf[address(stor9.field_0)] = stor12
    totalSupply = sub_08a32db3
    Mask(96, 0, stor9.field_160) = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function allocateUnsold() {
    require block.timestamp >= startBlock + (26280 * 24 * 3600)
    require stor6
    require stor7
    require msg.sender == owner
    require not uint8(stor9.field_168)
    require sub_08a32db3 <= maxsupply
    balanceOf[stor7] = maxsupply - sub_08a32db3
    require sub_08a32db3 + balanceOf[stor7] >= sub_08a32db3
    totalSupply = sub_08a32db3 + balanceOf[stor7]
    Mask(88, 0, stor9.field_168) = 1
}

function createTokens(address arg1) payable {
    require msg.value
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 2000 * 10^18 * msg.value / 10^18 * msg.value == 2000
    require 2000 * 10^18 * msg.value == (10^18 * 2000 * 10^18 * msg.value / 10^18) + (2000 * 10^18 * msg.value % 10^18)
    require totalSupply + (2000 * 10^18 * msg.value / 10^18) >= totalSupply
    require INITIAL_SUPPLY >= 0
    totalSupply = totalSupply + (2000 * 10^18 * msg.value / 10^18) + INITIAL_SUPPLY
    require balanceOf[address(arg1)] + (2000 * 10^18 * msg.value / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 2000 * 10^18 * msg.value / 10^18
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    presaleEtherRaised += msg.value
    call 0x16046f1fa88790fe75b528e46c3b7074d3672456 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require presaleEtherRaised < stor17
    require msg.value
    require block.timestamp >= startBlock
    require block.timestamp <= endBlock
    if 10^18 * msg.value:
        require 10^18 * msg.value
        require 2000 * 10^18 * msg.value / 10^18 * msg.value == 2000
    require 2000 * 10^18 * msg.value == (10^18 * 2000 * 10^18 * msg.value / 10^18) + (2000 * 10^18 * msg.value % 10^18)
    require totalSupply + (2000 * 10^18 * msg.value / 10^18) >= totalSupply
    require INITIAL_SUPPLY >= 0
    totalSupply = totalSupply + (2000 * 10^18 * msg.value / 10^18) + INITIAL_SUPPLY
    require balanceOf[address(msg.sender)] + (2000 * 10^18 * msg.value / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 2000 * 10^18 * msg.value / 10^18
    require presaleEtherRaised + msg.value >= presaleEtherRaised
    presaleEtherRaised += msg.value
    call 0x16046f1fa88790fe75b528e46c3b7074d3672456 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
