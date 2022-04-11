contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 30 * 10^6
    return code.data[65 len 499]
}



// =====================  Runtime code  =====================


address owner;
uint256 coins;
mapping of uint256 buyers;

function coins() {
    return coins
}

function owner() {
    return owner
}

function buyers(address arg1) {
    return buyers[arg1]
}

function buyTokens() payable {
    buyers[address(msg.sender)] += 5000 * msg.value
    coins += -5000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value >= 0
    buyers[address(msg.sender)] += 5000 * msg.value
    coins += -5000 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
