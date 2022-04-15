contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor7;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    stor7 = 1
    require not msg.value
    return code.data[165 len 3638]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 totalInvested;
uint256 available;
uint256 investorsQty;
uint256 prcntRate;
uint8 stor8;
address stor8; offset 8
address stor9;
address stor10;
mapping of uint256 investors;
mapping of struct creditors;

function TotalInvested() {
    return totalInvested
}

function InvestorsQty() {
    return investorsQty
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

function Investors(address arg1) {
    return investors[arg1]
}

function initLoan() {
    address(stor8.field_8) = msg.sender
}

function StartRefound(bool arg1) {
    if msg.sender == stor0:
        uint8(stor8.field_0) = uint8(arg1)
}

function SetPrcntRate(uint256 arg1) {
    if arg1 >= 1:
        if msg.sender == stor0:
            prcntRate = arg1
}

function SetScndOwner(address arg1) {
    if stor9 != msg.sender:
        require msg.sender == stor0
    stor9 = arg1
}

function SetThrdOwner(address arg1) {
    if stor9 != msg.sender:
        require msg.sender == stor0
    stor10 = arg1
}

function CheckProfit(address arg1) {
    return (creditors[address(arg1)].field_256 / 100 * prcntRate * block.timestamp - creditors[address(arg1)].field_0 / 24 * 3600)
}

function ToLend() payable {
    creditors[address(msg.sender)].field_0 = block.timestamp
    creditors[address(msg.sender)].field_256 += msg.value
    emit Deposit(msg.value, msg.sender);
}

function Wthdraw() payable {
    if msg.sender == stor0:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    if msg.value >= 10^18:
        if not investors[address(msg.sender)]:
            investorsQty++
        investors[address(msg.sender)] += msg.value
        totalInvested += msg.value
        available += msg.value
        emit Invest(msg.value, msg.sender);
}

function InvestFund() payable {
    if msg.value >= 10^18:
        if not investors[address(msg.sender)]:
            investorsQty++
        investors[address(msg.sender)] += msg.value
        totalInvested += msg.value
        available += msg.value
        emit Invest(msg.value, msg.sender);
}

function TakeBack() payable {
    if creditors[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - creditors[address(msg.sender)].field_0 / 24 * 3600 > 0:
        if uint8(stor8.field_0):
            creditors[address(msg.sender)].field_256 = 0
            call msg.sender with:
               value creditors[address(msg.sender)].field_256 + (creditors[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - creditors[address(msg.sender)].field_0 / 24 * 3600) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit Refound((creditors[address(msg.sender)].field_256 + (creditors[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - creditors[address(msg.sender)].field_0 / 24 * 3600)), msg.sender);
}

function WithdrawToInvestor(address arg1, uint256 arg2) payable {
    if investors[address(arg1)] > 0:
        if msg.sender == stor1:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                available -= arg2
                emit Withdraw(arg2, arg1);
        else:
            if msg.sender == stor9:
                call arg1 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    available -= arg2
                    emit Withdraw(arg2, arg1);
            else:
                if msg.sender == stor10:
                    call arg1 with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        available -= arg2
                        emit Withdraw(arg2, arg1);
}



}
