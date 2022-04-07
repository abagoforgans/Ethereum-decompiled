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
    stor11 = 343734
    require not msg.value
    stor1 = msg.sender
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'DR1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'DR1 Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    stor0 = 0
    stor6[stor1] = 0
    stor13 = address(code.data[10750 len 32])
    create contract with 0 wei
                    code: code.data[6859 len 3891], this.address
    require create.new_address
    stor12 = address(create.new_address)
    return code.data[617 len 6242]
}



// =====================  Runtime code  =====================


const TOKENS_TOTAL = 100000000 * 10^18

const DECIMALS = 18

const START_DATE = (415995 * 3600)

const TOKENS_SOFT_CAP = 13000000 * 10^18

const END_DATE = (415999 * 3600)

const TOKENS_HARD_CAP = 30000000 * 10^18

const DECIMALSFACTOR = 10^18

const LOCKED_2Y_DATE = (416043 * 3600)

const NAME = 'DR1 Token'

const LOCKED_1Y_DATE = (416019 * 3600)

const SYMBOL = 'DR1'


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
uint8 finalised;
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
    return bool(finalised)
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

function burnTokens(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[stor1] >= arg1
    balanceOf[stor1] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, owner, 0);
}

function setTokensPerKEther(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp < 415995 * 3600
    require arg1
    tokensPerKEther = arg1
    emit TokensPerKEtherUpdated(arg1);
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
    require block.timestamp < 415995 * 3600
    require arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require finalised
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require finalised
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
        require block.timestamp >= 415999 * 3600
    require not finalised
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.addRemainingTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.totalSupplyLocked() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    require ext_call.return_data[0] + balanceOf[address(this.address)] >= ext_call.return_data[0]
    balanceOf[address(this.address)] += ext_call.return_data[0]
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.totalSupplyLocked() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + totalSupply >= totalSupply
    require ext_call.return_data[0] + totalSupply >= ext_call.return_data[0]
    totalSupply += ext_call.return_data[0]
    finalised = 1
}

function _fallback() payable {
    require not finalised
    require block.timestamp >= 415995 * 3600
    require block.timestamp <= 415999 * 3600
    require msg.value
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX > 0:
        require msg.value <= CONTRIBUTIONS_MAX
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
