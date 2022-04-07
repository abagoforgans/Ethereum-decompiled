contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = '0.96' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    Mask(96, 0, stor5.field_160) = 0
    stor4 = code.data[5782 len 20]
    address(stor5.field_0) = code.data[5814 len 20]
    stor6 = code.data[5834 len 32]
    stor7 = code.data[5866 len 32]
    stor0 = 500000000 * 10^18
    stor1[address(stor5.field_0)] = 500000000 * 10^18
    emit CreateBAT(500000000 * 10^18, address(stor5.field_0));
    return code.data[773 len 4997]
}



// =====================  Runtime code  =====================


const name = 'Basic Attention Token'

const batFund = 500000000 * 10^18

const decimals = 18

const tokenExchangeRate = 8000

const tokenCreationCap = 1500000000 * 10^18

const symbol = 'BAT'

const tokenCreationMin = 750000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address batFundDepositAddress;
uint256 fundingStartBlock;
uint256 fundingEndBlock;

function batFundDeposit() {
    return batFundDepositAddress
}

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
    return bool(uint8(stor5.field_160))
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

function _fallback() payable {
    revert
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

function finalize() {
    require not uint8(stor5.field_160)
    require msg.sender == ethFundDepositAddress
    require totalSupply >= 750000000 * 10^18
    if block.number <= fundingEndBlock:
        require totalSupply == 1500000000 * 10^18
    Mask(96, 0, stor5.field_160) = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require not uint8(stor5.field_160)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value
    require 8000 * msg.value / msg.value == 8000
    require totalSupply + (8000 * msg.value) >= totalSupply
    require totalSupply + (8000 * msg.value) >= 8000 * msg.value
    require 1500000000 * 10^18 >= totalSupply + (8000 * msg.value)
    totalSupply += 8000 * msg.value
    balanceOf[address(msg.sender)] += 8000 * msg.value
    emit CreateBAT((8000 * msg.value), msg.sender);
}

function refund() {
    require not uint8(stor5.field_160)
    require block.number > fundingEndBlock
    require totalSupply < 750000000 * 10^18
    require batFundDepositAddress != msg.sender
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((balanceOf[address(msg.sender)] / 8000), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 8000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
