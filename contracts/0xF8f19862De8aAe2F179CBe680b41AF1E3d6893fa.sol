contract main {




// =====================  Runtime code  =====================


const name = 'Carati'

const decimals = 18

const symbol = '24Car'

const tokenReserve = 1000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
address owner;
mapping of uint256 allowance;
uint256 stor4;
uint256 tokensSold;
uint256 tokensToSell;
uint256 remainingTokens;
uint256 sub_923debce;
uint256 sub_307d3369;
uint256 sub_b7d476cc;
uint8 stor11;

function totalSupply() {
    return totalSupply
}

function sub_307d3369(?) {
    return sub_307d3369
}

function tokensToSell() {
    return tokensToSell
}

function tokensSold() {
    return tokensSold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_923debce(?) {
    return sub_923debce
}

function sub_b7d476cc(?) {
    return sub_b7d476cc
}

function remainingTokens() {
    return remainingTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function finalizeIco() {
    require msg.sender == owner
    require stor11 <= 4
    require stor11 == 3
    stor11 = 4
    if remainingTokens > 0:
        require balanceOf[stor2] + remainingTokens >= balanceOf[stor2]
        balanceOf[stor2] += remainingTokens
    selfdestruct(owner)
}

function sub_b21e8745(?) {
    require msg.sender == owner
    require stor11 <= 4
    require not stor11
    stor11 = 1
}

function sub_068ed2a6(?) {
    require msg.sender == owner
    require stor11 <= 4
    require stor11 == 2
    stor11 = 1
    stor4 = 3500 * 10^18
}

function sub_127e230b(?) {
    require msg.sender == owner
    require stor11 <= 4
    require stor11 == 1
    stor11 = 1
    stor4 = 4000 * 10^18
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    return 1
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
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stor11 <= 4
    require stor11
    require stor11 <= 4
    require stor11 != 4
    require msg.value >= 5 * 10^17
    require remainingTokens > 0
    if not msg.value:
        require tokensSold >= tokensSold
        require tokensSold <= 2000000000 * 10^18
        require tokensSold >= tokensSold
        require tokensSold <= tokensToSell
        remainingTokens = tokensToSell - tokensSold
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, this.address, msg.sender);
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require msg.value
        require msg.value * stor4 / msg.value == stor4
        require tokensSold + (msg.value * stor4 / 10^18) >= tokensSold
        if tokensSold + (msg.value * stor4 / 10^18) <= 2000000000 * 10^18:
            require tokensSold + (msg.value * stor4 / 10^18) >= tokensSold
            tokensSold += msg.value * stor4 / 10^18
            require tokensSold <= tokensToSell
            remainingTokens = tokensToSell - tokensSold
            require balanceOf[address(msg.sender)] + (msg.value * stor4 / 10^18) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * stor4 / 10^18
            emit Transfer((msg.value * stor4 / 10^18), this.address, msg.sender);
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            require tokensSold <= 2000000000 * 10^18
            require stor4
            if not -tokensSold + 2000000000 * 10^18 / stor4:
                require 0 <= msg.value
                require 2000000000 * 10^18 >= tokensSold
                tokensSold = 2000000000 * 10^18
                require tokensSold <= tokensToSell
                remainingTokens = tokensToSell - tokensSold
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer(msg.value, this.address, msg.sender);
                require balanceOf[address(msg.sender)] + -tokensSold + 2000000000 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensSold + 2000000000 * 10^18
                emit Transfer((-tokensSold + 2000000000 * 10^18), this.address, msg.sender);
                call owner with:
                     gas 2300 wei
            else:
                require -tokensSold + 2000000000 * 10^18 / stor4
                require 10^18 * -tokensSold + 2000000000 * 10^18 / stor4 / -tokensSold + 2000000000 * 10^18 / stor4 == 10^18
                require 10^18 * -tokensSold + 2000000000 * 10^18 / stor4 <= msg.value
                require 2000000000 * 10^18 >= tokensSold
                tokensSold = 2000000000 * 10^18
                require tokensSold <= tokensToSell
                remainingTokens = tokensToSell - tokensSold
                if msg.value - (10^18 * -tokensSold + 2000000000 * 10^18 / stor4) > 0:
                    call msg.sender with:
                       value msg.value - (10^18 * -tokensSold + 2000000000 * 10^18 / stor4) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Transfer((msg.value - (10^18 * -tokensSold + 2000000000 * 10^18 / stor4)), this.address, msg.sender);
                require balanceOf[address(msg.sender)] + -tokensSold + 2000000000 * 10^18 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + -tokensSold + 2000000000 * 10^18
                emit Transfer((-tokensSold + 2000000000 * 10^18), this.address, msg.sender);
                call owner with:
                   value 10^18 * -tokensSold + 2000000000 * 10^18 / stor4 wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
