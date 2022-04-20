contract main {


// =======================  Init code  ======================


address stor0;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
bool stor11; offset 256
uint8 stor11;
uint8 stor11; offset 8
uint256 stor13;
uint256 stor14;
address stor15;

function _fallback() payable {
    stor9 = 0
    stor10 = 0
    stor13 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[5315 len 20]
    stor6 = code.data[5347 len 20]
    stor7 = code.data[5379 len 20]
    stor8 = code.data[5443 len 20]
    stor3 = code.data[5411 len 20]
    stor4 = code.data[5379 len 20]
    uint8(stor11.field_0) = 1
    uint8(stor11.field_8) = 0
    stor11.field_256 % 1 = 0
    stor14 = code.data[5463 len 32]
    stor15 = this.address
    return code.data[303 len 5000]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const proxyPayment(address arg1) = 0

const BOUNTY_EXCHANGE_RATE = 500

const CALLER_EXCHANGE_RATE = 2000

const FOUNDER_EXCHANGE_RATE = 1000

const RESERVE_EXCHANGE_RATE = 1500

const MAX_GAS_PRICE = 5 * 10^10


address owner;
address newOwner;
address shpAddress;
address affiliateUtilityAddress;
address trusteeAddress;
address etherEscrowAddress;
address bountyAddress;
address trusteeAddress;
address apiAddress;
uint256 founderTokenCount;
uint256 reserveTokenCount;
uint8 stor11;
uint8 stor11; offset 8
mapping of uint8 stor12;
uint256 totalEtherPaid;
uint256 minContributionInWei;
address saleAddress;
address dynamicCeilingAddress;

function totalEtherPaid() {
    return totalEtherPaid
}

function etherEscrowAddress() {
    return etherEscrowAddress
}

function trusteeAddress() {
    return trusteeAddress
}

function closed() {
    return bool(uint8(stor11.field_8))
}

function dynamicCeiling() {
    return dynamicCeilingAddress
}

function paused() {
    return bool(uint8(stor11.field_0))
}

function founderTokenCount() {
    return founderTokenCount
}

function shp() {
    return shpAddress
}

function owner() {
    return owner
}

function reserveTokenCount() {
    return reserveTokenCount
}

function affiliateUtility() {
    return affiliateUtilityAddress
}

function minContributionInWei() {
    return minContributionInWei
}

function bountyAddress() {
    return bountyAddress
}

function newOwner() {
    return newOwner
}

function apiAddress() {
    return apiAddress
}

function approvedAddresses(address arg1) {
    return bool(stor12[arg1])
}

function trustee() {
    return trusteeAddress
}

function saleAddress() {
    return saleAddress
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setShp(address arg1) {
    require owner == msg.sender
    shpAddress = arg1
}

function pauseContribution() {
    require owner == msg.sender
    uint8(stor11.field_0) = 1
}

function resumeContribution() {
    require owner == msg.sender
    uint8(stor11.field_0) = 0
}

function approveAddress(address arg1) {
    require apiAddress == msg.sender
    stor12[address(arg1)] = 1
}

function setDynamicCeilingAddress(address arg1) {
    require owner == msg.sender
    dynamicCeilingAddress = arg1
}

function closeSale() {
    require owner == msg.sender
    uint8(stor11.field_8) = 1
    emit SaleClosed(block.timestamp);
}

function transferOwnership(address arg1, address arg2) {
    require owner == msg.sender
    require uint8(stor11.field_8)
    require arg1
    require arg2
    require ext_code.size(shpAddress)
    call shpAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(trusteeAddress)
    call trusteeAddress.0xa6f9dae1 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor11.field_0)
    require not uint8(stor11.field_8)
    require msg.sender
    require msg.value > 0
    require ext_code.size(msg.sender) <= 0
    require block.gasprice <= 5 * 10^10
    require msg.value >= minContributionInWei
    require stor12[address(msg.sender)]
    require ext_code.size(dynamicCeilingAddress)
    call dynamicCeilingAddress.availableAmountToCollect(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args totalEtherPaid
    require ext_call.success
    require ext_call.return_data[0]
    if msg.value <= ext_call.return_data[0]:
        emit Contribution(msg.value, msg.sender);
        if msg.value:
            require msg.value
            require 2000 * msg.value / msg.value == 2000
            if msg.value:
                require msg.value
                require 1500 * msg.value / msg.value == 1500
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                    if msg.value:
                        require msg.value
                        require 500 * msg.value / msg.value == 500
        require 2500 * msg.value >= 1000 * msg.value
        require (1000 * msg.value) + founderTokenCount >= founderTokenCount
        founderTokenCount += 1000 * msg.value
        require (1500 * msg.value) + reserveTokenCount >= reserveTokenCount
        reserveTokenCount += 1500 * msg.value
        require ext_code.size(affiliateUtilityAddress)
        call affiliateUtilityAddress.0x9d7150fe with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(affiliateUtilityAddress)
            call affiliateUtilityAddress.0xbc019eed with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require ext_code.size(affiliateUtilityAddress)
            call affiliateUtilityAddress.0x2d992bde with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2000 * msg.value, msg.value
            require ext_call.success
            require ext_code.size(shpAddress)
            call shpAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(shpAddress)
            call shpAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[32]
            require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, 2000 * msg.value
        require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args bountyAddress, 500 * msg.value
        require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args trusteeAddress, 2500 * msg.value
        require ext_call.success
        emit NewSale(msg.value, 2000 * msg.value, msg.sender);
        emit NewSale(msg.value, 2500 * msg.value, trusteeAddress);
        emit NewSale(msg.value, 500 * msg.value, bountyAddress);
        call etherEscrowAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require msg.value + totalEtherPaid >= totalEtherPaid
        totalEtherPaid += msg.value
    else:
        require ext_call.return_data[0] <= msg.value
        emit Contribution(ext_call.return_data[0], msg.sender);
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require 2000 * ext_call.return_data[0] / ext_call.return_data[0] == 2000
            if ext_call.return_data[0]:
                require ext_call.return_data[0]
                require 1500 * ext_call.return_data[0] / ext_call.return_data[0] == 1500
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require 1000 * ext_call.return_data[0] / ext_call.return_data[0] == 1000
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0]
                        require 500 * ext_call.return_data[0] / ext_call.return_data[0] == 500
        require 2500 * ext_call.return_data[0] >= 1000 * ext_call.return_data[0]
        require (1000 * ext_call.return_data[0]) + founderTokenCount >= founderTokenCount
        founderTokenCount += 1000 * ext_call.return_data[0]
        require (1500 * ext_call.return_data[0]) + reserveTokenCount >= reserveTokenCount
        reserveTokenCount += 1500 * ext_call.return_data[0]
        require ext_code.size(affiliateUtilityAddress)
        call affiliateUtilityAddress.0x9d7150fe with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(affiliateUtilityAddress)
            call affiliateUtilityAddress.0xbc019eed with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            require ext_code.size(affiliateUtilityAddress)
            call affiliateUtilityAddress.0x2d992bde with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2000 * ext_call.return_data[0], msg.value
            require ext_call.success
            require ext_code.size(shpAddress)
            call shpAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(shpAddress)
            call shpAddress.0x827f32c0 with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[32]
            require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, 2000 * ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args bountyAddress, 500 * ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(shpAddress)
        call shpAddress.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args trusteeAddress, 2500 * ext_call.return_data[0]
        require ext_call.success
        emit NewSale(ext_call.return_data[0], 2000 * ext_call.return_data[0], msg.sender);
        emit NewSale(ext_call.return_data[0], 2500 * ext_call.return_data[0], trusteeAddress);
        emit NewSale(ext_call.return_data[0], 500 * ext_call.return_data[0], bountyAddress);
        call etherEscrowAddress with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.return_data[0] + totalEtherPaid >= totalEtherPaid
        totalEtherPaid += ext_call.return_data[0]
        if msg.value - ext_call.return_data[0] > 0:
            call msg.sender with:
               value msg.value - ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
