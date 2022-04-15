contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;
address stor9;

function _fallback() payable {
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = '1.0' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor9 = 0x686f152dad6490df93b267e319f875a684bd26e2
    stor6 = 14500 * 10^18
    stor7 = 4 * 10^6
    stor2 = 10^10
    stor0[address(msg.sender)] = 10000000000 * 10^18
    bool(stor3.length) = 0
    stor3.length.field_1 = 8
    stor3.length.field_8 = 'SnipCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'SNP' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[625 len 2893]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 tokenName;
uint256 decimals;
array of uint256 tokenSymbol;
uint256 totalEthReceivedInWei;
uint256 totalUsdReceived;
array of uint256 version;
address saleWalletAddress;
address ownerAddress;

function totalUsdReceived() {
    return totalUsdReceived
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function tokenName() {
    return tokenName[0 len tokenName.length]
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function tokenSymbol() {
    return tokenSymbol[0 len tokenSymbol.length]
}

function saleWalletAddress() {
    return saleWalletAddress
}

function totalEthReceivedInWei() {
    return totalEthReceivedInWei
}

function ownerAddress() {
    return ownerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getBalance(address arg1) {
    return balance[address(arg1)]
}

function initializeUsdReceived() {
    totalUsdReceived = 4 * 10^6
}

function initializeEthReceived() {
    totalEthReceivedInWei = 14500 * 10^18
}

function initializeSaleWalletAddress() {
    saleWalletAddress = 0x686f152dad6490df93b267e319f875a684bd26e2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sendCoin(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call saleWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalEthReceivedInWei += msg.value
    totalUsdReceived += msg.value / 3921568627450980
}

function transfer(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balance[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balance[address(arg2)] += arg3
    balance[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
