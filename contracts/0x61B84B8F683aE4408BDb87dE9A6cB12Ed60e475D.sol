contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;

function _fallback() payable {
    stor0 = 0x1844b21593262668b7248d0f57a220caaba46ab9
    stor1 = 0x1844b21593262668b7248d0f57a220caaba46ab9
    require not msg.value
    stor2 = msg.sender
    stor3 = 0
    stor4 = 0
    return code.data[141 len 1257]
}



// =====================  Runtime code  =====================


address pearlContractAddress;
address stor1;
address directorAddress;
uint256 funds;
uint8 stor4;

function director() {
    return directorAddress
}

function pearlContract() {
    return pearlContractAddress
}

function saleClosed() {
    return bool(stor4)
}

function funds() {
    return funds
}

function openSale() {
    require directorAddress == msg.sender
    require stor4
    stor4 = 0
    return 1
}

function transferDirector(address arg1) {
    require directorAddress == msg.sender
    directorAddress = arg1
}

function closeSale() {
    require directorAddress == msg.sender
    require not stor4
    stor4 = 1
    return 1
}

function withdrawFunds() {
    require directorAddress == msg.sender
    call directorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require directorAddress == msg.sender
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function _fallback() payable {
    require not stor4
    require msg.value >= 10^15
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require 80000 * msg.value <= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 80000 * msg.value
    require ext_call.success
    funds += msg.value
    call directorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
