contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    mem[96 len -3426] = code.data[3970 len -3426]
    mem[64] = -3330
    require mem[192]
    require mem[224]
    require mem[256]
    require mem[300 len 20]
    require mem[332 len 20]
    stor7 = msg.sender
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[192]
    stor4 = mem[224]
    stor8 = mem[256]
    stor5 = mem[300 len 20]
    stor6 = mem[332 len 20]
    return code.data[544 len 3426]
}



// =====================  Runtime code  =====================


const ETHERFUNDME_ONLINE_FEE = 1

const GOAL_REACHED_CRITERION = 60

const ETHERFUNDME_FEE = 2


array of uint256 name;
array of uint256 description;
array of uint256 teamContact;
uint256 startsAt;
uint256 endsAt;
address teamAddress;
address feeReceiverAddress;
address deployAgentAddress;
uint256 fundingGoal;
uint256 investorCount;
uint8 stor10;
uint8 stor10; offset 8
mapping of uint256 investedAmountOf;

function name() {
    return name[0 len name.length]
}

function endsAt() {
    return endsAt
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function description() {
    return description[0 len description.length]
}

function fundingGoal() {
    return fundingGoal
}

function team() {
    return teamAddress
}

function deployAgent() {
    return deployAgentAddress
}

function startsAt() {
    return startsAt
}

function feeReceiver() {
    return feeReceiverAddress
}

function finalized() {
    return bool(uint8(stor10.field_0))
}

function halted() {
    return bool(uint8(stor10.field_8))
}

function investorCount() {
    return investorCount
}

function teamContact() {
    return teamContact[0 len teamContact.length]
}

function isGoalReached() {
    return eth.balance(this.address) >= 60 * fundingGoal / 100
}

function halt() {
    require deployAgentAddress == msg.sender
    uint8(stor10.field_8) = 1
}

function unhalt() {
    require deployAgentAddress == msg.sender
    require uint8(stor10.field_8)
    uint8(stor10.field_8) = 0
}

function getState() {
    if uint8(stor10.field_0):
        return 5
    if startsAt > block.timestamp:
        return 1
    if block.timestamp >= startsAt:
        if block.timestamp < endsAt:
            return 2
    if eth.balance(this.address) >= 60 * fundingGoal / 100:
        return 3
    if eth.balance(this.address) <= 0:
        return 4
    return 6
}

function refund() {
    require not uint8(stor10.field_0)
    require startsAt <= block.timestamp
    if block.timestamp >= startsAt:
        require block.timestamp >= endsAt
    require eth.balance(this.address) < 60 * fundingGoal / 100
    require eth.balance(this.address) > 0
    require investedAmountOf[address(msg.sender)]
    investedAmountOf[address(msg.sender)] = 0
    emit Refund(msg.sender, investedAmountOf[address(msg.sender)]);
    call msg.sender with:
       value investedAmountOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require not uint8(stor10.field_0)
    require startsAt <= block.timestamp
    if block.timestamp >= startsAt:
        require block.timestamp >= endsAt
    require eth.balance(this.address) >= 60 * fundingGoal / 100
    require not uint8(stor10.field_8)
    if deployAgentAddress != msg.sender:
        require teamAddress == msg.sender
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    emit Withdraw(teamAddress, eth.balance(this.address) - (2 * eth.balance(this.address) / 100));
    call teamAddress with:
       value eth.balance(this.address) - (2 * eth.balance(this.address) / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(feeReceiverAddress, 2 * eth.balance(this.address) / 100);
    call feeReceiverAddress with:
       value 2 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
}

function invest() payable {
    require not uint8(stor10.field_8)
    require not uint8(stor10.field_0)
    require startsAt <= block.timestamp
    if block.timestamp < startsAt:
        require eth.balance(this.address) < 60 * fundingGoal / 100
        require eth.balance(this.address) > 0
        revert
    else:
        if block.timestamp >= endsAt:
            require eth.balance(this.address) < 60 * fundingGoal / 100
            require eth.balance(this.address) > 0
            revert
        else:
            require msg.value > 0
            if investedAmountOf[address(msg.sender)]:
                emit Withdraw(feeReceiverAddress, msg.value / 100);
                call feeReceiverAddress with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                investedAmountOf[address(msg.sender)] = msg.value - (msg.value / 100) + investedAmountOf[address(msg.sender)]
                emit Invested(msg.sender, msg.value - (msg.value / 100));
            else:
                investorCount++
                emit Withdraw(feeReceiverAddress, msg.value / 100);
                call feeReceiverAddress with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                investedAmountOf[address(msg.sender)] = msg.value - (msg.value / 100) + investedAmountOf[address(msg.sender)]
                emit Invested(msg.sender, msg.value - (msg.value / 100));
}

function _fallback() payable {
    require not uint8(stor10.field_8)
    require not uint8(stor10.field_0)
    require startsAt <= block.timestamp
    if block.timestamp < startsAt:
        require eth.balance(this.address) < 60 * fundingGoal / 100
        require eth.balance(this.address) > 0
        revert
    else:
        if block.timestamp >= endsAt:
            require eth.balance(this.address) < 60 * fundingGoal / 100
            require eth.balance(this.address) > 0
            revert
        else:
            require msg.value > 0
            if investedAmountOf[address(msg.sender)]:
                emit Withdraw(feeReceiverAddress, msg.value / 100);
                call feeReceiverAddress with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                investedAmountOf[address(msg.sender)] = msg.value - (msg.value / 100) + investedAmountOf[address(msg.sender)]
                emit Invested(msg.sender, msg.value - (msg.value / 100));
            else:
                investorCount++
                emit Withdraw(feeReceiverAddress, msg.value / 100);
                call feeReceiverAddress with:
                   value msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                investedAmountOf[address(msg.sender)] = msg.value - (msg.value / 100) + investedAmountOf[address(msg.sender)]
                emit Invested(msg.sender, msg.value - (msg.value / 100));
}



}
