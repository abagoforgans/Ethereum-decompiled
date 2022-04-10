contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[7273 len 20]
    stor3 = code.data[7305 len 20]
    return code.data[266 len 6995]
}



// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^17

const MIN_CAP = 5 * 10^10

const COIN_PER_ETHER = (2500000 * 3600)

const MAX_CAP = 7 * 10^11


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
    endTime = block.timestamp + (120 * 24 * 3600)
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function backNewHopeOwner() {
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
    if block.timestamp < endTime:
        require coinSentToEther == 7 * 10^11
    if coinSentToEther < 5 * 10^10:
        require block.timestamp >= endTime + (72 * 24 * 3600)
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
    require coinSentToEther < 5 * 10^10
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
    require startTime + (24 * 3600) >= startTime
    if block.timestamp >= startTime + (24 * 3600):
        require -coinSentToEther + 7 * 10^11 <= 250000 * 3600
    else:
        require -coinSentToEther + 7 * 10^11 <= 375000 * 24 * 3600
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 7 * 10^11
    require ext_call.success
    require backers[address(stor0.field_0)].field_256 + -coinSentToEther + 7 * 10^11 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = backers[address(stor0.field_0)].field_256 + -coinSentToEther + 7 * 10^11
    require 7 * 10^11 >= coinSentToEther
    coinSentToEther = 7 * 10^11
    emit LogCoinsEmited((-coinSentToEther + 7 * 10^11), this.address);
    emit LogReceivedETH(owner, etherReceived);
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 2500000 * 3600 * msg.value / msg.value == 2500000 * 3600
    require 2500000 * 3600 * msg.value == (10^18 * 2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value % 10^18)
    require startTime + (24 * 3600) >= startTime
    if block.timestamp >= startTime + (24 * 3600):
        require (2500000 * 3600 * msg.value / 10^18) + coinSentToEther >= 2500000 * 3600 * msg.value / 10^18
        require (2500000 * 3600 * msg.value / 10^18) + coinSentToEther <= 7 * 10^11
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 2500000 * 3600 * msg.value / 10^18
        require ext_call.success
        require backers[address(msg.sender)].field_256 + (2500000 * 3600 * msg.value / 10^18) >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 2500000 * 3600 * msg.value / 10^18
        require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require etherReceived + msg.value >= etherReceived
        etherReceived += msg.value
        require coinSentToEther + (2500000 * 3600 * msg.value / 10^18) >= coinSentToEther
        coinSentToEther += 2500000 * 3600 * msg.value / 10^18
        emit LogCoinsEmited((2500000 * 3600 * msg.value / 10^18), msg.sender);
    else:
        require 2500000 * 3600 * msg.value / 10^18 == 2500000 * 3600 * msg.value / 10^18
        require (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2) >= 2500000 * 3600 * msg.value / 10^18
        require coinSentToEther >= 0
        require (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2) + coinSentToEther <= 7 * 10^11
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2)
        require ext_call.success
        require backers[address(msg.sender)].field_256 + (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2) >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = backers[address(msg.sender)].field_256 + (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2)
        require backers[address(msg.sender)].field_0 + msg.value >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require etherReceived + msg.value >= etherReceived
        etherReceived += msg.value
        require coinSentToEther + (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2) >= coinSentToEther
        coinSentToEther = coinSentToEther + (2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2)
        emit LogCoinsEmited(((2500000 * 3600 * msg.value / 10^18) + (2500000 * 3600 * msg.value / 10^18 / 2)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
