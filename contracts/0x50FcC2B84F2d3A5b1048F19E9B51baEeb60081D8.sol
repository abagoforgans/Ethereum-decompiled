contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint8 stor7;
address stor7; offset 8
address stor8;

function _fallback() payable {
    uint8(stor0.field_160) = 2
    uint8(stor7.field_0) = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[4645 len 20]
    stor2 = 10^18 * code.data[4665 len 32]
    address(stor7.field_8) = code.data[4709 len 20]
    stor8 = address(stor7.field_8)
    return code.data[447 len 4186]
}



// =====================  Runtime code  =====================


uint8 version; offset 160
address owner;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 sub_0d662a1f;
uint256 amountAvailable;
uint256 numDonors;
uint8 stor7;
address sub_a8aecea2Address; offset 8
address sub_ea92e843Address;
mapping of uint256 balanceOf;

function sub_0d662a1f(?) {
    return sub_0d662a1f
}

function beneficiary() {
    return beneficiaryAddress
}

function amountAvailable() {
    return amountAvailable
}

function version() {
    return version
}

function campaignOpen() {
    return bool(stor7)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function numDonors() {
    return numDonors
}

function sub_a8aecea2(?) {
    return sub_a8aecea2Address
}

function sub_ea92e843(?) {
    return sub_ea92e843Address
}

function closeCampaign() {
    require msg.sender == owner
    require stor7
    stor7 = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_5821acc3(?) {
    require msg.sender == owner
    require not stor7
    stor7 = 1
}

function checkGoalReached() {
    if amountRaised < fundingGoal:
        return 0
    emit GoalReached(amountRaised);
    return 1
}

function fund() payable {
    require stor7
    require beneficiaryAddress != msg.sender
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    amountAvailable += msg.value
    require numDonors + 1 >= numDonors
    require numDonors + 1 >= 1
    numDonors++
    balanceOf[address(msg.sender)] += msg.value
    require ext_code.size(sub_ea92e843Address)
    call sub_ea92e843Address.0x7e7d9041 with:
         gas gas_remaining - 710 wei
        args 0, 1, address(this.address), msg.sender, msg.value
    require ext_call.success
}

function _fallback() payable {
    require stor7
    require beneficiaryAddress != msg.sender
    require amountRaised + msg.value >= amountRaised
    require amountRaised + msg.value >= msg.value
    amountRaised += msg.value
    amountAvailable += msg.value
    require numDonors + 1 >= numDonors
    require numDonors + 1 >= 1
    numDonors++
    balanceOf[address(msg.sender)] += msg.value
    require ext_code.size(sub_ea92e843Address)
    call sub_ea92e843Address.0x7e7d9041 with:
         gas gas_remaining - 710 wei
        args 0, 1, address(this.address), msg.sender, msg.value
    require ext_call.success
}

function withdrawTo(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value amountAvailable wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        if ext_code.size(sub_ea92e843Address):
            call sub_ea92e843Address.0x538d584 with:
                 gas gas_remaining - 710 wei
                args 0, 2, address(this.address), address(arg1), amountAvailable
            if ext_call.success:
                return 0
    else:
        sub_0d662a1f += amountAvailable
        amountAvailable = 0
        if ext_code.size(sub_ea92e843Address):
            call sub_ea92e843Address.0x7e7d9041 with:
                 gas gas_remaining - 710 wei
                args 0, 2, address(this.address), address(arg1), amountAvailable
            if ext_call.success:
                return 1
    revert
}

function withdraw() {
    require msg.sender == beneficiaryAddress
    call beneficiaryAddress with:
       value amountAvailable wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        if ext_code.size(sub_ea92e843Address):
            call sub_ea92e843Address.0x538d584 with:
                 gas gas_remaining - 710 wei
                args 0, 2, address(this.address), msg.sender, amountAvailable
            if ext_call.success:
                return 0
    else:
        sub_0d662a1f += amountAvailable
        amountAvailable = 0
        if ext_code.size(sub_ea92e843Address):
            call sub_ea92e843Address.0x7e7d9041 with:
                 gas gas_remaining - 710 wei
                args 0, 2, address(this.address), msg.sender, amountAvailable
            if ext_call.success:
                return 1
    revert
}



}
