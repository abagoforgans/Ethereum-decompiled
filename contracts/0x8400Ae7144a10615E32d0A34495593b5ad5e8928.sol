contract main {


// =======================  Init code  ======================


address stor6;
uint8 stor10;

function _fallback() {
    stor6 = msg.sender
    stor10 = 0
    return code.data[122 len 2596]
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
uint256 deadlineBlockNumber;
uint8 open;

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

function fee() {
    return fee
}

function feeWithdrawn() {
    return feeWithdrawn
}

function open() {
    return bool(open)
}

function safeWithdrawal() {
    require block.number >= deadlineBlockNumber
    require open
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
        if not payoutsETH[address(msg.sender)]:
            payoutsETH[address(msg.sender)] += contributionsETH[address(msg.sender)]
            contributionsETH[address(msg.sender)] = 0
            call msg.sender with:
               value contributionsETH[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                payoutsETH[address(msg.sender)] = 0
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
}

function _fallback() payable {
    require block.number < deadlineBlockNumber
    require open
    require msg.value == 10^18
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        amountRaised += msg.value
}

function initialize(uint256 arg1, address arg2, uint256 arg3) {
    require not open
    require msg.sender == owner
    require arg3 >= block.number + 240
    beneficiaryAddress = arg2
    payoutETH = 0
    amountRaised = 0
    fee = 0
    feeWithdrawn = 0
    fundingGoal = arg1
    deadlineBlockNumber = arg3
    open = 1
}



}
