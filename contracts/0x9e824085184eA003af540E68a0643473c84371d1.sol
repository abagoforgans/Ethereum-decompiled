contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;
address stor54CD;

function _fallback() {
    stor1 = 10^16
    stor5 = 0x45dd62db3179f912866af98d6bd477f81bddf5f
    stor0 = 720 * 24 * 3600
    stor2 = 10^16
    stor3 = 10^16
    stor54CD = 0x45dd62db3179f912866af98d6bd477f81bddf5f
    return code.data[154 len 2160]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
mapping of struct subRegistrationPeriod;

function subRegistrationPeriod(bytes32 arg1) {
    return subRegistrationPeriod[arg1].field_0
}

function sub_c667e4ff(?) {
    return bool(subRegistrationPeriod[arg1].field_520)
}

function sub_dd4ac054(?) {
    return subRegistrationPeriod[arg1].field_256
}

function checkSubAvailability(bytes32 arg1) {
    return bool(subRegistrationPeriod[arg1].field_512)
}

function _fallback() payable {
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_0bd09e06(?) payable {
    require subRegistrationPeriod[arg1].field_1280 == msg.sender
    require msg.value >= stor2
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    subRegistrationPeriod[arg1].field_520 = 0
}

function unlistSubName(bytes32 arg1) payable {
    require subRegistrationPeriod[arg1].field_1280 == msg.sender
    require msg.value >= stor2
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    subRegistrationPeriod[arg1].field_512 = 0
}

function sub_d427798f(?) payable {
    require subRegistrationPeriod[arg1].field_1280 == msg.sender
    require msg.value >= stor3
    require arg2 >= stor1
    require subRegistrationPeriod[arg1].field_256 < block.timestamp
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    subRegistrationPeriod[arg1].field_520 = 1
    subRegistrationPeriod[arg1].field_768 = arg2
    emit 0x2914bd4a: arg2, arg1
}

function listSubName(bytes32 arg1, uint256 arg2, uint256 arg3) payable {
    require subRegistrationPeriod[arg1].field_1280 == msg.sender
    require msg.value >= stor3
    require arg2 >= stor1
    require arg3 >= stor0
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    subRegistrationPeriod[arg1].field_512 = 1
    subRegistrationPeriod[arg1].field_1024 = arg2
    subRegistrationPeriod[arg1].field_0 = arg3
    emit 0x2914bd4a: arg2, arg1
}

function sub_8c6bc8e4(?) payable {
    require 1 == bool(subRegistrationPeriod[arg1].field_520)
    require msg.value >= subRegistrationPeriod[arg1].field_768
    call stor5 with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call subRegistrationPeriod[arg1].field_1280 with:
       value msg.value - (msg.value / 20) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor4)
    call stor4.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    subRegistrationPeriod[arg1].field_1280 = arg2
}

function subBuy(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require subRegistrationPeriod[arg1][arg2].field_256 < block.timestamp
    require 1 == bool(subRegistrationPeriod[arg1].field_512)
    require msg.value >= subRegistrationPeriod[arg1].field_1024
    call stor5 with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call subRegistrationPeriod[arg1].field_1280 with:
       value msg.value - (msg.value / 20) wei
         gas 2300 * is_zero(value) wei
    subRegistrationPeriod[arg1][arg2].field_256 = subRegistrationPeriod[arg1].field_0 + block.timestamp
    require ext_code.size(stor4)
    call stor4.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args arg1, arg2, arg3
    require ext_call.success
    subRegistrationPeriod[arg1][arg2].field_1280 = arg3
}



}
