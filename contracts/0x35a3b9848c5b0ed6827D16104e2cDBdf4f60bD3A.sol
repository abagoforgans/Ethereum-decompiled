contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor1 = code.data[1581 len 20]
    stor0 = code.data[1613 len 20]
    stor2 = (24 * 3600 * code.data[1633 len 32]) + block.timestamp
    return code.data[122 len 1447]
}



// =====================  Runtime code  =====================


address badge_objAddress;
address beneficiaryAddress;
uint256 expiry_date;
address highest_bidderAddress;
uint256 highest_bid;
mapping of uint256 stor5;

function expiry_date() {
    return expiry_date
}

function beneficiary() {
    return beneficiaryAddress
}

function highest_bidder() {
    return highest_bidderAddress
}

function badge_obj() {
    return badge_objAddress
}

function highest_bid() {
    return highest_bid
}

function end_auction() {
    require beneficiaryAddress == msg.sender
    require block.timestamp > expiry_date + (24 * 3600)
    selfdestruct(beneficiaryAddress)
}

function withdraw_ether() {
    if stor5[address(msg.sender)] <= 0:
        return 1
    stor5[address(msg.sender)] = 0
    call msg.sender with:
       value stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function _fallback() payable {
    require block.timestamp < expiry_date
    require msg.value > highest_bid
    require ext_code.size(badge_objAddress)
    call badge_objAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if highest_bidderAddress:
        stor5[stor3] += highest_bid
    highest_bidderAddress = msg.sender
    highest_bid = msg.value
}

function withdraw_badge() {
    require block.timestamp >= expiry_date
    require ext_code.size(badge_objAddress)
    call badge_objAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if highest_bid <= 0:
        if ext_code.size(badge_objAddress):
            call badge_objAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            if ext_call.success:
    else:
        if ext_code.size(badge_objAddress):
            call badge_objAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args highest_bidderAddress, ext_call.return_data[0]
            if ext_call.success:
    revert
}



}
