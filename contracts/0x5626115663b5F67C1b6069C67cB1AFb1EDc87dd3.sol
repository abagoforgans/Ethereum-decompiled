contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
address stor7;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2400 len 20]
    require code.data[2496 len 20]
    require code.data[2528 len 20]
    require code.data[2420 len 32] >= block.timestamp
    require code.data[2452 len 32] >= code.data[2420 len 32]
    stor0 = code.data[2400 len 20]
    stor6 = code.data[2496 len 20]
    stor7 = code.data[2528 len 20]
    stor1 = code.data[2420 len 32]
    stor2 = code.data[2452 len 32]
    return code.data[288 len 2100]
}



// =====================  Runtime code  =====================


const sub_0c9a8f2f(?) = 0

const isCrowdsale = 1


uint8 stor0; offset 160
address owner;
uint256 fundingStartAt;
uint256 fundingEndsAt;
uint256 fundingRaised;
uint256 distinctInvestors;
uint256 investments;
address stor6;
address preICOAddress;
mapping of uint256 investedAmountOf;

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function fundingEndsAt() {
    return fundingEndsAt
}

function owner() {
    return owner
}

function distinctInvestors() {
    return distinctInvestors
}

function fundingStartAt() {
    return fundingStartAt
}

function halted() {
    return bool(stor0)
}

function preICOAddress() {
    return preICOAddress
}

function fundingRaised() {
    return fundingRaised
}

function investments() {
    return investments
}

function halt() {
    require owner == msg.sender
    stor0 = 1
}

function unhalt() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function getState() {
    if block.timestamp < fundingStartAt:
        return 0
    if block.timestamp > fundingEndsAt:
        return 2
    return 1
}

function setEndsAt(uint256 arg1) {
    require owner == msg.sender
    require arg1 > block.timestamp
    fundingEndsAt = arg1
    emit EndsAtChanged(arg1);
}

function buy(address arg1) payable {
    require not stor0
    require block.timestamp >= fundingStartAt
    require block.timestamp <= fundingEndsAt
    require msg.value > 0
    require arg1
    if not investedAmountOf[address(arg1)]:
        distinctInvestors++
    investments++
    require msg.value + investedAmountOf[address(arg1)] >= investedAmountOf[address(arg1)]
    investedAmountOf[address(arg1)] += msg.value
    require msg.value + fundingRaised >= fundingRaised
    fundingRaised += msg.value
    call stor6 with:
       value eth.balance(this.address) / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((eth.balance(this.address) / 20), stor6);
    call preICOAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit Transfer(eth.balance(this.address), preICOAddress);
    emit Invested(investments, msg.value, arg1);
}

function _fallback() payable {
    require msg.value > 0
    require not stor0
    require block.timestamp >= fundingStartAt
    require block.timestamp <= fundingEndsAt
    require msg.value > 0
    require msg.sender
    if not investedAmountOf[address(msg.sender)]:
        distinctInvestors++
    investments++
    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] += msg.value
    require msg.value + fundingRaised >= fundingRaised
    fundingRaised += msg.value
    call stor6 with:
       value eth.balance(this.address) / 20 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((eth.balance(this.address) / 20), stor6);
    call preICOAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    emit Transfer(eth.balance(this.address), preICOAddress);
    emit Invested(investments, msg.value, msg.sender);
}



}
