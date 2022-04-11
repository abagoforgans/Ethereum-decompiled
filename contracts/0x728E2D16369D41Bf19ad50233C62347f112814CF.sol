contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[4343 len 20]
    stor3 = code.data[4375 len 20]
    return code.data[133 len 4198]
}



// =====================  Runtime code  =====================


const MIN_INVEST_ETHER = 10^17

const COIN_PER_ETHER = 3 * 10^9

const MAX_CAP = 16 * 10^13


uint8 stor0; offset 160
address owner;
mapping of uint256 payments;
address coinAddress;
address multisigEtherAddress;
uint256 etherReceived;
uint256 coinSentToEther;
uint256 coinToBurn;
uint256 startTime;
uint256 endTime;
uint8 stor9;
uint8 stor9; offset 8
mapping of struct backers;

function refundsOpen() {
    return bool(uint8(stor9.field_8))
}

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
    return bool(stor0)
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

function coinToBurn() {
    return coinToBurn
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256
}

function crowdsaleClosed() {
    return bool(uint8(stor9.field_0))
}

function multisigEther() {
    return multisigEtherAddress
}

function payments(address arg1) {
    return payments[arg1]
}

function emergencyStop() {
    require owner == msg.sender
    stor0 = 1
}

function release() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function changeMultisig(address arg1) {
    require owner == msg.sender
    require arg1
    multisigEtherAddress = arg1
}

function start() {
    require owner == msg.sender
    require not startTime
    startTime = block.timestamp
    endTime = block.timestamp + (528 * 24 * 3600)
}

function setRefundState() {
    require owner == msg.sender
    if uint8(stor9.field_8):
        uint8(stor9.field_8) = 0
    else:
        uint8(stor9.field_8) = 1
}

function drain() {
    require owner == msg.sender
    call multisigEtherAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeTribeOwner() {
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

function coinDrain() {
    require owner == msg.sender
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function refund(uint256 arg1) {
    require 1 == bool(uint8(stor9.field_8))
    require arg1 == backers[address(msg.sender)].field_256
    require ext_code.size(coinAddress)
    call coinAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    backers[address(msg.sender)].field_0 = 0
    if backers[address(msg.sender)].field_0 > 0:
        require backers[address(msg.sender)].field_0 + payments[address(msg.sender)] >= payments[address(msg.sender)]
        payments[address(msg.sender)] += backers[address(msg.sender)].field_0
}

function finalize() {
    require owner == msg.sender
    if coinSentToEther != 16 * 10^13:
        require block.timestamp >= endTime
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
        require ext_call.return_data[0] + coinToBurn >= coinToBurn
        coinToBurn += ext_call.return_data[0]
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
    uint8(stor9.field_0) = 1
}

function _fallback() payable {
    require not stor0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value >= 10^17
    if msg.value:
        require msg.value
        require 3 * 10^9 * msg.value / msg.value == 3 * 10^9
    require 3 * 10^9 * msg.value == (10^18 * 3 * 10^9 * msg.value / 10^18) + (3 * 10^9 * msg.value % 10^18)
    require startTime + (168 * 24 * 3600) >= startTime
    if block.timestamp >= startTime + (168 * 24 * 3600):
        require coinSentToEther + (3 * 10^9 * msg.value / 10^18) >= 3 * 10^9 * msg.value / 10^18
        require coinSentToEther + (3 * 10^9 * msg.value / 10^18) <= 16 * 10^13
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 3 * 10^9 * msg.value / 10^18
        require ext_call.success
        require (3 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 3 * 10^9 * msg.value / 10^18
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (3 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther += 3 * 10^9 * msg.value / 10^18
        emit LogCoinsEmited((3 * 10^9 * msg.value / 10^18), msg.sender);
    else:
        require 3 * 10^9 * msg.value / 10^18 == (5 * 3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18 % 5)
        require (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) >= 3 * 10^9 * msg.value / 10^18
        require coinSentToEther >= 0
        require coinSentToEther + (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) <= 16 * 10^13
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18)
        require ext_call.success
        require (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) + backers[address(msg.sender)].field_256
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther = (3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18) + coinSentToEther
        emit LogCoinsEmited(((3 * 10^9 * msg.value / 10^18 / 5) + (3 * 10^9 * msg.value / 10^18)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
