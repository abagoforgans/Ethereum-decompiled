contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
mapping of uint256 stor6;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint256 stor11;
address stor12;
address stor13;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 100000
    require not msg.value
    stor1 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = 'DR120' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 11
    stor4.length.field_8 = 'DR120 Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor0 = 0
    stor6[stor1] = 0
    stor13 = address(code.data[12705 len 32])
    create contract with 0 wei
                    code: code.data[8707 len 3998], this.address
    require create.new_address
    stor12 = address(create.new_address)
    require address(create.new_address)
    return code.data[629 len 8078]
}



// =====================  Runtime code  =====================


const TOKENS_TOTAL = 100000000 * 10^18

const DECIMALS = 18

const START_DATE = 1498133520

const TOKENS_SOFT_CAP = 13000000 * 10^18

const END_DATE = 1498134000

const TOKENS_HARD_CAP = 30000000 * 10^18

const DECIMALSFACTOR = 10^18

const LOCKED_2Y_DATE = 1498134120

const NAME = 'DR120 Token'

const LOCKED_1Y_DATE = 1498133820

const SYMBOL = 'DR120'


uint256 totalSupply;
address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 CONTRIBUTIONS_MIN;
uint256 CONTRIBUTIONS_MAX;
uint8 stor10;
uint256 tokensPerKEther;
address lockedTokensAddress;
address walletAddress;
mapping of uint8 stor14;

function name() {
    return name[0 len name.length]
}

function lockedTokens() {
    return lockedTokensAddress
}

function totalSupply() {
    return totalSupply
}

function finalised() {
    return bool(stor10)
}

function CONTRIBUTIONS_MIN() {
    return CONTRIBUTIONS_MIN
}

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function CONTRIBUTIONS_MAX() {
    return CONTRIBUTIONS_MAX
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensPerKEther() {
    return tokensPerKEther
}

function kycRequired(address arg1) {
    return bool(stor14[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
    emit WalletUpdated(arg1);
}

function kycVerify(address arg1) {
    require owner == msg.sender
    stor14[address(arg1)] = 0
    emit KycVerified(arg1);
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTokensPerKEther(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < 1498133520
    require arg1 > 0
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
}

function balanceOfLocked(address arg1) {
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0xe960bb48 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOfLocked1Y(address arg1) {
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x1ab3c515 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOfLocked2Y(address arg1) {
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0xbc5dc168 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyLocked() {
    if not stor10:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyLocked2Y() {
    if not stor10:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x622c77fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyLocked1Y() {
    if not stor10:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0xc0c3da9c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function addPrecommitment(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp < 1498133520
    require arg2 > 0
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function totalSupplyUnlocked() {
    if not stor10:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if totalSupply < ext_call.return_data[0]:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= totalSupply
    return (totalSupply - ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require stor10
    require not stor14[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if balanceOf[address(arg1)] < arg2:
        return 0
    if allowance[address(arg1)][0] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[0] + arg2 <= balanceOf[0]:
        return 0
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][0]
    allowance[address(arg1)][0] -= arg2
    require arg2 + balanceOf[0] >= balanceOf[0]
    require arg2 + balanceOf[0] >= arg2
    balanceOf[0] += arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor10
    require not stor14[address(arg1)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalise() {
    require owner == msg.sender
    if totalSupply < 13000000 * 10^18:
        require block.timestamp > 1498134000
    require not stor10
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.addRemainingTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + balanceOf[stor12] >= balanceOf[stor12]
    require ext_call.return_data[0] + balanceOf[stor12] >= ext_call.return_data[0]
    balanceOf[stor12] += ext_call.return_data[0]
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + totalSupply >= totalSupply
    require ext_call.return_data[0] + totalSupply >= ext_call.return_data[0]
    totalSupply += ext_call.return_data[0]
    stor10 = 1
}

function proxyPayment(address arg1) payable {
    require not stor10
    require block.timestamp >= 1498133520
    require block.timestamp <= 1498134000
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require 10^uint8(-decimals + 21)
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply <= 30000000 * 10^18
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + balanceOf[address(arg1)] >= msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    balanceOf[address(arg1)] += msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply >= totalSupply
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply >= msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    totalSupply += msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    emit Transfer((msg.value * tokensPerKEther / 10^uint8(-decimals + 21)), 0, arg1);
    emit TokensBought(msg.value, eth.balance(this.address), msg.value * tokensPerKEther / 10^uint8(-decimals + 21), totalSupply, tokensPerKEther, arg1);
    stor14[address(arg1)] = 1
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor10
    require block.timestamp >= 1498133520
    require block.timestamp <= 1498134000
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require 10^uint8(-decimals + 21)
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply <= 30000000 * 10^18
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + balanceOf[address(msg.sender)] >= msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    balanceOf[address(msg.sender)] += msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply >= totalSupply
    require (msg.value * tokensPerKEther / 10^uint8(-decimals + 21)) + totalSupply >= msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    totalSupply += msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    emit Transfer((msg.value * tokensPerKEther / 10^uint8(-decimals + 21)), 0, msg.sender);
    emit TokensBought(msg.value, eth.balance(this.address), msg.value * tokensPerKEther / 10^uint8(-decimals + 21), totalSupply, tokensPerKEther, msg.sender);
    stor14[address(msg.sender)] = 1
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
