contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x314159265dd8dbb310642f98f50c066173c1259b
    stor1 = 0x6090a6e47849629b7245dfa1ca21d94cd15878ef
    stor2 = 0x8301fb8945760fa2b3c669e8f420b8795dc03766
    require not msg.value
    return code.data[135 len 3076]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of struct checkCommitPeriod;

function checkCommitPeriod(bytes32 arg1) {
    return checkCommitPeriod[arg1].field_256
}

function subRegistrationPeriod(bytes32 arg1) {
    return checkCommitPeriod[arg1].field_1280
}

function checkSubPrice(bytes32 arg1) {
    return checkCommitPeriod[arg1].field_1024
}

function checkSubAvailability(bytes32 arg1) {
    return bool(checkCommitPeriod[arg1].field_768)
}

function checkRegPeriod(bytes32 arg1) {
    return checkCommitPeriod[arg1].field_512
}

function _fallback() payable {
    call stor2 with:
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

function subBuy(bytes32 arg1, bytes32 arg2, bytes32 arg3, address arg4) payable {
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require block.timestamp + checkCommitPeriod[arg1].field_1280 + 5 < checkCommitPeriod[arg1].field_256
    require 1 == bool(checkCommitPeriod[arg1].field_768)
    require msg.value >= checkCommitPeriod[arg1].field_1024
    require checkCommitPeriod[arg3].field_512 < block.timestamp
    call stor2 with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call checkCommitPeriod[arg1].field_0 with:
       value msg.value - (msg.value / 20) wei
         gas 2300 * is_zero(value) wei
    checkCommitPeriod[arg3].field_512 = checkCommitPeriod[arg1].field_1280 + block.timestamp
    checkCommitPeriod[arg3].field_768 = 0
    checkCommitPeriod[arg3].field_1024 = 0
    checkCommitPeriod[arg3].field_1280 = 0
    checkCommitPeriod[arg3].field_256 = 0
    require ext_code.size(stor0)
    call stor0.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args arg1, arg2, arg4
    require ext_call.success
}

function unlistSubName(bytes32 arg1, bytes32 arg2) {
    require checkCommitPeriod[arg2].field_0 == msg.sender
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor1)
    call stor1.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).owner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require checkCommitPeriod[arg2].field_256 <= block.timestamp
    require ext_code.size(stor0)
    call stor0.setOwner(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg2, checkCommitPeriod[arg2].field_0
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.transfer(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args arg1, checkCommitPeriod[arg2].field_0
    require ext_call.success
    checkCommitPeriod[arg2].field_0 = 0
    checkCommitPeriod[arg2].field_768 = 0
    checkCommitPeriod[arg2].field_1024 = 0
    checkCommitPeriod[arg2].field_1280 = 0
    checkCommitPeriod[arg2].field_256 = 0
}

function listSubName(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require ext_code.size(stor1)
    call stor1.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).previousOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(stor1)
    call stor1.entries(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).owner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(stor0)
    call stor0.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require not checkCommitPeriod[arg2].field_768
    require arg5 >= 168 * 24 * 3600
    require arg5 <= arg3
    checkCommitPeriod[arg2].field_0 = msg.sender
    checkCommitPeriod[arg2].field_768 = 1
    checkCommitPeriod[arg2].field_1024 = arg4
    checkCommitPeriod[arg2].field_1280 = arg5
    checkCommitPeriod[arg2].field_256 = arg3 + block.timestamp + (24 * 3600)
}



}
