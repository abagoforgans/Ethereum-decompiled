contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor5;
address stor5; offset 8
address stor6;

function _fallback() payable {
    uint8(stor5.field_0) = 1
    require not msg.value
    require code.data[1656 len 32] < code.data[1688 len 32]
    require code.data[1732 len 20]
    require code.data[1764 len 20]
    require code.data[1796 len 20]
    stor1 = code.data[1656 len 32]
    stor2 = code.data[1688 len 32]
    address(stor5.field_8) = code.data[1732 len 20]
    stor6 = code.data[1796 len 20]
    stor0 = code.data[1764 len 20]
    return code.data[252 len 1404]
}



// =====================  Runtime code  =====================


const rate = 10000

const goal = 20000000 * 10^18


address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 weiRaised;
uint256 tokensSold;
uint8 stor5;
address walletAddress; offset 8
address tokenOwner;
mapping of uint256 balanceOf;

function crowdsaleActive() {
    return bool(stor5)
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function tokenOwner() {
    return tokenOwner
}

function token() {
    return tokenAddress
}

function setCrowdsaleActive(bool arg1) {
    require tokenOwner == msg.sender
    stor5 = uint8(arg1)
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require stor5
    require msg.value
    require 10000 * msg.value / msg.value == 10000
    require (10000 * msg.value) + tokensSold >= tokensSold
    require (10000 * msg.value) + tokensSold <= 20000000 * 10^18
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10000 * msg.value) + tokensSold >= tokensSold
    tokensSold += 10000 * msg.value
    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args tokenOwner, address(arg1), 10000 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require stor5
    require msg.value
    require 10000 * msg.value / msg.value == 10000
    require (10000 * msg.value) + tokensSold >= tokensSold
    require (10000 * msg.value) + tokensSold <= 20000000 * 10^18
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require (10000 * msg.value) + tokensSold >= tokensSold
    tokensSold += 10000 * msg.value
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args tokenOwner, msg.sender, 10000 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, 10000 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
