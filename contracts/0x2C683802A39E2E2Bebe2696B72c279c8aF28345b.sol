contract main {




// =====================  Runtime code  =====================


const DECIMALS = 5

const DECIMALSFACTOR = 100000

const TOTALSUPPLY = 10^15

const NAME = 'MANGO'

const SYMBOL = 'MANG'


uint8 stor0; offset 160
address owner;
uint256 stor1;
mapping of uint8 stor2;
address tokenAddress;
address walletAddress;
address stor5;
uint256 rate;
uint256 weiRaised;
uint256 sub_e533ea88;
uint256 minWeiAmount;
mapping of uint256 tokenBalanceOf;
mapping of uint256 weiBalanceOf;
uint256 openingTime;
uint256 closingTime;
uint256 hardcap;

function minWeiAmount() {
    return minWeiAmount
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function weiBalanceOf(address arg1) {
    return weiBalanceOf[address(arg1)]
}

function hardcap() {
    return hardcap
}

function openingTime() {
    return openingTime
}

function sub_dcce353a(?) {
    if not arg1:
        revert with 0, 'address is zero'
    return bool(stor2[address(arg1)])
}

function tokenBalanceOf(address arg1) {
    return tokenBalanceOf[address(arg1)]
}

function sub_e533ea88(?) {
    return sub_e533ea88
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    rate = arg1
    emit RateChanged(arg1);
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function setHardcap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    hardcap = arg1
    emit 0x825fe9be: arg1
}

function setMinWeiAmount(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    minWeiAmount = arg1
    emit 0xb7319c95: arg1
}

function sub_4f953c58(?) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    openingTime = arg1
    closingTime = arg2
    emit PeriodChanged(arg1, arg2);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if stor0:
        revert with 0, 'paused.'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if not stor0:
        revert with 0, 'Not paused.'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_86275f2a(?) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if not arg1:
        revert with 0, 'address is zero'
    stor2[address(arg1)] = 0
    emit WhitelistRemoved(arg1);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    if not arg1:
        revert with 0, 'address is zero.'
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function sub_54f6a36d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if owner != msg.sender:
            revert with 0, 'only for owner.'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'address is zero'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit WhitelistAdded(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
}

function deliverTokens(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor0:
        revert with 0, 'paused.'
    if owner != msg.sender:
        revert with 0, 'only for owner.'
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        _23 = sha3(mem[(32 * idx) + 140 len 20], 10)
        mem[(32 * arg1.length) + 132] = stor5
        mem[(32 * arg1.length) + 164] = address(_22)
        mem[(32 * arg1.length) + 196] = tokenBalanceOf[mem[0]]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor5, address(_22), tokenBalanceOf[mem[0]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'safeTransferFrom'
        mem[0] = address(_22)
        mem[32] = 10
        tokenBalanceOf[address(_22)] = 0
        mem[(32 * arg1.length) + 128] = stor[_23]
        emit TokensDelivered(stor[_23], address(_22));
        s = stor[_23]
        s = _22
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    stor1++
    if stor0:
        revert with 0, 'paused.'
    if not arg1:
        revert with 0, 'address is zero'
    if not stor2[address(arg1)]:
        revert with 0, 'Not authorised'
    if not msg.value:
        revert with 0, 'Zero ETH'
    if msg.value < minWeiAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be equal or higher than minimum'
    if not arg1:
        revert with 0, 'Beneficiary address is zero'
    if block.timestamp < openingTime:
        revert with 0, 'Sales is close'
    if block.timestamp > closingTime:
        revert with 0, 'Sales is close'
    if not msg.value / 10^13:
        if sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if hardcap <= sub_e533ea88:
            revert with 0, 'Over hardcap'
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'add overflow'
        weiRaised += msg.value
        if sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if msg.value + weiBalanceOf[address(arg1)] < weiBalanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        weiBalanceOf[address(arg1)] += msg.value
        if tokenBalanceOf[address(arg1)] < tokenBalanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        if rate * msg.value / 10^13 / msg.value / 10^13 != rate:
            revert with 0, 'can't mul'
        if (rate * msg.value / 10^13) + sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if hardcap <= (rate * msg.value / 10^13) + sub_e533ea88:
            revert with 0, 'Over hardcap'
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'add overflow'
        weiRaised += msg.value
        if (rate * msg.value / 10^13) + sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        sub_e533ea88 += rate * msg.value / 10^13
        if msg.value + weiBalanceOf[address(arg1)] < weiBalanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        weiBalanceOf[address(arg1)] += msg.value
        if (rate * msg.value / 10^13) + tokenBalanceOf[address(arg1)] < tokenBalanceOf[address(arg1)]:
            revert with 0, 'add overflow'
        tokenBalanceOf[address(arg1)] += rate * msg.value / 10^13
        emit TokensPurchased(msg.value, rate * msg.value / 10^13, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 + 1 != stor1:
        revert with 0, 'nonReentrant.'
}

function _fallback() payable {
    stor1++
    if stor0:
        revert with 0, 'paused.'
    if not msg.sender:
        revert with 0, 'address is zero'
    if not stor2[address(msg.sender)]:
        revert with 0, 'Not authorised'
    if not msg.value:
        revert with 0, 'Zero ETH'
    if msg.value < minWeiAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must be equal or higher than minimum'
    if not msg.sender:
        revert with 0, 'Beneficiary address is zero'
    if block.timestamp < openingTime:
        revert with 0, 'Sales is close'
    if block.timestamp > closingTime:
        revert with 0, 'Sales is close'
    if not msg.value / 10^13:
        if sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if hardcap <= sub_e533ea88:
            revert with 0, 'Over hardcap'
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'add overflow'
        weiRaised += msg.value
        if sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if msg.value + weiBalanceOf[address(msg.sender)] < weiBalanceOf[address(msg.sender)]:
            revert with 0, 'add overflow'
        weiBalanceOf[address(msg.sender)] += msg.value
        if tokenBalanceOf[address(msg.sender)] < tokenBalanceOf[address(msg.sender)]:
            revert with 0, 'add overflow'
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        if rate * msg.value / 10^13 / msg.value / 10^13 != rate:
            revert with 0, 'can't mul'
        if (rate * msg.value / 10^13) + sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        if hardcap <= (rate * msg.value / 10^13) + sub_e533ea88:
            revert with 0, 'Over hardcap'
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'add overflow'
        weiRaised += msg.value
        if (rate * msg.value / 10^13) + sub_e533ea88 < sub_e533ea88:
            revert with 0, 'add overflow'
        sub_e533ea88 += rate * msg.value / 10^13
        if msg.value + weiBalanceOf[address(msg.sender)] < weiBalanceOf[address(msg.sender)]:
            revert with 0, 'add overflow'
        weiBalanceOf[address(msg.sender)] += msg.value
        if (rate * msg.value / 10^13) + tokenBalanceOf[address(msg.sender)] < tokenBalanceOf[address(msg.sender)]:
            revert with 0, 'add overflow'
        tokenBalanceOf[address(msg.sender)] += rate * msg.value / 10^13
        emit TokensPurchased(msg.value, rate * msg.value / 10^13, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 + 1 != stor1:
        revert with 0, 'nonReentrant.'
}



}
