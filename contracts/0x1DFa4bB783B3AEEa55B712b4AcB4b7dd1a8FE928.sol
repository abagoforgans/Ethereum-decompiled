contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor5 = 0x6488ab8f1df285d5b70ccf57a489cd27888a4d14
    bool(stor1.length) = 0
    stor1.length.field_1 = 18
    stor1.length.field_8 = 'Private Token Sale' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 419997 * 3600
    stor3 = 422205 * 3600
    return code.data[447 len 2304]
}



// =====================  Runtime code  =====================


const getBonus = 0

const canBuy = 0


address owner;
array of uint256 name;
uint256 saleStart;
uint256 saleEnd;
uint256 tokenPrice;
address tokenAddress;

function name() {
    return name[0 len name.length]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function saleStart() {
    return saleStart
}

function saleEnd() {
    return saleEnd
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function stopForce() {
    require msg.sender == owner
    saleEnd = block.timestamp
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function active() {
    if block.timestamp <= saleStart:
        return (block.timestamp > saleStart)
    return (block.timestamp < saleEnd)
}

function balance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.allowance(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args tokenAddress, this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function sendTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp > saleStart
    require block.timestamp < saleEnd
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args tokenAddress, address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}



}
