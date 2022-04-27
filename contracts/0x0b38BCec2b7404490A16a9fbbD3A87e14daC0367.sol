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
    stor2 = block.timestamp + (60 * code.data[2189 len 32])
    stor3 = 42352
    stor4 = code.data[2233 len 20]
    return code.data[246 len 1943]
}



// =====================  Runtime code  =====================


address owner;
uint256 tokenRaised;
uint256 deadline;
uint256 rateOfEther;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor6;

function tokenRaised() {
    return tokenRaised
}

function deadline() {
    return deadline
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function _fallback() payable {
    require not stor6
    require block.timestamp <= deadline
    require tokenRaised + (msg.value * rateOfEther) <= 100000000 * 10^18
    balanceOf[address(msg.sender)] += msg.value * rateOfEther
    tokenRaised += msg.value * rateOfEther
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rateOfEther
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value * rateOfEther, 1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit FundTransfer(owner, msg.value, 0);
}



}
