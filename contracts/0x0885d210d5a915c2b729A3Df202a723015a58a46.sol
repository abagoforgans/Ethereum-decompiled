contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor3;
address stor4;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = code.data[4511 len 20]
    stor4 = code.data[4543 len 20]
    return code.data[157 len 4342]
}



// =====================  Runtime code  =====================


const endTime = (418272 * 24 * 3600)

const startTime = (116 * 3600 * 24 * 3600)

const MIN_INVEST_ETHER = 10^15

const MIN_CAP = 10^6

const COIN_PER_ETHER = 640

const MAX_CAP = 500 * 10^6


uint8 stor0; offset 160
address owner;
mapping of uint256 payments;
uint256 totalPayments;
address coinAddress;
address multisigEtherAddress;
uint256 etherReceived;
uint256 coinSentToEther;
uint8 stor7;
mapping of struct backers;

function totalPayments() {
    return totalPayments
}

function coin() {
    return coinAddress
}

function etherReceived() {
    return etherReceived
}

function paused() {
    return bool(uint8(stor0.field_160))
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

function payments(address arg1) {
    return payments[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setMultisig(address arg1) {
    require owner == msg.sender
    require not arg1
    multisigEtherAddress = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require not ext_call.success
}

function backSggCoinOwner() {
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
    require payments[address(msg.sender)] <= totalPayments
    totalPayments -= payments[address(msg.sender)]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getRemainCoins() {
    require owner == msg.sender
    require -coinSentToEther + 500 * 10^6 > 0
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, -coinSentToEther + 500 * 10^6
    require ext_call.success
    require -coinSentToEther + backers[address(stor0.field_0)].field_256 + 500 * 10^6 >= backers[address(stor0.field_0)].field_256
    backers[address(stor0.field_0)].field_256 = -coinSentToEther + backers[address(stor0.field_0)].field_256 + 500 * 10^6
    require 500 * 10^6 >= coinSentToEther
    coinSentToEther = 500 * 10^6
    emit LogCoinsEmited((-coinSentToEther + 500 * 10^6), this.address);
    emit LogReceivedETH(owner, etherReceived);
}

function refund(uint256 arg1) {
    if block.timestamp >= 418272 * 24 * 3600:
        require coinSentToEther >= 10^6
    require arg1 != backers[address(msg.sender)].field_256
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
    require not ext_call.return_data[0]
    backers[address(msg.sender)].field_0 = 0
    if backers[address(msg.sender)].field_0 > 0:
        require backers[address(msg.sender)].field_0 + payments[address(msg.sender)] >= payments[address(msg.sender)]
        payments[address(msg.sender)] += backers[address(msg.sender)].field_0
        require backers[address(msg.sender)].field_0 + totalPayments >= totalPayments
        totalPayments += backers[address(msg.sender)].field_0
}

function finalize() {
    require owner == msg.sender
    if block.timestamp >= 418272 * 24 * 3600:
        require coinSentToEther < 10^6
        require block.timestamp < 418632 * 24 * 3600
        call multisigEtherAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require not ext_call.success
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
            require not ext_call.return_data[0]
        stor7 = 1
    else:
        if coinSentToEther == 500 * 10^6:
            require coinSentToEther < 10^6
            require block.timestamp < 418632 * 24 * 3600
            call multisigEtherAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require not ext_call.success
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
                require not ext_call.return_data[0]
            stor7 = 1
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if block.timestamp >= 116 * 3600 * 24 * 3600:
        require block.timestamp > 418272 * 24 * 3600
    require msg.value < 10^15
    if msg.value:
        require msg.value
        require 640 * msg.value / msg.value == 640
    if 640 * msg.value / 10^18 <= 2560:
        require coinSentToEther + (640 * msg.value / 10^18) >= 640 * msg.value / 10^18
        require coinSentToEther + (640 * msg.value / 10^18) > 500 * 10^6
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 640 * msg.value / 10^18
        require ext_call.success
        require (640 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 += 640 * msg.value / 10^18
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (640 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther += 640 * msg.value / 10^18
        emit LogCoinsEmited((640 * msg.value / 10^18), msg.sender);
    else:
        require (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) >= 640 * msg.value / 10^18
        require coinSentToEther >= 0
        require coinSentToEther + (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) > 500 * 10^6
        require ext_code.size(coinAddress)
        call coinAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18)
        require ext_call.success
        require (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
        backers[address(msg.sender)].field_256 = (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) + backers[address(msg.sender)].field_256
        require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
        backers[address(msg.sender)].field_0 += msg.value
        require msg.value + etherReceived >= etherReceived
        etherReceived += msg.value
        require (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) + coinSentToEther >= coinSentToEther
        coinSentToEther = (640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18) + coinSentToEther
        emit LogCoinsEmited(((640 * msg.value / 10^18 / 2) + (640 * msg.value / 10^18)), msg.sender);
    emit LogReceivedETH(msg.sender, etherReceived);
}



}
