contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    require not msg.value
    stor0 = msg.sender
    address(stor1.field_0) = code.data[2124 len 20]
    return code.data[151 len 1961]
}



// =====================  Runtime code  =====================


const FEE_PERCENT = 0


address owner;
uint8 state; offset 160
address investorAddress;

function investor() {
    return investorAddress
}

function owner() {
    return owner
}

function state() {
    require state <= 2
    return state
}

function _fallback() payable {
    emit FundsLoaded(msg.value, msg.sender);
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

function setInvestor(address arg1) {
    require owner == msg.sender
    emit InvestorChanged(investorAddress, arg1);
    investorAddress = arg1
}

function serviceFee() {
    if eth.balance(this.address):
        require eth.balance(this.address)
        require not 0 / eth.balance(this.address)
        return 0
    else:
        return 0
}

function buyTokens(address arg1) {
    require owner == msg.sender
    if eth.balance(this.address):
        require eth.balance(this.address)
        require not 0 / eth.balance(this.address)
    require 0 <= eth.balance(this.address)
    require ext_code.size(arg1)
    call arg1.createTokens(address rg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9710 wei
        args investorAddress
    require ext_call.success
    call owner with:
         gas 2300 wei
    state = 1
    emit 0x49b5d93f: eth.balance(this.address), 0
}

function withdraw() {
    require owner == msg.sender
    require state <= 2
    require state != 1
    require state <= 2
    if state == 2:
        call investorAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundsRefunded(eth.balance(this.address));
    else:
        require state <= 2
        if not state:
            if eth.balance(this.address):
                require eth.balance(this.address)
                require not 0 / eth.balance(this.address)
            require 0 <= eth.balance(this.address)
            call investorAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call owner with:
                 gas 2300 wei
            emit FundsWithdrawn(eth.balance(this.address), 0);
}



}
