contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor5;

function _fallback() payable {
    stor5 = 39604 * 10^14
    require not msg.value
    stor1 = code.data[1905 len 20]
    stor0 = msg.sender
    return code.data[109 len 1784]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 donations;
mapping of uint256 donationMap;
mapping of uint256 failedDonations;
uint256 minimum;

function failedDonations(address arg1) {
    return failedDonations[arg1]
}

function minimum() {
    return minimum
}

function donationMap(address arg1) {
    return donationMap[arg1]
}

function donations() {
    return donations
}

function _fallback() {
    emit 0x612f78dc: 'No function called', msg.sender
}

function withdraw() {
    require stor0 == msg.sender
    donations = 0
    call msg.sender with:
       value donations wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawDonation() {
    failedDonations[address(msg.sender)] = 0
    call msg.sender with:
       value failedDonations[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function generousDonation() payable {
    require ext_code.size(stor1)
    call stor1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args stor0, this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        failedDonations[address(msg.sender)] += msg.value
        emit 0x612f78dc: 'No more donations here check Majoolr.io, call withdrawDonation()', msg.sender
        return 0
    donationMap[address(msg.sender)] += msg.value
    donations += msg.value
    emit ThxMsg('sThank you for your donation!', msg.sender);
    return 1
}

function donate() payable {
    if donationMap[address(msg.sender)] + msg.value < minimum:
        failedDonations[address(msg.sender)] += msg.value
        emit 0x612f78dc: Array(len=41, data='Donation too low, call withdrawD', 'onation()' << 184), msg.sender
        return 0
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor0, msg.sender, 1
    require ext_call.success
    if not ext_call.return_data[0]:
        failedDonations[address(msg.sender)] += msg.value
        emit 0x612f78dc: Array(len=39, data='Transer failed, call withdrawDon', 'ation()' << 200), msg.sender
        return 0
    donationMap[address(msg.sender)] += msg.value
    donations += msg.value
    emit ThxMsg('sThank you for your donation!', msg.sender);
    return 1
}



}
