contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0xc4a86561cb0b7ea1214904f26e6d50fd357c7986
    stor2 = 0xe27db398a0baf2eb3f748bf7e227e1ef102cad0e
    stor3 = 810
    stor4 = 4
    stor0 = msg.sender
    return code.data[263 len 2191]
}



// =====================  Runtime code  =====================


address owner;
address contractAddress;
address dashboardAddress;
uint256 ETHUSDPRICE;
uint256 CHGUSDPRICE;

function dashboardAddress() {
    return dashboardAddress
}

function ETHUSDPRICE() {
    return ETHUSDPRICE
}

function owner() {
    return owner
}

function CHGUSDPRICE() {
    return CHGUSDPRICE
}

function contractAddress() {
    return contractAddress
}

function setETHUSDPrice(uint256 arg1) {
    require msg.sender == dashboardAddress
    ETHUSDPRICE = arg1
}

function setCHGUSDPrice(uint256 arg1) {
    require msg.sender == dashboardAddress
    CHGUSDPRICE = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function calculateCHGAmountToEther(uint256 arg1) {
    require CHGUSDPRICE
    return (10 * arg1 * ETHUSDPRICE / CHGUSDPRICE)
}

function balances(address arg1) {
    require ext_code.size(contractAddress)
    call contractAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function currentBalance() {
    require ext_code.size(contractAddress)
    call contractAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require CHGUSDPRICE
    require ext_code.size(contractAddress)
    call contractAddress.0x27e235e3 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= 10 * msg.value * ETHUSDPRICE / CHGUSDPRICE
    require ext_code.size(contractAddress)
    call contractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10 * msg.value * ETHUSDPRICE / CHGUSDPRICE
    require ext_call.success
    require ext_call.return_data[0]
}



}
