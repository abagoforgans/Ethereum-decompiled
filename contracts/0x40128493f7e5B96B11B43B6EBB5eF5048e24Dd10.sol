contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor5;

function _fallback() payable {
    stor2 = 25 * 10^11
    stor3 = 5 * 10^12
    require not msg.value
    stor0 = code.data[1317 len 20]
    stor5 = 250
    return code.data[100 len 1205]
}



// =====================  Runtime code  =====================


address coinAddress;
uint256 sub_c86b3347;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of struct participators;

function coin() {
    return coinAddress
}

function participators(address arg1) {
    return bool(participators[arg1].field_0), 
           bool(participators[arg1].field_8),
           bool(participators[arg1].field_16),
           bool(participators[arg1].field_24)
}

function sub_c86b3347(?) {
    return sub_c86b3347
}

function sub_fc93977b(?) {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function claimAirdrop() {
    require not participators[address(msg.sender)].field_24
    require stor4
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] > 0:
        stor2 = stor3
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor2
    require ext_call.success
    participators[address(msg.sender)].field_24 = 1
    participators[address(msg.sender)].field_32 = 0
    participators[address(msg.sender)].field_256 = 0
    participators[address(msg.sender)].field_256 = 0
    return stor2
}

function registerAirdrop() {
    require not participators[address(msg.sender)].field_8
    require not stor4
    require ext_code.size(coinAddress)
    call coinAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    participators[address(msg.sender)].field_0 = 1
    participators[address(msg.sender)].field_8 = 1
    participators[address(msg.sender)].field_8 = 0
    participators[address(msg.sender)].field_16 = 0
    participators[address(msg.sender)].field_256 = 0
    participators[address(msg.sender)].field_256 = 0
    if ext_call.return_data[0] > 0:
        participators[address(msg.sender)].field_16 = 1
        participators[address(msg.sender)].field_24 = 0
        participators[address(msg.sender)].field_256 = 0
        participators[address(msg.sender)].field_256 = 0
    sub_c86b3347++
    if sub_c86b3347 + 1 >= stor5:
        stor4 = 1
}



}
