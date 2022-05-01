contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = 0x62ef732ec9bab90070f4ac4e065ce1cc090d909f
    stor2 = 0x8f0592bdcee38774d93bc1fd2c97ee6540385356
    stor3 = 0xc787c3f6f75d7195361b64318ce019f90507f806
    stor4 = 3000
    stor0 = msg.sender
    return code.data[148 len 717]
}



// =====================  Runtime code  =====================


address owner;
address investment_address;
address major_partner_address;
address minor_partner_address;
uint256 gas;

function investment_address() {
    return investment_address
}

function gas() {
    return gas
}

function owner() {
    return owner
}

function minor_partner_address() {
    return minor_partner_address
}

function major_partner_address() {
    return major_partner_address
}

function set_transfer_gas(uint256 arg1) {
    require owner == msg.sender
    gas = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function _fallback() payable {
    call major_partner_address with:
       value 24 * msg.value / 1000 wei
         gas gas wei
    require ext_call.success
    call minor_partner_address with:
       value 16 * msg.value / 1000 wei
         gas gas wei
    call investment_address with:
       value msg.value - (24 * msg.value / 1000) - (16 * msg.value / 1000) wei
         gas gas wei
}



}
