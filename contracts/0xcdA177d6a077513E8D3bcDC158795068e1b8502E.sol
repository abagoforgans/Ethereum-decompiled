contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint8 stor2; offset 160
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor10;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 10^18
    stor8 = 5000
    stor12 = 0
    stor13 = 10000
    require not msg.value
    stor1 = msg.sender
    stor10 = code.data[4317 len 20]
    return code.data[204 len 4101]
}



// =====================  Runtime code  =====================


const MAX_PREICO_SUPPLY = 3000000 * 10^18

const DECIMALS = 10^18

const MAX_ICO_SUPPLY = 30000000 * 10^18


uint256 stor0;
address owner;
uint8 currentState; offset 160
address newOwner;
address tokenAddress;
uint256 totalPreICOSupply;
uint256 totalICOSupply;
uint256 totalFunds;
uint256 tokenPrice;
uint256 bonus;
uint256 currentPrice;
address beneficiaryAddress;
mapping of uint256 refundBalance;
uint256 countMembers;
uint256 stor13;

function currentState() {
    require currentState <= 7
    return currentState
}

function countMembers() {
    return countMembers
}

function beneficiary() {
    return beneficiaryAddress
}

function refundBalance(address arg1) {
    return refundBalance[address(arg1)]
}

function getCountMembers() {
    return countMembers
}

function bonus() {
    return bonus
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function totalFunds() {
    return totalFunds
}

function currentPrice() {
    return currentPrice
}

function totalICOSupply() {
    return totalICOSupply
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function totalPreICOSupply() {
    return totalPreICOSupply
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require owner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setBonus(uint256 arg1) {
    require owner == msg.sender
    require currentState <= 7
    require currentState != 7
    bonus = arg1
}

function setTokenPrice(uint256 arg1) {
    require owner == msg.sender
    require currentState <= 7
    require currentState != 7
    currentPrice = arg1
}

function initialize(address arg1) {
    require owner == msg.sender
    require currentState <= 7
    require not currentState
    require arg1
    tokenAddress = arg1
    currentPrice = tokenPrice
}

function withdraw(uint256 arg1) {
    require stor0 <= 0
    stor0 = -1
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require stor0 <= 0
    stor0 = -1
    require currentState <= 7
    require currentState == 5
    require refundBalance[address(msg.sender)]
    refundBalance[address(msg.sender)] = 0
    call msg.sender with:
       value refundBalance[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function investDirect(address arg1, uint256 arg2) {
    require owner == msg.sender
    require currentState <= 7
    require currentState <= 7
    if currentState != 2:
        require currentState == 4
    if currentState == 2:
        require arg2 + totalPreICOSupply >= totalPreICOSupply
        require arg2 + totalPreICOSupply <= 3000000 * 10^18
        require arg2 + totalPreICOSupply >= totalPreICOSupply
        totalPreICOSupply += arg2
    else:
        require currentState <= 7
        if currentState == 4:
            require arg2 + totalICOSupply >= totalICOSupply
            require arg2 + totalICOSupply <= 30000000 * 10^18
            require arg2 + totalICOSupply >= totalICOSupply
            totalICOSupply += arg2
    require stor0 <= 0
    stor0 = -1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, arg1);
}

function _fallback() payable {
    require currentState <= 7
    if currentState != 2:
        require currentState <= 7
        require currentState == 4
    require msg.value
    require msg.value
    require 10^18 * msg.value / msg.value == 10^18
    require currentPrice
    require currentState <= 7
    if currentState == 2:
        require (10^18 * msg.value / currentPrice) + totalPreICOSupply >= totalPreICOSupply
        require (10^18 * msg.value / currentPrice) + totalPreICOSupply <= 3000000 * 10^18
        require (10^18 * msg.value / currentPrice) + totalPreICOSupply >= totalPreICOSupply
        totalPreICOSupply += 10^18 * msg.value / currentPrice
    else:
        require currentState <= 7
        if currentState == 4:
            require (10^18 * msg.value / currentPrice) + totalICOSupply >= totalICOSupply
            require (10^18 * msg.value / currentPrice) + totalICOSupply <= 30000000 * 10^18
            require (10^18 * msg.value / currentPrice) + totalICOSupply >= totalICOSupply
            totalICOSupply += 10^18 * msg.value / currentPrice
    if not refundBalance[address(msg.sender)]:
        require countMembers + 1 >= countMembers
        countMembers++
    if 10^18 * msg.value / currentPrice:
        require 10^18 * msg.value / currentPrice
        require bonus * 10^18 * msg.value / currentPrice / 10^18 * msg.value / currentPrice == bonus
    require stor13
    require (bonus * 10^18 * msg.value / currentPrice / stor13) + (10^18 * msg.value / currentPrice) >= 10^18 * msg.value / currentPrice
    require msg.value + refundBalance[address(msg.sender)] >= refundBalance[address(msg.sender)]
    refundBalance[address(msg.sender)] += msg.value
    require msg.value + totalFunds >= totalFunds
    totalFunds += msg.value
    require stor0 <= 0
    stor0 = -1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, (bonus * 10^18 * msg.value / currentPrice / stor13) + (10^18 * msg.value / currentPrice)
    require ext_call.success
    emit Transfer(((bonus * 10^18 * msg.value / currentPrice / stor13) + (10^18 * msg.value / currentPrice)), msg.sender);
}

function setState(uint8 arg1) {
    require owner == msg.sender
    require currentState <= 7
    require currentState != 7
    require arg1 <= 7
    if arg1 != 7:
        require currentState <= 7
        if currentState:
            require currentState <= 7
            if currentState != 1:
                require currentState <= 7
                if currentState != 2:
                    require currentState <= 7
                    if currentState != 3:
                        require currentState <= 7
                        if currentState != 4:
                            require currentState <= 7
                            require currentState == 5
                            require arg1 <= 7
                            require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 5:
                                require arg1 <= 7
                                if arg1 != 6:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 4:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                else:
                    require arg1 <= 7
                    if arg1 != 3:
                        require currentState <= 7
                        if currentState != 3:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 4:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
            else:
                require arg1 <= 7
                if arg1 != 2:
                    require currentState <= 7
                    if currentState != 2:
                        require currentState <= 7
                        if currentState != 3:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 4:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 3:
                            require currentState <= 7
                            if currentState != 3:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 4:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
        else:
            require arg1 <= 7
            if arg1 != 1:
                require currentState <= 7
                if currentState != 1:
                    require currentState <= 7
                    if currentState != 2:
                        require currentState <= 7
                        if currentState != 3:
                            require currentState <= 7
                            if currentState != 4:
                                require currentState <= 7
                                require currentState == 5
                                require arg1 <= 7
                                require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 5:
                                    require arg1 <= 7
                                    if arg1 != 6:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 4:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                    else:
                        require arg1 <= 7
                        if arg1 != 3:
                            require currentState <= 7
                            if currentState != 3:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 4:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                else:
                    require arg1 <= 7
                    if arg1 != 2:
                        require currentState <= 7
                        if currentState != 2:
                            require currentState <= 7
                            if currentState != 3:
                                require currentState <= 7
                                if currentState != 4:
                                    require currentState <= 7
                                    require currentState == 5
                                    require arg1 <= 7
                                    require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 5:
                                        require arg1 <= 7
                                        if arg1 != 6:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                            else:
                                require arg1 <= 7
                                if arg1 != 4:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                        else:
                            require arg1 <= 7
                            if arg1 != 3:
                                require currentState <= 7
                                if currentState != 3:
                                    require currentState <= 7
                                    if currentState != 4:
                                        require currentState <= 7
                                        require currentState == 5
                                        require arg1 <= 7
                                        require arg1 == 6
                                    else:
                                        require arg1 <= 7
                                        if arg1 != 5:
                                            require arg1 <= 7
                                            if arg1 != 6:
                                                require currentState <= 7
                                                require currentState == 5
                                                require arg1 <= 7
                                                require arg1 == 6
                                else:
                                    require arg1 <= 7
                                    if arg1 != 4:
                                        require currentState <= 7
                                        if currentState != 4:
                                            require currentState <= 7
                                            require currentState == 5
                                            require arg1 <= 7
                                            require arg1 == 6
                                        else:
                                            require arg1 <= 7
                                            if arg1 != 5:
                                                require arg1 <= 7
                                                if arg1 != 6:
                                                    require currentState <= 7
                                                    require currentState == 5
                                                    require arg1 <= 7
                                                    require arg1 == 6
    require arg1 <= 7
    if arg1 == 6:
        require stor0 <= 0
        stor0 = -1
        require ext_code.size(tokenAddress)
        call tokenAddress.start() with:
             gas gas_remaining - 710 wei
        require ext_call.success
    require arg1 <= 7
    currentState = arg1
}



}
