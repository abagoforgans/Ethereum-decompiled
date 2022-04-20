contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor2 = 10
    stor4 = 17
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[5718 len 3612]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xde7fdcd87f5505a2a39f9fb19b000b1e52f05dc3, 1900000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xf0536cee382cab7625b021e9c5580822d02d5761, 1000000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x78fd0d49f0eb14a4143696b3972e3189a0d4e1a1, 100000 * 10^18
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.setbountyWallet(address rg1) with:
         gas gas_remaining - 710 wei
        args 0x78fd0d49f0eb14a4143696b3972e3189a0d4e1a1
    require ext_call.success
    require 1509537000 >= block.timestamp
    return code.data[852 len 4866]
}



// =====================  Runtime code  =====================


const remainderWallet = 0xc55ee182dc017b6963aaeb457286b4b57699355c

const fundsWallet = 0xaf35d20b1d5c8ae2065047b08c9197ee045e686a

const tokensTotal = 10000000 * 10^18

const minContribution_mBTC = 10

const proWallet = 0xf0536cee382cab7625b021e9c5580822d02d5761

const ratePreICO = 20

const tokensBounty = 100000 * 10^18

const middleTimestamp = 1509623400

const devWallet = 0xde7fdcd87f5505a2a39f9fb19b000b1e52f05dc3

const endTimestamp = 1509709800

const minContribution = 10^17

const tokensPromotion = 1000000 * 10^18

const tokensCrowdsale = 7000000 * 10^18

const tokensDevelopers = 1900000 * 10^18

const rateICO = 15

const bountyWallet = 0x78fd0d49f0eb14a4143696b3972e3189a0d4e1a1

const startTimestamp = 1509537000


address owner;
address tokenAddress;
uint256 rate;
uint256 weiRaised;
uint256 rateBTCxETH;
uint256 tokensRemainder;

function rateBTCxETH() {
    return rateBTCxETH
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function tokensRemainder() {
    return tokensRemainder
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function isTokenOfferedToken(address arg1) {
    return (tokenAddress == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function correctExchangeRateBTCxETH(uint256 arg1) {
    require owner == msg.sender
    require arg1
    rateBTCxETH = arg1
}

function stopTransfers() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.stopTransfer() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function startTransfers() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.startTransfer() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp > 1509709800:
        return (block.timestamp > 1509709800)
    return 10000000 * 10^18 <= ext_call.return_data[0]
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require tokenAddress != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp <= 1509709800:
        require 10000000 * 10^18 <= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 10000000 * 10^18
    tokensRemainder = -ext_call.return_data[0] + 10000000 * 10^18
    require ext_code.size(tokenAddress)
    if -ext_call.return_data[0] + 10000000 * 10^18 > 0:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args 0xc55ee182dc017b6963aaeb457286b4b57699355c, tokensRemainder
        require ext_call.success
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit SaleClosed()
}

function _fallback() payable {
    require block.timestamp >= 1509537000
    require block.timestamp <= 1509709800
    require msg.value >= 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10000000 * 10^18 > ext_call.return_data[0]
    require msg.sender
    if block.timestamp >= 1509623400:
        rate = 15
    else:
        rate = 20
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (rate * msg.value) + ext_call.return_data[0] <= 10000000 * 10^18
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call 0xaf35d20b1d5c8ae2065047b08c9197ee045e686a with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require block.timestamp >= 1509537000
    require block.timestamp <= 1509709800
    require msg.value >= 10^17
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10000000 * 10^18 > ext_call.return_data[0]
    require arg1
    if block.timestamp >= 1509623400:
        rate = 15
    else:
        rate = 20
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (rate * msg.value) + ext_call.return_data[0] <= 10000000 * 10^18
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call 0xaf35d20b1d5c8ae2065047b08c9197ee045e686a with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function claimTokens4mBTC(address arg1, uint256 arg2) {
    require block.timestamp >= 1509537000
    require block.timestamp <= 1509709800
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 10000000 * 10^18 > ext_call.return_data[0]
    require owner == msg.sender
    require arg1
    require arg2 >= 10
    if arg2:
        require arg2
        require rateBTCxETH * arg2 / arg2 == rateBTCxETH
    if block.timestamp >= 1509623400:
        rate = 15
    else:
        rate = 20
    if 10^15 * rateBTCxETH * arg2:
        require 10^15 * rateBTCxETH * arg2
        require 10^15 * rate * rateBTCxETH * arg2 / 10^15 * rateBTCxETH * arg2 == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (10^15 * rate * rateBTCxETH * arg2) + ext_call.return_data[0] >= ext_call.return_data[0]
    require (10^15 * rate * rateBTCxETH * arg2) + ext_call.return_data[0] <= 10000000 * 10^18
    require (10^15 * rateBTCxETH * arg2) + weiRaised >= weiRaised
    weiRaised += 10^15 * rateBTCxETH * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^15 * rate * rateBTCxETH * arg2
    require ext_call.success
    emit TokenClaim4BTC(10^15 * rateBTCxETH * arg2, 10^15 * rate * rateBTCxETH * arg2, arg2, rateBTCxETH, msg.sender, arg1);
}



}
