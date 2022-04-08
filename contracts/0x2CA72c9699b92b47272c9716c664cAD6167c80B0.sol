contract main {


// =======================  Init code  ======================


array of uint256 stor3;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[291 len 7163]
    revert
}



// =====================  Runtime code  =====================


const name = 'GeoUnits'

const gunsFund = 35000000 * 10^18

const decimals = 18

const tokenExchangeRate = 1000

const tokenCreationCap = 100000000 * 10^18

const symbol = 'GUNS'

const tokenCreationMin = 1000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address hostAccount;
address ethFundDepositAddress;
uint8 isFinalized; offset 160
uint128 stor6; offset 160
address gunsFundDepositAddress;
uint256 fundingStartBlock;
uint256 fundingEndBlock;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(isFinalized)
}

function fundingEndBlock() {
    return fundingEndBlock
}

function gunsFundDeposit() {
    return gunsFundDepositAddress
}

function hostAccount() {
    return hostAccount
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function emergencyPay() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require not hostAccount
    hostAccount = msg.sender
    Mask(96, 0, stor6.field_160) = 0
    ethFundDepositAddress = arg1
    gunsFundDepositAddress = arg2
    fundingStartBlock = arg3
    fundingEndBlock = arg4
    totalSupply = 35000000 * 10^18
    balanceOf[address(stor6.field_0)] = 35000000 * 10^18
    emit CreateGUNS(35000000 * 10^18, gunsFundDepositAddress);
}

function mistakenTokens() {
    require msg.sender == ethFundDepositAddress
    if balanceOf[address(this.address)] > 0:
        emit Transfer(balanceOf[address(this.address)], this.address, gunsFundDepositAddress);
        balanceOf[address(stor6.field_0)] += balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
    if balanceOf[0] > 0:
        emit Transfer(balanceOf[0], 0, gunsFundDepositAddress);
        balanceOf[address(stor6.field_0)] += balanceOf[0]
        balanceOf[0] = 0
}

function refund() {
    require not isFinalized
    require block.number > fundingEndBlock
    require totalSupply < 1000000 * 10^18
    require gunsFundDepositAddress != msg.sender
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((balanceOf[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require hostAccount
    require not isFinalized
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value
    require 1000 * msg.value / msg.value == 1000
    require totalSupply + (1000 * msg.value) >= totalSupply
    require totalSupply + (1000 * msg.value) >= 1000 * msg.value
    require 100000000 * 10^18 >= totalSupply + (1000 * msg.value)
    totalSupply += 1000 * msg.value
    balanceOf[address(msg.sender)] += 1000 * msg.value
    emit CreateGUNS((1000 * msg.value), msg.sender);
}

function finalize() {
    require msg.sender == ethFundDepositAddress
    if block.number <= fundingEndBlock:
        require totalSupply >= 100000000 * 10^18
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 100000000 * 10^18 >= totalSupply
    if -totalSupply + 100000000 * 10^18 > 0:
        require 100000000 * 10^18 >= totalSupply
        require 100000000 * 10^18 >= -totalSupply + 100000000 * 10^18
        totalSupply = 100000000 * 10^18
        balanceOf[address(stor6.field_0)] = balanceOf[address(stor6.field_0)] + -totalSupply + 100000000 * 10^18
        emit CreateGUNS((-totalSupply + 100000000 * 10^18), gunsFundDepositAddress);
    Mask(96, 0, stor6.field_160) = 1
}



}
