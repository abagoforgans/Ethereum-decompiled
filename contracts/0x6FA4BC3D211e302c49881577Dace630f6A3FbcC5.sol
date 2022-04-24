contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor2 = msg.sender
    stor4 = 0
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = 0xa81b980c9faaff98eba21dc05a9be63f4c733979
    stor4 = block.timestamp
    stor5 = stor4 + (720 * 24 * 3600)
    return code.data[285 len 2731]
}



// =====================  Runtime code  =====================


const EXCHANGE_RATE = 100

const DURATION = (720 * 24 * 3600)


address owner;
address newOwnerCandidate;
address beneficiaryAddress;
address epmAddress;
uint256 startTime;
uint256 endTime;
uint256 amount;
mapping of uint256 balanceOf;

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function epm() {
    return epmAddress
}

function amount() {
    return amount
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, newOwnerCandidate);
}

function acceptOwnership() {
    if msg.sender == newOwnerCandidate:
        owner = newOwnerCandidate
        newOwnerCandidate = 0
        emit OwnershipTransferred(owner, newOwnerCandidate);
}

function Withdrawal() {
    if amount > 0:
        call beneficiaryAddress with:
           value amount wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            balanceOf[stor2] = amount
        else:
            emit FundTransfer(msg.sender, amount, 0);
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp < endTime
    balanceOf[address(msg.sender)] += msg.value
    amount += msg.value
    require ext_code.size(epmAddress)
    call epmAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100 * msg.value
    require ext_call.success
    emit FundTransfer(msg.sender, 100 * msg.value, 1);
}



}
