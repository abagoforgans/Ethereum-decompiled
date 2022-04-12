contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
address stor4;
address stor5;
address stor6;
uint32 stor7; offset 160
address stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

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
    require code.data[6154 len 20]
    require code.data[6186 len 20]
    require code.data[6218 len 20]
    require code.data[6270 len 32] > block.number
    require code.data[6270 len 32] > code.data[6238 len 32]
    stor4 = msg.sender
    stor5 = code.data[6154 len 20]
    stor6 = code.data[6186 len 20]
    address(stor7.field_0) = code.data[6218 len 20]
    stor7.field_160 % 16777216 = 0
    stor9 = 0
    stor10 = code.data[6238 len 32]
    stor11 = code.data[6270 len 32]
    stor12 = code.data[6238 len 32] + 8
    stor13 = code.data[6238 len 32] + 16
    stor0 = 0
    return code.data[546 len 5596]
}



// =====================  Runtime code  =====================


const name = 'NWA Success'

const decimals = 18

const sub_43e420b3(?) = 273

const symbol = 'NWAS'

const sub_a1131627(?) = 300

const sub_cc3f9b05(?) = 286

const HIDDEN_CAP = '2000 Ether'

const DEV_PORTION = 5

const RESERVE_PORTION = 2

const ADDITIONAL_PORTION = 7

const SECURITY_ETHER_CAP = 10^15


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address executorAddress;
address devETHDestinationAddress;
address sub_08315717Address;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
address sub_e07ebaf7Address;
mapping of uint256 eTHContributed;
uint256 totalETHRaised;
uint256 saleStartBlock;
uint256 saleEndBlock;
uint256 saleFirstEarlyBirdEndBlock;
uint256 saleSecondEarlyBirdEndBlock;

function sub_08315717(?) {
    return sub_08315717Address
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
    return bool(uint8(stor7.field_160))
}

function minCapReached() {
    return bool(uint8(stor7.field_168))
}

function saleFirstEarlyBirdEndBlock() {
    return saleFirstEarlyBirdEndBlock
}

function saleSecondEarlyBirdEndBlock() {
    return saleSecondEarlyBirdEndBlock
}

function executor() {
    return executorAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e07ebaf7(?) {
    return sub_e07ebaf7Address
}

function ETHContributed(address arg1) {
    return eTHContributed[arg1]
}

function allowRefund() {
    return bool(uint8(stor7.field_176))
}

function _fallback() payable {
    revert
}

function sub_55d6906c(?) {
    require executorAddress == msg.sender
    sub_e07ebaf7Address = arg1
}

function sub_6f09cab0(?) {
    require executorAddress == msg.sender
    sub_08315717Address = arg1
}

function triggerMinCap() {
    require executorAddress == msg.sender
    uint8(stor7.field_168) = 1
}

function changeDeveloperETHDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    devETHDestinationAddress = arg1
}

function triggerRefund() {
    require not uint8(stor7.field_160)
    require not uint8(stor7.field_168)
    require block.number >= saleEndBlock
    require executorAddress == msg.sender
    uint8(stor7.field_176) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function withdrawFunds() {
    require uint8(stor7.field_168)
    require eth.balance(this.address)
    call devETHDestinationAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor7.field_168)
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function refund() {
    require uint8(stor7.field_176)
    require eTHContributed[address(msg.sender)]
    eTHContributed[address(msg.sender)] = 0
    emit 0x2cc94e40: eTHContributed[address(msg.sender)], msg.sender
    call msg.sender with:
       value eTHContributed[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor7.field_168)
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
    require not uint8(stor7.field_160)
    require uint8(stor7.field_168)
    require executorAddress == msg.sender
    uint8(stor7.field_160) = 1
    if totalSupply:
        require totalSupply
        require 7 * totalSupply / totalSupply == 7
    require (7 * totalSupply / 93) + totalSupply >= totalSupply
    if 7 * totalSupply / 93:
        require 7 * totalSupply / 93
        require 2 * 7 * totalSupply / 93 / 7 * totalSupply / 93 == 2
    require 2 * 7 * totalSupply / 93 / 7 <= 7 * totalSupply / 93
    totalSupply += 7 * totalSupply / 93
    balanceOf[stor6] = (7 * totalSupply / 93) - (2 * 7 * totalSupply / 93 / 7)
    balanceOf[address(stor7.field_0)] = 2 * 7 * totalSupply / 93 / 7
    emit 0xb27c74a1: ((7 * totalSupply / 93) - (2 * 7 * totalSupply / 93 / 7)), sub_08315717Address
    emit 0xb27c74a1: (2 * 7 * totalSupply / 93 / 7), sub_e07ebaf7Address
    if eth.balance(this.address) > 0:
        call devETHDestinationAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining - 34710 wei
        require ext_call.success
}

function createTokens() payable {
    require not uint8(stor7.field_160)
    require block.number >= saleStartBlock
    require block.number <= saleEndBlock
    require msg.value + totalETHRaised >= totalETHRaised
    require msg.value + totalETHRaised <= 10^15
    require msg.value
    if block.number < saleFirstEarlyBirdEndBlock:
        if msg.value:
            require msg.value
            require 300 * msg.value / msg.value == 300
        require (300 * msg.value) + totalSupply >= totalSupply
        require (300 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
        totalSupply += 300 * msg.value
        balanceOf[address(msg.sender)] += 300 * msg.value
        totalETHRaised += msg.value
        eTHContributed[address(msg.sender)] += msg.value
        emit 0xb27c74a1: (300 * msg.value), msg.sender
    else:
        if block.number >= saleSecondEarlyBirdEndBlock:
            if msg.value:
                require msg.value
                require 273 * msg.value / msg.value == 273
            require (273 * msg.value) + totalSupply >= totalSupply
            require (273 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
            totalSupply += 273 * msg.value
            balanceOf[address(msg.sender)] += 273 * msg.value
            totalETHRaised += msg.value
            eTHContributed[address(msg.sender)] += msg.value
            emit 0xb27c74a1: (273 * msg.value), msg.sender
        else:
            if msg.value:
                require msg.value
                require 286 * msg.value / msg.value == 286
            require (286 * msg.value) + totalSupply >= totalSupply
            require (286 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
            totalSupply += 286 * msg.value
            balanceOf[address(msg.sender)] += 286 * msg.value
            totalETHRaised += msg.value
            eTHContributed[address(msg.sender)] += msg.value
            emit 0xb27c74a1: (286 * msg.value), msg.sender
}



}
