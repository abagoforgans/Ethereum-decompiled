contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[4298 len 20]
    stor3 = code.data[4330 len 20]
    return code.data[133 len 4153]
}



// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^17

const MIN_CAP = 3 * 10^13

const COIN_PER_ETHER = 6 * 10^9

const MAX_CAP = 6 * 10^14


uint8 stor0; offset 160
address owner;
mapping of uint256 payments;
address coinAddress;
address multisigEtherAddress;
uint256 etherReceived;
uint256 coinSentToEther;
uint256 startTime;
uint256 endTime;
uint8 crowdsaleClosed;
mapping of struct backers;

function coin() {
    return coinAddress
}

function etherReceived() {
    return etherReceived
}

function endTime() {
    return endTime
}

function stopped() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function coinSentToEther() {
    return coinSentToEther
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function crowdsaleClosed() {
    return bool(crowdsaleClosed)
}

function multisigEther() {
    return multisigEtherAddress
}

function payments(address arg1) {
    return payments[arg1]
}

function emergencyStop() {
    require owner == msg.sender
    uint8(stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require arg1
    multisigEtherAddress = arg1
}

function release() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
}

function start() {
    require owner == msg.sender
    require not startTime
    startTime = block.timestamp
    endTime = block.timestamp + (720 * 24 * 3600)
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function backSkinCoinOwner() {
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function withdrawPayments() {
    require payments[address(msg.sender)]
    require eth.balance(this.address) >= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefundETH(msg.sender, payments[address(msg.sender)]);
}

function finalize() {
    require owner == msg.sender
    if block.timestamp < endTime:
        require coinSentToEther == 6 * 10^14
    if coinSentToEther < 3 * 10^13:
        require block.timestamp >= endTime + (360 * 24 * 3600)
    call multisigEtherAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(coinAddress)
        call coinAddress.burn(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    crowdsaleClosed = 1
}

function refund(uint256 arg1) {
    require block.timestamp >= endTime
    require coinSentToEther < 3 * 10^13
    require arg1 == backers[address(msg.sender)].field_256
    require ext_code.size(coinAddress)
    call coinAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.burn(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(msg.sender)].field_0 = 0
    if backers[address(msg.sender)].field_0 > 0:
        require backers[address(msg.sender)].field_0 + payments[address(msg.sender)] >= payments[address(msg.sender)]
        payments[address(msg.sender)] += backers[address(msg.sender)].field_0
}

function getRemainCoins() {
    require owner == msg.sender
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require -coinSentToEther + 6 * 10^14 <= 600 * 10^6
    else:
        require -coinSentToEther + 6 * 10^14 <= 200000 * 3600
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 6 * 10^14
    require ext_call.success
    require -coinSentToEther + backers[address(stor0.field_0)].field_256 + 6 * 10^14 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = -coinSentToEther + backers[address(stor0.field_0)].field_256 + 6 * 10^14
    require 6 * 10^14 >= coinSentToEther
    coinSentToEther = 6 * 10^14
    emit 0x85f3c1c7: (-coinSentToEther + 6 * 10^14), this.address
    emit LogReceivedETH(owner, etherReceived);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 6 * 10^9 * msg.value / msg.value == 6 * 10^9
    require 6 * 10^9 * msg.value == (10^18 * 6 * 10^9 * msg.value / 10^18) + (6 * 10^9 * msg.value % 10^18)
    require startTime + (48 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (48 * 24 * 3600):
        require coinSentToEther + (6 * 10^9 * msg.value / 10^18) >= 6 * 10^9 * msg.value / 10^18
        require coinSentToEther + (6 * 10^9 * msg.value / 10^18) <= 6 * 10^14
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 6 * 10^9 * msg.value / 10^18
        require ext_call.success
        require (6 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 6 * 10^9 * msg.value / 10^18
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (6 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther += 6 * 10^9 * msg.value / 10^18
        emit 0x85f3c1c7: (6 * 10^9 * msg.value / 10^18), msg.sender
    else:
        require 6 * 10^9 * msg.value / 10^18 == (5 * 6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18 % 5)
        require (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) >= 6 * 10^9 * msg.value / 10^18
        require coinSentToEther >= 0
        require coinSentToEther + (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) <= 6 * 10^14
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18)
        require ext_call.success
        require (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther = (6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18) + coinSentToEther
        emit 0x85f3c1c7: ((6 * 10^9 * msg.value / 10^18 / 5) + (6 * 10^9 * msg.value / 10^18)), msg.sender
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
