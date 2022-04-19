contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
bool stor3; offset 256
uint8 stor3; offset 152
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor0 = 0x45125b61f06b2e9b8fc8a2ea688c35e27086d2ae
    stor1 = 0x45125b61f06b2e9b8fc8a2ea688c35e27086d2ae
    require not msg.value
    stor2 = msg.sender
    Mask(152, 0, stor3.field_0) = 0xf483bc6d54c19833d7cea785d5053450ed5fd4
    uint8(stor3.field_152) = 0
    uint8(stor3.field_160) = 4
    stor3.field_256 % 1 = 0
    stor4 = 0
    stor5 = 0
    return code.data[209 len 1423]
}



// =====================  Runtime code  =====================


address pearlContractAddress;
address stor1;
address directorAddress;
uint8 share; offset 160
address partnerAddress;
uint256 funds;
uint8 stor5;

function director() {
    return directorAddress
}

function pearlContract() {
    return pearlContractAddress
}

function share() {
    return share
}

function saleClosed() {
    return bool(stor5)
}

function partner() {
    return partnerAddress
}

function funds() {
    return funds
}

function openSale() {
    require directorAddress == msg.sender
    require stor5
    stor5 = 0
    return 1
}

function transferDirector(address arg1) {
    require directorAddress == msg.sender
    directorAddress = arg1
}

function closeSale() {
    require directorAddress == msg.sender
    require not stor5
    stor5 = 1
    return 1
}

function withdrawFunds() {
    require directorAddress == msg.sender
    call directorAddress with:
       value eth.balance(this.address) - (eth.balance(this.address) / 100 * share) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call partnerAddress with:
       value eth.balance(this.address) / 100 * share wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor5
    require msg.value >= 10^15
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require 6000 * msg.value <= ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 6000 * msg.value
    require ext_call.success
    funds += msg.value
    call directorAddress with:
       value eth.balance(this.address) - (eth.balance(this.address) / 100 * share) wei
         gas 2300 * is_zero(value) wei
    call partnerAddress with:
       value eth.balance(this.address) / 100 * share wei
         gas 2300 * is_zero(value) wei
}



}
