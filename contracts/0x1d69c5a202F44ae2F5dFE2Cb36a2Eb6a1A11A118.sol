contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor4 = 0
    stor5 = 417312 * 24 * 3600
    stor6 = 0
    stor13 = 10
    stor14 = 10
    require not msg.value
    stor0 = msg.sender
    stor9 = 0xa1b2f1782fa7b2cb5b889f40e5865af3767b8a48
    stor10 = 0x4f83b956aa48e14761838b5e6aac094aa653f2be
    stor13 = stor13^8
    stor14 = stor14^16
    require not stor4
    stor3 += 10000 * stor13
    stor1[stor9] += 10000 * stor13
    emit Mint((10000 * stor13), stor9);
    stor11 = stor5 + (720 * 24 * 3600)
    stor15 = 64929 * 10^18
    stor7 = 2999972727521000
    stor8 = 0
    return code.data[689 len 7346]
}



// =====================  Runtime code  =====================


const name = 'Rivetz Token'

const decimals = 8

const symbol = 'RvT'


address owner;
mapping of uint256 balances;
mapping of uint256 allowance;
uint256 total;
uint8 stor4;
uint256 start;
uint256 currentStage;
uint256 price;
uint256 sub_44cb9d03;
address bountiesAddress;
address multisigAddress;
uint256 deadline;
uint256 lastDivideRewardTime;
uint256 stor13;
uint256 stor15;
uint256 stor16;
mapping of struct stor17;

function mintingFinished() {
    return bool(stor4)
}

function totalSupply() {
    return total
}

function balances(address arg1) {
    return balances[arg1]
}

function deadline() {
    return deadline
}

function lastDivideRewardTime() {
    return lastDivideRewardTime
}

function total() {
    return total
}

function sub_44cb9d03(?) {
    return sub_44cb9d03
}

function multisig() {
    return multisigAddress
}

function currentStage() {
    return currentStage
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function price() {
    return price
}

function start() {
    return start
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function bounties() {
    return bountiesAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    stor4 = 1
    emit MintFinished()
    return 1
}

function safeWithdrawal() {
    if multisigAddress == msg.sender:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function returnDeposit() {
    if block.timestamp < deadline:
        require currentStage >= 2
    require balances[address(msg.sender)]
    if eth.balance(multisigAddress) < stor15:
        call msg.sender with:
           value stor17[address(msg.sender)].field_0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_85956649(?) {
    require block.timestamp < deadline
    require eth.balance(multisigAddress) <= stor15
    require msg.sender == owner
    if stor17[address(arg2)].field_768 <= lastDivideRewardTime:
        stor17[address(arg2)].field_768 = block.timestamp
        stor17[address(arg2)].field_256 = balances[address(arg2)]
    require not stor4
    total += arg1
    balances[address(arg2)] += arg1
    emit Mint(arg1, arg2);
    if stor17[stor0].field_768 <= lastDivideRewardTime:
        stor17[stor0].field_768 = block.timestamp
        stor17[stor0].field_256 = balances[stor0]
    require not stor4
    total += 2500000 * arg1 / 10 * 10^6
    balances[stor0] += 2500000 * arg1 / 10 * 10^6
    emit Mint((2500000 * arg1 / 10 * 10^6), owner);
    if stor17[stor9].field_768 <= lastDivideRewardTime:
        stor17[stor9].field_768 = block.timestamp
        stor17[stor9].field_256 = balances[stor9]
    require not stor4
    total += 500000 * arg1 / 10 * 10^6
    balances[stor9] += 500000 * arg1 / 10 * 10^6
    emit Mint((500000 * arg1 / 10 * 10^6), bountiesAddress);
}

function _fallback() payable {
    require block.timestamp < deadline
    require eth.balance(multisigAddress) <= stor15
    require price
    stor17[address(msg.sender)].field_256 += msg.value / price * stor13
    stor17[address(msg.sender)].field_0 += msg.value
    sub_44cb9d03 += msg.value / price * stor13
    if stor17[address(msg.sender)].field_768 <= lastDivideRewardTime:
        stor17[address(msg.sender)].field_768 = block.timestamp
        stor17[address(msg.sender)].field_256 = balances[address(msg.sender)]
    require not stor4
    total += 13 * 10^6 * msg.value / price * stor13 / 10 * 10^6
    balances[address(msg.sender)] += 13 * 10^6 * msg.value / price * stor13 / 10 * 10^6
    emit Mint((13 * 10^6 * msg.value / price * stor13 / 10 * 10^6), msg.sender);
    if stor17[stor0].field_768 <= lastDivideRewardTime:
        stor17[stor0].field_768 = block.timestamp
        stor17[stor0].field_256 = balances[stor0]
    require not stor4
    total += 2500000 * msg.value / price * stor13 / 10 * 10^6
    balances[stor0] += 2500000 * msg.value / price * stor13 / 10 * 10^6
    emit Mint((2500000 * msg.value / price * stor13 / 10 * 10^6), owner);
    if stor17[stor9].field_768 <= lastDivideRewardTime:
        stor17[stor9].field_768 = block.timestamp
        stor17[stor9].field_256 = balances[stor9]
    require not stor4
    total += 500000 * msg.value / price * stor13 / 10 * 10^6
    balances[stor9] += 500000 * msg.value / price * stor13 / 10 * 10^6
    emit Mint((500000 * msg.value / price * stor13 / 10 * 10^6), bountiesAddress);
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawReward() {
    require block.timestamp >= deadline + (720 * 24 * 3600)
    if block.timestamp < deadline:
        require currentStage >= 2
    require balances[address(msg.sender)]
    if stor17[address(msg.sender)].field_512 >= lastDivideRewardTime:
        return 0
    require sub_44cb9d03
    if stor17[address(msg.sender)].field_768 > lastDivideRewardTime:
        if not stor16 * stor17[address(msg.sender)].field_256 / sub_44cb9d03:
            return 0
        call msg.sender with:
           value stor16 * stor17[address(msg.sender)].field_256 / sub_44cb9d03 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if balances[address(msg.sender)]:
            stor17[address(msg.sender)].field_512 = block.timestamp
        else:
            stor17[address(msg.sender)].field_0 = 0
            stor17[address(msg.sender)].field_256 = 0
            stor17[address(msg.sender)].field_512 = 0
            stor17[address(msg.sender)].field_768 = 0
        return (stor16 * stor17[address(msg.sender)].field_256 / sub_44cb9d03)
    if not stor16 * balances[address(msg.sender)] / sub_44cb9d03:
        return 0
    call msg.sender with:
       value stor16 * balances[address(msg.sender)] / sub_44cb9d03 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if balances[address(msg.sender)]:
        stor17[address(msg.sender)].field_512 = block.timestamp
    else:
        stor17[address(msg.sender)].field_0 = 0
        stor17[address(msg.sender)].field_256 = 0
        stor17[address(msg.sender)].field_512 = 0
        stor17[address(msg.sender)].field_768 = 0
    return (stor16 * balances[address(msg.sender)] / sub_44cb9d03)
}



}
