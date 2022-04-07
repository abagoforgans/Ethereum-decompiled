contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1474 len 32]
    return code.data[131 len 1343]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address creatorAddress;
uint256 totalAmount;
uint256 sellPrice;
mapping of uint256 balanceOf;

function creator() {
    return creatorAddress
}

function totalAmount() {
    return totalAmount
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    revert
}

function issue(uint256 arg1) {
    require msg.sender == creatorAddress
    totalAmount += arg1
}

function setPrices(uint256 arg1) {
    require msg.sender == creatorAddress
    sellPrice = arg1
}

function sub_6485c41b(?) payable {
    require sellPrice
    require totalAmount >= msg.value / sellPrice
    require balanceOf[address(msg.sender)] + (msg.value / sellPrice) >= balanceOf[address(msg.sender)]
    totalAmount -= msg.value / sellPrice
    balanceOf[address(msg.sender)] += msg.value / sellPrice
    emit Transfer((msg.value / sellPrice), this.address, msg.sender);
    call 0x005cd1194c1f088d9bd8bf9e70e5e44d2194c029 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value / sellPrice)
}



}
