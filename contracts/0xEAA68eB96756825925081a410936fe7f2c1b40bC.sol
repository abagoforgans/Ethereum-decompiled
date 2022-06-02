contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const name = 'WebSpaceX'

const decimals = 18

const symbol = 'WSPX'

const INITIAL_SUPPLY = (2500000 * 10^18 * 3600)


uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address walletAddress;
uint256 hardWeiCap;
uint256 weiRaised;
uint256 tokenAllocated;
mapping of uint8 approveOwner;
uint8 stor12;
uint256 rate;
mapping of uint256 deposited;
uint256 weiMinSale;
uint256 fundForSale;
uint256 fundTeam;
uint256 fundBounty;
address addressFundTeam;
address addressFundBounty;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 countInvestor;

function addressFundBounty() {
    return addressFundBounty
}

function mintingFinished() {
    return bool(stor12)
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function approveOwner(uint8 arg1) {
    return approveOwner[arg1]
}

function getDeposited(address arg1) {
    return deposited[address(arg1)]
}

function fundTeam() {
    return fundTeam
}

function wallet() {
    return walletAddress
}

function hardWeiCap() {
    return hardWeiCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function addressFundTeam() {
    return addressFundTeam
}

function tokenAllocated() {
    return tokenAllocated
}

function owner() {
    return owner
}

function fundForSale() {
    return fundForSale
}

function transfersEnabled() {
    return bool(stor3)
}

function deposited(address arg1) {
    return deposited[arg1]
}

function countInvestor() {
    return countInvestor
}

function allowance(address arg1, address arg2) {
    require calldata.size == 68
    return allowance[address(arg1)][address(arg2)]
}

function fundBounty() {
    return fundBounty
}

function weiMinSale() {
    return weiMinSale
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
    emit ChangeRate(arg1, rate, msg.sender);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setEndTimeIcoStage1(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor23 = arg1
    emit ChangeTime(arg1, stor23, msg.sender);
}

function setEndTimeIcoStage3(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor27 = arg1
    emit ChangeTime(arg1, stor27, msg.sender);
}

function setEndTimeIcoStage2(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor25 = arg1
    emit ChangeTime(arg1, stor25, msg.sender);
}

function setStartTimeIcoStage3(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor26 = arg1
    emit ChangeTime(arg1, stor26, msg.sender);
}

function setStartTimeIcoStage2(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor24 = arg1
    emit ChangeTime(arg1, stor24, msg.sender);
}

function setStartTimeIcoStage1(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    stor22 = arg1
    emit ChangeTime(arg1, stor22, msg.sender);
}

function setWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    emit ChangeAddressWallet(msg.sender, arg1, walletAddress);
}

function getPeriod(uint256 arg1) {
    if arg1 < stor22:
        return 0
    if stor22 <= arg1:
        if arg1 <= stor23:
            return 1
    if stor24 <= arg1:
        if arg1 <= stor25:
            return 2
    if stor26 > arg1:
        return 0
    if arg1 > stor27:
        return 0
    return 3
}

function ownerBurnToken(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 <= balanceOf[stor6]
    require arg1 <= totalSupply
    require arg1 <= balanceOf[stor6]
    balanceOf[stor6] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require stor3
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size == 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(ext_call.return_data[0], arg1, owner);
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp < stor22:
        emit CurrentPeriod(0);
        require tokenAllocated >= tokenAllocated
        if tokenAllocated > balanceOf[stor6]:
            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
        else:
            require weiRaised + msg.value >= weiRaised
            if weiRaised + msg.value > hardWeiCap:
                emit HardCapReached()
        revert
    if stor22 > block.timestamp:
        if stor24 > block.timestamp:
            if stor26 > block.timestamp:
                emit CurrentPeriod(0);
                require tokenAllocated >= tokenAllocated
                if tokenAllocated > balanceOf[stor6]:
                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                else:
                    require weiRaised + msg.value >= weiRaised
                    if weiRaised + msg.value > hardWeiCap:
                        emit HardCapReached()
                revert
            if block.timestamp > stor27:
                emit CurrentPeriod(0);
                require tokenAllocated >= tokenAllocated
                if tokenAllocated > balanceOf[stor6]:
                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                else:
                    require weiRaised + msg.value >= weiRaised
                    if weiRaised + msg.value > hardWeiCap:
                        emit HardCapReached()
                revert
        else:
            if block.timestamp > stor25:
                if stor26 > block.timestamp:
                    emit CurrentPeriod(0);
                    require tokenAllocated >= tokenAllocated
                    if tokenAllocated > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                    else:
                        require weiRaised + msg.value >= weiRaised
                        if weiRaised + msg.value > hardWeiCap:
                            emit HardCapReached()
                    revert
                if block.timestamp > stor27:
                    emit CurrentPeriod(0);
                    require tokenAllocated >= tokenAllocated
                    if tokenAllocated > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                    else:
                        require weiRaised + msg.value >= weiRaised
                        if weiRaised + msg.value > hardWeiCap:
                            emit HardCapReached()
                    revert
            else:
                if msg.value:
                    require msg.value
                    require msg.value * rate / msg.value == rate
                if msg.value * rate:
                    require msg.value * rate
                    require 120 * msg.value * rate / msg.value * rate == 120
                require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                if tokenAllocated + (120 * msg.value * rate / 100) <= stor29:
                    emit CurrentPeriod(2);
                    require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                    if tokenAllocated + (120 * msg.value * rate / 100) > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 120 * msg.value * rate / 100, msg.sender);
                        revert
                    require weiRaised + msg.value >= weiRaised
                    if weiRaised + msg.value > hardWeiCap:
                        emit HardCapReached()
                        revert
                    require msg.value >= weiMinSale
                    require 120 * msg.value * rate / 100
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                    tokenAllocated += 120 * msg.value * rate / 100
                    require not stor12
                    require balanceOf[address(arg1)] + (120 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 120 * msg.value * rate / 100
                    require 120 * msg.value * rate / 100 <= balanceOf[stor6]
                    balanceOf[stor6] -= 120 * msg.value * rate / 100
                    emit Mint((120 * msg.value * rate / 100), arg1);
                    emit Transfer((120 * msg.value * rate / 100), owner, arg1);
                    emit TokenPurchase(msg.value, 120 * msg.value * rate / 100, arg1);
                    if not deposited[address(arg1)]:
                        require countInvestor + 1 >= countInvestor
                        countInvestor++
                    require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
                    deposited[address(arg1)] += msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return (120 * msg.value * rate / 100)
    else:
        if block.timestamp > stor23:
            if stor24 > block.timestamp:
                if stor26 > block.timestamp:
                    emit CurrentPeriod(0);
                    require tokenAllocated >= tokenAllocated
                    if tokenAllocated > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                    else:
                        require weiRaised + msg.value >= weiRaised
                        if weiRaised + msg.value > hardWeiCap:
                            emit HardCapReached()
                    revert
                if block.timestamp > stor27:
                    emit CurrentPeriod(0);
                    require tokenAllocated >= tokenAllocated
                    if tokenAllocated > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                    else:
                        require weiRaised + msg.value >= weiRaised
                        if weiRaised + msg.value > hardWeiCap:
                            emit HardCapReached()
                    revert
            else:
                if block.timestamp > stor25:
                    if stor26 > block.timestamp:
                        emit CurrentPeriod(0);
                        require tokenAllocated >= tokenAllocated
                        if tokenAllocated > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                        else:
                            require weiRaised + msg.value >= weiRaised
                            if weiRaised + msg.value > hardWeiCap:
                                emit HardCapReached()
                        revert
                    if block.timestamp > stor27:
                        emit CurrentPeriod(0);
                        require tokenAllocated >= tokenAllocated
                        if tokenAllocated > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                        else:
                            require weiRaised + msg.value >= weiRaised
                            if weiRaised + msg.value > hardWeiCap:
                                emit HardCapReached()
                        revert
                else:
                    if msg.value:
                        require msg.value
                        require msg.value * rate / msg.value == rate
                    if msg.value * rate:
                        require msg.value * rate
                        require 120 * msg.value * rate / msg.value * rate == 120
                    require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                    if tokenAllocated + (120 * msg.value * rate / 100) <= stor29:
                        emit CurrentPeriod(2);
                        require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                        if tokenAllocated + (120 * msg.value * rate / 100) > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 120 * msg.value * rate / 100, msg.sender);
                            revert
                        require weiRaised + msg.value >= weiRaised
                        if weiRaised + msg.value > hardWeiCap:
                            emit HardCapReached()
                            revert
                        require msg.value >= weiMinSale
                        require 120 * msg.value * rate / 100
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                        tokenAllocated += 120 * msg.value * rate / 100
                        require not stor12
                        require balanceOf[address(arg1)] + (120 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 120 * msg.value * rate / 100
                        require 120 * msg.value * rate / 100 <= balanceOf[stor6]
                        balanceOf[stor6] -= 120 * msg.value * rate / 100
                        emit Mint((120 * msg.value * rate / 100), arg1);
                        emit Transfer((120 * msg.value * rate / 100), owner, arg1);
                        emit TokenPurchase(msg.value, 120 * msg.value * rate / 100, arg1);
                        if not deposited[address(arg1)]:
                            require countInvestor + 1 >= countInvestor
                            countInvestor++
                        require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
                        deposited[address(arg1)] += msg.value
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        return (120 * msg.value * rate / 100)
        else:
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            if msg.value * rate:
                require msg.value * rate
                require 130 * msg.value * rate / msg.value * rate == 130
            require tokenAllocated + (130 * msg.value * rate / 100) >= tokenAllocated
            if tokenAllocated + (130 * msg.value * rate / 100) <= stor28:
                emit CurrentPeriod(1);
                require tokenAllocated + (130 * msg.value * rate / 100) >= tokenAllocated
                if tokenAllocated + (130 * msg.value * rate / 100) > balanceOf[stor6]:
                    emit TokenLimitReached(tokenAllocated, 130 * msg.value * rate / 100, msg.sender);
                    revert
                require weiRaised + msg.value >= weiRaised
                if weiRaised + msg.value > hardWeiCap:
                    emit HardCapReached()
                    revert
                require msg.value >= weiMinSale
                require 130 * msg.value * rate / 100
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokenAllocated + (130 * msg.value * rate / 100) >= tokenAllocated
                tokenAllocated += 130 * msg.value * rate / 100
                require not stor12
                require balanceOf[address(arg1)] + (130 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 130 * msg.value * rate / 100
                require 130 * msg.value * rate / 100 <= balanceOf[stor6]
                balanceOf[stor6] -= 130 * msg.value * rate / 100
                emit Mint((130 * msg.value * rate / 100), arg1);
                emit Transfer((130 * msg.value * rate / 100), owner, arg1);
                emit TokenPurchase(msg.value, 130 * msg.value * rate / 100, arg1);
                if not deposited[address(arg1)]:
                    require countInvestor + 1 >= countInvestor
                    countInvestor++
                require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
                deposited[address(arg1)] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (130 * msg.value * rate / 100)
            if msg.value:
                require msg.value
                require msg.value * rate / msg.value == rate
            if msg.value * rate:
                require msg.value * rate
                require 120 * msg.value * rate / msg.value * rate == 120
            require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
            if tokenAllocated + (120 * msg.value * rate / 100) <= stor29:
                emit CurrentPeriod(2);
                require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                if tokenAllocated + (120 * msg.value * rate / 100) > balanceOf[stor6]:
                    emit TokenLimitReached(tokenAllocated, 120 * msg.value * rate / 100, msg.sender);
                    revert
                require weiRaised + msg.value >= weiRaised
                if weiRaised + msg.value > hardWeiCap:
                    emit HardCapReached()
                    revert
                require msg.value >= weiMinSale
                require 120 * msg.value * rate / 100
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require tokenAllocated + (120 * msg.value * rate / 100) >= tokenAllocated
                tokenAllocated += 120 * msg.value * rate / 100
                require not stor12
                require balanceOf[address(arg1)] + (120 * msg.value * rate / 100) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 120 * msg.value * rate / 100
                require 120 * msg.value * rate / 100 <= balanceOf[stor6]
                balanceOf[stor6] -= 120 * msg.value * rate / 100
                emit Mint((120 * msg.value * rate / 100), arg1);
                emit Transfer((120 * msg.value * rate / 100), owner, arg1);
                emit TokenPurchase(msg.value, 120 * msg.value * rate / 100, arg1);
                if not deposited[address(arg1)]:
                    require countInvestor + 1 >= countInvestor
                    countInvestor++
                require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
                deposited[address(arg1)] += msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (120 * msg.value * rate / 100)
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    if msg.value * rate:
        require msg.value * rate
        require 110 * msg.value * rate / msg.value * rate == 110
    require tokenAllocated + (110 * msg.value * rate / 100) >= tokenAllocated
    if tokenAllocated + (110 * msg.value * rate / 100) > stor30:
        emit CurrentPeriod(0);
        require tokenAllocated >= tokenAllocated
        if tokenAllocated > balanceOf[stor6]:
            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
        else:
            require weiRaised + msg.value >= weiRaised
            if weiRaised + msg.value > hardWeiCap:
                emit HardCapReached()
        revert
    emit CurrentPeriod(3);
    require tokenAllocated + (110 * msg.value * rate / 100) >= tokenAllocated
    if tokenAllocated + (110 * msg.value * rate / 100) > balanceOf[stor6]:
        emit TokenLimitReached(tokenAllocated, 110 * msg.value * rate / 100, msg.sender);
        revert
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value > hardWeiCap:
        emit HardCapReached()
        revert
    require msg.value >= weiMinSale
    require 110 * msg.value * rate / 100
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokenAllocated + (110 * msg.value * rate / 100) >= tokenAllocated
    tokenAllocated += 110 * msg.value * rate / 100
    require not stor12
    require balanceOf[address(arg1)] + (110 * msg.value * rate / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 110 * msg.value * rate / 100
    require 110 * msg.value * rate / 100 <= balanceOf[stor6]
    balanceOf[stor6] -= 110 * msg.value * rate / 100
    emit Mint((110 * msg.value * rate / 100), arg1);
    emit Transfer((110 * msg.value * rate / 100), owner, arg1);
    emit TokenPurchase(msg.value, 110 * msg.value * rate / 100, arg1);
    if not deposited[address(arg1)]:
        require countInvestor + 1 >= countInvestor
        countInvestor++
    require deposited[address(arg1)] + msg.value >= deposited[address(arg1)]
    deposited[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (110 * msg.value * rate / 100)
}

function validPurchaseTokens(uint256 arg1) {
    if block.timestamp < stor22:
        emit CurrentPeriod(0);
        require tokenAllocated >= tokenAllocated
        if tokenAllocated > balanceOf[stor6]:
            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
        else:
            require weiRaised + arg1 >= weiRaised
            if weiRaised + arg1 > hardWeiCap:
                emit HardCapReached()
    else:
        if stor22 > block.timestamp:
            if stor24 > block.timestamp:
                if stor26 > block.timestamp:
                    emit CurrentPeriod(0);
                    require tokenAllocated >= tokenAllocated
                    if tokenAllocated > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                    else:
                        require weiRaised + arg1 >= weiRaised
                        if weiRaised + arg1 > hardWeiCap:
                            emit HardCapReached()
                else:
                    if block.timestamp > stor27:
                        emit CurrentPeriod(0);
                        require tokenAllocated >= tokenAllocated
                        if tokenAllocated > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                        else:
                            require weiRaised + arg1 >= weiRaised
                            if weiRaised + arg1 > hardWeiCap:
                                emit HardCapReached()
                    else:
                        if arg1:
                            require arg1
                            require arg1 * rate / arg1 == rate
                        if arg1 * rate:
                            require arg1 * rate
                            require 110 * arg1 * rate / arg1 * rate == 110
                        require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                            emit CurrentPeriod(3);
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 <= hardWeiCap:
                                    if arg1 >= weiMinSale:
                                        return (110 * arg1 * rate / 100)
                                else:
                                    emit HardCapReached()
                        else:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
            else:
                if block.timestamp > stor25:
                    if stor26 > block.timestamp:
                        emit CurrentPeriod(0);
                        require tokenAllocated >= tokenAllocated
                        if tokenAllocated > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                        else:
                            require weiRaised + arg1 >= weiRaised
                            if weiRaised + arg1 > hardWeiCap:
                                emit HardCapReached()
                    else:
                        if block.timestamp > stor27:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
                        else:
                            if arg1:
                                require arg1
                                require arg1 * rate / arg1 == rate
                            if arg1 * rate:
                                require arg1 * rate
                                require 110 * arg1 * rate / arg1 * rate == 110
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                                emit CurrentPeriod(3);
                                require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                                if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 <= hardWeiCap:
                                        if arg1 >= weiMinSale:
                                            return (110 * arg1 * rate / 100)
                                    else:
                                        emit HardCapReached()
                            else:
                                emit CurrentPeriod(0);
                                require tokenAllocated >= tokenAllocated
                                if tokenAllocated > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 > hardWeiCap:
                                        emit HardCapReached()
                else:
                    if arg1:
                        require arg1
                        require arg1 * rate / arg1 == rate
                    if arg1 * rate:
                        require arg1 * rate
                        require 120 * arg1 * rate / arg1 * rate == 120
                    require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                    if tokenAllocated + (120 * arg1 * rate / 100) <= stor29:
                        emit CurrentPeriod(2);
                        require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (120 * arg1 * rate / 100) > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 120 * arg1 * rate / 100, msg.sender);
                        else:
                            require weiRaised + arg1 >= weiRaised
                            if weiRaised + arg1 <= hardWeiCap:
                                if arg1 >= weiMinSale:
                                    return (120 * arg1 * rate / 100)
                            else:
                                emit HardCapReached()
                    else:
                        if arg1:
                            require arg1
                            require arg1 * rate / arg1 == rate
                        if arg1 * rate:
                            require arg1 * rate
                            require 110 * arg1 * rate / arg1 * rate == 110
                        require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                            emit CurrentPeriod(3);
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 <= hardWeiCap:
                                    if arg1 >= weiMinSale:
                                        return (110 * arg1 * rate / 100)
                                else:
                                    emit HardCapReached()
                        else:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
        else:
            if block.timestamp > stor23:
                if stor24 > block.timestamp:
                    if stor26 > block.timestamp:
                        emit CurrentPeriod(0);
                        require tokenAllocated >= tokenAllocated
                        if tokenAllocated > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                        else:
                            require weiRaised + arg1 >= weiRaised
                            if weiRaised + arg1 > hardWeiCap:
                                emit HardCapReached()
                    else:
                        if block.timestamp > stor27:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
                        else:
                            if arg1:
                                require arg1
                                require arg1 * rate / arg1 == rate
                            if arg1 * rate:
                                require arg1 * rate
                                require 110 * arg1 * rate / arg1 * rate == 110
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                                emit CurrentPeriod(3);
                                require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                                if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 <= hardWeiCap:
                                        if arg1 >= weiMinSale:
                                            return (110 * arg1 * rate / 100)
                                    else:
                                        emit HardCapReached()
                            else:
                                emit CurrentPeriod(0);
                                require tokenAllocated >= tokenAllocated
                                if tokenAllocated > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 > hardWeiCap:
                                        emit HardCapReached()
                else:
                    if block.timestamp > stor25:
                        if stor26 > block.timestamp:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
                        else:
                            if block.timestamp > stor27:
                                emit CurrentPeriod(0);
                                require tokenAllocated >= tokenAllocated
                                if tokenAllocated > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 > hardWeiCap:
                                        emit HardCapReached()
                            else:
                                if arg1:
                                    require arg1
                                    require arg1 * rate / arg1 == rate
                                if arg1 * rate:
                                    require arg1 * rate
                                    require 110 * arg1 * rate / arg1 * rate == 110
                                require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                                if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                                    emit CurrentPeriod(3);
                                    require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                                    if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                        emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                                    else:
                                        require weiRaised + arg1 >= weiRaised
                                        if weiRaised + arg1 <= hardWeiCap:
                                            if arg1 >= weiMinSale:
                                                return (110 * arg1 * rate / 100)
                                        else:
                                            emit HardCapReached()
                                else:
                                    emit CurrentPeriod(0);
                                    require tokenAllocated >= tokenAllocated
                                    if tokenAllocated > balanceOf[stor6]:
                                        emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                                    else:
                                        require weiRaised + arg1 >= weiRaised
                                        if weiRaised + arg1 > hardWeiCap:
                                            emit HardCapReached()
                    else:
                        if arg1:
                            require arg1
                            require arg1 * rate / arg1 == rate
                        if arg1 * rate:
                            require arg1 * rate
                            require 120 * arg1 * rate / arg1 * rate == 120
                        require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (120 * arg1 * rate / 100) <= stor29:
                            emit CurrentPeriod(2);
                            require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (120 * arg1 * rate / 100) > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 120 * arg1 * rate / 100, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 <= hardWeiCap:
                                    if arg1 >= weiMinSale:
                                        return (120 * arg1 * rate / 100)
                                else:
                                    emit HardCapReached()
                        else:
                            if arg1:
                                require arg1
                                require arg1 * rate / arg1 == rate
                            if arg1 * rate:
                                require arg1 * rate
                                require 110 * arg1 * rate / arg1 * rate == 110
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                                emit CurrentPeriod(3);
                                require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                                if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 <= hardWeiCap:
                                        if arg1 >= weiMinSale:
                                            return (110 * arg1 * rate / 100)
                                    else:
                                        emit HardCapReached()
                            else:
                                emit CurrentPeriod(0);
                                require tokenAllocated >= tokenAllocated
                                if tokenAllocated > balanceOf[stor6]:
                                    emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                                else:
                                    require weiRaised + arg1 >= weiRaised
                                    if weiRaised + arg1 > hardWeiCap:
                                        emit HardCapReached()
            else:
                if arg1:
                    require arg1
                    require arg1 * rate / arg1 == rate
                if arg1 * rate:
                    require arg1 * rate
                    require 130 * arg1 * rate / arg1 * rate == 130
                require tokenAllocated + (130 * arg1 * rate / 100) >= tokenAllocated
                if tokenAllocated + (130 * arg1 * rate / 100) <= stor28:
                    emit CurrentPeriod(1);
                    require tokenAllocated + (130 * arg1 * rate / 100) >= tokenAllocated
                    if tokenAllocated + (130 * arg1 * rate / 100) > balanceOf[stor6]:
                        emit TokenLimitReached(tokenAllocated, 130 * arg1 * rate / 100, msg.sender);
                    else:
                        require weiRaised + arg1 >= weiRaised
                        if weiRaised + arg1 <= hardWeiCap:
                            if arg1 >= weiMinSale:
                                return (130 * arg1 * rate / 100)
                        else:
                            emit HardCapReached()
                else:
                    if arg1:
                        require arg1
                        require arg1 * rate / arg1 == rate
                    if arg1 * rate:
                        require arg1 * rate
                        require 120 * arg1 * rate / arg1 * rate == 120
                    require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                    if tokenAllocated + (120 * arg1 * rate / 100) <= stor29:
                        emit CurrentPeriod(2);
                        require tokenAllocated + (120 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (120 * arg1 * rate / 100) > balanceOf[stor6]:
                            emit TokenLimitReached(tokenAllocated, 120 * arg1 * rate / 100, msg.sender);
                        else:
                            require weiRaised + arg1 >= weiRaised
                            if weiRaised + arg1 <= hardWeiCap:
                                if arg1 >= weiMinSale:
                                    return (120 * arg1 * rate / 100)
                            else:
                                emit HardCapReached()
                    else:
                        if arg1:
                            require arg1
                            require arg1 * rate / arg1 == rate
                        if arg1 * rate:
                            require arg1 * rate
                            require 110 * arg1 * rate / arg1 * rate == 110
                        require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                        if tokenAllocated + (110 * arg1 * rate / 100) <= stor30:
                            emit CurrentPeriod(3);
                            require tokenAllocated + (110 * arg1 * rate / 100) >= tokenAllocated
                            if tokenAllocated + (110 * arg1 * rate / 100) > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 110 * arg1 * rate / 100, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 <= hardWeiCap:
                                    if arg1 >= weiMinSale:
                                        return (110 * arg1 * rate / 100)
                                else:
                                    emit HardCapReached()
                        else:
                            emit CurrentPeriod(0);
                            require tokenAllocated >= tokenAllocated
                            if tokenAllocated > balanceOf[stor6]:
                                emit TokenLimitReached(tokenAllocated, 0, msg.sender);
                            else:
                                require weiRaised + arg1 >= weiRaised
                                if weiRaised + arg1 > hardWeiCap:
                                    emit HardCapReached()
    return 0
}



}
