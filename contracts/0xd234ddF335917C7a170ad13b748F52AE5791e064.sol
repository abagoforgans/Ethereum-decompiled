contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor2; offset 160
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;

function _fallback() payable {
    uint8(stor2.field_160) = 0
    stor3 = 420355 * 3600
    stor4 = 421075 * 3600
    stor5 = 654
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[2227 len 20]
    stor8 = code.data[2259 len 20]
    require ext_code.size(code.data[2259 len 20])
    call code.data[2259 len 20].0xd9520c9a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor2.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2.field_0))
    require stor5
    stor6 = 10^18 / stor5 / 10^6
    return code.data[351 len 1864]
}



// =====================  Runtime code  =====================


const maxTokensToSold = 84 * 10^12


address owner;
address walletAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address allTokenAddress;
uint256 startTime;
uint256 endTime;
uint256 uSDto1ETH;
uint256 price;
uint256 totalTokensSold;
address tokenAddress;

function emergencyFlagAndHiddenCap() {
    return bool(uint8(stor2.field_160))
}

function endTime() {
    return endTime
}

function USDto1ETH() {
    return uSDto1ETH
}

function wallet() {
    return walletAddress
}

function totalTokensSold() {
    return totalTokensSold
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function price() {
    return price
}

function allTokenAddress() {
    return allTokenAddress
}

function token() {
    return tokenAddress
}

function ChangeEnd(uint256 arg1) {
    require owner == msg.sender
    endTime = arg1
}

function ChangeStart(uint256 arg1) {
    require owner == msg.sender
    startTime = arg1
}

function emergencyAndHiddenCapToggle() {
    require owner == msg.sender
    Mask(96, 0, stor2.field_160) = Mask(96, 0, not uint8(stor2.field_160))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ChangePrice() {
    require owner == msg.sender
    require uSDto1ETH
    if block.timestamp <= startTime + (120 * 24 * 3600):
        price = 10^18 / uSDto1ETH / 10^6
    else:
        if block.timestamp > startTime + (240 * 24 * 3600):
            price = 27 * 10^18 / uSDto1ETH / 10^6 / 10
        else:
            price = 9 * 10^18 / uSDto1ETH / 10^6 / 5
}

function ChangeUSDto1ETH(uint256 arg1) {
    require owner == msg.sender
    uSDto1ETH = arg1
    require uSDto1ETH
    if block.timestamp <= startTime + (120 * 24 * 3600):
        price = 10^18 / uSDto1ETH / 10^6
    else:
        if block.timestamp > startTime + (240 * 24 * 3600):
            price = 27 * 10^18 / uSDto1ETH / 10^6 / 10
        else:
            price = 9 * 10^18 / uSDto1ETH / 10^6 / 5
}

function _fallback() payable {
    require block.timestamp <= endTime
    require block.timestamp >= startTime
    require not uint8(stor2.field_160)
    require totalTokensSold < 84 * 10^12
    require price > 0
    require price
    require msg.value == (price * msg.value / price) + (msg.value % price)
    require msg.value / price >= 10^6
    require msg.value / price <= 35 * 10^10
    require msg.value / price * price <= msg.value
    require msg.value - (msg.value / price * price) <= msg.value
    call walletAddress with:
       value msg.value / price * price wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if msg.value - (msg.value / price * price) > 0:
        call msg.sender with:
           value msg.value - (msg.value / price * price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args allTokenAddress, msg.sender, msg.value / price
    require ext_call.success
    totalTokensSold += msg.value / price
}



}
