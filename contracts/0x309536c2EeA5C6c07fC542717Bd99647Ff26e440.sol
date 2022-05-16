contract main {


// =======================  Init code  ======================


uint256 stor1;
address stor2;
uint16 stor3; offset 160
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
uint16 stor15;
uint256 stor16;
uint256 stor17;
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
address stor28;

function _fallback() payable {
    stor3 = 0
    stor9 = 0
    stor10 = 3266296528526000
    stor11 = 1537701071
    stor12 = 1548241871
    stor13 = 0
    stor14 = 1000000 * 10^18
    stor15 = 0
    stor16 = 33333
    stor17 = 33333000
    stor18 = 0
    stor19 = 0
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
    stor5.length.field_1 = 16
    stor5.length.field_8 = 'ZEA Etherical.io' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    stor1 = 0
    stor7[stor2] = 0
    stor28 = address(code.data[8463 len 32])
    stor9 = 1
    return code.data[651 len 7812]
}



// =====================  Runtime code  =====================


const TOKENS_TOTAL = 10^17

const DECIMALS = 8

const TOKENS_SOFT_CAP = 10^15

const TOKENS_HARD_CAP = 10^17

const DECIMALSFACTOR = 100 * 10^6

const NAME = 'ZEA Etherical.io'

const SYMBOL = 'ZEA'


uint256 totalSupply;
address owner;
uint8 stor3; offset 160
uint8 stor3; offset 168
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
uint256 CONTRIBUTIONS_MIN;
uint256 CONTRIBUTIONS_MAX;
uint8 stor15;
uint8 stor15; offset 8
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
uint256 sub_fdf7f505;
uint256 bonusTokens;
address walletAddress;
address sub_2413d155Address;
mapping of uint8 stor30;
mapping of uint8 stor31;

function sub_04410157(?) {
    return bool(uint8(stor3.field_168))
}

function name() {
    return name[0 len name.length]
}

function sub_0a0ab718(?) {
    return sub_0a0ab718
}

function totalSupply() {
    return totalSupply
}

function finalised() {
    return bool(uint8(stor15.field_0))
}

function sub_2413d155(?) {
    return sub_2413d155Address
}

function sub_2ae5d2f9(?) {
    return bool(stor30[address(arg1)])
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

function sub_31783fa2(?) {
    return bool(stor31[address(arg1)])
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

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_71abcb4e(?) {
    return sub_71abcb4e
}

function bonusTokens() {
    return bonusTokens
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

function tokens() {
    return tokens
}

function tokensPerKEther() {
    return tokensPerKEther
}

function Whitelisted(address arg1) {
    return bool(stor30[arg1])
}

function sub_bc7d8905(?) {
    return bool(uint8(stor15.field_8))
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

function tokensPerEther() {
    return tokensPerEther
}

function sub_fdf7f505(?) {
    return sub_fdf7f505
}

function Blacklisted(address arg1) {
    return bool(stor31[arg1])
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

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function AddToBlacklist(address arg1) {
    require owner == msg.sender
    stor31[address(arg1)] = 1
    emit AddedToBlacklist(arg1);
}

function AddToWhitelist(address arg1) {
    require owner == msg.sender
    stor30[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function RemoveFromWhitelist(address arg1) {
    require owner == msg.sender
    stor30[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function RemoveFromBlackList(address arg1) {
    require owner == msg.sender
    stor31[address(arg1)] = 0
    emit RemovedFromBlacklist(arg1);
}

function unpause() {
    require owner == msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
    return 1
}

function transfer() {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit Transfer()
    return 1
}

function sub_5588a87e(?) {
    require owner == msg.sender
    require uint8(stor3.field_168)
    uint8(stor3.field_168) = 0
    emit 0x9abf6f51 
    return 1
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

function setBonus(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor15.field_0)
    if arg1 < 0:
        return 0
    sub_fdf7f505 = arg1
    return 1
}

function sub_336d6554(?) {
    require owner == msg.sender
    require not uint8(stor15.field_0)
    require not uint8(stor3.field_160)
    require arg1 > 0
    require arg2 > 0
    sub_2413d155Address = this.address
    START_DATE = arg1
    END_DATE = arg2
    emit 0x200ef367: arg1, arg2
}

function finalise() {
    require owner == msg.sender
    if tokensSold < 10^15:
        require block.timestamp > END_DATE
    require not uint8(stor15.field_0)
    sub_2413d155Address = this.address
    emit 0x6748991a: 0, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, this.address
    uint8(stor15.field_0) = 1
}

function sub_6254e9e8(?) {
    require owner == msg.sender
    require not uint8(stor3.field_160)
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

function transfer(address arg1, uint256 arg2) {
    require uint8(stor15.field_8)
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
    require uint8(stor15.field_8)
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
    require not uint8(stor15.field_0)
    require not uint8(stor3.field_160)
    require block.timestamp >= START_DATE
    require block.timestamp <= END_DATE
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require stor30[address(msg.sender)]
    require not stor31[address(msg.sender)]
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 10^uint8(-decimals + 21)
    tokens = msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    if msg.value:
        require msg.value
        require (100 * msg.value) + (sub_fdf7f505 * msg.value) / msg.value == sub_fdf7f505 + 100
    bonusTokens = (100 * msg.value) + (sub_fdf7f505 * msg.value)
    bonusTokens = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100
    tokens = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100
    require 10^uint8(-decimals + 24)
    sub_ee7f7ebc = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100 * tokensPerKEther / 10^uint8(-decimals + 24)
    sub_dbcaf865 = tokens / 10^18
    require tokens + totalSupply <= 10^17
    require tokens + tokensSold <= 10^17
    sub_2413d155Address = this.address
    require tokens + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require tokens + balanceOf[address(arg1)] >= tokens
    balanceOf[address(arg1)] += tokens
    require tokens + tokensSold >= tokensSold
    require tokens + tokensSold >= tokens
    tokensSold += tokens
    require sub_dbcaf865 + etherSold >= etherSold
    require sub_dbcaf865 + etherSold >= sub_dbcaf865
    etherSold += sub_dbcaf865
    weiSold += eth.balance(sub_2413d155Address)
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_2fd3e95e
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_ee7f7ebc
    sub_2fd3e95e += sub_ee7f7ebc
    require sub_dbcaf865 + sub_0a0ab718 >= sub_0a0ab718
    require sub_dbcaf865 + sub_0a0ab718 >= sub_dbcaf865
    sub_0a0ab718 += sub_dbcaf865
    sub_71abcb4e += eth.balance(sub_2413d155Address)
    emit Transfer(tokens, sub_2413d155Address, arg1);
    emit 0x6748991a: bonusTokens, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, arg1
}

function _fallback() payable {
    require not uint8(stor15.field_0)
    require not uint8(stor3.field_160)
    require block.timestamp >= START_DATE
    require block.timestamp <= END_DATE
    require msg.value >= CONTRIBUTIONS_MIN
    if CONTRIBUTIONS_MAX:
        require msg.value < CONTRIBUTIONS_MAX
    require stor30[address(msg.sender)]
    require not stor31[address(msg.sender)]
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 10^uint8(-decimals + 21)
    tokens = msg.value * tokensPerKEther / 10^uint8(-decimals + 21)
    if msg.value:
        require msg.value
        require (100 * msg.value) + (sub_fdf7f505 * msg.value) / msg.value == sub_fdf7f505 + 100
    bonusTokens = (100 * msg.value) + (sub_fdf7f505 * msg.value)
    bonusTokens = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100
    tokens = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100
    require 10^uint8(-decimals + 24)
    sub_ee7f7ebc = (100 * msg.value) + (sub_fdf7f505 * msg.value) / 100 * tokensPerKEther / 10^uint8(-decimals + 24)
    sub_dbcaf865 = tokens / 10^18
    require tokens + totalSupply <= 10^17
    require tokens + tokensSold <= 10^17
    sub_2413d155Address = this.address
    require tokens + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    require tokens + balanceOf[address(msg.sender)] >= tokens
    balanceOf[address(msg.sender)] += tokens
    require tokens + tokensSold >= tokensSold
    require tokens + tokensSold >= tokens
    tokensSold += tokens
    require sub_dbcaf865 + etherSold >= etherSold
    require sub_dbcaf865 + etherSold >= sub_dbcaf865
    etherSold += sub_dbcaf865
    weiSold += eth.balance(sub_2413d155Address)
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_2fd3e95e
    require sub_ee7f7ebc + sub_2fd3e95e >= sub_ee7f7ebc
    sub_2fd3e95e += sub_ee7f7ebc
    require sub_dbcaf865 + sub_0a0ab718 >= sub_0a0ab718
    require sub_dbcaf865 + sub_0a0ab718 >= sub_dbcaf865
    sub_0a0ab718 += sub_dbcaf865
    sub_71abcb4e += eth.balance(sub_2413d155Address)
    emit Transfer(tokens, sub_2413d155Address, msg.sender);
    emit 0x6748991a: bonusTokens, sub_71abcb4e, sub_dbcaf865, sub_0a0ab718, sub_ee7f7ebc, sub_2fd3e95e, tokensPerEther, msg.sender
}



}
