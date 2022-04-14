contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;
uint16 stor7; offset 160
address stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;

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
    require code.data[5248 len 20]
    require code.data[5280 len 20]
    require code.data[5312 len 20]
    require code.data[5364 len 32] >= block.number
    require code.data[5364 len 32] >= code.data[5332 len 32]
    stor4 = msg.sender
    stor5 = code.data[5248 len 20]
    stor6 = code.data[5280 len 20]
    address(stor7.field_0) = code.data[5312 len 20]
    uint16(stor7.field_160) = 0
    stor9 = 0
    stor10 = code.data[5332 len 32]
    stor11 = code.data[5364 len 32]
    stor0 = 0
    stor1[code.data[5312 len 20]] = 20000000 * 10^18
    emit code.data[5204 len 32]: 20000000 * 10^18, address(stor7.field_0)
    stor1[stor6] = 20000000 * 10^18
    emit code.data[5204 len 32]: 20000000 * 10^18, stor6
    return code.data[693 len 4511]
}



// =====================  Runtime code  =====================


const sub_0557ea9c(?) = 100000000 * 10^18

const name = 'GISC LoanCoin'

const sub_15678a61(?) = 900

const decimals = 18

const sub_3335d69d(?) = 20000000 * 10^18

const symbol = 'GIS'

const DEV_PORTION = 20000000 * 10^18

const SECURITY_ETHER_CAP = 1000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address executorAddress;
address sub_0fca5820Address;
address sub_9ca3ed43Address;
uint8 stor7; offset 160
uint8 stor7; offset 168
address sub_58aa2e34Address;
mapping of uint256 eTHContributed;
uint256 totalETHRaised;
uint256 saleStartBlock;
uint256 saleEndBlock;

function sub_0fca5820(?) {
    return sub_0fca5820Address
}

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

function version() {
    return version[0 len version.length]
}

function sub_58aa2e34(?) {
    return sub_58aa2e34Address
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleHasEnded() {
    return bool(uint8(stor7.field_160))
}

function minCapReached() {
    return bool(uint8(stor7.field_168))
}

function sub_9ca3ed43(?) {
    return sub_9ca3ed43Address
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

function kill() {
    if executorAddress != msg.sender:
    selfdestruct(executorAddress)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2
    return (arg1 / arg2)
}

function sub_239c50c5(?) {
    require executorAddress == msg.sender
    sub_0fca5820Address = arg1
}

function triggerMinCap() {
    require executorAddress == msg.sender
    uint8(stor7.field_168) = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawETH() {
    require executorAddress == msg.sender
    require eth.balance(this.address)
    call sub_0fca5820Address with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function finalize() {
    require not uint8(stor7.field_160)
    require executorAddress == msg.sender
    uint8(stor7.field_160) = 1
    call sub_0fca5820Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function endSale() {
    require executorAddress == msg.sender
    require not uint8(stor7.field_160)
    require executorAddress == msg.sender
    uint8(stor7.field_160) = 1
    if eth.balance(this.address) > 0:
        call sub_0fca5820Address with:
           value eth.balance(this.address) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferTokens(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require executorAddress == msg.sender
    require arg2 > 0
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit 0x52f26928: arg2, arg1
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require msg.value + totalETHRaised >= totalETHRaised
    require msg.value + totalETHRaised >= msg.value
    require not uint8(stor7.field_160)
    require block.number > saleStartBlock
    require block.number < saleEndBlock
    require msg.value + totalETHRaised < 1000000 * 10^18
    require msg.value > 0
    if msg.value:
        require msg.value
        require 900 * msg.value / msg.value == 900
    require (900 * msg.value) + totalSupply >= totalSupply
    require (900 * msg.value) + totalSupply >= 900 * msg.value
    require (900 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (900 * msg.value) + balanceOf[address(msg.sender)] >= 900 * msg.value
    require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
    require msg.value + eTHContributed[address(msg.sender)] >= msg.value
    totalSupply += 900 * msg.value
    balanceOf[address(msg.sender)] += 900 * msg.value
    totalETHRaised += msg.value
    eTHContributed[address(msg.sender)] += msg.value
    emit 0x52f26928: (900 * msg.value), msg.sender
}



}
