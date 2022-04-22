contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor3; offset 160
address stor3;
address stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor18;
uint8 stor20;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'Artha' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'ART' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 0
    stor8 = 20250 * 3600
    stor9 = 2750 * 3600
    stor10 = 10000 * 3600
    stor11 = stor8 + stor9 + stor10
    stor15 = 150
    require not msg.value
    address(stor3.field_0) = msg.sender
    require code.data[14201 len 20]
    stor4 = code.data[14201 len 20]
    stor12 = stor10
    stor13 = stor8
    stor14 = stor9
    stor0 = stor11
    stor20 = 0
    stor18 = 15
    require msg.sender == address(stor3.field_0)
    require stor15 > 0
    require stor15
    stor16 = 10^18 / stor15
    return code.data[885 len 13304]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
address walletAddress;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 TOTAL_SUPPLY;
uint256 icoBalance;
uint256 teamBalance;
uint256 partnerBalance;
uint256 sub_6a9a3435;
uint256 sellPrice;
uint256 buybackPrice;
uint256 minBuyTokens;
uint256 amountRaised;
uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;

function partnerBalance() {
    return partnerBalance
}

function name() {
    return name[0 len name.length]
}

function buybackEnabled() {
    return bool(stor20)
}

function totalSupply() {
    return totalSupply
}

function minBuyTokens() {
    return minBuyTokens
}

function decimals() {
    return decimals
}

function icoBalance() {
    return icoBalance
}

function sellPrice() {
    return sellPrice
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function sub_6a9a3435(?) {
    return sub_6a9a3435
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function teamBalance() {
    return teamBalance
}

function owner() {
    return owner
}

function TOTAL_SUPPLY() {
    return TOTAL_SUPPLY
}

function symbol() {
    return symbol[0 len symbol.length]
}

function buybackPrice() {
    return buybackPrice
}

function sub_afef61ca(?) {
    return bool(stor22[arg1])
}

function isUserBlocked(address arg1) {
    require arg1
    return bool(stor22[address(arg1)])
}

function isTeamMember(address arg1) {
    return bool(stor21[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setBuybackEnabled(bool arg1) {
    require msg.sender == owner
    stor20 = uint8(arg1)
}

function sub_38b90eed(?) {
    require msg.sender == owner
    require arg1 >= 0
    minBuyTokens = arg1
}

function sub_50716534(?) {
    require msg.sender == owner
    require arg1 > 0
    sellPrice = 10^18 * arg1
}

function sub_d21e887a(?) {
    require msg.sender == owner
    require arg1 > 0
    buybackPrice = 10^18 * arg1
}

function setSellPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    sellPrice = arg1
}

function blockUser(address arg1) {
    require msg.sender == owner
    require arg1
    stor22[address(arg1)] = 1
}

function unblockUser(address arg1) {
    require msg.sender == owner
    require arg1
    stor22[address(arg1)] = 0
}

function setBuybackPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    buybackPrice = arg1
}

function sub_42c88516(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg1
    sellPrice = 10^18 / arg1
}

function sub_b7cb835c(?) {
    require msg.sender == owner
    require arg1 > 0
    require arg1
    buybackPrice = 10^18 / arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor22[address(arg1)]
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_1262a6a8(?) {
    require msg.sender == owner
    require teamBalance >= arg1
    require icoBalance + arg1 >= icoBalance
    icoBalance += arg1
    require arg1 <= teamBalance
    teamBalance -= arg1
    emit 0x59e6b0fe: arg1
}

function sub_be85ceb2(?) {
    require msg.sender == owner
    require icoBalance >= arg1
    require teamBalance + arg1 >= teamBalance
    teamBalance += arg1
    require arg1 <= icoBalance
    icoBalance -= arg1
    emit 0xb3401ff3: arg1
}

function sub_60d9af1d(?) {
    require msg.sender == owner
    require teamBalance >= arg1
    require partnerBalance + arg1 >= partnerBalance
    partnerBalance += arg1
    require arg1 <= teamBalance
    teamBalance -= arg1
    emit 0x56f649b9: arg1
}

function sub_de4fa357(?) {
    require msg.sender == owner
    require partnerBalance >= arg1
    require teamBalance + arg1 >= teamBalance
    teamBalance += arg1
    require arg1 <= partnerBalance
    partnerBalance -= arg1
    emit 0x464125c3: arg1
}

function sub_3523cfe3(?) {
    require msg.sender == owner
    require arg1
    require not stor22[address(arg1)]
    require partnerBalance >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= partnerBalance
    partnerBalance -= arg2
    emit 0xc97e6487: address(arg1), arg2
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferTeamTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require not stor22[address(arg1)]
    require teamBalance >= arg2
    stor21[address(arg1)] = 1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= teamBalance
    teamBalance -= arg2
    emit 0xc97e6487: address(arg1), arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyback(uint256 arg1) {
    require stor20
    require arg1 > 0
    require buybackPrice > 0
    require msg.sender
    require not stor22[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg1
    if buybackPrice:
        require buybackPrice
        require buybackPrice * arg1 / buybackPrice == arg1
    require eth.balance(this.address) >= buybackPrice * arg1
    require icoBalance + arg1 >= icoBalance
    icoBalance += arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value buybackPrice * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Buyback(msg.sender, arg1, buybackPrice * arg1);
    return (buybackPrice * arg1)
}

function _fallback() payable {
    require sellPrice > 0
    require sellPrice
    require not stor22[address(msg.sender)]
    if owner != msg.sender:
        if walletAddress != msg.sender:
            require not uint8(stor3.field_160)
            require msg.value / sellPrice > 0
            require msg.value / sellPrice >= minBuyTokens
            require icoBalance >= msg.value / sellPrice
            require msg.sender
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require balanceOf[address(msg.sender)] + (msg.value / sellPrice) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value / sellPrice
            require msg.value / sellPrice <= icoBalance
            icoBalance -= msg.value / sellPrice
            require amountRaised + msg.value >= amountRaised
            amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
