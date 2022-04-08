contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
uint128 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    Mask(96, 0, stor4.field_160) = 0
    address(stor4.field_0) = code.data[4381 len 20]
    stor5 = code.data[4401 len 32]
    stor6 = code.data[4433 len 32]
    stor0 = 0
    return code.data[439 len 3930]
}



// =====================  Runtime code  =====================


const name = 'Fake Token'

const decimals = 18

const tokenExchangeRate = 1000

const symbol = 'FTK'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint8 stor4; offset 160
address ethFundDepositAddress;
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
    return bool(stor4)
}

function fundingEndBlock() {
    return fundingEndBlock
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require msg.sender == ethFundDepositAddress
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
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

function _fallback() payable {
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value
    require 1000 * msg.value / msg.value == 1000
    require totalSupply + (1000 * msg.value) >= totalSupply
    require totalSupply + (1000 * msg.value) >= 1000 * msg.value
    emit Transfer((1000 * msg.value), 0, msg.sender);
    totalSupply += 1000 * msg.value
    balanceOf[address(msg.sender)] += 1000 * msg.value
}



}
