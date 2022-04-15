contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    stor7 = 10
    require not msg.value
    return code.data[165 len 2782]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 totalDeposited;
uint256 available;
uint256 depositorsQty;
uint256 prcntRate;
address stor8; offset 8
mapping of uint256 depositors;
mapping of struct creditors;
address stor11;
address stor12;

function Depositors(address arg1) {
    return depositors[arg1]
}

function TotalDeposited() {
    return totalDeposited
}

function DepositorsQty() {
    return depositorsQty
}

function prcntRate() {
    return prcntRate
}

function Available() {
    return available
}

function Creditors(address arg1) {
    return creditors[arg1].field_0, creditors[arg1].field_256
}

function Sunset() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function initDeposit() {
    stor8 = msg.sender
}

function SetFund(address arg1) {
    if stor11 != msg.sender:
        require msg.sender == stor0
    stor12 = arg1
}

function SetPrcntRate(uint256 arg1) {
    if arg1 >= 1:
        if msg.sender == stor0:
            prcntRate = arg1
}

function SetTrustee(address arg1) {
    if stor11 != msg.sender:
        require msg.sender == stor0
    stor11 = arg1
}

function ToLend() payable {
    creditors[address(msg.sender)].field_0 = block.timestamp
    creditors[address(msg.sender)].field_256 += msg.value
    emit Deposited(msg.value, msg.sender);
}

function Deposit() payable {
    if msg.value >= 5 * 10^17:
        if not depositors[address(msg.sender)]:
            depositorsQty++
        depositors[address(msg.sender)] += msg.value
        totalDeposited += msg.value
        available += msg.value
        emit Invested(msg.value, msg.sender);
}

function _fallback() payable {
    if msg.value >= 5 * 10^17:
        if not depositors[address(msg.sender)]:
            depositorsQty++
        depositors[address(msg.sender)] += msg.value
        totalDeposited += msg.value
        available += msg.value
        emit Invested(msg.value, msg.sender);
}

function RefundDeposit(address arg1, uint256 arg2) payable {
    if depositors[address(arg1)] > 0:
        if msg.sender == stor1:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            available -= arg2
            emit Withdrew(arg2, arg1);
        else:
            if msg.sender == stor2:
                call arg1 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                available -= arg2
                emit Withdrew(arg2, arg1);
            else:
                if msg.sender == stor3:
                    call arg1 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    available -= arg2
                    emit Withdrew(arg2, arg1);
}



}
