contract main {


// =======================  Init code  ======================


uint256 stor8;
uint256 stor11;
uint8 stor13;

function _fallback() payable {
    stor8 = msg.sender or Mask(96, 160, stor8)
    stor11 = block.timestamp
    stor13 = 0
    return code.data[98 len 4830]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address beneficiaryAddress;
uint256 stor0;
mapping of uint256 contributionsETH;
mapping of uint256 payoutsETH;
uint256 fundingGoal;
uint256 payoutETH;
uint256 amountRaised;
uint256 sub_d4b9a383;
uint256 sub_9466e3f7;
address owner;
uint256 fee;
uint256 feeWithdrawn;
uint256 creationTime;
uint256 sub_6242c597;
uint8 open;
array of struct sub_c58068c9;

function payoutsETH(address arg1) {
    return payoutsETH[arg1]
}

function beneficiary() {
    return address(beneficiaryAddress)
}

function contributionsETH(address arg1) {
    return contributionsETH[arg1]
}

function sub_6242c597(?) {
    return sub_6242c597
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

function sub_9466e3f7(?) {
    return sub_9466e3f7
}

function sub_c58068c9(?) {
    require arg1 < sub_c58068c9.length
    return sub_c58068c9[arg1].field_0, sub_c58068c9[arg1].field_256, sub_c58068c9[arg1].field_512, sub_c58068c9[arg1].field_768
}

function sub_d4b9a383(?) {
    return sub_d4b9a383
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
    return bool(open)
}

function safeKill() {
    require block.timestamp >= sub_6242c597
    require open
    if owner != msg.sender:
    if eth.balance(this.address) < sub_d4b9a383:
        if eth.balance(this.address):
    selfdestruct(owner)
}

function safeWithdrawal() {
    require block.timestamp >= sub_6242c597
    require open
    if amountRaised >= fundingGoal:
        if payoutETH:
            if owner != msg.sender:
            if feeWithdrawn:
            feeWithdrawn += fee
            selfdestruct(owner)
        fee = sub_d4b9a383 / 100
        payoutETH = payoutETH + sub_d4b9a383 - fee
        call address(beneficiaryAddress) with:
           value sub_d4b9a383 - fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            payoutETH = 0
        else:
            emit PayOut(address(beneficiaryAddress), sub_d4b9a383 - fee);
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
            fee = sub_d4b9a383 / 100
            payoutETH = payoutETH + sub_d4b9a383 - fee
            call address(beneficiaryAddress) with:
               value sub_d4b9a383 - fee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                payoutETH = 0
            else:
                emit PayOut(address(beneficiaryAddress), sub_d4b9a383 - fee);
}

function sub_0347f52f(?) {
    return (block.timestamp < sub_6242c597)
}

function initialize(uint256 arg1, address arg2, uint256 arg3) {
    require not open
    require msg.sender == owner
    uint256(stor0) = arg2 or Mask(96, 160, uint256(stor0))
    payoutETH = 0
    amountRaised = 0
    sub_d4b9a383 = 0
    sub_9466e3f7 = 0
    fee = 0
    feeWithdrawn = 0
    fundingGoal = arg1
    if block.timestamp > arg3:
        sub_6242c597 = block.timestamp + 600
    else:
        sub_6242c597 = arg3
    open = 1
}

function sub_877538f0(?) {
    require block.timestamp < sub_6242c597
    require open
    if msg.sender == owner:
        sub_9466e3f7 += arg1
        amountRaised += arg1
        sub_c58068c9.length++
        if not sub_c58068c9.length <= sub_c58068c9.length + 1:
            idx = 4 * sub_c58068c9.length + 1
            while 4 * sub_c58068c9.length > idx:
                sub_c58068c9[idx].field_0 = 0
                sub_c58068c9[idx].field_256 = 0
                sub_c58068c9[idx].field_512 = 0
                sub_c58068c9[idx].field_768 = 0
                idx = idx + 4
                continue 
        sub_c58068c9[sub_c58068c9.length].field_0 = 0
        sub_c58068c9[sub_c58068c9.length].field_256 = 0
        sub_c58068c9[sub_c58068c9.length].field_256 = arg1
        sub_c58068c9[sub_c58068c9.length].field_512 = block.timestamp
        sub_c58068c9[sub_c58068c9.length].field_768 = arg2
}

function sub_c55b3482(?) payable {
    require block.timestamp < sub_6242c597
    require open
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        sub_c58068c9.length++
        if not sub_c58068c9.length <= sub_c58068c9.length + 1:
            idx = 4 * sub_c58068c9.length + 1
            while 4 * sub_c58068c9.length > idx:
                sub_c58068c9[idx].field_0 = 0
                sub_c58068c9[idx].field_256 = 0
                sub_c58068c9[idx].field_512 = 0
                sub_c58068c9[idx].field_768 = 0
                idx = idx + 4
                continue 
        sub_c58068c9[sub_c58068c9.length].field_0 = msg.sender or Mask(96, 160, sub_c58068c9[sub_c58068c9.length].field_0)
        sub_c58068c9[sub_c58068c9.length].field_256 = msg.value
        sub_c58068c9[sub_c58068c9.length].field_512 = block.timestamp
        sub_c58068c9[sub_c58068c9.length].field_768 = arg1
        amountRaised += msg.value
        sub_d4b9a383 += msg.value
        emit 0xc8b05bf3: msg.sender, msg.value
}

function _fallback() payable {
    require block.timestamp < sub_6242c597
    require open
    require block.timestamp < sub_6242c597
    require open
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        sub_c58068c9.length++
        if not sub_c58068c9.length <= sub_c58068c9.length + 1:
            idx = 4 * sub_c58068c9.length + 1
            while 4 * sub_c58068c9.length > idx:
                sub_c58068c9[idx].field_0 = 0
                sub_c58068c9[idx].field_256 = 0
                sub_c58068c9[idx].field_512 = 0
                sub_c58068c9[idx].field_768 = 0
                idx = idx + 4
                continue 
        sub_c58068c9[sub_c58068c9.length].field_0 = msg.sender or Mask(96, 160, sub_c58068c9[sub_c58068c9.length].field_0)
        sub_c58068c9[sub_c58068c9.length].field_256 = msg.value
        sub_c58068c9[sub_c58068c9.length].field_512 = block.timestamp
        sub_c58068c9[sub_c58068c9.length].field_768 = 'Ethereum Contributor'
        amountRaised += msg.value
        sub_d4b9a383 += msg.value
        emit 0xc8b05bf3: msg.sender, msg.value
}



}
