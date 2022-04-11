contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint8 stor7;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor7 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[3369 len 20]
    stor2 = code.data[3401 len 20]
    return code.data[159 len 3198]
}



// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 5 * 10^17

const MIN_CAP = 1

const COIN_PER_ETHER = 350

const MAX_CAP = 5 * 10^6


uint8 stor0; offset 160
address owner;
address coinAddress;
address multisigEtherAddress;
uint256 etherReceived;
uint256 coinSentToEther;
uint256 startTime;
uint256 endTime;
uint8 stor7;
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
    return bool(stor7)
}

function multisigEther() {
    return multisigEtherAddress
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
    endTime = block.timestamp + (360 * 24 * 3600)
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function backVISTAcoinOwner() {
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function getRemainCoins() {
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 5 * 10^6
    require ext_call.success
    require -coinSentToEther + backers[address(stor0.field_0)].field_256 + 5 * 10^6 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = -coinSentToEther + backers[address(stor0.field_0)].field_256 + 5 * 10^6
    require 5 * 10^6 >= coinSentToEther
    coinSentToEther = 5 * 10^6
    emit LogCoinsEmited((-coinSentToEther + 5 * 10^6), this.address);
    emit LogReceivedETH(owner, etherReceived);
}

function finalize() {
    require owner == msg.sender
    if block.timestamp < endTime:
        require coinSentToEther == 5 * 10^6
    call multisigEtherAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 5 * 10^6
    require ext_call.success
    require -coinSentToEther + backers[address(stor0.field_0)].field_256 + 5 * 10^6 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = -coinSentToEther + backers[address(stor0.field_0)].field_256 + 5 * 10^6
    require 5 * 10^6 >= coinSentToEther
    coinSentToEther = 5 * 10^6
    emit LogCoinsEmited((-coinSentToEther + 5 * 10^6), this.address);
    emit LogReceivedETH(owner, etherReceived);
    stor7 = 1
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not stor7
    require msg.value >= 5 * 10^17
    if msg.value:
        require msg.value
        require 350 * msg.value / msg.value == 350
    require 350 * msg.value == (10^18 * 350 * msg.value / 10^18) + (350 * msg.value % 10^18)
    require 350 * msg.value / 10^18 == (5 * 350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18 % 5)
    require (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) >= 350 * msg.value / 10^18
    require coinSentToEther >= 0
    require coinSentToEther + (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) <= 5 * 10^6
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18)
    require ext_call.success
    call multisigEtherAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
    backers[address(msg.sender)].field_256 = (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) + backers[address(msg.sender)].field_256
    require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
    backers[address(msg.sender)].field_0 += msg.value
    require msg.value + etherReceived >= etherReceived
    etherReceived += msg.value
    require (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
    coinSentToEther = (350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18) + coinSentToEther
    emit LogCoinsEmited(((350 * msg.value / 10^18 / 5) + (350 * msg.value / 10^18)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
