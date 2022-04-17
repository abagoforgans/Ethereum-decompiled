contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1424 len 20]
    return code.data[83 len 1329]
}



// =====================  Runtime code  =====================


address sub_99e686efAddress;
mapping of struct offers;

function offers(uint256 arg1) {
    return offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512, bool(offers[arg1].field_768)
}

function sub_99e686ef(?) {
    return sub_99e686efAddress
}

function _fallback() payable {
    revert
}

function sub_11e132aa(?) {
    require offers[arg1].field_0 == msg.sender
    offers[arg1].field_256 = arg2
}

function sub_a5d7c10a(?) {
    require offers[arg1].field_0 == msg.sender
    offers[arg1].field_768 = 1
    require ext_code.size(sub_99e686efAddress)
    call sub_99e686efAddress.sendReward(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args offers[arg1].field_0, offers[arg1].field_256, offers[arg1].field_512
    require ext_call.success
}

function declineOffer(uint256 arg1) {
    require offers[arg1].field_0 == msg.sender
    require not offers[arg1].field_256
    require ext_code.size(sub_99e686efAddress)
    call sub_99e686efAddress.declineCoins(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args offers[arg1].field_0, offers[arg1].field_512
    require ext_call.success
    offers[arg1].field_0 = 0
}

function setOffer(uint256 arg1, uint256 arg2) {
    require not offers[arg1].field_0
    require ext_code.size(sub_99e686efAddress)
    call sub_99e686efAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > arg2
    require ext_code.size(sub_99e686efAddress)
    call sub_99e686efAddress.reserveCoins(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    offers[arg1].field_0 = msg.sender
    offers[arg1].field_512 = arg2
}



}
