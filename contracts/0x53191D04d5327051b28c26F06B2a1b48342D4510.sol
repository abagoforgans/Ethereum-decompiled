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
    require code.data[6245 len 20]
    require code.data[6277 len 20]
    require code.data[6309 len 20]
    require code.data[6361 len 32] > block.number
    require code.data[6361 len 32] > code.data[6329 len 32]
    stor4 = msg.sender
    stor5 = code.data[6245 len 20]
    stor6 = code.data[6277 len 20]
    address(stor7.field_0) = code.data[6309 len 20]
    stor7.field_160 % 16777216 = 0
    stor9 = 0
    stor10 = code.data[6329 len 32]
    stor11 = code.data[6361 len 32]
    stor12 = code.data[6329 len 32] + 191301
    stor13 = code.data[6329 len 32] + 246840
    stor0 = 0
    return code.data[550 len 5683]
}



// =====================  Runtime code  =====================


const name = 'NWAS Success'

const decimals = 18

const symbol = 'NWA'

const HIDDEN_CAP = Array(len=66, data='0xd22f19d54193ff5e08e7ba88c8e52e', 'c1b9fc8d4e0cf177e1be8a764fa5b375', 'fa' >> 256, Mask(16, -512, '0xd22f19d54193ff5e08e7ba88c8e52e', 'c1b9fc8d4e0cf177e1be8a764fa5b375', 'fa') << 512)

const DEV_PORTION = 20

const RESERVE_PORTION = 2

const CAT_PER_ETH_FIRST_EARLY_BIRD_RATE = 330

const ADDITIONAL_PORTION = 22

const CAT_PER_ETH_SECOND_EARLY_BIRD_RATE = 315

const CAT_PER_ETH_BASE_RATE = 300

const SECURITY_ETHER_CAP = 5000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address executorAddress;
address devETHDestinationAddress;
address devCATDestinationAddress;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
address reserveCATDestinationAddress;
mapping of uint256 eTHContributed;
uint256 totalETHRaised;
uint256 saleStartBlock;
uint256 saleEndBlock;
uint256 saleFirstEarlyBirdEndBlock;
uint256 saleSecondEarlyBirdEndBlock;

function totalSupply() {
    return totalSupply
}

function saleStartBlock() {
    return saleStartBlock
}

function totalETHRaised() {
    return totalETHRaised
}

function reserveCATDestination() {
    return reserveCATDestinationAddress
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

function devCATDestination() {
    return devCATDestinationAddress
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

function ETHContributed(address arg1) {
    return eTHContributed[arg1]
}

function allowRefund() {
    return bool(uint8(stor7.field_176))
}

function _fallback() payable {
    revert
}

function triggerMinCap() {
    require executorAddress == msg.sender
    uint8(stor7.field_168) = 1
}

function changeDeveloperCATDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    devCATDestinationAddress = arg1
}

function changeDeveloperETHDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    devETHDestinationAddress = arg1
}

function changeReserveCATDestinationAddress(address arg1) {
    require executorAddress == msg.sender
    reserveCATDestinationAddress = arg1
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
    emit CATRefundedForWei(eTHContributed[address(msg.sender)], msg.sender);
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
        require 22 * totalSupply / totalSupply == 22
    require (22 * totalSupply / 78) + totalSupply >= totalSupply
    if 22 * totalSupply / 78:
        require 22 * totalSupply / 78
        require 2 * 22 * totalSupply / 78 / 22 * totalSupply / 78 == 2
    require 2 * 22 * totalSupply / 78 / 22 <= 22 * totalSupply / 78
    totalSupply += 22 * totalSupply / 78
    balanceOf[stor6] = (22 * totalSupply / 78) - (2 * 22 * totalSupply / 78 / 22)
    balanceOf[address(stor7.field_0)] = 2 * 22 * totalSupply / 78 / 22
    emit CreatedCAT(((22 * totalSupply / 78) - (2 * 22 * totalSupply / 78 / 22)), devCATDestinationAddress);
    emit CreatedCAT((2 * 22 * totalSupply / 78 / 22), reserveCATDestinationAddress);
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
    require msg.value + totalETHRaised <= 5000 * 10^18
    require msg.value
    if block.number < saleFirstEarlyBirdEndBlock:
        if msg.value:
            require msg.value
            require 330 * msg.value / msg.value == 330
        require (330 * msg.value) + totalSupply >= totalSupply
        require (330 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
        totalSupply += 330 * msg.value
        balanceOf[address(msg.sender)] += 330 * msg.value
        totalETHRaised += msg.value
        eTHContributed[address(msg.sender)] += msg.value
        emit CreatedCAT((330 * msg.value), msg.sender);
    else:
        if block.number >= saleSecondEarlyBirdEndBlock:
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
            emit CreatedCAT((300 * msg.value), msg.sender);
        else:
            if msg.value:
                require msg.value
                require 315 * msg.value / msg.value == 315
            require (315 * msg.value) + totalSupply >= totalSupply
            require (315 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            require msg.value + eTHContributed[address(msg.sender)] >= eTHContributed[address(msg.sender)]
            totalSupply += 315 * msg.value
            balanceOf[address(msg.sender)] += 315 * msg.value
            totalETHRaised += msg.value
            eTHContributed[address(msg.sender)] += msg.value
            emit CreatedCAT((315 * msg.value), msg.sender);
}



}
