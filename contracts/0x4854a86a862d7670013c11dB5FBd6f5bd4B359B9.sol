contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - updatePeriodically(uint256 arg1)
#  - update()
#
address owner;
address newOwner;
uint256 ethPrice;
uint256 updateTime;
address tokenAddress;
uint256 hardCap;
uint256 softCap;
uint256 tokensForSale;
uint256 sub_85daf8ea;
uint256 tokensForPublicSale;
uint256 privateSaletokenSold;
uint256 sub_ffee2192;
uint256 sub_aca2baef;
uint256 sub_08cdc938;
uint256 sub_f36eca0d;
uint256 sub_503536d9;
address walletAddress;
uint256 sub_520c2cde;
uint256 sub_ae002b36;
uint256 sub_0221f7b7;
uint256 sub_7507fd99;
uint256 sub_751cefbb;
uint8 crowdSaleStarted;
uint256 totalRaisedInCents;
uint8 stor29;
uint8 stor29; offset 8
uint8 paused; offset 16
uint256 stor29; offset 16
uint256 stor29; offset 8
mapping of uint8 stor30;
mapping of uint8 stor31;

function sub_0221f7b7(?) {
    return sub_0221f7b7
}

function sub_08cdc938(?) {
    return sub_08cdc938
}

function tokensForSale() {
    return tokensForSale
}

function tokensForPublicSale() {
    return tokensForPublicSale
}

function sub_503536d9(?) {
    return sub_503536d9
}

function sub_520c2cde(?) {
    return sub_520c2cde
}

function wallet() {
    return walletAddress
}

function crowdSaleStarted() {
    return bool(crowdSaleStarted)
}

function sub_7507fd99(?) {
    return sub_7507fd99
}

function sub_751cefbb(?) {
    return sub_751cefbb
}

function sub_85daf8ea(?) {
    return sub_85daf8ea
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function Paused() {
    return bool(paused)
}

function sub_aca2baef(?) {
    return sub_aca2baef
}

function sub_ae002b36(?) {
    return sub_ae002b36
}

function totalRaisedInCents() {
    return totalRaisedInCents
}

function whitelistedContributors(address arg1) {
    return bool(stor30[arg1])
}

function newOwner() {
    return newOwner
}

function privateSaletokenSold() {
    return privateSaletokenSold
}

function updateTime() {
    return updateTime
}

function sub_f29f5510(?) {
    return bool(stor31[arg1])
}

function sub_f36eca0d(?) {
    return sub_f36eca0d
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function ethPrice() {
    return ethPrice
}

function sub_ffee2192(?) {
    return sub_ffee2192
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function isSoftCapReached() {
    if totalRaisedInCents < softCap:
        return 0
    return 1
}

function setEthPriceInCents(uint256 arg1) {
    require msg.sender == owner
    ethPrice = arg1
    return 1
}

function startPrivateSale() {
    require msg.sender == owner
    require not crowdSaleStarted
    crowdSaleStarted = 1
    uint8(stor29.field_0) = 2
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_1fe00785(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 3
    uint8(stor29.field_0) = 4
}

function sub_3b17cce9(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 8
    uint8(stor29.field_0) = 9
}

function sub_585dbe48(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 6
    uint8(stor29.field_0) = 7
}

function sub_618560be(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 7
    uint8(stor29.field_0) = 8
}

function sub_7cb156bd(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 4
    uint8(stor29.field_0) = 5
}

function sub_fd175d2e(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 5
    uint8(stor29.field_0) = 6
}

function sub_2bf951cf(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 9
    uint8(stor29.field_0) = 10
}

function endPrivateSale() {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 2
    uint8(stor29.field_0) = 3
}

function sub_07008e6e(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 11
    uint8(stor29.field_0) = 12
}

function sub_9d66ab4c(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 10
    uint8(stor29.field_0) = 11
}

function sub_a19e954d(?) {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 12
    uint8(stor29.field_0) = 13
}

function restartSale() {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 1
    require uint8(stor29.field_8) <= 13
    uint8(stor29.field_0) = uint8(stor29.field_8)
    Mask(240, 0, stor29.field_16) = 0
}

function pause() {
    require msg.sender == owner
    require not paused
    require bool(crowdSaleStarted) == 1
    require uint8(stor29.field_0) <= 13
    Mask(248, 0, stor29.field_8) = uint8(stor29.field_0)
    uint8(stor29.field_0) = 1
    Mask(240, 0, stor29.field_16) = 1
}

function authorizeKyc(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 30
        stor30[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function burnTokens() {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 13
    require ext_code.size(tokenAddress)
    call tokenAddress.0x1b65144d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function finalizeSale() {
    require msg.sender == owner
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 13
    require ext_code.size(tokenAddress)
    call tokenAddress.0x4bb278f3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_ec8d569a(?) {
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        return 25
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 6:
        return 60
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 8:
        return 80
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 10:
        return 90
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) != 12:
        return 0
    return 100
}

function sub_3c86eac3(?) {
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) != 4:
        require uint8(stor29.field_0) <= 13
        if uint8(stor29.field_0) != 6:
            require uint8(stor29.field_0) <= 13
            if uint8(stor29.field_0) != 8:
                require uint8(stor29.field_0) <= 13
                if uint8(stor29.field_0) != 10:
                    require uint8(stor29.field_0) <= 13
                    if uint8(stor29.field_0) != 12:
                        return 0
    return 10000
}

function sub_9450ecd0(?) {
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        return sub_520c2cde
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 6:
        return sub_ae002b36
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 8:
        return sub_0221f7b7
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 10:
        return sub_7507fd99
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) != 12:
        return 0
    return sub_751cefbb
}

function sub_ec9f92a5(?) {
    require crowdSaleStarted
    require msg.sender == owner
    require arg1
    require arg3 > 0
    require bool(paused) != 1
    require uint8(stor29.field_0) <= 13
    require uint8(stor29.field_0) == 2
    require totalRaisedInCents + arg2 >= totalRaisedInCents
    totalRaisedInCents += arg2
    require totalRaisedInCents <= hardCap
    if arg2 / 100:
        require arg2 / 100
        require 10^18 * arg2 / 100 * arg3 / arg2 / 100 == 10^18 * arg3
    require privateSaletokenSold + (10^18 * arg2 / 100 * arg3) >= privateSaletokenSold
    privateSaletokenSold += 10^18 * arg2 / 100 * arg3
    require privateSaletokenSold <= sub_85daf8ea
    stor31[address(arg1)] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x836cb5b1 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2 / 100 * arg3, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function tokenAmount(uint256 arg1) {
    require crowdSaleStarted
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        if arg1 / 25:
            require arg1 / 25
            require 10^18 * arg1 / 25 / arg1 / 25 == 10^18
        return (10^18 * arg1 / 25)
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 6:
        if arg1 / 60:
            require arg1 / 60
            require 10^18 * arg1 / 60 / arg1 / 60 == 10^18
        return (10^18 * arg1 / 60)
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 8:
        if arg1 / 80:
            require arg1 / 80
            require 10^18 * arg1 / 80 / arg1 / 80 == 10^18
        return (10^18 * arg1 / 80)
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 10:
        if arg1 / 90:
            require arg1 / 90
            require 10^18 * arg1 / 90 / arg1 / 90 == 10^18
        return (10^18 * arg1 / 90)
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) != 12:
        return 0
    if arg1 / 100:
        require arg1 / 100
        require 10^18 * arg1 / 100 / arg1 / 100 == 10^18
    return (10^18 * arg1 / 100)
}

function getStage() {
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 2:
        return 'Private Sale Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 3:
        return 'Private Sale End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        return 'Public Sale Round One Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 5:
        return 'Public Sale Round One End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 6:
        return 'Public Sale Round Two Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 7:
        return 'Public Sale Round Two End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 8:
        return 'Public Sale Round Three Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 9:
        return 'Public Sale Round Three End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 10:
        return 'Public Sale Round Four Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 11:
        return 'Public Sale Round Four End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 12:
        return 'Public Sale Round Five Start'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 13:
        return 'Public Sale Round Five End'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 1:
        return 'paused'
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0):
        return ' '
    return 'CrowdSale Not Started'
}

function buyTokens(address arg1) payable {
    require crowdSaleStarted
    require bool(stor30[address(arg1)]) == 1
    require bool(paused) != 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * ethPrice / msg.value == ethPrice
    require msg.value * ethPrice / 10^18 >= 10000
    require crowdSaleStarted
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        if msg.value * ethPrice / 10^18 / 25:
            require msg.value * ethPrice / 10^18 / 25
            require 10^18 * msg.value * ethPrice / 10^18 / 25 / msg.value * ethPrice / 10^18 / 25 == 10^18
        require sub_ffee2192 + (10^18 * msg.value * ethPrice / 10^18 / 25) >= sub_ffee2192
        sub_ffee2192 += 10^18 * msg.value * ethPrice / 10^18 / 25
        require sub_ffee2192 <= tokensForPublicSale / 5
        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
        totalRaisedInCents += msg.value * ethPrice / 10^18
        require totalRaisedInCents <= hardCap
        stor31[address(arg1)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x836cb5b1 with:
             gas gas_remaining wei
            args address(arg1), 10^18 * msg.value * ethPrice / 10^18 / 25, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 25, msg.sender, arg1);
    else:
        require uint8(stor29.field_0) <= 13
        if uint8(stor29.field_0) == 6:
            if msg.value * ethPrice / 10^18 / 60:
                require msg.value * ethPrice / 10^18 / 60
                require 10^18 * msg.value * ethPrice / 10^18 / 60 / msg.value * ethPrice / 10^18 / 60 == 10^18
            require sub_aca2baef + (10^18 * msg.value * ethPrice / 10^18 / 60) >= sub_aca2baef
            sub_aca2baef += 10^18 * msg.value * ethPrice / 10^18 / 60
            require sub_aca2baef <= tokensForPublicSale / 5
            require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
            totalRaisedInCents += msg.value * ethPrice / 10^18
            require totalRaisedInCents <= hardCap
            stor31[address(arg1)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x836cb5b1 with:
                 gas gas_remaining wei
                args address(arg1), 10^18 * msg.value * ethPrice / 10^18 / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 60, msg.sender, arg1);
        else:
            require uint8(stor29.field_0) <= 13
            if uint8(stor29.field_0) == 8:
                if msg.value * ethPrice / 10^18 / 80:
                    require msg.value * ethPrice / 10^18 / 80
                    require 10^18 * msg.value * ethPrice / 10^18 / 80 / msg.value * ethPrice / 10^18 / 80 == 10^18
                require sub_08cdc938 + (10^18 * msg.value * ethPrice / 10^18 / 80) >= sub_08cdc938
                sub_08cdc938 += 10^18 * msg.value * ethPrice / 10^18 / 80
                require sub_08cdc938 <= tokensForPublicSale / 5
                require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                totalRaisedInCents += msg.value * ethPrice / 10^18
                require totalRaisedInCents <= hardCap
                stor31[address(arg1)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x836cb5b1 with:
                     gas gas_remaining wei
                    args address(arg1), 10^18 * msg.value * ethPrice / 10^18 / 80, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 80, msg.sender, arg1);
            else:
                require uint8(stor29.field_0) <= 13
                if uint8(stor29.field_0) == 10:
                    if msg.value * ethPrice / 10^18 / 90:
                        require msg.value * ethPrice / 10^18 / 90
                        require 10^18 * msg.value * ethPrice / 10^18 / 90 / msg.value * ethPrice / 10^18 / 90 == 10^18
                    require sub_f36eca0d + (10^18 * msg.value * ethPrice / 10^18 / 90) >= sub_f36eca0d
                    sub_f36eca0d += 10^18 * msg.value * ethPrice / 10^18 / 90
                    require sub_f36eca0d <= tokensForPublicSale / 5
                    require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                    totalRaisedInCents += msg.value * ethPrice / 10^18
                    require totalRaisedInCents <= hardCap
                    stor31[address(arg1)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x836cb5b1 with:
                         gas gas_remaining wei
                        args address(arg1), 10^18 * msg.value * ethPrice / 10^18 / 90, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 90, msg.sender, arg1);
                else:
                    require uint8(stor29.field_0) <= 13
                    if uint8(stor29.field_0) != 12:
                        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                        totalRaisedInCents += msg.value * ethPrice / 10^18
                        require totalRaisedInCents <= hardCap
                        stor31[address(arg1)] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x836cb5b1 with:
                             gas gas_remaining wei
                            args address(arg1), 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        if msg.value * ethPrice / 10^18 / 100:
                            require msg.value * ethPrice / 10^18 / 100
                            require 10^18 * msg.value * ethPrice / 10^18 / 100 / msg.value * ethPrice / 10^18 / 100 == 10^18
                        require sub_503536d9 + (10^18 * msg.value * ethPrice / 10^18 / 100) >= sub_503536d9
                        sub_503536d9 += 10^18 * msg.value * ethPrice / 10^18 / 100
                        require sub_503536d9 <= tokensForPublicSale / 5
                        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                        totalRaisedInCents += msg.value * ethPrice / 10^18
                        require totalRaisedInCents <= hardCap
                        stor31[address(arg1)] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x836cb5b1 with:
                             gas gas_remaining wei
                            args address(arg1), 10^18 * msg.value * ethPrice / 10^18 / 100, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 100, msg.sender, arg1);
}

function _fallback() payable {
    require owner != msg.sender
    require crowdSaleStarted
    require bool(stor30[address(msg.sender)]) == 1
    require bool(paused) != 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * ethPrice / msg.value == ethPrice
    require msg.value * ethPrice / 10^18 >= 10000
    require crowdSaleStarted
    require uint8(stor29.field_0) <= 13
    if uint8(stor29.field_0) == 4:
        if msg.value * ethPrice / 10^18 / 25:
            require msg.value * ethPrice / 10^18 / 25
            require 10^18 * msg.value * ethPrice / 10^18 / 25 / msg.value * ethPrice / 10^18 / 25 == 10^18
        require sub_ffee2192 + (10^18 * msg.value * ethPrice / 10^18 / 25) >= sub_ffee2192
        sub_ffee2192 += 10^18 * msg.value * ethPrice / 10^18 / 25
        require sub_ffee2192 <= tokensForPublicSale / 5
        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
        totalRaisedInCents += msg.value * ethPrice / 10^18
        require totalRaisedInCents <= hardCap
        stor31[address(msg.sender)] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x836cb5b1 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value * ethPrice / 10^18 / 25, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 25, msg.sender, msg.sender);
    else:
        require uint8(stor29.field_0) <= 13
        if uint8(stor29.field_0) == 6:
            if msg.value * ethPrice / 10^18 / 60:
                require msg.value * ethPrice / 10^18 / 60
                require 10^18 * msg.value * ethPrice / 10^18 / 60 / msg.value * ethPrice / 10^18 / 60 == 10^18
            require sub_aca2baef + (10^18 * msg.value * ethPrice / 10^18 / 60) >= sub_aca2baef
            sub_aca2baef += 10^18 * msg.value * ethPrice / 10^18 / 60
            require sub_aca2baef <= tokensForPublicSale / 5
            require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
            totalRaisedInCents += msg.value * ethPrice / 10^18
            require totalRaisedInCents <= hardCap
            stor31[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x836cb5b1 with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * msg.value * ethPrice / 10^18 / 60, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 60, msg.sender, msg.sender);
        else:
            require uint8(stor29.field_0) <= 13
            if uint8(stor29.field_0) == 8:
                if msg.value * ethPrice / 10^18 / 80:
                    require msg.value * ethPrice / 10^18 / 80
                    require 10^18 * msg.value * ethPrice / 10^18 / 80 / msg.value * ethPrice / 10^18 / 80 == 10^18
                require sub_08cdc938 + (10^18 * msg.value * ethPrice / 10^18 / 80) >= sub_08cdc938
                sub_08cdc938 += 10^18 * msg.value * ethPrice / 10^18 / 80
                require sub_08cdc938 <= tokensForPublicSale / 5
                require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                totalRaisedInCents += msg.value * ethPrice / 10^18
                require totalRaisedInCents <= hardCap
                stor31[address(msg.sender)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x836cb5b1 with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * msg.value * ethPrice / 10^18 / 80, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 80, msg.sender, msg.sender);
            else:
                require uint8(stor29.field_0) <= 13
                if uint8(stor29.field_0) == 10:
                    if msg.value * ethPrice / 10^18 / 90:
                        require msg.value * ethPrice / 10^18 / 90
                        require 10^18 * msg.value * ethPrice / 10^18 / 90 / msg.value * ethPrice / 10^18 / 90 == 10^18
                    require sub_f36eca0d + (10^18 * msg.value * ethPrice / 10^18 / 90) >= sub_f36eca0d
                    sub_f36eca0d += 10^18 * msg.value * ethPrice / 10^18 / 90
                    require sub_f36eca0d <= tokensForPublicSale / 5
                    require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                    totalRaisedInCents += msg.value * ethPrice / 10^18
                    require totalRaisedInCents <= hardCap
                    stor31[address(msg.sender)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x836cb5b1 with:
                         gas gas_remaining wei
                        args msg.sender, 10^18 * msg.value * ethPrice / 10^18 / 90, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 90, msg.sender, msg.sender);
                else:
                    require uint8(stor29.field_0) <= 13
                    if uint8(stor29.field_0) != 12:
                        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                        totalRaisedInCents += msg.value * ethPrice / 10^18
                        require totalRaisedInCents <= hardCap
                        stor31[address(msg.sender)] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x836cb5b1 with:
                             gas gas_remaining wei
                            args msg.sender, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        if msg.value * ethPrice / 10^18 / 100:
                            require msg.value * ethPrice / 10^18 / 100
                            require 10^18 * msg.value * ethPrice / 10^18 / 100 / msg.value * ethPrice / 10^18 / 100 == 10^18
                        require sub_503536d9 + (10^18 * msg.value * ethPrice / 10^18 / 100) >= sub_503536d9
                        sub_503536d9 += 10^18 * msg.value * ethPrice / 10^18 / 100
                        require sub_503536d9 <= tokensForPublicSale / 5
                        require totalRaisedInCents + (msg.value * ethPrice / 10^18) >= totalRaisedInCents
                        totalRaisedInCents += msg.value * ethPrice / 10^18
                        require totalRaisedInCents <= hardCap
                        stor31[address(msg.sender)] = 0
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x836cb5b1 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * msg.value * ethPrice / 10^18 / 100, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit TokenPurchase(msg.value, 10^18 * msg.value * ethPrice / 10^18 / 100, msg.sender, msg.sender);
}



}
