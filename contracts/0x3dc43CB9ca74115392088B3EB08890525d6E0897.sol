contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint8 stor3; offset 160
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
mapping of uint256 stor7;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
address stor29;
address stor30;

function _fallback() payable {
    stor3 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 421494 * 3600
    stor12 = 422910 * 3600
    stor13 = 430254 * 3600
    stor14 = 439014 * 3600
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 30
    stor19 = 30000
    stor20 = 0
    stor21 = 0
    stor22 = 0
    stor23 = 0
    stor24 = 0
    stor25 = 0
    stor26 = 0
    stor27 = 0
    require not msg.value
    stor2 = msg.sender
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'ZEA' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 25
    stor5.length.field_8 = 'Etherical Alpha Token ZEA' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    stor1 = 0
    stor7[stor2] = 0
    stor30 = address(code.data[8584 len 32])
    stor29 = this.address
    emit 0x87da9032: this.address
    stor9 = 1
    return code.data[718 len 7866]
}



// =====================  Runtime code  =====================


const TOKENS_TOTAL = 10^14

const DECIMALS = 8

const TOKENS_SOFT_CAP = 10^9

const TOKENS_HARD_CAP = 10^14

const DECIMALSFACTOR = 100 * 10^6

const NAME = 'Etherical Alpha Token ZEA'

const SYMBOL = 'ZEA'


uint256 totalSupply;
address owner;
uint8 stor3; offset 160
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor9;
uint256 tokensSold;
uint256 START_DATE;
uint256 END_DATE;
uint256 LOCKED_1Y_DATE;
uint256 LOCKED_2Y_DATE;
uint256 CONTRIBUTIONS_MIN;
uint256 CONTRIBUTIONS_MAX;
uint8 finalised;
uint256 tokensPerEther;
uint256 tokensPerKEther;
uint256 etherSold;
uint256 weiSold;
uint256 tokens;
uint256 sub_ee7f7ebc;
uint256 sub_2fd3e95e;
uint256 sub_dbcaf865;
uint256 sub_0a0ab718;
uint256 sub_71abcb4e;
address sub_2413d155Address;
address lockedTokensAddress;
address walletAddress;
mapping of uint8 stor31;

function name() {
    return name[0 len name.length]
}

function sub_0a0ab718(?) {
    return sub_0a0ab718
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

function sub_2413d155(?) {
    return sub_2413d155Address
}

function etherSold() {
    return etherSold
}

function CONTRIBUTIONS_MIN() {
    return CONTRIBUTIONS_MIN
}

function sub_2fd3e95e(?) {
    return sub_2fd3e95e
}

function decimals() {
    return decimals
}

function START_DATE() {
    return START_DATE
}

function weiSold() {
    return weiSold
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function END_DATE() {
    return END_DATE
}

function sub_59763b03(?) {
    return bool(stor31[arg1])
}

function paused() {
    return bool(stor3)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_71abcb4e(?) {
    return sub_71abcb4e
}

function owner() {
    return owner
}

function CONTRIBUTIONS_MAX() {
    return CONTRIBUTIONS_MAX
}

function sub_95b371ee(?) {
    return bool(stor9)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function LOCKED_2Y_DATE() {
    return LOCKED_2Y_DATE
}

function tokens() {
    return tokens
}

function tokensPerKEther() {
    return tokensPerKEther
}

function newOwner() {
    return newOwner
}

function sub_dbcaf865(?) {
    return sub_dbcaf865
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_ee7f7ebc(?) {
    return sub_ee7f7ebc
}

function LOCKED_1Y_DATE() {
    return LOCKED_1Y_DATE
}

function tokensPerEther() {
    return tokensPerEther
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function sub_5c41c1ce(?) {
    require owner == msg.sender
    stor31[address(arg1)] = 0
    emit 0x3075dbde: arg1
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
    return 1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
    emit WalletUpdated(arg1);
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

function sub_9bd84933(?) {
    require owner == msg.sender
    require block.timestamp < START_DATE
    require arg1 > 0
    tokensPerKEther = arg1
    emit 0x35e1adb2: arg1
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
    if not finalised:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x58341922 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyLocked2Y() {
    if not finalised:
        return 0
    require ext_code.size(lockedTokensAddress)
    call lockedTokensAddress.0x622c77fe with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function totalSupplyLocked1Y() {
    if not finalised:
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

function finalise() {
    require owner == msg.sender
    if tokensSold < 10^9:
        require block.timestamp > END_DATE
    require not finalised
    emit 0xdd01f0fb: lockedTokensAddress
    emit 0x6748991a: 0, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, lockedTokensAddress
    finalised = 1
}

function sub_336d6554(?) {
    require owner == msg.sender
    require not finalised
    require not stor3
    require block.timestamp <= START_DATE
    require block.timestamp <= END_DATE
    require arg1 > 0
    require arg2 > 0
    sub_2413d155Address = this.address
    START_DATE = arg1
    END_DATE = arg2
    emit 0x200ef367: arg1, arg2
}

function sub_6254e9e8(?) {
    require owner == msg.sender
    require not finalised
    require not stor3
    require block.timestamp <= END_DATE
    require arg2 > 0
    require arg1
    sub_2413d155Address = this.address
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + tokensSold >= tokensSold
    require arg2 + tokensSold >= arg2
    tokensSold += arg2
    emit Transfer(arg2, sub_2413d155Address, arg1);
}

function totalSupplyUnlocked() {
    if not finalised:
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
    require finalised
    require not stor31[address(msg.sender)]
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

function mintFrom(address arg1, uint256 arg2) {
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
    require arg2 <= tokensSold
    tokensSold -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require finalised
    require not stor31[address(arg1)]
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

function sub_b53224f5(?) payable {
    require not finalised
    require not stor3
    require block.timestamp >= START_DATE
    require block.timestamp <= END_DATE
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require 10^uint8(-decimals + 21)
    tokens = msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    require 10^uint8(-decimals + 24)
    sub_ee7f7ebc = msg.value * tokensPerKEther / 10^uint8(-decimals + 24)
    sub_dbcaf865 = msg.value / 10^18
    require tokens + tokensSold <= 10^14
    require tokens + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require tokens + balanceOf[address(arg1)] >= tokens
    balanceOf[address(arg1)] += tokens
    require tokens + tokensSold >= tokensSold
    require tokens + tokensSold >= tokens
    tokensSold += tokens
    require sub_dbcaf865 + etherSold >= etherSold
    require sub_dbcaf865 + etherSold >= sub_dbcaf865
    etherSold += sub_dbcaf865
    weiSold += eth.balance(this.address)
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_2fd3e95e
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_ee7f7ebc
    sub_2fd3e95e += sub_ee7f7ebc
    require sub_dbcaf865 + sub_0a0ab718 >= sub_0a0ab718
    require sub_dbcaf865 + sub_0a0ab718 >= sub_dbcaf865
    sub_0a0ab718 += sub_dbcaf865
    sub_71abcb4e += eth.balance(this.address)
    sub_2413d155Address = this.address
    emit Transfer(tokens, this.address, arg1);
    emit 0x6748991a: msg.value, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, arg1
    stor31[address(arg1)] = 0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not finalised
    require not stor3
    require block.timestamp >= START_DATE
    require block.timestamp <= END_DATE
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require 10^uint8(-decimals + 21)
    tokens = msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    require 10^uint8(-decimals + 24)
    sub_ee7f7ebc = msg.value * tokensPerKEther / 10^uint8(-decimals + 24)
    sub_dbcaf865 = msg.value / 10^18
    require tokens + tokensSold <= 10^14
    require tokens + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require tokens + balanceOf[address(msg.sender)] >= tokens
    balanceOf[address(msg.sender)] += tokens
    require tokens + tokensSold >= tokensSold
    require tokens + tokensSold >= tokens
    tokensSold += tokens
    require sub_dbcaf865 + etherSold >= etherSold
    require sub_dbcaf865 + etherSold >= sub_dbcaf865
    etherSold += sub_dbcaf865
    weiSold += eth.balance(this.address)
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_2fd3e95e
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_ee7f7ebc
    sub_2fd3e95e += sub_ee7f7ebc
    require sub_dbcaf865 + sub_0a0ab718 >= sub_0a0ab718
    require sub_dbcaf865 + sub_0a0ab718 >= sub_dbcaf865
    sub_0a0ab718 += sub_dbcaf865
    sub_71abcb4e += eth.balance(this.address)
    sub_2413d155Address = this.address
    emit Transfer(tokens, this.address, msg.sender);
    emit 0x6748991a: msg.value, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, msg.sender
    stor31[address(msg.sender)] = 0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
