contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 200 * 10^18
    stor4 = 10000 * 10^18
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1887 len 20]
    stor2 = code.data[1919 len 20]
    return code.data[296 len 1579]
}



// =====================  Runtime code  =====================


address creatorAddress;
address founderAddress;
address agentAddress;
uint256 sub_11c250fb;
uint256 maxCap;
uint256 totalCap;
mapping of uint256 balances;

function creator() {
    return creatorAddress
}

function sub_11c250fb(?) {
    return sub_11c250fb
}

function totalCap() {
    return totalCap
}

function maxCap() {
    return maxCap
}

function balances(address arg1) {
    return balances[arg1]
}

function founder() {
    return founderAddress
}

function agent() {
    return agentAddress
}

function changeAgent(address arg1) {
    require msg.sender == creatorAddress
    agentAddress = arg1
}

function changeFounder(address arg1) {
    require msg.sender == creatorAddress
    founderAddress = arg1
}

function _fallback() payable {
    require totalCap < maxCap
    require msg.value >= sub_11c250fb
    call founderAddress with:
       value msg.value - (msg.value / 20) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call agentAddress with:
       value msg.value / 20 wei
         gas 2300 * is_zero(value) wei
    balances[address(msg.sender)] += msg.value
    totalCap += msg.value
}



}
