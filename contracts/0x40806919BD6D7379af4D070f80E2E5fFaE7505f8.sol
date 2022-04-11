contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
address stor4;
address stor5;
uint32 stor6; offset 160
address stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;

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
    require code.data[4516 len 20]
    require code.data[4548 len 20]
    require code.data[4600 len 32] > block.number
    require code.data[4600 len 32] > code.data[4568 len 32]
    stor4 = msg.sender
    stor5 = code.data[4516 len 20]
    address(stor6.field_0) = code.data[4548 len 20]
    stor6.field_160 % 16777216 = 0
    stor8 = 0
    stor9 = code.data[4568 len 32]
    stor10 = code.data[4600 len 32]
    stor0 = 0
    return code.data[489 len 4015]
}



// =====================  Runtime code  =====================


const name = 'SENS Token'

const decimals = 18

const symbol = 'SNS'

const DEV_PORTION = 45

const SECURITY_ETHER_CAP = 20000 * 10^18

const SENS_PER_ETH_BASE_RATE = 500


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address executorAddress;
address devETHDestinationAddress;
uint8 stor6; offset 160
uint8 stor6; offset 168
uint8 stor6; offset 176
address devSENSDestinationAddress;
mapping of uint256 eTHContributed;
uint256 totalETHRaised;
uint256 saleStartBlock;
uint256 saleEndBlock;

function totalSupply() {
    return totalSupply
}

function saleStartBlock() {
    return saleStartBlock
}

function totalETHRaised() {
    return totalETHRaised
}

function saleEndBlock() {
    return saleEndBlock
}

function devETHDestination() {
    return devETHDestinationAddress
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleHasEnded() {
    return bool(uint8(stor6.field_160))
}

function devSENSDestination() {
    return devSENSDestinationAddress
}

function minCapReached() {
    return bool(uint8(stor6.field_168))
}

function executor() {
    return executorAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function ETHContributed(address arg1) {
    return eTHContributed[arg1]
}

function allowRefund() {
    return bool(uint8(stor6.field_176))
}

function _fallback() payable {
    revert
}

function changeDeveloperETHDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    devETHDestinationAddress = arg1
}

function changeDeveloperSENSDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    devSENSDestinationAddress = arg1
}

function withdrawFunds() {
    require eth.balance(this.address)
    call devETHDestinationAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function endSale() {
    require not uint8(stor6.field_160)
    require uint8(stor6.field_168)
    require executorAddress == msg.sender
    uint8(stor6.field_160) = 1
    if totalSupply:
        require totalSupply
        require 45 * totalSupply / totalSupply == 45
    require (45 * totalSupply / 55) + totalSupply >= totalSupply
    totalSupply += 45 * totalSupply / 55
    balanceOf[address(stor6.field_0)] = 45 * totalSupply / 55
    if eth.balance(this.address) > 0:
        call devETHDestinationAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
}

function createTokens() payable {
    require not uint8(stor6.field_160)
    require block.number >= saleStartBlock
    require block.number <= saleEndBlock
    require msg.value + totalETHRaised >= totalETHRaised
    require msg.value + totalETHRaised <= 20000 * 10^18
    require msg.value
    require msg.value
    require 500 * msg.value / msg.value == 500
    require (500 * msg.value) + totalSupply >= totalSupply
    require (500 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
    totalSupply += 500 * msg.value
    balanceOf[address(msg.sender)] += 500 * msg.value
    totalETHRaised += msg.value
    eTHContributed[address(msg.sender)] += msg.value
}



}
