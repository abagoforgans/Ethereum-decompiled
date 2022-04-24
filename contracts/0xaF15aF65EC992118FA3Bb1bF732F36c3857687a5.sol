contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = 420144 * 24 * 3600
    stor2 = 420408 * 24 * 3600
    stor3 = 30
    stor6 = 10^18
    return code.data[144 len 1681]
}



// =====================  Runtime code  =====================


address owner;
uint256 saleStart;
uint256 saleEnd;
uint256 saleBonus;
uint256 buyingPrice;
uint256 totalInvestors;
uint256 minInvestment;

function totalInvestors() {
    return totalInvestors
}

function buyingPrice() {
    return buyingPrice
}

function saleBonus() {
    return saleBonus
}

function minInvestment() {
    return minInvestment
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

function destroyContract() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function changeBonus(uint256 arg1) {
    require msg.sender == owner
    saleBonus = arg1
}

function changeMinInvestment(uint256 arg1) {
    require msg.sender == owner
    minInvestment = arg1
}

function changeTiming(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    saleStart = arg1
    saleEnd = arg2
}

function _fallback() payable {
    require saleStart < block.timestamp
    require saleEnd > block.timestamp
    require msg.value >= minInvestment
    totalInvestors++
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
