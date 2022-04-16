contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;

function _fallback() payable {
    stor0 = msg.sender
    stor4 = 10
    require not msg.value
    return code.data[63 len 1308]
}



// =====================  Runtime code  =====================


address stor0;
uint256 totalDeposited;
uint256 available;
uint256 depositorsQty;
uint256 prcntRate;
address holderAddress; offset 8
mapping of uint256 depositors;
mapping of struct certificates;

function Depositors(address arg1) {
    return depositors[arg1]
}

function TotalDeposited() {
    return totalDeposited
}

function DepositorsQty() {
    return depositorsQty
}

function Holder() {
    return holderAddress
}

function prcntRate() {
    return prcntRate
}

function Certificates(address arg1) {
    return certificates[arg1].field_0, certificates[arg1].field_256
}

function Available() {
    return available
}

function Close() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function init() {
    holderAddress = msg.sender
}

function SetPrcntRate(uint256 arg1) {
    if arg1 >= 1:
        if holderAddress == msg.sender:
            prcntRate = arg1
}

function ToLend() payable {
    certificates[address(msg.sender)].field_0 = block.timestamp
    certificates[address(msg.sender)].field_256 += msg.value
    emit Deposited(msg.value, msg.sender);
}

function RefundDeposit(address arg1, uint256 arg2) {
    if depositors[address(arg1)] > 0:
        if stor0 == msg.sender:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            available -= arg2
            emit Withdrew(arg2, arg1);
}

function _fallback() payable {
    if msg.value >= 3 * 10^18:
        if not depositors[address(msg.sender)]:
            depositorsQty++
        depositors[address(msg.sender)] += msg.value
        totalDeposited += msg.value
        available += msg.value
        emit Invested(msg.value, msg.sender);
}



}
