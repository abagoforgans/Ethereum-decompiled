contract main {


// =======================  Init code  ======================


array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor7;
uint128 stor8; offset 160
address stor8;
uint256 stor13;
uint8 stor14;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'NinjaToken' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 5
    stor4.length.field_8 = '0.0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    Mask(96, 0, stor8.field_160) = 1
    stor13 = 10
    stor14 = 0
    require not msg.value
    stor7 = code.data[7307 len 20]
    address(stor8.field_0) = code.data[7339 len 20]
    return code.data[709 len 6586]
}



// =====================  Runtime code  =====================


const allowance(address arg1, uint256 arg2) = 0


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 version;
uint256 decimals;
array of uint256 commit;
address founderAddress;
uint8 fundingLock; offset 160
uint128 stor8; offset 160
address adminAddress;
address fundingAccount;
uint256 startBlock;
uint256 blockDuration;
uint256 fundingExchangeRate;
uint256 price;
uint8 transferLock;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function blockDuration() {
    return blockDuration
}

function fundingAccount() {
    return fundingAccount
}

function decimals() {
    return decimals
}

function commit(address arg1) {
    return commit[arg1][0 len commit[arg1].length]
}

function startBlock() {
    return startBlock
}

function founder() {
    return founderAddress
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferLock() {
    return bool(transferLock)
}

function fundingExchangeRate() {
    return fundingExchangeRate
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function fundingLock() {
    return bool(fundingLock)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert 
}

function setPrice(uint256 arg1, bool arg2) {
    require msg.sender == founderAddress
    price = arg1
    transferLock = uint8(arg2)
}

function changeFunder(address arg1, address arg2) {
    require msg.sender == adminAddress
    founderAddress = arg1
    adminAddress = arg2
}

function setFundingLock(bool arg1, address arg2) {
    require msg.sender == founderAddress
    stor8 = Mask(96, 0, arg1)
    fundingAccount = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setFundingEnv(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == founderAddress
    startBlock = arg1
    blockDuration = arg2
    fundingExchangeRate = arg3
}

function transfer(address arg1, uint256 arg2) {
    require not transferLock
    if balanceOf[address(msg.sender)] <= arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buy(string arg1) payable {
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)] + (msg.value * price)
    require msg.value <= msg.value * price
    call fundingAccount with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    balanceOf[address(msg.sender)] += msg.value * price
    commit[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit Buy(msg.sender, msg.value);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not transferLock
    if balanceOf[address(arg1)] <= arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] <= arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function funding() payable {
    require not fundingLock
    require block.number >= startBlock
    require block.number <= startBlock + blockDuration
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)] + (msg.value * fundingExchangeRate)
    require msg.value <= msg.value * fundingExchangeRate
    call fundingAccount with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    balanceOf[address(msg.sender)] += msg.value * fundingExchangeRate
    emit Funding(msg.sender, msg.value);
}



}
