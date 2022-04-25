contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor4;
address stor5;
address stor6;
address stor7;
uint8 stor8;
uint8 stor8; offset 160
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() {
    require code.data[6394 len 20]
    require code.data[6298 len 20]
    require code.data[6330 len 20]
    require code.data[6362 len 20]
    require code.data[6426 len 20]
    stor4 = code.data[6394 len 20]
    stor5 = code.data[6298 len 20]
    stor6 = code.data[6330 len 20]
    stor7 = code.data[6362 len 20]
    address(stor8.field_0) = code.data[6426 len 20]
    require uint8(stor8.field_160) <= 4
    emit StateTransition(uint8(stor8.field_0), 0);
    uint8(stor8.field_160) = 0
    stor0 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = -1
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor1[stor4] = 0
    return code.data[567 len 5719]
}



// =====================  Runtime code  =====================


const name = 'DeepToken'

const decimals = 18

const pointMultiplier = 10^18

const symbol = 'deepA'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
address initialHolderAddress;
address stateControlAddress;
address whitelistControlAddress;
address withdrawControlAddress;
uint8 stor8;
uint8 state; offset 160
address usdCurrencyFundingAddress;
uint256 tokenPriceInWei;
uint256 percentForSale;
uint256 silencePeriod;
uint256 startAcceptingFundsBlock;
uint256 endBlock;
uint256 etherBalance;
uint256 usdCentsBalance;

function stateControl() {
    return stateControlAddress
}

function endBlock() {
    return endBlock
}

function totalSupply() {
    return totalSupply
}

function tokenPriceInWei() {
    return tokenPriceInWei
}

function silencePeriod() {
    return silencePeriod
}

function whitelistControl() {
    return whitelistControlAddress
}

function withdrawControl() {
    return withdrawControlAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function usdCurrencyFunding() {
    return usdCurrencyFundingAddress
}

function startAcceptingFundsBlock() {
    return startAcceptingFundsBlock
}

function whitelist(address arg1) {
    return bool(stor3[arg1])
}

function etherBalance() {
    return etherBalance
}

function percentForSale() {
    return percentForSale
}

function initialHolder() {
    return initialHolderAddress
}

function state() {
    require state <= 4
    return state
}

function usdCentsBalance() {
    return usdCentsBalance
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getTokensAvailableForSale() {
    return (balanceOf[stor4] - ((100 * totalSupply) - (percentForSale * totalSupply) / 100))
}

function addToWhitelist(address arg1) {
    require whitelistControlAddress == msg.sender
    stor3[address(arg1)] = 1
    emit Whitelisted(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function pause() {
    require stateControlAddress == msg.sender
    require state <= 4
    require state == 2
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 4);
    state = 4
}

function resumeICO() {
    require stateControlAddress == msg.sender
    require state <= 4
    require state == 4
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 2);
    state = 2
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function startICO() {
    require stateControlAddress == msg.sender
    require state <= 4
    require state == 1
    require block.number < endBlock
    require block.number + silencePeriod < endBlock
    startAcceptingFundsBlock = block.number + silencePeriod
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 2);
    state = 2
}

function transfer(address arg1, uint256 arg2) {
    require state <= 4
    if state != 2:
        require state <= 4
        require state == 3
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function anyoneEndICO() {
    require state <= 4
    require state == 2
    require block.number > endBlock
    require percentForSale
    totalSupply = (100 * totalSupply) - (100 * balanceOf[stor4]) / percentForSale
    balanceOf[stor4] = ((100 * totalSupply) - (100 * balanceOf[stor4]) / percentForSale) - totalSupply + balanceOf[stor4]
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 3);
    state = 3
}

function endICO() {
    require stateControlAddress == msg.sender
    require state <= 4
    require state == 2
    require percentForSale
    totalSupply = (100 * totalSupply) - (100 * balanceOf[stor4]) / percentForSale
    balanceOf[stor4] = ((100 * totalSupply) - (100 * balanceOf[stor4]) / percentForSale) - totalSupply + balanceOf[stor4]
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 3);
    state = 3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 4
    if state != 2:
        require state <= 4
        require state == 3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function recordPayment(uint256 arg1, uint256 arg2, uint256 arg3) {
    require usdCurrencyFundingAddress == msg.sender
    require state <= 4
    require state == 2
    require balanceOf[stor4] - ((100 * totalSupply) - (percentForSale * totalSupply) / 100) >= arg2
    require block.number < endBlock
    require block.number >= startAcceptingFundsBlock
    usdCentsBalance += arg1
    balanceOf[stor4] -= arg2
    balanceOf[address(stor8.field_0)] += arg2
    emit USDCentsBalance(usdCentsBalance);
    emit TokenByFiatCredited(usdCurrencyFundingAddress, balanceOf[address(stor8.field_0)], arg2, arg3);
}

function updateEthICOThresholds(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require stateControlAddress == msg.sender
    require state <= 4
    if state:
        require state <= 4
        require state == 1
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    require arg3 <= 100
    require arg3 * arg1 / 100 > 0
    require block.number < arg5
    require arg4 + block.number < arg5
    totalSupply = arg1
    percentForSale = arg3
    tokenPriceInWei = arg2
    silencePeriod = arg4
    endBlock = arg5
    balanceOf[stor4] = arg1
    require state <= 4
    emit StateTransition(uint8(stor8.field_0), 1);
    state = 1
}

function _fallback() payable {
    require state <= 4
    require state == 2
    require usdCurrencyFundingAddress != msg.sender
    require 1 == bool(stor3[address(msg.sender)])
    require tokenPriceInWei
    require msg.value == 10^18 * msg.value / tokenPriceInWei / 10^18 * tokenPriceInWei
    require balanceOf[stor4] - ((100 * totalSupply) - (percentForSale * totalSupply) / 100) >= 10^18 * msg.value / tokenPriceInWei
    require block.number < endBlock
    require block.number >= startAcceptingFundsBlock
    etherBalance += msg.value
    balanceOf[stor4] += -1 * 10^18 * msg.value / tokenPriceInWei
    balanceOf[msg.sender] += 10^18 * msg.value / tokenPriceInWei
    call withdrawControlAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Credited(msg.sender, balanceOf[address(msg.sender)], msg.value);
}



}
