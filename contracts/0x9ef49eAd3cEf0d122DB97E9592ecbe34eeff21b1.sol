contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = 418892 * 3600
    stor2 = 420270 * 3600
    stor3 = 30
    stor4 = 350877190 * 10^6
    return code.data[143 len 1648]
}



// =====================  Runtime code  =====================


address owner;
uint256 presaleStart;
uint256 saleEnd;
uint256 presaleBonus;
uint256 buyingPrice;
uint256 totalInvestors;

function totalInvestors() {
    return totalInvestors
}

function buyingPrice() {
    return buyingPrice
}

function owner() {
    return owner
}

function presaleBonus() {
    return presaleBonus
}

function saleEnd() {
    return saleEnd
}

function presaleStart() {
    return presaleStart
}

function destroyContract() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function changeBonus(uint256 arg1) {
    require msg.sender == owner
    presaleBonus = arg1
}

function changeBuyingPrice(uint256 arg1) {
    require msg.sender == owner
    buyingPrice = arg1
}

function changeTiming(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    presaleStart = arg1
    saleEnd = arg2
}

function _fallback() payable {
    require buyingPrice
    totalInvestors++
    require presaleStart < block.timestamp
    require saleEnd > block.timestamp
    require msg.value >= 10^18
}

function withdrawEther(address arg1) payable {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EtherTransfer(eth.balance(this.address), this.address, arg1);
    return 1
}



}
