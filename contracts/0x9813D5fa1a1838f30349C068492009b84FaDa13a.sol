contract main {


// =======================  Init code  ======================


uint8 stor2; offset 160
address stor2;
address stor4;
address stor5;

function _fallback() payable {
    uint8(stor2.field_160) = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    require code.data[3614 len 20]
    require code.data[3646 len 20]
    stor4 = code.data[3614 len 20]
    stor5 = code.data[3646 len 20]
    return code.data[188 len 3414]
}



// =====================  Runtime code  =====================


const name = 'GimmerPreSale Token'

const decimals = 18

const symbol = 'GMRP'

const hasEnded = (block.timestamp > 420804 * 3600)

const TOKEN_RATE_40_PERCENT_BONUS = 1400

const END_TIME = (420804 * 3600)

const PRE_SALE_3000_ETH = 3000 * 10^18

const TOKEN_RATE_30_PERCENT_BONUS = 1300

const PRE_SALE_300_ETH = 300 * 10^18

const TOKEN_RATE_25_PERCENT_BONUS = 1250

const ONE_MILLION = 10^6

const START_TIME = (419868 * 3600)

const PRE_SALE_30_ETH = 30 * 10^18

const PRE_SALE_GMRP_TOKEN_CAP = 15000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 stor2; offset 160
address owner;
mapping of struct userWeiSpent;
address fundWalletAddress;
address kycManagerAddress;
uint256 tokensSold;
uint256 weiRaised;

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function userHasKYC(address arg1) {
    return bool(userWeiSpent[address(arg1)].field_256)
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(stor2)
}

function fundWallet() {
    return fundWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function kycManager() {
    return kycManagerAddress
}

function owner() {
    return owner
}

function userWeiSpent(address arg1) {
    return userWeiSpent[address(arg1)].field_0
}

function supportersMap(address arg1) {
    return userWeiSpent[arg1].field_0, bool(userWeiSpent[arg1].field_256)
}

function unpause() {
    require owner == msg.sender
    require stor2
    stor2 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
    emit Pause()
}

function setKYCManager(address arg1) {
    require owner == msg.sender
    require arg1
    kycManagerAddress = arg1
}

function approveUserKYC(address arg1) {
    require kycManagerAddress == msg.sender
    userWeiSpent[address(arg1)].field_256 = 1
    emit KYC(1, arg1);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function disapproveUserKYC(address arg1) {
    require kycManagerAddress == msg.sender
    userWeiSpent[address(arg1)].field_256 = 0
    emit KYC(0, arg1);
}

function getRate(uint256 arg1) {
    if arg1 >= 3000 * 10^18:
        return 1400
    if arg1 >= 300 * 10^18:
        return 1300
    if arg1 < 30 * 10^18:
        return 0
    return 1250
}

function buyTokens() payable {
    require not stor2
    require userWeiSpent[address(msg.sender)].field_256
    require block.timestamp >= 419868 * 3600
    require block.timestamp <= 420804 * 3600
    require msg.value >= 30 * 10^18
    if msg.value >= 3000 * 10^18:
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= 15000000 * 10^18
            require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
            userWeiSpent[address(msg.sender)].field_0 += msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Mint(0, msg.sender);
            emit Transfer(0, 0, msg.sender);
            emit TokenPurchase(msg.value, 0, msg.sender);
        else:
            require 1400 * msg.value / msg.value == 1400
            require (1400 * msg.value) + tokensSold >= tokensSold
            require (1400 * msg.value) + tokensSold <= 15000000 * 10^18
            require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
            userWeiSpent[address(msg.sender)].field_0 += msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            tokensSold += 1400 * msg.value
            require (1400 * msg.value) + totalSupply >= totalSupply
            totalSupply += 1400 * msg.value
            require (1400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1400 * msg.value
            emit Mint((1400 * msg.value), msg.sender);
            emit Transfer((1400 * msg.value), 0, msg.sender);
            emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender);
    else:
        if msg.value >= 300 * 10^18:
            if not msg.value:
                require tokensSold >= tokensSold
                require tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require totalSupply >= totalSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Mint(0, msg.sender);
                emit Transfer(0, 0, msg.sender);
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                require 1300 * msg.value / msg.value == 1300
                require (1300 * msg.value) + tokensSold >= tokensSold
                require (1300 * msg.value) + tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                tokensSold += 1300 * msg.value
                require (1300 * msg.value) + totalSupply >= totalSupply
                totalSupply += 1300 * msg.value
                require (1300 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 1300 * msg.value
                emit Mint((1300 * msg.value), msg.sender);
                emit Transfer((1300 * msg.value), 0, msg.sender);
                emit TokenPurchase(msg.value, 1300 * msg.value, msg.sender);
        else:
            if msg.value < 30 * 10^18:
                if msg.value:
                    require not 0 / msg.value
                require tokensSold >= tokensSold
                require tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require totalSupply >= totalSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Mint(0, msg.sender);
                emit Transfer(0, 0, msg.sender);
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                if not msg.value:
                    require tokensSold >= tokensSold
                    require tokensSold <= 15000000 * 10^18
                    require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                    userWeiSpent[address(msg.sender)].field_0 += msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 1250 * msg.value / msg.value == 1250
                    require (1250 * msg.value) + tokensSold >= tokensSold
                    require (1250 * msg.value) + tokensSold <= 15000000 * 10^18
                    require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                    userWeiSpent[address(msg.sender)].field_0 += msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    tokensSold += 1250 * msg.value
                    require (1250 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 1250 * msg.value
                    require (1250 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 1250 * msg.value
                    emit Mint((1250 * msg.value), msg.sender);
                    emit Transfer((1250 * msg.value), 0, msg.sender);
                    emit TokenPurchase(msg.value, 1250 * msg.value, msg.sender);
    call fundWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor2
    require userWeiSpent[address(msg.sender)].field_256
    require block.timestamp >= 419868 * 3600
    require block.timestamp <= 420804 * 3600
    require msg.value >= 30 * 10^18
    if msg.value >= 3000 * 10^18:
        if not msg.value:
            require tokensSold >= tokensSold
            require tokensSold <= 15000000 * 10^18
            require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
            userWeiSpent[address(msg.sender)].field_0 += msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            emit Mint(0, msg.sender);
            emit Transfer(0, 0, msg.sender);
            emit TokenPurchase(msg.value, 0, msg.sender);
        else:
            require 1400 * msg.value / msg.value == 1400
            require (1400 * msg.value) + tokensSold >= tokensSold
            require (1400 * msg.value) + tokensSold <= 15000000 * 10^18
            require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
            userWeiSpent[address(msg.sender)].field_0 += msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            tokensSold += 1400 * msg.value
            require (1400 * msg.value) + totalSupply >= totalSupply
            totalSupply += 1400 * msg.value
            require (1400 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 1400 * msg.value
            emit Mint((1400 * msg.value), msg.sender);
            emit Transfer((1400 * msg.value), 0, msg.sender);
            emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender);
    else:
        if msg.value >= 300 * 10^18:
            if not msg.value:
                require tokensSold >= tokensSold
                require tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require totalSupply >= totalSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Mint(0, msg.sender);
                emit Transfer(0, 0, msg.sender);
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                require 1300 * msg.value / msg.value == 1300
                require (1300 * msg.value) + tokensSold >= tokensSold
                require (1300 * msg.value) + tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                tokensSold += 1300 * msg.value
                require (1300 * msg.value) + totalSupply >= totalSupply
                totalSupply += 1300 * msg.value
                require (1300 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 1300 * msg.value
                emit Mint((1300 * msg.value), msg.sender);
                emit Transfer((1300 * msg.value), 0, msg.sender);
                emit TokenPurchase(msg.value, 1300 * msg.value, msg.sender);
        else:
            if msg.value < 30 * 10^18:
                if msg.value:
                    require not 0 / msg.value
                require tokensSold >= tokensSold
                require tokensSold <= 15000000 * 10^18
                require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                userWeiSpent[address(msg.sender)].field_0 += msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require totalSupply >= totalSupply
                require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                emit Mint(0, msg.sender);
                emit Transfer(0, 0, msg.sender);
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                if not msg.value:
                    require tokensSold >= tokensSold
                    require tokensSold <= 15000000 * 10^18
                    require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                    userWeiSpent[address(msg.sender)].field_0 += msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require totalSupply >= totalSupply
                    require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    emit Mint(0, msg.sender);
                    emit Transfer(0, 0, msg.sender);
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 1250 * msg.value / msg.value == 1250
                    require (1250 * msg.value) + tokensSold >= tokensSold
                    require (1250 * msg.value) + tokensSold <= 15000000 * 10^18
                    require msg.value + userWeiSpent[address(msg.sender)].field_0 >= userWeiSpent[address(msg.sender)].field_0
                    userWeiSpent[address(msg.sender)].field_0 += msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    tokensSold += 1250 * msg.value
                    require (1250 * msg.value) + totalSupply >= totalSupply
                    totalSupply += 1250 * msg.value
                    require (1250 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 1250 * msg.value
                    emit Mint((1250 * msg.value), msg.sender);
                    emit Transfer((1250 * msg.value), 0, msg.sender);
                    emit TokenPurchase(msg.value, 1250 * msg.value, msg.sender);
    call fundWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
