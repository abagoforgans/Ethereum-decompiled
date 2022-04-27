contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
address stor4;
uint8 stor6;

function _fallback() payable {
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = block.timestamp + (60 * code.data[2397 len 32])
    stor3 = 42352
    stor4 = code.data[2441 len 20]
    return code.data[246 len 2151]
}



// =====================  Runtime code  =====================


address owner;
uint256 amountRaised;
uint256 deadline;
uint256 rateOfEther;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor6;

function deadline() {
    return deadline
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function rateOfEther() {
    return rateOfEther
}

function changeOwner(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function setPrice(uint256 arg1) {
    if msg.sender == owner:
        rateOfEther = arg1
}

function changeCrowdsale(bool arg1) {
    if msg.sender == owner:
        stor6 = uint8(arg1)
}

function finishPresale(uint256 arg1) {
    if msg.sender == owner:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(owner, arg1, 0);
}

function buyToken() payable {
    require not stor6
    require block.timestamp <= deadline
    amountRaised += msg.value
    balanceOf[address(msg.sender)] += msg.value * rateOfEther
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xc7f41ee76947061bcb11bcc4be91d21699d19c46, msg.sender, msg.value * rateOfEther
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value * rateOfEther, 1);
}

function _fallback() payable {
    require not stor6
    require block.timestamp <= deadline
    amountRaised += msg.value
    balanceOf[address(msg.sender)] += msg.value * rateOfEther
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xc7f41ee76947061bcb11bcc4be91d21699d19c46, msg.sender, msg.value * rateOfEther
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value * rateOfEther, 1);
}



}
