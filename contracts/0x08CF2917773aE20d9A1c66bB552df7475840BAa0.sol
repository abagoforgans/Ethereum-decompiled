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
uint256 stor9;
address stor11;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 6 * 10^12
    stor9 = 2000
    stor13 = 0
    stor14 = 10000
    require not msg.value
    stor1 = msg.sender
    stor11 = code.data[6168 len 20]
    return code.data[276 len 5880]
}



// =====================  Runtime code  =====================


const MAX_PREICO_SUPPLY = 20000000 * 10^18

const DECIMALS = 10^18

const MAX_ICO_SUPPLY = 70000000 * 10^18

const MAX_BOUNTY_SUPPLY = 10000000 * 10^18


uint256 stor0;
address owner;
uint8 currentState; offset 160
address stor2;
address tokenAddress;
uint256 totalPreICOSupply;
uint256 totalICOSupply;
uint256 totalBountySupply;
uint256 totalFunds;
uint256 tokenPrice;
uint256 bonus;
uint256 currentPrice;
address beneficiaryAddress;
mapping of uint256 stor12;
uint256 countMembers;
uint256 stor14;

function currentState() {
    require currentState <= 6
    return currentState
}

function countMembers() {
    return countMembers
}

function beneficiary() {
    return beneficiaryAddress
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

function totalBountySupply() {
    return totalBountySupply
}

function currentPrice() {
    return currentPrice
}

function totalICOSupply() {
    return totalICOSupply
}

function token() {
    return tokenAddress
}

function totalPreICOSupply() {
    return totalPreICOSupply
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function acceptOwnership() {
    require msg.sender == stor2
    emit OwnershipTransferred(owner, stor2);
    owner = stor2
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    require currentState <= 6
    require currentState != 6
    bonus = arg1
}

function setTokenPrice(uint256 arg1) {
    require msg.sender == owner
    require currentState <= 6
    require currentState != 6
    currentPrice = arg1
}

function initialize(address arg1) {
    require msg.sender == owner
    require currentState <= 6
    require not currentState
    require arg1
    tokenAddress = arg1
    currentPrice = tokenPrice
}

function getBonus() {
    if not bonus:
        if stor14:
            return (100 * bonus / stor14)
    else:
        if bonus:
            if 100 * bonus / bonus == 100:
                if stor14:
                    return (100 * bonus / stor14)
    revert
}

function investBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 6
    require currentState == 1
    require not stor0
    stor0 = -1
    require currentState <= 6
    if currentState == 2:
        require totalPreICOSupply + arg2 >= totalPreICOSupply
        totalPreICOSupply += arg2
    else:
        require currentState <= 6
        if currentState == 4:
            require totalICOSupply + arg2 >= totalICOSupply
            totalICOSupply += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Transfer(arg2, arg1);
}

function investDirect(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 6
    if currentState != 2:
        require currentState <= 6
        require currentState == 4
    if arg2:
        require arg2
        require arg2 * bonus / arg2 == bonus
    require stor14
    require arg2 + (arg2 * bonus / stor14) >= arg2
    require currentState <= 6
    if currentState == 2:
        require totalPreICOSupply + arg2 + (arg2 * bonus / stor14) >= totalPreICOSupply
        require totalPreICOSupply + arg2 + (arg2 * bonus / stor14) <= 20000000 * 10^18
    else:
        require currentState <= 6
        if currentState == 4:
            require totalICOSupply + arg2 + (arg2 * bonus / stor14) >= totalICOSupply
            require totalICOSupply + arg2 + (arg2 * bonus / stor14) <= 70000000 * 10^18
    require not stor0
    stor0 = -1
    require currentState <= 6
    if currentState == 2:
        require totalPreICOSupply + arg2 + (arg2 * bonus / stor14) >= totalPreICOSupply
        totalPreICOSupply = totalPreICOSupply + arg2 + (arg2 * bonus / stor14)
    else:
        require currentState <= 6
        if currentState == 4:
            require totalICOSupply + arg2 + (arg2 * bonus / stor14) >= totalICOSupply
            totalICOSupply = totalICOSupply + arg2 + (arg2 * bonus / stor14)
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2 + (arg2 * bonus / stor14)
    require ext_call.success
    emit Transfer((arg2 + (arg2 * bonus / stor14)), arg1);
}

function _fallback() payable {
    require currentState <= 6
    if currentState != 2:
        require currentState <= 6
        require currentState == 4
    require msg.value
    require msg.value
    require 10^18 * msg.value / msg.value == 10^18
    require currentPrice
    if 10^18 * msg.value / currentPrice:
        require 10^18 * msg.value / currentPrice
        require 10^18 * msg.value / currentPrice * bonus / 10^18 * msg.value / currentPrice == bonus
    require stor14
    require (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) >= 10^18 * msg.value / currentPrice
    require currentState <= 6
    if currentState == 2:
        require totalPreICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) >= totalPreICOSupply
        require totalPreICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) <= 20000000 * 10^18
    else:
        require currentState <= 6
        if currentState == 4:
            require totalICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) >= totalICOSupply
            require totalICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) <= 70000000 * 10^18
    if not stor12[address(msg.sender)]:
        require countMembers + 1 >= countMembers
        countMembers++
    require stor12[address(msg.sender)] + msg.value >= stor12[address(msg.sender)]
    stor12[address(msg.sender)] += msg.value
    require totalFunds + msg.value >= totalFunds
    totalFunds += msg.value
    require not stor0
    stor0 = -1
    require currentState <= 6
    if currentState == 2:
        require totalPreICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) >= totalPreICOSupply
        totalPreICOSupply = totalPreICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14)
    else:
        require currentState <= 6
        if currentState == 4:
            require totalICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14) >= totalICOSupply
            totalICOSupply = totalICOSupply + (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14)
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, (10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14)
    require ext_call.success
    emit Transfer(((10^18 * msg.value / currentPrice) + (10^18 * msg.value / currentPrice * bonus / stor14)), msg.sender);
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function setState(uint8 arg1) {
    require msg.sender == owner
    require currentState <= 6
    require currentState != 6
    require arg1 <= 6
    if arg1 != 6:
        require currentState <= 6
        if currentState:
            require currentState <= 6
            if currentState != 1:
                require currentState <= 6
                if currentState != 2:
                    require currentState <= 6
                    if currentState != 3:
                        require currentState <= 6
                        require currentState == 4
                        require arg1 <= 6
                        require arg1 == 5
                    else:
                        require arg1 <= 6
                        if arg1 != 4:
                            require currentState <= 6
                            require currentState == 4
                            require arg1 <= 6
                            require arg1 == 5
                else:
                    require arg1 <= 6
                    if arg1 != 3:
                        require currentState <= 6
                        if currentState != 3:
                            require currentState <= 6
                            require currentState == 4
                            require arg1 <= 6
                            require arg1 == 5
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
            else:
                require arg1 <= 6
                if arg1 != 2:
                    require currentState <= 6
                    if currentState != 2:
                        require currentState <= 6
                        if currentState != 3:
                            require currentState <= 6
                            require currentState == 4
                            require arg1 <= 6
                            require arg1 == 5
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
                    else:
                        require arg1 <= 6
                        if arg1 != 3:
                            require currentState <= 6
                            if currentState != 3:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
                            else:
                                require arg1 <= 6
                                if arg1 != 4:
                                    require currentState <= 6
                                    require currentState == 4
                                    require arg1 <= 6
                                    require arg1 == 5
        else:
            require arg1 <= 6
            if arg1 != 1:
                require currentState <= 6
                if currentState != 1:
                    require currentState <= 6
                    if currentState != 2:
                        require currentState <= 6
                        if currentState != 3:
                            require currentState <= 6
                            require currentState == 4
                            require arg1 <= 6
                            require arg1 == 5
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
                    else:
                        require arg1 <= 6
                        if arg1 != 3:
                            require currentState <= 6
                            if currentState != 3:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
                            else:
                                require arg1 <= 6
                                if arg1 != 4:
                                    require currentState <= 6
                                    require currentState == 4
                                    require arg1 <= 6
                                    require arg1 == 5
                else:
                    require arg1 <= 6
                    if arg1 != 2:
                        require currentState <= 6
                        if currentState != 2:
                            require currentState <= 6
                            if currentState != 3:
                                require currentState <= 6
                                require currentState == 4
                                require arg1 <= 6
                                require arg1 == 5
                            else:
                                require arg1 <= 6
                                if arg1 != 4:
                                    require currentState <= 6
                                    require currentState == 4
                                    require arg1 <= 6
                                    require arg1 == 5
                        else:
                            require arg1 <= 6
                            if arg1 != 3:
                                require currentState <= 6
                                if currentState != 3:
                                    require currentState <= 6
                                    require currentState == 4
                                    require arg1 <= 6
                                    require arg1 == 5
                                else:
                                    require arg1 <= 6
                                    if arg1 != 4:
                                        require currentState <= 6
                                        require currentState == 4
                                        require arg1 <= 6
                                        require arg1 == 5
    require arg1 <= 6
    if arg1 == 5:
        require not stor0
        stor0 = -1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xbe9a6555 with:
             gas gas_remaining - 710 wei
        require ext_call.success
    require arg1 <= 6
    currentState = arg1
}



}
