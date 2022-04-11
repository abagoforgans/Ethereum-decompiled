contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x314159265dd8dbb310642f98f50c066173c1259b
    stor1 = 0x1f51d1d29aafb00188168227a49d8f7e5d5b5bd9
    require not msg.value
    return code.data[105 len 1738]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct subRegistrationPeriod;

function subRegistrationPeriod(bytes32 arg1) {
    return subRegistrationPeriod[arg1].field_1024
}

function checkSubPrice(bytes32 arg1) {
    return subRegistrationPeriod[arg1].field_768
}

function checkSubAvailability(bytes32 arg1) {
    return bool(subRegistrationPeriod[arg1].field_512)
}

function _fallback() payable {
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function nodeCheck(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function listSubName(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require bool(subRegistrationPeriod[arg1].field_512) != 1
    subRegistrationPeriod[arg1].field_0 = msg.sender
    subRegistrationPeriod[arg1].field_512 = 1
    subRegistrationPeriod[arg1].field_768 = arg2
    subRegistrationPeriod[arg1].field_1024 = arg3
}

function unlistSubName(bytes32 arg1) {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require 1 == bool(subRegistrationPeriod[arg1].field_512)
    require ext_code.size(stor0)
    call stor0.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg1, subRegistrationPeriod[arg1].field_0
    require ext_call.success
    subRegistrationPeriod[arg1].field_0 = 0
    subRegistrationPeriod[arg1].field_512 = 0
    subRegistrationPeriod[arg1].field_768 = 0
    subRegistrationPeriod[arg1].field_1024 = 0
}

function subBuy(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require 1 == bool(subRegistrationPeriod[arg1].field_512)
    require msg.value >= subRegistrationPeriod[arg1].field_768
    require subRegistrationPeriod[arg2][arg1].field_256 < block.timestamp
    call stor1 with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call subRegistrationPeriod[arg1].field_0 with:
       value msg.value - (msg.value / 20) wei
         gas 2300 * is_zero(value) wei
    subRegistrationPeriod[arg2][arg1].field_256 = subRegistrationPeriod[arg1].field_1024 + block.timestamp
    subRegistrationPeriod[arg2][arg1].field_512 = 0
    subRegistrationPeriod[arg2][arg1].field_768 = 0
    subRegistrationPeriod[arg2][arg1].field_1024 = 0
    require ext_code.size(stor0)
    call stor0.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args arg1, arg2, arg3
    require ext_call.success
}



}
