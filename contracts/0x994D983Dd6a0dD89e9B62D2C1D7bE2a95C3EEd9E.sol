contract main {


// =======================  Init code  ======================


uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;

function _fallback() payable {
    stor2 = 1
    stor3 = 5 * 10^15
    stor4 = 5 * 10^15
    stor5 = 0
    stor6 = 0
    require not msg.value
    stor7 = msg.sender
    return code.data[157 len 15511]
}



// =====================  Runtime code  =====================


const name = 'EtherPush'

const buyerfeeDivide = 10^18

const sellerfeeDivide = 10^18

const version = '20170913'


mapping of uint256 tokens;
mapping of struct order;
uint8 stor2;
uint256 sellerfee;
uint256 buyerfee;
uint256 stor5;
uint256 stor6;
address stor7;

function getRunning() {
    return bool(stor2)
}

function getSellerfee() {
    return sellerfee
}

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function orders(uint256 arg1, address arg2) {
    return order[arg1][arg2].field_0, 
           order[arg1][arg2].field_256,
           order[arg1][arg2].field_512,
           order[arg1][arg2].field_768,
           order[arg1][arg2].field_1024,
           order[arg1][arg2].field_1280,
           order[arg1][arg2].field_1536,
           order[arg1][arg2].field_1792,
           order[arg1][arg2].field_2048,
           order[arg1][arg2].field_2304
}

function buyerfee() {
    return buyerfee
}

function getBuyerfee() {
    return buyerfee
}

function getOrder(uint256 arg1, address arg2) {
    return order[arg1][address(arg2)].field_256, 
           order[arg1][address(arg2)].field_512,
           order[arg1][address(arg2)].field_768,
           order[arg1][address(arg2)].field_1024,
           order[arg1][address(arg2)].field_1536,
           order[arg1][address(arg2)].field_2048
}

function sellerfee() {
    return sellerfee
}

function running() {
    return bool(stor2)
}

function balanceOf(address arg1, address arg2) {
    return tokens[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function ownerChangeRunning(bool arg1) {
    require msg.sender == stor7
    stor2 = uint8(arg1)
}

function ownerChangeOwner(address arg1) {
    require msg.sender == stor7
    require arg1 > 0
    stor7 = arg1
}

function ownerChangeBuyerfee(uint256 arg1) {
    require msg.sender == stor7
    require arg1 >= 10^15
    require arg1 <= 2 * 10^16
    buyerfee = arg1
}

function ownerChangeSellerfee(uint256 arg1) {
    require msg.sender == stor7
    require arg1 >= 10^15
    require arg1 <= 2 * 10^16
    sellerfee = arg1
}

function ownerWithdraw() {
    require msg.sender == stor7
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function tocancel(uint256 arg1) {
    order[arg1][address(msg.sender)].field_512 = 0
    stor6++
    emit onCancel(sha3(block.number, call.data[0 len calldata.size], stor6), arg1, msg.sender);
}

function ownerWithdrawAccount(address arg1) {
    require msg.sender == stor7
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawETH() {
    tokens[address(msg.sender)] = 0
    call msg.sender with:
       value tokens[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(0, msg.sender, tokens[address(msg.sender)], tokens[address(msg.sender)]);
}

function depositETH() payable {
    require tokens[address(msg.sender)] + msg.value >= tokens[address(msg.sender)]
    require tokens[address(msg.sender)] + msg.value >= msg.value
    tokens[address(msg.sender)] += msg.value
    emit onDeposit(0, msg.sender, msg.value, tokens[address(msg.sender)]);
}

function withdrawAmountETH(uint256 arg1) {
    require tokens[address(msg.sender)] >= arg1
    require arg1 <= tokens[address(msg.sender)]
    tokens[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(0, msg.sender, arg1, tokens[address(msg.sender)]);
}

function withdrawToken(address arg1) {
    require arg1
    tokens[address(arg1)][address(msg.sender)] = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, tokens[address(arg1)][address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit onWithdraw(address(arg1), msg.sender, tokens[address(arg1)][address(msg.sender)], tokens[address(arg1)][address(msg.sender)]);
}

function withdrawAmountToken(address arg1, uint256 arg2) {
    require arg1
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    require arg2 <= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit onWithdraw(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function depositToken(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= arg2
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit onDeposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function tosell(address arg1, uint256 arg2, address arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7) {
    require stor2
    require tokens[address(arg1)][address(msg.sender)] >= arg2
    stor5++
    order[stor5][address(msg.sender)].field_0 = stor5
    order[stor5][address(msg.sender)].field_256 = arg1
    order[stor5][address(msg.sender)].field_512 = arg2
    order[stor5][address(msg.sender)].field_768 = arg3
    order[stor5][address(msg.sender)].field_1024 = arg4
    order[stor5][address(msg.sender)].field_1280 = msg.sender
    order[stor5][address(msg.sender)].field_1536 = arg5
    order[stor5][address(msg.sender)].field_1792 = block.number
    require block.number + arg6 >= block.number
    require block.number + arg6 >= arg6
    order[stor5][address(msg.sender)].field_2048 = block.number + arg6
    stor6++
    emit onSell(sha3(block.number, call.data[0 len calldata.size], stor6), stor5, address(arg1), arg2, arg3, arg4, address(msg.sender), address(arg5), block.number, order[stor5][address(msg.sender)].field_2048, block.timestamp);
}

function tobuy(uint256 arg1, address arg2, uint256 arg3) {
    require stor2
    require order[arg1][address(arg2)].field_2048 >= block.number
    if order[arg1][address(arg2)].field_1536 > 0:
        require order[arg1][address(arg2)].field_1536 == msg.sender
    require order[arg1][address(arg2)].field_1024 >= arg3
    if order[arg1][address(arg2)].field_512:
        require order[arg1][address(arg2)].field_512
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_512 == arg3
    require order[arg1][address(arg2)].field_1024
    if order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024:
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 == order[arg1][address(arg2)].field_1024
    require order[arg1][address(arg2)].field_512
    require order[arg1][address(arg2)].field_512 >= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
    require tokens[stor1[arg1][address(arg2)].field_256][address(arg2)] >= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
    require tokens[stor1[arg1][address(arg2)].field_768][address(msg.sender)] >= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512
    if order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024:
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 == sellerfee
    if order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512:
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512
        require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 == buyerfee
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 <= order[arg1][address(arg2)].field_512
    order[arg1][address(arg2)].field_512 -= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 <= order[arg1][address(arg2)].field_1024
    order[arg1][address(arg2)].field_1024 -= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 <= tokens[stor1[arg1][address(arg2)].field_256][address(arg2)]
    tokens[stor1[arg1][address(arg2)].field_256][address(arg2)] -= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
    require tokens[stor1[arg1][address(arg2)].field_256][stor7] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18) >= tokens[stor1[arg1][address(arg2)].field_256][stor7]
    require tokens[stor1[arg1][address(arg2)].field_256][stor7] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18) >= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18
    tokens[stor1[arg1][address(arg2)].field_256][stor7] += order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18 <= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024
    require tokens[stor1[arg1][address(arg2)].field_256][address(msg.sender)] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024) - (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18) >= tokens[stor1[arg1][address(arg2)].field_256][address(msg.sender)]
    require tokens[stor1[arg1][address(arg2)].field_256][address(msg.sender)] >= 0
    tokens[stor1[arg1][address(arg2)].field_256][address(msg.sender)] = tokens[stor1[arg1][address(arg2)].field_256][address(msg.sender)] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024) - (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * sellerfee / 10^18)
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 <= tokens[stor1[arg1][address(arg2)].field_768][address(msg.sender)]
    tokens[stor1[arg1][address(arg2)].field_768][address(msg.sender)] -= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512
    require tokens[stor1[arg1][address(arg2)].field_768][stor7] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18) >= tokens[stor1[arg1][address(arg2)].field_768][stor7]
    require tokens[stor1[arg1][address(arg2)].field_768][stor7] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18) >= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18
    tokens[stor1[arg1][address(arg2)].field_768][stor7] += order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18
    require order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18 <= order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512
    require tokens[stor1[arg1][address(arg2)].field_768][address(arg2)] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512) - (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18) >= tokens[stor1[arg1][address(arg2)].field_768][address(arg2)]
    require tokens[stor1[arg1][address(arg2)].field_768][address(arg2)] >= 0
    tokens[stor1[arg1][address(arg2)].field_768][address(arg2)] = tokens[stor1[arg1][address(arg2)].field_768][address(arg2)] + (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512) - (order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512 * buyerfee / 10^18)
    stor6++
    emit onBuy(sha3(block.number, call.data[0 len calldata.size], stor6), arg1, order[arg1][address(arg2)].field_256, order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024, order[arg1][address(arg2)].field_512, order[arg1][address(arg2)].field_768, order[arg1][address(arg2)].field_512 * arg3 / order[arg1][address(arg2)].field_1024 * order[arg1][address(arg2)].field_1024 / order[arg1][address(arg2)].field_512, order[arg1][address(arg2)].field_1024, address(arg2), address(msg.sender), block.number, block.timestamp);
}



}
