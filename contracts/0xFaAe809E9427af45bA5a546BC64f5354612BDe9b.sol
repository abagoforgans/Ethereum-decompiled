contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
uint128 stor4; offset 160
address stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 100
    require not msg.value
    Mask(96, 0, stor4.field_160) = 0
    address(stor4.field_0) = 0xe57e61f0688cfab4f9123893ff304af562b8cc02
    stor0 = 0
    return code.data[402 len 4120]
}



// =====================  Runtime code  =====================


const name = 'DLBC Blockchain Ventures'

const decimals = 18

const symbol = 'DLBC'

const tokenCreationMin = 0


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint8 stor4; offset 160
uint128 stor4; offset 160
address ethFundDepositAddress;
uint256 tokenExchangeRate;

function totalSupply() {
    return totalSupply
}

function tokenExchangeRate() {
    return tokenExchangeRate
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor4.field_160))
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_e21c5432(?) {
    require not uint8(stor4.field_160)
    require msg.sender == ethFundDepositAddress
    tokenExchangeRate = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require not uint8(stor4.field_160)
    require msg.sender == ethFundDepositAddress
    require totalSupply >= 0
    Mask(96, 0, stor4.field_160) = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens() payable {
    require not uint8(stor4.field_160)
    require msg.value
    require msg.value
    require msg.value * tokenExchangeRate / msg.value == tokenExchangeRate
    require totalSupply + (msg.value * tokenExchangeRate) >= totalSupply
    require totalSupply + (msg.value * tokenExchangeRate) >= msg.value * tokenExchangeRate
    totalSupply += msg.value * tokenExchangeRate
    balanceOf[address(msg.sender)] += msg.value * tokenExchangeRate
    emit 0x95c566e2: (msg.value * tokenExchangeRate), msg.sender
}



}
