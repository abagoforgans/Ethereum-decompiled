contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1717 len 20]
    stor2 = code.data[1737 len 32]
    return code.data[146 len 1559]
}



// =====================  Runtime code  =====================


address owner;
address investorAddress;
uint256 maxBalance;
uint8 state;

function investor() {
    return investorAddress
}

function maxBalance() {
    return maxBalance
}

function owner() {
    return owner
}

function state() {
    require state <= 2
    return state
}

function setFailed() {
    require owner == msg.sender
    state = 2
    emit InvestmentFailed()
}

function stateIs(uint8 arg1) {
    require arg1 <= 2
    require state <= 2
    return (state == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function _fallback() payable {
    require eth.balance(this.address) <= maxBalance
    emit FundsLoaded(msg.value, msg.sender);
}

function setInvestor(address arg1) {
    require owner == msg.sender
    emit InvestorChanged(investorAddress, arg1);
    investorAddress = arg1
}

function withdraw() {
    require owner == msg.sender
    require state <= 2
    require state != 1
    call investorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundsRefunded(eth.balance(this.address));
}

function buyTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    if eth.balance(this.address) < maxBalance:
        call arg1.0xec8ac4d8 with:
           value eth.balance(this.address) wei
             gas gas_remaining - 9710 wei
            args investorAddress
        require ext_call.success
        state = 1
        emit InvestmentSucceeded(eth.balance(this.address));
    else:
        call arg1.0xec8ac4d8 with:
           value maxBalance wei
             gas gas_remaining - 9710 wei
            args investorAddress
        require ext_call.success
        state = 1
        emit InvestmentSucceeded(maxBalance);
}



}
