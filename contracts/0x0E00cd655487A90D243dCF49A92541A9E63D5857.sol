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
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
address stor24;

function _fallback() payable {
    stor9 = 0
    stor10 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[7498 len 20]
    stor6 = code.data[7530 len 20]
    stor7 = code.data[7562 len 20]
    stor8 = code.data[7626 len 20]
    stor3 = code.data[7594 len 20]
    stor4 = code.data[7562 len 20]
    uint8(stor11.field_0) = 1
    uint8(stor11.field_8) = 0
    stor11.field_256 % 1 = 0
    stor23 = code.data[7838 len 32]
    stor24 = this.address
    stor19 = code.data[7646 len 32]
    stor20 = code.data[7678 len 32]
    stor21 = code.data[7710 len 32]
    stor17 = code.data[7742 len 32]
    stor18 = code.data[7774 len 32]
    stor22 = code.data[7806 len 32]
    return code.data[392 len 7094]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const proxyPayment(address arg1) = 0

const BOUNTY_EXCHANGE_RATE = 500

const CALLER_EXCHANGE_RATE = 2000

const FOUNDER_EXCHANGE_RATE = 1000

const THIRD_TIER_DISCOUNT = 30

const RESERVE_EXCHANGE_RATE = 1500

const MAX_GAS_PRICE = 5 * 10^10

const FIRST_TIER_DISCOUNT = 10

const SECOND_TIER_DISCOUNT = 20


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
mapping of uint256 whitelist;
uint256 preSaleEtherPaid;
uint256 totalContributions;
uint256 whitelistedPlannedContributions;
uint256 minPresaleContributionEther;
uint256 maxPresaleContributionEther;
uint256 firstTierDiscountUpperLimitEther;
uint256 secondTierDiscountUpperLimitEther;
uint256 thirdTierDiscountUpperLimitEther;
uint256 preSaleCap;
uint256 honourWhitelistEnd;
address presaleAddress;

function presaleAddress() {
    return presaleAddress
}

function totalContributions() {
    return totalContributions
}

function preSaleCap() {
    return preSaleCap
}

function etherEscrowAddress() {
    return etherEscrowAddress
}

function trusteeAddress() {
    return trusteeAddress
}

function firstTierDiscountUpperLimitEther() {
    return firstTierDiscountUpperLimitEther
}

function closed() {
    return bool(uint8(stor11.field_8))
}

function paused() {
    return bool(uint8(stor11.field_0))
}

function honourWhitelistEnd() {
    return honourWhitelistEnd
}

function preSaleEtherPaid() {
    return preSaleEtherPaid
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

function thirdTierDiscountUpperLimitEther() {
    return thirdTierDiscountUpperLimitEther
}

function whitelist(address arg1) {
    return whitelist[arg1]
}

function reserveTokenCount() {
    return reserveTokenCount
}

function affiliateUtility() {
    return affiliateUtilityAddress
}

function secondTierDiscountUpperLimitEther() {
    return secondTierDiscountUpperLimitEther
}

function whitelistedPlannedContributions() {
    return whitelistedPlannedContributions
}

function maxPresaleContributionEther() {
    return maxPresaleContributionEther
}

function minPresaleContributionEther() {
    return minPresaleContributionEther
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

function closeSale() {
    require owner == msg.sender
    uint8(stor11.field_8) = 1
    emit SaleClosed(block.timestamp);
}

function addToWhitelist(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not whitelist[address(arg1)]
    whitelist[address(arg1)] = arg2
    require arg2 + whitelistedPlannedContributions >= whitelistedPlannedContributions
    whitelistedPlannedContributions += arg2
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
    if not calldata.size:
        require msg.sender
        require msg.value > 0
        require ext_code.size(msg.sender) <= 0
        require block.gasprice <= 5 * 10^10
        require not uint8(stor11.field_8)
        require not uint8(stor11.field_0)
        require stor12[address(msg.sender)]
        if msg.value < minPresaleContributionEther:
            emit ValidContributionCheck(msg.value, msg.value >= minPresaleContributionEther);
            revert
        emit ValidContributionCheck(msg.value, msg.value <= maxPresaleContributionEther);
        require msg.value <= maxPresaleContributionEther
        if honourWhitelistEnd <= block.timestamp:
            require whitelistedPlannedContributions + preSaleCap >= preSaleCap
            preSaleCap += whitelistedPlannedContributions
            whitelistedPlannedContributions = 0
            emit WhitelistedCounterUpdated(uint256 rg1, uint256 rg2):
                                           0,
            if msg.value <= preSaleCap:
                emit AllowedContributionCheck(msg.value, 4);
                require msg.value <= preSaleCap
                preSaleCap -= msg.value
                emit PresaleCapUpdated((preSaleCap - msg.value));
                require msg.value >= msg.value
                require msg.value == msg.value
                require msg.value > 0
                emit Contribution(msg.value, msg.sender);
                if msg.value:
                    require msg.value
                    require 2000 * msg.value / msg.value == 2000
                if msg.value <= firstTierDiscountUpperLimitEther:
                    if 2000 * msg.value:
                        require 2000 * msg.value
                        require 20000 * msg.value / 2000 * msg.value == 10
                    emit DiscountApplied(msg.value, 2000 * msg.value, 20000 * msg.value / 100);
                    require (2000 * msg.value) + (20000 * msg.value / 100) >= 20000 * msg.value / 100
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
                            args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100), msg.value
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
                        args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100)
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
                    emit NewSale(msg.value, (2000 * msg.value) + (20000 * msg.value / 100), msg.sender);
                else:
                    if msg.value > secondTierDiscountUpperLimitEther:
                        if 2000 * msg.value:
                            require 2000 * msg.value
                            require 60000 * msg.value / 2000 * msg.value == 30
                        emit DiscountApplied(msg.value, 2000 * msg.value, 60000 * msg.value / 100);
                        require (2000 * msg.value) + (60000 * msg.value / 100) >= 60000 * msg.value / 100
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
                                args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100), msg.value
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
                            args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100)
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
                        emit NewSale(msg.value, (2000 * msg.value) + (60000 * msg.value / 100), msg.sender);
                    else:
                        if 2000 * msg.value:
                            require 2000 * msg.value
                            require 40000 * msg.value / 2000 * msg.value == 20
                        emit DiscountApplied(msg.value, 2000 * msg.value, 40000 * msg.value / 100);
                        require (2000 * msg.value) + (40000 * msg.value / 100) >= 40000 * msg.value / 100
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
                                args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100), msg.value
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
                            args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100)
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
                        emit NewSale(msg.value, (2000 * msg.value) + (40000 * msg.value / 100), msg.sender);
                emit NewSale(msg.value, 2500 * msg.value, trusteeAddress);
                emit NewSale(msg.value, 500 * msg.value, bountyAddress);
                call etherEscrowAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require msg.value + preSaleEtherPaid >= preSaleEtherPaid
                preSaleEtherPaid += msg.value
                require totalContributions + 1 >= totalContributions
                totalContributions++
                emit CountersUpdated(preSaleEtherPaid, msg.value);
            else:
                require preSaleCap <= msg.value
                emit ContributionRefund(msg.value - preSaleCap, msg.sender);
                emit AllowedContributionCheck(preSaleCap, 4);
                require preSaleCap <= preSaleCap
                preSaleCap = 0
                emit PresaleCapUpdated(0);
                require msg.value >= preSaleCap
                require msg.value == msg.value
                require preSaleCap > 0
                emit Contribution(preSaleCap, msg.sender);
                if preSaleCap:
                    require preSaleCap
                    require 2000 * preSaleCap / preSaleCap == 2000
                if preSaleCap <= firstTierDiscountUpperLimitEther:
                    if 2000 * preSaleCap:
                        require 2000 * preSaleCap
                        require 20000 * preSaleCap / 2000 * preSaleCap == 10
                    emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 20000 * preSaleCap / 100);
                    require (2000 * preSaleCap) + (20000 * preSaleCap / 100) >= 20000 * preSaleCap / 100
                    if preSaleCap:
                        require preSaleCap
                        require 1500 * preSaleCap / preSaleCap == 1500
                        if preSaleCap:
                            require preSaleCap
                            require 1000 * preSaleCap / preSaleCap == 1000
                            if preSaleCap:
                                require preSaleCap
                                require 500 * preSaleCap / preSaleCap == 500
                    require 2500 * preSaleCap >= 1000 * preSaleCap
                    require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                    founderTokenCount += 1000 * preSaleCap
                    require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                    reserveTokenCount += 1500 * preSaleCap
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
                            args msg.sender, (2000 * preSaleCap) + (20000 * preSaleCap / 100), msg.value
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
                        args msg.sender, (2000 * preSaleCap) + (20000 * preSaleCap / 100)
                    require ext_call.success
                    require ext_code.size(shpAddress)
                    call shpAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args bountyAddress, 500 * preSaleCap
                    require ext_call.success
                    require ext_code.size(shpAddress)
                    call shpAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args trusteeAddress, 2500 * preSaleCap
                    require ext_call.success
                    emit NewSale(preSaleCap, (2000 * preSaleCap) + (20000 * preSaleCap / 100), msg.sender);
                else:
                    if preSaleCap > secondTierDiscountUpperLimitEther:
                        if 2000 * preSaleCap:
                            require 2000 * preSaleCap
                            require 60000 * preSaleCap / 2000 * preSaleCap == 30
                        emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 60000 * preSaleCap / 100);
                        require (2000 * preSaleCap) + (60000 * preSaleCap / 100) >= 60000 * preSaleCap / 100
                        if preSaleCap:
                            require preSaleCap
                            require 1500 * preSaleCap / preSaleCap == 1500
                            if preSaleCap:
                                require preSaleCap
                                require 1000 * preSaleCap / preSaleCap == 1000
                                if preSaleCap:
                                    require preSaleCap
                                    require 500 * preSaleCap / preSaleCap == 500
                        require 2500 * preSaleCap >= 1000 * preSaleCap
                        require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                        founderTokenCount += 1000 * preSaleCap
                        require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                        reserveTokenCount += 1500 * preSaleCap
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
                                args msg.sender, (2000 * preSaleCap) + (60000 * preSaleCap / 100), msg.value
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
                            args msg.sender, (2000 * preSaleCap) + (60000 * preSaleCap / 100)
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, 500 * preSaleCap
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args trusteeAddress, 2500 * preSaleCap
                        require ext_call.success
                        emit NewSale(preSaleCap, (2000 * preSaleCap) + (60000 * preSaleCap / 100), msg.sender);
                    else:
                        if 2000 * preSaleCap:
                            require 2000 * preSaleCap
                            require 40000 * preSaleCap / 2000 * preSaleCap == 20
                        emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 40000 * preSaleCap / 100);
                        require (2000 * preSaleCap) + (40000 * preSaleCap / 100) >= 40000 * preSaleCap / 100
                        if preSaleCap:
                            require preSaleCap
                            require 1500 * preSaleCap / preSaleCap == 1500
                            if preSaleCap:
                                require preSaleCap
                                require 1000 * preSaleCap / preSaleCap == 1000
                                if preSaleCap:
                                    require preSaleCap
                                    require 500 * preSaleCap / preSaleCap == 500
                        require 2500 * preSaleCap >= 1000 * preSaleCap
                        require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                        founderTokenCount += 1000 * preSaleCap
                        require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                        reserveTokenCount += 1500 * preSaleCap
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
                                args msg.sender, (2000 * preSaleCap) + (40000 * preSaleCap / 100), msg.value
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
                            args msg.sender, (2000 * preSaleCap) + (40000 * preSaleCap / 100)
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, 500 * preSaleCap
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args trusteeAddress, 2500 * preSaleCap
                        require ext_call.success
                        emit NewSale(preSaleCap, (2000 * preSaleCap) + (40000 * preSaleCap / 100), msg.sender);
                emit NewSale(preSaleCap, 2500 * preSaleCap, trusteeAddress);
                emit NewSale(preSaleCap, 500 * preSaleCap, bountyAddress);
                call etherEscrowAddress with:
                   value preSaleCap wei
                     gas 2300 * is_zero(value) wei
                require preSaleCap + preSaleEtherPaid >= preSaleEtherPaid
                preSaleEtherPaid += preSaleCap
                require totalContributions + 1 >= totalContributions
                totalContributions++
                emit CountersUpdated(preSaleEtherPaid, preSaleCap);
                if msg.value - preSaleCap > 0:
                    call msg.sender with:
                       value msg.value - preSaleCap wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        else:
            if msg.value > preSaleCap:
                require preSaleCap <= msg.value
                emit ContributionRefund(msg.value - preSaleCap, msg.sender);
            require whitelist[address(msg.sender)] > 0
            whitelist[address(msg.sender)] = 0
            emit WhitelistedUpdated(whitelist[address(msg.sender)], 1);
            if msg.value <= whitelist[address(msg.sender)]:
                if msg.value >= whitelist[address(msg.sender)]:
                    require whitelist[address(msg.sender)] <= whitelistedPlannedContributions
                    whitelistedPlannedContributions -= whitelist[address(msg.sender)]
                    emit WhitelistedCounterUpdated(whitelistedPlannedContributions - whitelist[address(msg.sender)], whitelist[address(msg.sender)]);
                    emit AllowedContributionCheck(whitelist[address(msg.sender)], 0);
                    require whitelist[address(msg.sender)] >= whitelist[address(msg.sender)]
                    require msg.value == whitelist[address(msg.sender)]
                    require whitelist[address(msg.sender)] > 0
                    emit Contribution(whitelist[address(msg.sender)], msg.sender);
                    if whitelist[address(msg.sender)]:
                        require whitelist[address(msg.sender)]
                        require 2000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 2000
                    if whitelist[address(msg.sender)] <= firstTierDiscountUpperLimitEther:
                        if 2000 * whitelist[address(msg.sender)]:
                            require 2000 * whitelist[address(msg.sender)]
                            require 20000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 10
                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 20000 * whitelist[address(msg.sender)] / 100);
                        require (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100) >= 20000 * whitelist[address(msg.sender)] / 100
                        if whitelist[address(msg.sender)]:
                            require whitelist[address(msg.sender)]
                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                if whitelist[address(msg.sender)]:
                                    require whitelist[address(msg.sender)]
                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.value
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
                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100)
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.sender);
                    else:
                        if whitelist[address(msg.sender)] > secondTierDiscountUpperLimitEther:
                            if 2000 * whitelist[address(msg.sender)]:
                                require 2000 * whitelist[address(msg.sender)]
                                require 60000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 30
                            emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 60000 * whitelist[address(msg.sender)] / 100);
                            require (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100) >= 60000 * whitelist[address(msg.sender)] / 100
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                if whitelist[address(msg.sender)]:
                                    require whitelist[address(msg.sender)]
                                    require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                    if whitelist[address(msg.sender)]:
                                        require whitelist[address(msg.sender)]
                                        require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                            require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                            require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                            founderTokenCount += 1000 * whitelist[address(msg.sender)]
                            require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                            reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                    args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100)
                            require ext_call.success
                            require ext_code.size(shpAddress)
                            call shpAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args bountyAddress, 500 * whitelist[address(msg.sender)]
                            require ext_call.success
                            require ext_code.size(shpAddress)
                            call shpAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                            require ext_call.success
                            emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.sender);
                        else:
                            if 2000 * whitelist[address(msg.sender)]:
                                require 2000 * whitelist[address(msg.sender)]
                                require 40000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 20
                            emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 40000 * whitelist[address(msg.sender)] / 100);
                            require (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100) >= 40000 * whitelist[address(msg.sender)] / 100
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                if whitelist[address(msg.sender)]:
                                    require whitelist[address(msg.sender)]
                                    require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                    if whitelist[address(msg.sender)]:
                                        require whitelist[address(msg.sender)]
                                        require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                            require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                            require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                            founderTokenCount += 1000 * whitelist[address(msg.sender)]
                            require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                            reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                    args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100)
                            require ext_call.success
                            require ext_code.size(shpAddress)
                            call shpAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args bountyAddress, 500 * whitelist[address(msg.sender)]
                            require ext_call.success
                            require ext_code.size(shpAddress)
                            call shpAddress.0x827f32c0 with:
                                 gas gas_remaining - 710 wei
                                args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                            require ext_call.success
                            emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.sender);
                    emit NewSale(whitelist[address(msg.sender)], 2500 * whitelist[address(msg.sender)], trusteeAddress);
                    emit NewSale(whitelist[address(msg.sender)], 500 * whitelist[address(msg.sender)], bountyAddress);
                    call etherEscrowAddress with:
                       value whitelist[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require whitelist[address(msg.sender)] + preSaleEtherPaid >= preSaleEtherPaid
                    preSaleEtherPaid += whitelist[address(msg.sender)]
                    require totalContributions + 1 >= totalContributions
                    totalContributions++
                    emit CountersUpdated(preSaleEtherPaid, whitelist[address(msg.sender)]);
                else:
                    require msg.value <= whitelistedPlannedContributions
                    whitelistedPlannedContributions -= msg.value
                    emit WhitelistedCounterUpdated(whitelistedPlannedContributions - msg.value, msg.value);
                    emit AllowedContributionCheck(msg.value, 3);
                    require msg.value >= msg.value
                    require msg.value == msg.value
                    require msg.value > 0
                    emit Contribution(msg.value, msg.sender);
                    if msg.value:
                        require msg.value
                        require 2000 * msg.value / msg.value == 2000
                    if msg.value <= firstTierDiscountUpperLimitEther:
                        if 2000 * msg.value:
                            require 2000 * msg.value
                            require 20000 * msg.value / 2000 * msg.value == 10
                        emit DiscountApplied(msg.value, 2000 * msg.value, 20000 * msg.value / 100);
                        require (2000 * msg.value) + (20000 * msg.value / 100) >= 20000 * msg.value / 100
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
                                args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100), msg.value
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
                            args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100)
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
                        emit NewSale(msg.value, (2000 * msg.value) + (20000 * msg.value / 100), msg.sender);
                    else:
                        if msg.value > secondTierDiscountUpperLimitEther:
                            if 2000 * msg.value:
                                require 2000 * msg.value
                                require 60000 * msg.value / 2000 * msg.value == 30
                            emit DiscountApplied(msg.value, 2000 * msg.value, 60000 * msg.value / 100);
                            require (2000 * msg.value) + (60000 * msg.value / 100) >= 60000 * msg.value / 100
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
                                    args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100), msg.value
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
                                args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100)
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
                            emit NewSale(msg.value, (2000 * msg.value) + (60000 * msg.value / 100), msg.sender);
                        else:
                            if 2000 * msg.value:
                                require 2000 * msg.value
                                require 40000 * msg.value / 2000 * msg.value == 20
                            emit DiscountApplied(msg.value, 2000 * msg.value, 40000 * msg.value / 100);
                            require (2000 * msg.value) + (40000 * msg.value / 100) >= 40000 * msg.value / 100
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
                                    args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100), msg.value
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
                                args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100)
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
                            emit NewSale(msg.value, (2000 * msg.value) + (40000 * msg.value / 100), msg.sender);
                    emit NewSale(msg.value, 2500 * msg.value, trusteeAddress);
                    emit NewSale(msg.value, 500 * msg.value, bountyAddress);
                    call etherEscrowAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require msg.value + preSaleEtherPaid >= preSaleEtherPaid
                    preSaleEtherPaid += msg.value
                    require totalContributions + 1 >= totalContributions
                    totalContributions++
                    emit CountersUpdated(preSaleEtherPaid, msg.value);
            else:
                require whitelist[address(msg.sender)] <= whitelistedPlannedContributions
                whitelistedPlannedContributions -= whitelist[address(msg.sender)]
                emit WhitelistedCounterUpdated(whitelistedPlannedContributions - whitelist[address(msg.sender)], whitelist[address(msg.sender)]);
                emit AllowedContributionCheck(whitelist[address(msg.sender)], 2);
                require whitelist[address(msg.sender)] <= msg.value
                require msg.value >= whitelist[address(msg.sender)]
                require msg.value == msg.value
                require whitelist[address(msg.sender)] > 0
                emit Contribution(whitelist[address(msg.sender)], msg.sender);
                if whitelist[address(msg.sender)]:
                    require whitelist[address(msg.sender)]
                    require 2000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 2000
                if whitelist[address(msg.sender)] <= firstTierDiscountUpperLimitEther:
                    if 2000 * whitelist[address(msg.sender)]:
                        require 2000 * whitelist[address(msg.sender)]
                        require 20000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 10
                    emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 20000 * whitelist[address(msg.sender)] / 100);
                    require (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100) >= 20000 * whitelist[address(msg.sender)] / 100
                    if whitelist[address(msg.sender)]:
                        require whitelist[address(msg.sender)]
                        require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                        if whitelist[address(msg.sender)]:
                            require whitelist[address(msg.sender)]
                            require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                    require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                    require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                    founderTokenCount += 1000 * whitelist[address(msg.sender)]
                    require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                    reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.value
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
                        args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100)
                    require ext_call.success
                    require ext_code.size(shpAddress)
                    call shpAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args bountyAddress, 500 * whitelist[address(msg.sender)]
                    require ext_call.success
                    require ext_code.size(shpAddress)
                    call shpAddress.0x827f32c0 with:
                         gas gas_remaining - 710 wei
                        args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                    require ext_call.success
                    emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.sender);
                else:
                    if whitelist[address(msg.sender)] > secondTierDiscountUpperLimitEther:
                        if 2000 * whitelist[address(msg.sender)]:
                            require 2000 * whitelist[address(msg.sender)]
                            require 60000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 30
                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 60000 * whitelist[address(msg.sender)] / 100);
                        require (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100) >= 60000 * whitelist[address(msg.sender)] / 100
                        if whitelist[address(msg.sender)]:
                            require whitelist[address(msg.sender)]
                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                if whitelist[address(msg.sender)]:
                                    require whitelist[address(msg.sender)]
                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.value
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
                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100)
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.sender);
                    else:
                        if 2000 * whitelist[address(msg.sender)]:
                            require 2000 * whitelist[address(msg.sender)]
                            require 40000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 20
                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 40000 * whitelist[address(msg.sender)] / 100);
                        require (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100) >= 40000 * whitelist[address(msg.sender)] / 100
                        if whitelist[address(msg.sender)]:
                            require whitelist[address(msg.sender)]
                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                            if whitelist[address(msg.sender)]:
                                require whitelist[address(msg.sender)]
                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                if whitelist[address(msg.sender)]:
                                    require whitelist[address(msg.sender)]
                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.value
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
                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100)
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        require ext_code.size(shpAddress)
                        call shpAddress.0x827f32c0 with:
                             gas gas_remaining - 710 wei
                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                        require ext_call.success
                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.sender);
                emit NewSale(whitelist[address(msg.sender)], 2500 * whitelist[address(msg.sender)], trusteeAddress);
                emit NewSale(whitelist[address(msg.sender)], 500 * whitelist[address(msg.sender)], bountyAddress);
                call etherEscrowAddress with:
                   value whitelist[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                require whitelist[address(msg.sender)] + preSaleEtherPaid >= preSaleEtherPaid
                preSaleEtherPaid += whitelist[address(msg.sender)]
                require totalContributions + 1 >= totalContributions
                totalContributions++
                emit CountersUpdated(preSaleEtherPaid, whitelist[address(msg.sender)]);
                if msg.value - whitelist[address(msg.sender)] > 0:
                    call msg.sender with:
                       value msg.value - whitelist[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        if uint32(call.func_hash) == BOUNTY_EXCHANGE_RATE():
            require not msg.value
            return 500
        if CALLER_EXCHANGE_RATE() == uint32(call.func_hash):
            require not msg.value
            return 2000
        if unknown_0x122fe685(?????) == uint32(call.func_hash):
            require not msg.value
            return presaleAddress
        if unknown_0x214405fc(?????) == uint32(call.func_hash):
            require not msg.value
            require owner == msg.sender
            require not whitelist[address(arg1)]
            whitelist[address(arg1)] = arg2
            require arg2 + whitelistedPlannedContributions >= whitelistedPlannedContributions
            whitelistedPlannedContributions += arg2
        else:
            if unknown_0x37c08923(?????) == uint32(call.func_hash):
                require not msg.value
                return totalContributions
            if unknown_0x446303f3(?????) == uint32(call.func_hash):
                require not msg.value
                return preSaleCap
            if unknown_0x4758871d(?????) == uint32(call.func_hash):
                require not msg.value
                return 1000
            if unknown_0x495e1b3d(?????) == uint32(call.func_hash):
                require not msg.value
                return etherEscrowAddress
            if unknown_0x49c1d54d(?????) == uint32(call.func_hash):
                require not msg.value
                return trusteeAddress
            if unknown_0x4a393149(?????) == uint32(call.func_hash):
                require not msg.value
                return 0
            if unknown_0x4b8adcf7(?????) == uint32(call.func_hash):
                require not msg.value
                require owner == msg.sender
                uint8(stor11.field_0) = 1
            else:
                if unknown_0x4ecb02aa(?????) == uint32(call.func_hash):
                    require not msg.value
                    return firstTierDiscountUpperLimitEther
                if unknown_0x53f95cc6(?????) == uint32(call.func_hash):
                    require not msg.value
                    return 30
                if unknown_0x597e1fb5(?????) == uint32(call.func_hash):
                    require not msg.value
                    return bool(uint8(stor11.field_8))
                if unknown_0x5c975abb(?????) == uint32(call.func_hash):
                    require not msg.value
                    return bool(uint8(stor11.field_0))
                if unknown_0x66c630bc(?????) == uint32(call.func_hash):
                    require not msg.value
                    return honourWhitelistEnd
                if unknown_0x6d435421(?????) == uint32(call.func_hash):
                    require not msg.value
                    require owner == msg.sender
                    require uint8(stor11.field_8)
                    require arg1
                    require address(arg2)
                    require ext_code.size(shpAddress)
                    call shpAddress.0x3cebb823 with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    require ext_code.size(trusteeAddress)
                    call trusteeAddress.0xa6f9dae1 with:
                         gas gas_remaining - 710 wei
                        args address(arg2)
                    require ext_call.success
                else:
                    if unknown_0x734a56f0(?????) == uint32(call.func_hash):
                        require not msg.value
                        return preSaleEtherPaid
                    if unknown_0x73a1f366(?????) == uint32(call.func_hash):
                        require not msg.value
                        return founderTokenCount
                    if unknown_0x81d92ed4(?????) == uint32(call.func_hash):
                        require not msg.value
                        return shpAddress
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
                        require not msg.value
                        return owner
                    if unknown_0x95c26d93(?????) == uint32(call.func_hash):
                        require not msg.value
                        return thirdTierDiscountUpperLimitEther
                    if unknown_0x9b19251a(?????) == uint32(call.func_hash):
                        require not msg.value
                        return whitelist[arg1]
                    if unknown_0x9b99a8e2(?????) == uint32(call.func_hash):
                        require not msg.value
                        return reserveTokenCount
                    if unknown_0xa107ceb6(?????) == uint32(call.func_hash):
                        require not msg.value
                        return affiliateUtilityAddress
                    if unknown_0xa6f9dae1(?????) == uint32(call.func_hash):
                        require not msg.value
                        require owner == msg.sender
                        owner = arg1
                    else:
                        if unknown_0xa78f0489(?????) == uint32(call.func_hash):
                            require not msg.value
                            return secondTierDiscountUpperLimitEther
                        if unknown_0xa88be96b(?????) == uint32(call.func_hash):
                            require not msg.value
                            return 1500
                        if unknown_0xa8bc3a6c(?????) == uint32(call.func_hash):
                            require not msg.value
                            return whitelistedPlannedContributions
                        if unknown_0xb3e53d8a(?????) == uint32(call.func_hash):
                            require not msg.value
                            return maxPresaleContributionEther
                        if unknown_0xb681f9f6(?????) == uint32(call.func_hash):
                            require not msg.value
                            require owner == msg.sender
                            uint8(stor11.field_0) = 0
                        else:
                            if unknown_0xc1e74d71(?????) == uint32(call.func_hash):
                                require not msg.value
                                return minPresaleContributionEther
                            if unknown_0xc516358f(?????) == uint32(call.func_hash):
                                require not msg.value
                                return bountyAddress
                            if unknown_0xd4ee1d90(?????) == uint32(call.func_hash):
                                require not msg.value
                                return newOwner
                            if unknown_0xda682aeb(?????) == uint32(call.func_hash):
                                require not msg.value
                                return 0
                            if unknown_0xe3bbb4f1(?????) == uint32(call.func_hash):
                                require not msg.value
                                return 5 * 10^10
                            if unknown_0xe3d7f159(?????) == uint32(call.func_hash):
                                require not msg.value
                                return 10
                            if unknown_0xe546bb0c(?????) == uint32(call.func_hash):
                                require not msg.value
                                return apiAddress
                            if unknown_0xed4dd2ab(?????) == uint32(call.func_hash):
                                require not msg.value
                                return 20
                            if unknown_0xee55efee(?????) == uint32(call.func_hash):
                                require not msg.value
                                require owner == msg.sender
                                uint8(stor11.field_8) = 1
                                emit SaleClosed(block.timestamp);
                            else:
                                if unknown_0xf136a874(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    return bool(stor12[arg1])
                                if unknown_0xf48c3054(?????) == uint32(call.func_hash):
                                    return 0
                                if unknown_0xfa9df423(?????) == uint32(call.func_hash):
                                    require not msg.value
                                    require owner == msg.sender
                                    shpAddress = arg1
                                else:
                                    if unknown_0xfabf657a(?????) == uint32(call.func_hash):
                                        require not msg.value
                                        require apiAddress == msg.sender
                                        stor12[address(arg1)] = 1
                                    else:
                                        if unknown_0xfdf97cb2(?????) == uint32(call.func_hash):
                                            require not msg.value
                                            return trusteeAddress
                                        require msg.sender
                                        require msg.value > 0
                                        require ext_code.size(msg.sender) <= 0
                                        require block.gasprice <= 5 * 10^10
                                        require not uint8(stor11.field_8)
                                        require not uint8(stor11.field_0)
                                        require stor12[address(msg.sender)]
                                        if msg.value < minPresaleContributionEther:
                                            emit ValidContributionCheck(msg.value, msg.value >= minPresaleContributionEther);
                                            revert
                                        emit ValidContributionCheck(msg.value, msg.value <= maxPresaleContributionEther);
                                        require msg.value <= maxPresaleContributionEther
                                        if honourWhitelistEnd <= block.timestamp:
                                            require whitelistedPlannedContributions + preSaleCap >= preSaleCap
                                            preSaleCap += whitelistedPlannedContributions
                                            whitelistedPlannedContributions = 0
                                            emit WhitelistedCounterUpdated(uint256 rg1, uint256 rg2):
                                                                           0,
                                            if msg.value <= preSaleCap:
                                                emit AllowedContributionCheck(msg.value, 4);
                                                require msg.value <= preSaleCap
                                                preSaleCap -= msg.value
                                                emit PresaleCapUpdated((preSaleCap - msg.value));
                                                require msg.value >= msg.value
                                                require msg.value == msg.value
                                                require msg.value > 0
                                                emit Contribution(msg.value, msg.sender);
                                                if msg.value:
                                                    require msg.value
                                                    require 2000 * msg.value / msg.value == 2000
                                                if msg.value <= firstTierDiscountUpperLimitEther:
                                                    if 2000 * msg.value:
                                                        require 2000 * msg.value
                                                        require 20000 * msg.value / 2000 * msg.value == 10
                                                    emit DiscountApplied(msg.value, 2000 * msg.value, 20000 * msg.value / 100);
                                                    require (2000 * msg.value) + (20000 * msg.value / 100) >= 20000 * msg.value / 100
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
                                                            args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100), msg.value
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
                                                        args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100)
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
                                                    emit NewSale(msg.value, (2000 * msg.value) + (20000 * msg.value / 100), msg.sender);
                                                else:
                                                    if msg.value > secondTierDiscountUpperLimitEther:
                                                        if 2000 * msg.value:
                                                            require 2000 * msg.value
                                                            require 60000 * msg.value / 2000 * msg.value == 30
                                                        emit DiscountApplied(msg.value, 2000 * msg.value, 60000 * msg.value / 100);
                                                        require (2000 * msg.value) + (60000 * msg.value / 100) >= 60000 * msg.value / 100
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
                                                                args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100), msg.value
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
                                                            args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100)
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
                                                        emit NewSale(msg.value, (2000 * msg.value) + (60000 * msg.value / 100), msg.sender);
                                                    else:
                                                        if 2000 * msg.value:
                                                            require 2000 * msg.value
                                                            require 40000 * msg.value / 2000 * msg.value == 20
                                                        emit DiscountApplied(msg.value, 2000 * msg.value, 40000 * msg.value / 100);
                                                        require (2000 * msg.value) + (40000 * msg.value / 100) >= 40000 * msg.value / 100
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
                                                                args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100), msg.value
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
                                                            args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100)
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
                                                        emit NewSale(msg.value, (2000 * msg.value) + (40000 * msg.value / 100), msg.sender);
                                                emit NewSale(msg.value, 2500 * msg.value, trusteeAddress);
                                                emit NewSale(msg.value, 500 * msg.value, bountyAddress);
                                                call etherEscrowAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require msg.value + preSaleEtherPaid >= preSaleEtherPaid
                                                preSaleEtherPaid += msg.value
                                                require totalContributions + 1 >= totalContributions
                                                totalContributions++
                                                emit CountersUpdated(preSaleEtherPaid, msg.value);
                                            else:
                                                require preSaleCap <= msg.value
                                                emit ContributionRefund(msg.value - preSaleCap, msg.sender);
                                                emit AllowedContributionCheck(preSaleCap, 4);
                                                require preSaleCap <= preSaleCap
                                                preSaleCap = 0
                                                emit PresaleCapUpdated(0);
                                                require msg.value >= preSaleCap
                                                require msg.value == msg.value
                                                require preSaleCap > 0
                                                emit Contribution(preSaleCap, msg.sender);
                                                if preSaleCap:
                                                    require preSaleCap
                                                    require 2000 * preSaleCap / preSaleCap == 2000
                                                if preSaleCap <= firstTierDiscountUpperLimitEther:
                                                    if 2000 * preSaleCap:
                                                        require 2000 * preSaleCap
                                                        require 20000 * preSaleCap / 2000 * preSaleCap == 10
                                                    emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 20000 * preSaleCap / 100);
                                                    require (2000 * preSaleCap) + (20000 * preSaleCap / 100) >= 20000 * preSaleCap / 100
                                                    if preSaleCap:
                                                        require preSaleCap
                                                        require 1500 * preSaleCap / preSaleCap == 1500
                                                        if preSaleCap:
                                                            require preSaleCap
                                                            require 1000 * preSaleCap / preSaleCap == 1000
                                                            if preSaleCap:
                                                                require preSaleCap
                                                                require 500 * preSaleCap / preSaleCap == 500
                                                    require 2500 * preSaleCap >= 1000 * preSaleCap
                                                    require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                                                    founderTokenCount += 1000 * preSaleCap
                                                    require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                                                    reserveTokenCount += 1500 * preSaleCap
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
                                                            args msg.sender, (2000 * preSaleCap) + (20000 * preSaleCap / 100), msg.value
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
                                                        args msg.sender, (2000 * preSaleCap) + (20000 * preSaleCap / 100)
                                                    require ext_call.success
                                                    require ext_code.size(shpAddress)
                                                    call shpAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args bountyAddress, 500 * preSaleCap
                                                    require ext_call.success
                                                    require ext_code.size(shpAddress)
                                                    call shpAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args trusteeAddress, 2500 * preSaleCap
                                                    require ext_call.success
                                                    emit NewSale(preSaleCap, (2000 * preSaleCap) + (20000 * preSaleCap / 100), msg.sender);
                                                else:
                                                    if preSaleCap > secondTierDiscountUpperLimitEther:
                                                        if 2000 * preSaleCap:
                                                            require 2000 * preSaleCap
                                                            require 60000 * preSaleCap / 2000 * preSaleCap == 30
                                                        emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 60000 * preSaleCap / 100);
                                                        require (2000 * preSaleCap) + (60000 * preSaleCap / 100) >= 60000 * preSaleCap / 100
                                                        if preSaleCap:
                                                            require preSaleCap
                                                            require 1500 * preSaleCap / preSaleCap == 1500
                                                            if preSaleCap:
                                                                require preSaleCap
                                                                require 1000 * preSaleCap / preSaleCap == 1000
                                                                if preSaleCap:
                                                                    require preSaleCap
                                                                    require 500 * preSaleCap / preSaleCap == 500
                                                        require 2500 * preSaleCap >= 1000 * preSaleCap
                                                        require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                                                        founderTokenCount += 1000 * preSaleCap
                                                        require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                                                        reserveTokenCount += 1500 * preSaleCap
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
                                                                args msg.sender, (2000 * preSaleCap) + (60000 * preSaleCap / 100), msg.value
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
                                                            args msg.sender, (2000 * preSaleCap) + (60000 * preSaleCap / 100)
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args bountyAddress, 500 * preSaleCap
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args trusteeAddress, 2500 * preSaleCap
                                                        require ext_call.success
                                                        emit NewSale(preSaleCap, (2000 * preSaleCap) + (60000 * preSaleCap / 100), msg.sender);
                                                    else:
                                                        if 2000 * preSaleCap:
                                                            require 2000 * preSaleCap
                                                            require 40000 * preSaleCap / 2000 * preSaleCap == 20
                                                        emit DiscountApplied(preSaleCap, 2000 * preSaleCap, 40000 * preSaleCap / 100);
                                                        require (2000 * preSaleCap) + (40000 * preSaleCap / 100) >= 40000 * preSaleCap / 100
                                                        if preSaleCap:
                                                            require preSaleCap
                                                            require 1500 * preSaleCap / preSaleCap == 1500
                                                            if preSaleCap:
                                                                require preSaleCap
                                                                require 1000 * preSaleCap / preSaleCap == 1000
                                                                if preSaleCap:
                                                                    require preSaleCap
                                                                    require 500 * preSaleCap / preSaleCap == 500
                                                        require 2500 * preSaleCap >= 1000 * preSaleCap
                                                        require (1000 * preSaleCap) + founderTokenCount >= founderTokenCount
                                                        founderTokenCount += 1000 * preSaleCap
                                                        require (1500 * preSaleCap) + reserveTokenCount >= reserveTokenCount
                                                        reserveTokenCount += 1500 * preSaleCap
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
                                                                args msg.sender, (2000 * preSaleCap) + (40000 * preSaleCap / 100), msg.value
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
                                                            args msg.sender, (2000 * preSaleCap) + (40000 * preSaleCap / 100)
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args bountyAddress, 500 * preSaleCap
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args trusteeAddress, 2500 * preSaleCap
                                                        require ext_call.success
                                                        emit NewSale(preSaleCap, (2000 * preSaleCap) + (40000 * preSaleCap / 100), msg.sender);
                                                emit NewSale(preSaleCap, 2500 * preSaleCap, trusteeAddress);
                                                emit NewSale(preSaleCap, 500 * preSaleCap, bountyAddress);
                                                call etherEscrowAddress with:
                                                   value preSaleCap wei
                                                     gas 2300 * is_zero(value) wei
                                                require preSaleCap + preSaleEtherPaid >= preSaleEtherPaid
                                                preSaleEtherPaid += preSaleCap
                                                require totalContributions + 1 >= totalContributions
                                                totalContributions++
                                                emit CountersUpdated(preSaleEtherPaid, preSaleCap);
                                                if msg.value - preSaleCap > 0:
                                                    call msg.sender with:
                                                       value msg.value - preSaleCap wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                        else:
                                            if msg.value > preSaleCap:
                                                require preSaleCap <= msg.value
                                                emit ContributionRefund(msg.value - preSaleCap, msg.sender);
                                            require whitelist[address(msg.sender)] > 0
                                            whitelist[address(msg.sender)] = 0
                                            emit WhitelistedUpdated(whitelist[address(msg.sender)], 1);
                                            if msg.value <= whitelist[address(msg.sender)]:
                                                if msg.value >= whitelist[address(msg.sender)]:
                                                    require whitelist[address(msg.sender)] <= whitelistedPlannedContributions
                                                    whitelistedPlannedContributions -= whitelist[address(msg.sender)]
                                                    emit WhitelistedCounterUpdated(whitelistedPlannedContributions - whitelist[address(msg.sender)], whitelist[address(msg.sender)]);
                                                    emit AllowedContributionCheck(whitelist[address(msg.sender)], 0);
                                                    require whitelist[address(msg.sender)] >= whitelist[address(msg.sender)]
                                                    require msg.value == whitelist[address(msg.sender)]
                                                    require whitelist[address(msg.sender)] > 0
                                                    emit Contribution(whitelist[address(msg.sender)], msg.sender);
                                                    if whitelist[address(msg.sender)]:
                                                        require whitelist[address(msg.sender)]
                                                        require 2000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 2000
                                                    if whitelist[address(msg.sender)] <= firstTierDiscountUpperLimitEther:
                                                        if 2000 * whitelist[address(msg.sender)]:
                                                            require 2000 * whitelist[address(msg.sender)]
                                                            require 20000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 10
                                                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 20000 * whitelist[address(msg.sender)] / 100);
                                                        require (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100) >= 20000 * whitelist[address(msg.sender)] / 100
                                                        if whitelist[address(msg.sender)]:
                                                            require whitelist[address(msg.sender)]
                                                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                                if whitelist[address(msg.sender)]:
                                                                    require whitelist[address(msg.sender)]
                                                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100)
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                    else:
                                                        if whitelist[address(msg.sender)] > secondTierDiscountUpperLimitEther:
                                                            if 2000 * whitelist[address(msg.sender)]:
                                                                require 2000 * whitelist[address(msg.sender)]
                                                                require 60000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 30
                                                            emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 60000 * whitelist[address(msg.sender)] / 100);
                                                            require (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100) >= 60000 * whitelist[address(msg.sender)] / 100
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                                if whitelist[address(msg.sender)]:
                                                                    require whitelist[address(msg.sender)]
                                                                    require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                                    if whitelist[address(msg.sender)]:
                                                                        require whitelist[address(msg.sender)]
                                                                        require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                            require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                            require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                            founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                            require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                            reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                                    args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100)
                                                            require ext_call.success
                                                            require ext_code.size(shpAddress)
                                                            call shpAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                            require ext_call.success
                                                            require ext_code.size(shpAddress)
                                                            call shpAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                            require ext_call.success
                                                            emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                        else:
                                                            if 2000 * whitelist[address(msg.sender)]:
                                                                require 2000 * whitelist[address(msg.sender)]
                                                                require 40000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 20
                                                            emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 40000 * whitelist[address(msg.sender)] / 100);
                                                            require (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100) >= 40000 * whitelist[address(msg.sender)] / 100
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                                if whitelist[address(msg.sender)]:
                                                                    require whitelist[address(msg.sender)]
                                                                    require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                                    if whitelist[address(msg.sender)]:
                                                                        require whitelist[address(msg.sender)]
                                                                        require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                            require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                            require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                            founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                            require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                            reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                                    args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100)
                                                            require ext_call.success
                                                            require ext_code.size(shpAddress)
                                                            call shpAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                            require ext_call.success
                                                            require ext_code.size(shpAddress)
                                                            call shpAddress.0x827f32c0 with:
                                                                 gas gas_remaining - 710 wei
                                                                args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                            require ext_call.success
                                                            emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                    emit NewSale(whitelist[address(msg.sender)], 2500 * whitelist[address(msg.sender)], trusteeAddress);
                                                    emit NewSale(whitelist[address(msg.sender)], 500 * whitelist[address(msg.sender)], bountyAddress);
                                                    call etherEscrowAddress with:
                                                       value whitelist[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require whitelist[address(msg.sender)] + preSaleEtherPaid >= preSaleEtherPaid
                                                    preSaleEtherPaid += whitelist[address(msg.sender)]
                                                    require totalContributions + 1 >= totalContributions
                                                    totalContributions++
                                                    emit CountersUpdated(preSaleEtherPaid, whitelist[address(msg.sender)]);
                                                else:
                                                    require msg.value <= whitelistedPlannedContributions
                                                    whitelistedPlannedContributions -= msg.value
                                                    emit WhitelistedCounterUpdated(whitelistedPlannedContributions - msg.value, msg.value);
                                                    emit AllowedContributionCheck(msg.value, 3);
                                                    require msg.value >= msg.value
                                                    require msg.value == msg.value
                                                    require msg.value > 0
                                                    emit Contribution(msg.value, msg.sender);
                                                    if msg.value:
                                                        require msg.value
                                                        require 2000 * msg.value / msg.value == 2000
                                                    if msg.value <= firstTierDiscountUpperLimitEther:
                                                        if 2000 * msg.value:
                                                            require 2000 * msg.value
                                                            require 20000 * msg.value / 2000 * msg.value == 10
                                                        emit DiscountApplied(msg.value, 2000 * msg.value, 20000 * msg.value / 100);
                                                        require (2000 * msg.value) + (20000 * msg.value / 100) >= 20000 * msg.value / 100
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
                                                                args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100), msg.value
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
                                                            args msg.sender, (2000 * msg.value) + (20000 * msg.value / 100)
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
                                                        emit NewSale(msg.value, (2000 * msg.value) + (20000 * msg.value / 100), msg.sender);
                                                    else:
                                                        if msg.value > secondTierDiscountUpperLimitEther:
                                                            if 2000 * msg.value:
                                                                require 2000 * msg.value
                                                                require 60000 * msg.value / 2000 * msg.value == 30
                                                            emit DiscountApplied(msg.value, 2000 * msg.value, 60000 * msg.value / 100);
                                                            require (2000 * msg.value) + (60000 * msg.value / 100) >= 60000 * msg.value / 100
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
                                                                    args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100), msg.value
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
                                                                args msg.sender, (2000 * msg.value) + (60000 * msg.value / 100)
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
                                                            emit NewSale(msg.value, (2000 * msg.value) + (60000 * msg.value / 100), msg.sender);
                                                        else:
                                                            if 2000 * msg.value:
                                                                require 2000 * msg.value
                                                                require 40000 * msg.value / 2000 * msg.value == 20
                                                            emit DiscountApplied(msg.value, 2000 * msg.value, 40000 * msg.value / 100);
                                                            require (2000 * msg.value) + (40000 * msg.value / 100) >= 40000 * msg.value / 100
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
                                                                    args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100), msg.value
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
                                                                args msg.sender, (2000 * msg.value) + (40000 * msg.value / 100)
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
                                                            emit NewSale(msg.value, (2000 * msg.value) + (40000 * msg.value / 100), msg.sender);
                                                    emit NewSale(msg.value, 2500 * msg.value, trusteeAddress);
                                                    emit NewSale(msg.value, 500 * msg.value, bountyAddress);
                                                    call etherEscrowAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require msg.value + preSaleEtherPaid >= preSaleEtherPaid
                                                    preSaleEtherPaid += msg.value
                                                    require totalContributions + 1 >= totalContributions
                                                    totalContributions++
                                                    emit CountersUpdated(preSaleEtherPaid, msg.value);
                                            else:
                                                require whitelist[address(msg.sender)] <= whitelistedPlannedContributions
                                                whitelistedPlannedContributions -= whitelist[address(msg.sender)]
                                                emit WhitelistedCounterUpdated(whitelistedPlannedContributions - whitelist[address(msg.sender)], whitelist[address(msg.sender)]);
                                                emit AllowedContributionCheck(whitelist[address(msg.sender)], 2);
                                                require whitelist[address(msg.sender)] <= msg.value
                                                require msg.value >= whitelist[address(msg.sender)]
                                                require msg.value == msg.value
                                                require whitelist[address(msg.sender)] > 0
                                                emit Contribution(whitelist[address(msg.sender)], msg.sender);
                                                if whitelist[address(msg.sender)]:
                                                    require whitelist[address(msg.sender)]
                                                    require 2000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 2000
                                                if whitelist[address(msg.sender)] <= firstTierDiscountUpperLimitEther:
                                                    if 2000 * whitelist[address(msg.sender)]:
                                                        require 2000 * whitelist[address(msg.sender)]
                                                        require 20000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 10
                                                    emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 20000 * whitelist[address(msg.sender)] / 100);
                                                    require (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100) >= 20000 * whitelist[address(msg.sender)] / 100
                                                    if whitelist[address(msg.sender)]:
                                                        require whitelist[address(msg.sender)]
                                                        require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                        if whitelist[address(msg.sender)]:
                                                            require whitelist[address(msg.sender)]
                                                            require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                    require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                    require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                    founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                    require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                    reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                        args msg.sender, (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100)
                                                    require ext_call.success
                                                    require ext_code.size(shpAddress)
                                                    call shpAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                    require ext_call.success
                                                    require ext_code.size(shpAddress)
                                                    call shpAddress.0x827f32c0 with:
                                                         gas gas_remaining - 710 wei
                                                        args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                    require ext_call.success
                                                    emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (20000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                else:
                                                    if whitelist[address(msg.sender)] > secondTierDiscountUpperLimitEther:
                                                        if 2000 * whitelist[address(msg.sender)]:
                                                            require 2000 * whitelist[address(msg.sender)]
                                                            require 60000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 30
                                                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 60000 * whitelist[address(msg.sender)] / 100);
                                                        require (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100) >= 60000 * whitelist[address(msg.sender)] / 100
                                                        if whitelist[address(msg.sender)]:
                                                            require whitelist[address(msg.sender)]
                                                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                                if whitelist[address(msg.sender)]:
                                                                    require whitelist[address(msg.sender)]
                                                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100)
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (60000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                    else:
                                                        if 2000 * whitelist[address(msg.sender)]:
                                                            require 2000 * whitelist[address(msg.sender)]
                                                            require 40000 * whitelist[address(msg.sender)] / 2000 * whitelist[address(msg.sender)] == 20
                                                        emit DiscountApplied(whitelist[address(msg.sender)], 2000 * whitelist[address(msg.sender)], 40000 * whitelist[address(msg.sender)] / 100);
                                                        require (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100) >= 40000 * whitelist[address(msg.sender)] / 100
                                                        if whitelist[address(msg.sender)]:
                                                            require whitelist[address(msg.sender)]
                                                            require 1500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1500
                                                            if whitelist[address(msg.sender)]:
                                                                require whitelist[address(msg.sender)]
                                                                require 1000 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 1000
                                                                if whitelist[address(msg.sender)]:
                                                                    require whitelist[address(msg.sender)]
                                                                    require 500 * whitelist[address(msg.sender)] / whitelist[address(msg.sender)] == 500
                                                        require 2500 * whitelist[address(msg.sender)] >= 1000 * whitelist[address(msg.sender)]
                                                        require (1000 * whitelist[address(msg.sender)]) + founderTokenCount >= founderTokenCount
                                                        founderTokenCount += 1000 * whitelist[address(msg.sender)]
                                                        require (1500 * whitelist[address(msg.sender)]) + reserveTokenCount >= reserveTokenCount
                                                        reserveTokenCount += 1500 * whitelist[address(msg.sender)]
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
                                                                args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.value
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
                                                            args msg.sender, (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100)
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args bountyAddress, 500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        require ext_code.size(shpAddress)
                                                        call shpAddress.0x827f32c0 with:
                                                             gas gas_remaining - 710 wei
                                                            args trusteeAddress, 2500 * whitelist[address(msg.sender)]
                                                        require ext_call.success
                                                        emit NewSale(whitelist[address(msg.sender)], (2000 * whitelist[address(msg.sender)]) + (40000 * whitelist[address(msg.sender)] / 100), msg.sender);
                                                emit NewSale(whitelist[address(msg.sender)], 2500 * whitelist[address(msg.sender)], trusteeAddress);
                                                emit NewSale(whitelist[address(msg.sender)], 500 * whitelist[address(msg.sender)], bountyAddress);
                                                call etherEscrowAddress with:
                                                   value whitelist[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                require whitelist[address(msg.sender)] + preSaleEtherPaid >= preSaleEtherPaid
                                                preSaleEtherPaid += whitelist[address(msg.sender)]
                                                require totalContributions + 1 >= totalContributions
                                                totalContributions++
                                                emit CountersUpdated(preSaleEtherPaid, whitelist[address(msg.sender)]);
                                                if msg.value - whitelist[address(msg.sender)] > 0:
                                                    call msg.sender with:
                                                       value msg.value - whitelist[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
}



}
