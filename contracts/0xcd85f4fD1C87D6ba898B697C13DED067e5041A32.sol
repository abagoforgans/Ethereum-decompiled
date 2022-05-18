contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint256 tokenPrice;
uint256 maxCap;
address fWDaddrETH;
address eSSgenesisAddress;
uint256 totalSold;
uint256 decimals;
mapping of uint256 sold;
uint256 pubEnd;
address stor10;
uint256 tokenUnit;

function name() {
    return name[0 len name.length]
}

function maxCap() {
    return maxCap
}

function pubEnd() {
    return pubEnd
}

function decimals() {
    return decimals
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function ESSgenesis() {
    return eSSgenesisAddress
}

function sold(address arg1) {
    return sold[arg1]
}

function FWDaddrETH() {
    return fWDaddrETH
}

function tokenUnit() {
    return tokenUnit
}

function setPubEnd(uint256 arg1) {
    require msg.sender == owner
    pubEnd = arg1
}

function setMaxCap(uint256 arg1) {
    require msg.sender == owner
    maxCap = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    tokenPrice = arg1
}

function setFWDaddrETH(address arg1) {
    require msg.sender == owner
    fWDaddrETH = arg1
}

function setGenesis(address arg1) {
    require msg.sender == owner
    eSSgenesisAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function EMGwithdraw(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > pubEnd
    require arg1 > 0
    call fWDaddrETH with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawPUB() {
    require block.timestamp > pubEnd
    require sold[address(msg.sender)] > 0
    call eSSgenesisAddress with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args msg.sender, sold[address(msg.sender)]
    require ext_call.success
    sold[address(msg.sender)] = 0
    return 1
}

function buy() payable {
    require block.timestamp < pubEnd
    require msg.value > 0
    require msg.value <= eth.balance(msg.sender)
    require msg.value + totalSold <= maxCap
    require tokenPrice
    require ext_code.size(eSSgenesisAddress)
    call eSSgenesisAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value * tokenUnit / tokenPrice <= ext_call.return_data[0]
    require msg.sender
    require sold[address(msg.sender)] + (msg.value * tokenUnit / tokenPrice) >= sold[address(msg.sender)]
    sold[address(msg.sender)] += msg.value * tokenUnit / tokenPrice
    require totalSold + msg.value >= totalSold
    totalSold += msg.value
    call fWDaddrETH with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp < pubEnd
    require msg.value > 0
    require msg.value <= eth.balance(msg.sender)
    require msg.value + totalSold <= maxCap
    require tokenPrice
    require ext_code.size(eSSgenesisAddress)
    call eSSgenesisAddress.0x70a08231 with:
         gas gas_remaining wei
        args stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value * tokenUnit / tokenPrice <= ext_call.return_data[0]
    require msg.sender
    require sold[address(msg.sender)] + (msg.value * tokenUnit / tokenPrice) >= sold[address(msg.sender)]
    sold[address(msg.sender)] += msg.value * tokenUnit / tokenPrice
    require totalSold + msg.value >= totalSold
    totalSold += msg.value
    call fWDaddrETH with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
