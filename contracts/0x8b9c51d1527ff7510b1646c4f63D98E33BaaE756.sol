contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor15;

function _fallback() {
    stor0 = msg.sender
    stor1 = 420288 * 24 * 3600
    stor2 = 421416 * 24 * 3600
    stor3 = 422160 * 24 * 3600
    stor4 = 422832 * 24 * 3600
    stor5 = 423576 * 24 * 3600
    stor6 = 424296 * 24 * 3600
    stor7 = 425040 * 24 * 3600
    stor8 = 100
    stor9 = 50
    stor10 = 40
    stor11 = 20
    stor12 = 10
    stor13 = 5
    stor15 = 10^17
    return code.data[239 len 2373]
}



// =====================  Runtime code  =====================


address owner;
uint256 presaleStart;
uint256 icoLevel1;
uint256 icoLevel2;
uint256 icoLevel3;
uint256 icoLevel4;
uint256 icoLevel5;
uint256 saleEnd;
uint256 saleBonusPresale;
uint256 saleBonusICO1;
uint256 saleBonusICO2;
uint256 saleBonusICO3;
uint256 saleBonusICO4;
uint256 saleBonusICO5;
uint256 totalInvestors;
uint256 minInvestment;

function icoLevel5() {
    return icoLevel5
}

function icoLevel4() {
    return icoLevel4
}

function totalInvestors() {
    return totalInvestors
}

function saleBonusICO3() {
    return saleBonusICO3
}

function saleBonusICO4() {
    return saleBonusICO4
}

function saleBonusICO5() {
    return saleBonusICO5
}

function saleBonusICO1() {
    return saleBonusICO1
}

function icoLevel1() {
    return icoLevel1
}

function saleBonusICO2() {
    return saleBonusICO2
}

function minInvestment() {
    return minInvestment
}

function owner() {
    return owner
}

function saleEnd() {
    return saleEnd
}

function saleBonusPresale() {
    return saleBonusPresale
}

function icoLevel3() {
    return icoLevel3
}

function presaleStart() {
    return presaleStart
}

function icoLevel2() {
    return icoLevel2
}

function destroyContract() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function changeMinInvestment(uint256 arg1) {
    require msg.sender == owner
    minInvestment = arg1
}

function _fallback() payable {
    require presaleStart < block.timestamp
    require saleEnd > block.timestamp
    require msg.value >= minInvestment
    totalInvestors++
}

function changeBonus(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    saleBonusPresale = arg1
    saleBonusICO1 = arg2
    saleBonusICO2 = arg3
    saleBonusICO3 = arg4
    saleBonusICO4 = arg5
    saleBonusICO5 = arg6
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

function changeTiming(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require msg.sender == owner
    presaleStart = arg1
    icoLevel1 = arg2
    icoLevel2 = arg3
    icoLevel3 = arg4
    icoLevel4 = arg5
    icoLevel5 = arg6
    saleEnd = arg7
}



}
