contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5; offset 8

function _fallback() payable {
    stor4 = 0
    require not msg.value
    address(stor5.field_8) = code.data[5979 len 20]
    stor3 = code.data[5999 len 32]
    stor0 = code.data[6031 len 32]
    uint8(stor5.field_0) = 0
    return code.data[190 len 5777]
}



// =====================  Runtime code  =====================


const DECIMALS = 18

const NAME = 'BananaFundCoin'

const SYMBOL = 'BAC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 price;
uint256 issueIndex;
uint8 stor5;
address stor5;
address targetAddress; offset 8

function totalSupply() {
    return totalSupply
}

function saleStarted() {
    return bool(uint8(stor5.field_0))
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleOrNot() {
    return bool(uint8(stor5.field_0))
}

function price() {
    return price
}

function target() {
    return targetAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destroy() {
    if targetAddress == msg.sender:
        selfdestruct(targetAddress)
    emit InvalidCaller(msg.sender);
    revert
}

function setPrice(uint256 arg1) {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    require arg1 > 0
    price = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function startSale() {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if uint8(stor5.field_0):
        emit ShowMsg(Array(len=12, data='sale is ing '));
    else:
        uint8(stor5.field_0) = 1
        emit StartOK()
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function stopSale() {
    if targetAddress != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    if not uint8(stor5.field_0):
        emit ShowMsg(Array(len=18, data='sale has been over'));
    else:
        uint8(stor5.field_0) = 0
        require balanceOf[address(stor5.field_0)] + totalSupply >= balanceOf[address(stor5.field_0)]
        balanceOf[address(stor5.field_0)] += totalSupply
        totalSupply = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function issueToken(address arg1) payable {
    if not uint8(stor5.field_0):
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    require msg.value >= 10^16
    if price:
        require price
        require price * msg.value / price == msg.value
    if totalSupply < price * msg.value:
        emit InvalidState(Array(len=17, data='BAC is not enough'));
        revert
    require balanceOf[address(arg1)] + (price * msg.value) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += price * msg.value
    require price * msg.value <= totalSupply
    totalSupply += -1 * price * msg.value
    issueIndex++
    emit Issue(issueIndex, address(arg1), msg.value, price * msg.value);
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    if not uint8(stor5.field_0):
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
        revert
    require msg.value >= 10^16
    if price:
        require price
        require price * msg.value / price == msg.value
    if totalSupply < price * msg.value:
        emit InvalidState(Array(len=17, data='BAC is not enough'));
        revert
    require balanceOf[address(msg.sender)] + (price * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += price * msg.value
    require price * msg.value <= totalSupply
    totalSupply += -1 * price * msg.value
    issueIndex++
    emit Issue(issueIndex, msg.sender, msg.value, price * msg.value);
    call targetAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
