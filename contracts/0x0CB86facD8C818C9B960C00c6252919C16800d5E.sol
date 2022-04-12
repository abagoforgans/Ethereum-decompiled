contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor4;
address stor5;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '1.0' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    stor10 = 300
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[4582 len 20]
    address(stor6.field_0) = code.data[4614 len 20]
    uint8(stor6.field_160) = 0
    stor10 = code.data[4634 len 32]
    stor7 = code.data[4666 len 32]
    stor8 = code.data[4698 len 32]
    stor1 = 10000000000 * 10^18
    stor2[code.data[4614 len 20]] = 10000000000 * 10^18
    emit CreateXPA(10000000000 * 10^18, address(stor6.field_0));
    return code.data[530 len 4040]
}



// =====================  Runtime code  =====================


const name = 'XPlay Token2'

const decimals = 18

const tokenCreationCap = 10000000000 * 10^18

const symbol = 'XPA2'

const tokenCrowdsaleCap = 500000000 * 10^18


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
uint8 stor6; offset 160
address xpaFundDepositAddress;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint256 crowdsaleSupply;
uint256 tokenExchangeRate;

function totalSupply() {
    return totalSupply
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function owner() {
    return owner
}

function fundingEndBlock() {
    return fundingEndBlock
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function crowdsaleSupply() {
    return crowdsaleSupply
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function xpaFundDeposit() {
    return xpaFundDepositAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor6.field_160)
    uint8(stor6.field_160) = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_e880afd4(?) {
    require owner == msg.sender
    require block.number < fundingStartBlock
    require not uint8(stor6.field_160)
    ethFundDepositAddress = arg1
    xpaFundDepositAddress = arg2
    tokenExchangeRate = arg3
    fundingStartBlock = arg4
    fundingEndBlock = arg5
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[arg1] >= arg3
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens() payable {
    require not uint8(stor6.field_160)
    require block.number >= fundingStartBlock
    require block.number < fundingEndBlock
    require msg.value > 0
    if msg.value:
        require msg.value
        require tokenExchangeRate * msg.value / msg.value == tokenExchangeRate
    require (tokenExchangeRate * msg.value) + crowdsaleSupply >= crowdsaleSupply
    require (tokenExchangeRate * msg.value) + crowdsaleSupply >= tokenExchangeRate * msg.value
    crowdsaleSupply += tokenExchangeRate * msg.value
    require 500000000 * 10^18 >= (tokenExchangeRate * msg.value) + crowdsaleSupply
    balanceOf[address(msg.sender)] += tokenExchangeRate * msg.value
    require balanceOf[address(stor6.field_0)] >= tokenExchangeRate * msg.value
    balanceOf[address(stor6.field_0)] += -1 * tokenExchangeRate * msg.value
    emit CreateXPA((tokenExchangeRate * msg.value), msg.sender);
}



}
