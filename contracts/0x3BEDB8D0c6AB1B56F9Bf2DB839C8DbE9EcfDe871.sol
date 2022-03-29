contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender
    return code.data[54 len 866]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_3f975076;
address sub_0afca69fAddress;

function sub_0afca69f(?) {
    return sub_0afca69fAddress
}

function sub_3f975076(?) {
    return sub_3f975076
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_e9d4e01a(?) {
    require owner == msg.sender
    sub_0afca69fAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setBuyPrice(uint256 arg1) {
    require owner == msg.sender
    sub_3f975076 = arg1
}

function sub_e335f17f(?) payable {
    require sub_3f975076
    require ext_code.size(sub_0afca69fAddress)
    call sub_0afca69fAddress.0x1bbfb029 with:
         gas gas_remaining - 50 wei
        args 0, 0, msg.sender, msg.value / sub_3f975076, 128, 4, 'xETH'
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}



}
