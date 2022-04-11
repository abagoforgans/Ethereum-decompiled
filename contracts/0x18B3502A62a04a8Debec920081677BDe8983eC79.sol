contract main {


// =======================  Init code  ======================


address stor6;
uint256 stor7;
uint256 stor9;
uint8 stor11;

function _fallback() payable {
    stor7 = 215 * 10^13 * 3600
    require not msg.value
    stor6 = msg.sender
    stor9 = block.timestamp
    stor11 = 0
    return code.data[141 len 3536]
}



// =====================  Runtime code  =====================


const version = 1


address beneficiaryAddress;
mapping of uint256 contributionsETH;
mapping of uint256 payoutsETH;
uint256 fundingGoal;
uint256 payoutETH;
uint256 amountRaised;
address owner;
uint256 fee;
uint256 feeWithdrawn;
uint256 creationTime;
uint256 deadlineBlockNumber;
uint8 stor11;

function payoutsETH(address arg1) {
    return payoutsETH[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function contributionsETH(address arg1) {
    return contributionsETH[arg1]
}

function payoutETH() {
    return payoutETH
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

function deadlineBlockNumber() {
    return deadlineBlockNumber
}

function creationTime() {
    return creationTime
}

function fee() {
    return fee
}

function getContribution() {
    return contributionsETH[address(msg.sender)]
}

function feeWithdrawn() {
    return feeWithdrawn
}

function open() {
    return bool(stor11)
}

function safeKill() {
    require block.number >= deadlineBlockNumber
    require stor11
    if owner != msg.sender:
    if eth.balance(this.address) >= amountRaised:
        selfdestruct(owner)
    if eth.balance(this.address):
    require eth.balance(this.address) >= amountRaised
    selfdestruct(owner)
}

function safeWithdrawal() {
    require block.number >= deadlineBlockNumber
    require stor11
    if amountRaised >= fundingGoal:
        if payoutETH:
            if owner != msg.sender:
            if feeWithdrawn:
            feeWithdrawn += fee
            selfdestruct(owner)
        require amountRaised >= fee
        payoutETH = payoutETH + amountRaised - fee
        call beneficiaryAddress with:
           value amountRaised - fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            payoutETH = 0
        else:
            emit PayOut(beneficiaryAddress, amountRaised - fee);
    else:
        if not payoutsETH[address(msg.sender)]:
            payoutsETH[address(msg.sender)] += contributionsETH[address(msg.sender)]
            contributionsETH[address(msg.sender)] = 0
            call msg.sender with:
               value contributionsETH[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                payoutsETH[address(msg.sender)] = 0
            else:
                emit 0x32998063: msg.sender, contributionsETH[address(msg.sender)]
        else:
            if payoutETH:
                if owner != msg.sender:
                if feeWithdrawn:
                feeWithdrawn += fee
                selfdestruct(owner)
            require amountRaised >= fee
            payoutETH = payoutETH + amountRaised - fee
            call beneficiaryAddress with:
               value amountRaised - fee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                payoutETH = 0
            else:
                emit PayOut(beneficiaryAddress, amountRaised - fee);
}

function sub_0347f52f(?) {
    return (block.timestamp < deadlineBlockNumber)
}

function _fallback() payable {
    require block.number < deadlineBlockNumber
    require stor11
    require msg.value == 10^18
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        amountRaised += msg.value
        emit 0xc8b05bf3: msg.sender, msg.value
}

function initialize(uint256 arg1, address arg2, uint256 arg3) {
    require not stor11
    require msg.sender == owner
    require arg3 >= block.number + 240
    beneficiaryAddress = arg2
    payoutETH = 0
    amountRaised = 0
    fee = 0
    feeWithdrawn = 0
    fundingGoal = arg1
    deadlineBlockNumber = arg3
    stor11 = 1
}



}
