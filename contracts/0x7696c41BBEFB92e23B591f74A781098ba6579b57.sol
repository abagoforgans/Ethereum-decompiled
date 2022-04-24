contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint8 stor4; offset 160
address stor4;

function _fallback() payable {
    uint8(stor4.field_160) = 0
    require not msg.value
    address(stor4.field_0) = code.data[2017 len 20]
    stor0 = 0xfac1d48e61353d49d8e234c27943a7b58cd94fd6
    stor2 = block.timestamp
    stor3 = (24 * 3600 * code.data[2037 len 32]) + block.timestamp
    return code.data[153 len 1852]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
uint256 start;
uint256 deadline;
uint8 stor4; offset 160
address creatorAddress;
array of struct funders;

function creator() {
    return creatorAddress
}

function deadline() {
    return deadline
}

function beneficiary() {
    return beneficiaryAddress
}

function amountRaised() {
    return amountRaised
}

function start() {
    return start
}

function funders(uint256 arg1) {
    require arg1 < funders.length
    return funders[arg1].field_0, funders[arg1].field_256
}

function deadline_status() {
    return bool(stor4)
}

function kill() {
    selfdestruct(beneficiaryAddress)
}

function check_deadline() {
    if block.timestamp < deadline:
        stor4 = 0
    else:
        stor4 = 1
}

function beneficiary_modify(address arg1) {
    require creatorAddress == msg.sender
    beneficiaryAddress = arg1
}

function deadline_modify(uint256 arg1, uint256 arg2) {
    require creatorAddress == msg.sender
    start = arg1
    deadline = (24 * 3600 * arg2) + arg1
}

function _fallback() payable {
    require block.timestamp >= start
    require block.timestamp < deadline
    funders.length++
    if not funders.length <= funders.length + 1:
        idx = 2 * funders.length + 1
        while 2 * funders.length > idx:
            funders[idx].field_0 = 0
            funders[idx].field_256 = 0
            idx = idx + 2
            continue 
    require funders.length < funders.length
    funders[funders.length].field_0 = msg.sender
    funders[funders.length].field_256 = msg.value
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}

function withdraw_privatefund(bool arg1) payable {
    mem[64] = 96
    require not msg.value
    if block.timestamp >= deadline:
        require creatorAddress == msg.sender
        if not arg1:
            emit FundTransfer(0, 11, 0);
            idx = 0
            while idx < funders.length:
                call funders[idx].field_0 with:
                   value funders[idx].field_256 wei
                     gas 2300 * is_zero(value) wei
                mem[0] = 5
                mem[mem[64]] = funders[idx].field_0
                mem[mem[64] + 32] = funders[idx].field_256
                mem[mem[64] + 64] = 0
                emit FundTransfer(funders[idx].field_0, funders[idx].field_256, 0);
                idx = idx + 1
                continue 
        else:
            call beneficiaryAddress with:
               value amountRaised wei
                 gas 2300 * is_zero(value) wei
            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
