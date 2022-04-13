contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[7369 len 20]
    stor3 = code.data[7401 len 20]
    return code.data[268 len 7089]
}



// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^16

const MIN_CAP = 1

const COIN_PER_ETHER = 700 * 10^6

const MAX_CAP = 10^13


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 payments;
address coinAddress;
address multisigEtherAddress;
uint256 etherReceived;
uint256 coinSentToEther;
uint256 startTime;
uint256 endTime;
uint8 stor8;
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
    return bool(stor8)
}

function multisigEther() {
    return multisigEtherAddress
}

function payments(address arg1) {
    return payments[arg1]
}

function emergencyStop() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMultisig(address arg1) {
    require msg.sender == owner
    require arg1
    multisigEtherAddress = arg1
}

function release() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function start() {
    require msg.sender == owner
    require not startTime
    startTime = block.timestamp
    endTime = block.timestamp + (720 * 24 * 3600)
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_287b265b(?) {
    require msg.sender == owner
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
    require msg.sender == owner
    require block.timestamp >= endTime
    if coinSentToEther < 1:
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
        call coinAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    stor8 = 1
}

function refund(uint256 arg1) {
    require block.timestamp >= endTime
    require coinSentToEther < 1
    require arg1 == backers[address(msg.sender)].field_256
    require ext_code.size(coinAddress)
    call coinAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    backers[address(msg.sender)].field_0 = 0
    if backers[address(msg.sender)].field_0 > 0:
        require payments[address(msg.sender)] + backers[address(msg.sender)].field_0 >= payments[address(msg.sender)]
        payments[address(msg.sender)] += backers[address(msg.sender)].field_0
}

function getRemainCoins() {
    require msg.sender == owner
    require startTime + (240 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (240 * 24 * 3600):
        require -coinSentToEther + 10^13 <= 8750000
    else:
        require startTime + (480 * 24 * 3600) >= startTime
        if block.timestamp >= startTime + (480 * 24 * 3600):
            require -coinSentToEther + 10^13 <= 7 * 10^6
        else:
            require -coinSentToEther + 10^13 <= 7700000
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 10^13
    require ext_call.success
    require backers[address(stor0.field_0)].field_256 + -coinSentToEther + 10^13 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = backers[address(stor0.field_0)].field_256 + -coinSentToEther + 10^13
    require 10^13 >= coinSentToEther
    coinSentToEther = 10^13
    emit LogCoinsEmited((-coinSentToEther + 10^13), this.address);
    emit LogReceivedETH(owner, etherReceived);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require 700 * 10^6 * msg.value / msg.value == 700 * 10^6
    require 700 * 10^6 * msg.value == (10^18 * 700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value % 10^18)
    require startTime + (240 * 24 * 3600) >= startTime
    if block.timestamp < startTime + (240 * 24 * 3600):
        require 700 * 10^6 * msg.value / 10^18 == 700 * 10^6 * msg.value / 10^18
        require (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4) >= 700 * 10^6 * msg.value / 10^18
        require coinSentToEther >= 0
        require (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4) + coinSentToEther <= 10^13
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4)
        require ext_call.success
        require backers[address(msg.sender)].field_256 + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4) >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = backers[address(msg.sender)].field_256 + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4)
        require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require etherReceived + msg.value >= etherReceived
        etherReceived += msg.value
        require coinSentToEther + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4) >= coinSentToEther
        coinSentToEther = coinSentToEther + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4)
        emit LogCoinsEmited(((700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 4)), msg.sender);
    else:
        require startTime + (480 * 24 * 3600) >= startTime
        if block.timestamp >= startTime + (480 * 24 * 3600):
            require (700 * 10^6 * msg.value / 10^18) + coinSentToEther >= 700 * 10^6 * msg.value / 10^18
            require (700 * 10^6 * msg.value / 10^18) + coinSentToEther <= 10^13
            require ext_code.size(coinAddress)
            call coinAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 700 * 10^6 * msg.value / 10^18
            require ext_call.success
            require backers[address(msg.sender)].field_256 + (700 * 10^6 * msg.value / 10^18) >= backers[address(msg.sender)].field_256
            backers[address(msg.sender)].field_256 += 700 * 10^6 * msg.value / 10^18
            require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
            backers[address(msg.sender)].field_0 += msg.value
            require etherReceived + msg.value >= etherReceived
            etherReceived += msg.value
            require coinSentToEther + (700 * 10^6 * msg.value / 10^18) >= coinSentToEther
            coinSentToEther += 700 * 10^6 * msg.value / 10^18
            emit LogCoinsEmited((700 * 10^6 * msg.value / 10^18), msg.sender);
        else:
            require 700 * 10^6 * msg.value / 10^18 == (10 * 700 * 10^6 * msg.value / 10^18 / 10) + (700 * 10^6 * msg.value / 10^18 % 10)
            require (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10) >= 700 * 10^6 * msg.value / 10^18
            require coinSentToEther >= 0
            require (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10) + coinSentToEther <= 10^13
            require ext_code.size(coinAddress)
            call coinAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10)
            require ext_call.success
            require backers[address(msg.sender)].field_256 + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10) >= backers[address(msg.sender)].field_256
            backers[address(msg.sender)].field_256 = backers[address(msg.sender)].field_256 + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10)
            require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
            backers[address(msg.sender)].field_0 += msg.value
            require etherReceived + msg.value >= etherReceived
            etherReceived += msg.value
            require coinSentToEther + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10) >= coinSentToEther
            coinSentToEther = coinSentToEther + (700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10)
            emit LogCoinsEmited(((700 * 10^6 * msg.value / 10^18) + (700 * 10^6 * msg.value / 10^18 / 10)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
