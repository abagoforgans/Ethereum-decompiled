contract main {


// =======================  Init code  ======================


uint256 stor8;
uint256 stor11;
uint8 stor13;

function _fallback() payable {
    stor8 = msg.sender or Mask(96, 160, stor8)
    stor11 = block.timestamp
    stor13 = 0
    return code.data[50 len 2398]
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
array of struct stor14;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896574;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896575;
array of uint256 stor84800337471693920904250232874319843718400766719524250287777680170677855896576;

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
        if eth.balance(this.address) != 0:
    selfdestruct(owner)
}

function safeWithdrawal() {
    require block.timestamp >= sub_6242c597
    require open
    if amountRaised >= fundingGoal:
        if payoutETH != 0:
            if owner != msg.sender:
            if feeWithdrawn != 0:
            feeWithdrawn += fee
            selfdestruct(owner)
        fee = sub_d4b9a383 / 100
        payoutETH = sub_d4b9a383 - (sub_d4b9a383 / 100) + payoutETH
        call address(beneficiaryAddress) with:
           value sub_d4b9a383 - (sub_d4b9a383 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            payoutETH = 0
        else:
            emit PayOut(address(beneficiaryAddress), sub_d4b9a383 - (sub_d4b9a383 / 100));
    else:
        if 0 == payoutsETH[address(msg.sender)]:
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
            if payoutETH != 0:
                if owner != msg.sender:
                if feeWithdrawn != 0:
                feeWithdrawn += fee
                selfdestruct(owner)
            fee = sub_d4b9a383 / 100
            payoutETH = sub_d4b9a383 - (sub_d4b9a383 / 100) + payoutETH
            call address(beneficiaryAddress) with:
               value sub_d4b9a383 - (sub_d4b9a383 / 100) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                payoutETH = 0
            else:
                emit PayOut(address(beneficiaryAddress), sub_d4b9a383 - (sub_d4b9a383 / 100));
}

function sub_0347f52f(?) {
    return (block.timestamp < sub_6242c597)
}

function sub_c58068c9(?) {
    require arg1 < stor14.length
    return stor14[arg1].field_0, storBB7B[arg1], storBB7B[arg1], storBB7B[arg1]
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
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = 4 * stor14.length + 1
            while 4 * stor14.length > idx:
                stor14[idx].field_0 = 0
                stor14[idx].field_256 = 0
                stor14[idx].field_512 = 0
                stor14[idx].field_768 = 0
                idx = idx + 4
                continue 
        stor14[stor14.length].field_0 = 0
        stor14[stor14.length].field_256 = arg1
        stor14[stor14.length].field_512 = block.timestamp
        stor14[stor14.length].field_768 = arg2
}

function sub_c55b3482(?) payable {
    require block.timestamp < sub_6242c597
    require open
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = 4 * stor14.length + 1
            while 4 * stor14.length > idx:
                stor14[idx].field_0 = 0
                stor14[idx].field_256 = 0
                stor14[idx].field_512 = 0
                stor14[idx].field_768 = 0
                idx = idx + 4
                continue 
        stor14[stor14.length].field_0 = msg.sender or Mask(96, 160, stor14[stor14.length].field_0)
        stor14[stor14.length].field_256 = msg.value
        stor14[stor14.length].field_512 = block.timestamp
        stor14[stor14.length].field_768 = arg1
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
        stor14.length++
        if not stor14.length <= stor14.length + 1:
            idx = 4 * stor14.length + 1
            while 4 * stor14.length > idx:
                stor14[idx].field_0 = 0
                stor14[idx].field_256 = 0
                stor14[idx].field_512 = 0
                stor14[idx].field_768 = 0
                idx = idx + 4
                continue 
        stor14[stor14.length].field_0 = msg.sender or Mask(96, 160, stor14[stor14.length].field_0)
        stor14[stor14.length].field_256 = msg.value
        stor14[stor14.length].field_512 = block.timestamp
        stor14[stor14.length].field_768 = 'Ethereum Contributor'
        amountRaised += msg.value
        sub_d4b9a383 += msg.value
        emit 0xc8b05bf3: msg.sender, msg.value
}



}
