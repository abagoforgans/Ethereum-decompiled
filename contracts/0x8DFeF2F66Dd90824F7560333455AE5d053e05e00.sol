contract main {




// =====================  Runtime code  =====================


const checkBalance = eth.balance(this.address)


address scammerInChiefAddress;
uint256 greaterFools;
uint256 availableBalance;
uint256 countdownToExitScam;
uint256 scamSupply;
bool stor5;
uint256 stor5; offset 1
uint256 scamPrice;
uint256 stupidTaxRate;
uint256 timeOut;
mapping of uint256 userTime;
mapping of uint256 userScams;
mapping of uint256 userBalance;

function userBalance(address arg1) {
    return userBalance[arg1]
}

function scamSupply() {
    return scamSupply
}

function userScams(address arg1) {
    return userScams[arg1]
}

function timeOut() {
    return timeOut
}

function scammerInChief() {
    return scammerInChiefAddress
}

function scamPrice() {
    return scamPrice
}

function greaterFools() {
    return greaterFools
}

function userTime(address arg1) {
    return userTime[arg1]
}

function availableBalance() {
    return availableBalance
}

function stupidTaxRate() {
    return stupidTaxRate
}

function countdownToExitScam() {
    return countdownToExitScam
}

function exitScam() {
    require tx.origin == msg.sender
    require msg.sender == scammerInChiefAddress
    require block.timestamp >= countdownToExitScam
    selfdestruct(scammerInChiefAddress)
}

function withdrawScamEarnings() {
    require tx.origin == msg.sender
    require userBalance[msg.sender] > 0
    userBalance[msg.sender] = 0
    call msg.sender with:
       value userBalance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainMe() {
    require tx.origin == msg.sender
    require 420 < availableBalance
    if bool(block.hash(block.number - 1)):
        call msg.sender with:
           value 69 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 69 <= availableBalance:
    else:
        call msg.sender with:
           value 420 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 420 <= availableBalance:
    revert
}

function sellScams(uint256 arg1) {
    require tx.origin == msg.sender
    require block.timestamp >= userTime[msg.sender] + timeOut
    require userScams[msg.sender] > 0
    require arg1 <= userScams[msg.sender]
    if not arg1:
        require 0 <= availableBalance
        require arg1 <= scamSupply
        scamSupply -= arg1
        require 0 <= availableBalance
        require arg1 <= userScams[msg.sender]
        userScams[msg.sender] -= arg1
    else:
        require scamPrice * arg1 / arg1 == scamPrice
        require scamPrice * arg1 <= availableBalance
        require arg1 <= scamSupply
        scamSupply -= arg1
        require scamPrice * arg1 <= availableBalance
        availableBalance += -1 * scamPrice * arg1
        require arg1 <= userScams[msg.sender]
        userScams[msg.sender] -= arg1
        userBalance[msg.sender] += scamPrice * arg1
    userTime[msg.sender] = block.timestamp
}

function buyScams() payable {
    require tx.origin == msg.sender
    if not msg.value:
        require 0 <= msg.value
        require msg.value >= scamPrice
        require scamPrice
        userTime[msg.sender] = block.timestamp
        userScams[msg.sender] += msg.value / scamPrice
        scamSupply += msg.value / scamPrice
        availableBalance += msg.value
        require (msg.value / scamPrice) + scamSupply
        if not msg.value + availableBalance / (msg.value / scamPrice) + scamSupply:
            if 0 > scamPrice:
                scamPrice = 0
        else:
            require 2 * msg.value + availableBalance / (msg.value / scamPrice) + scamSupply / msg.value + availableBalance / (msg.value / scamPrice) + scamSupply == 2
            if 2 * msg.value + availableBalance / (msg.value / scamPrice) + scamSupply > scamPrice:
                bool(stor5.field_0) = 0
                uint255(stor5.field_1) = uint255(msg.value + availableBalance / (msg.value / scamPrice) + scamSupply)
        call scammerInChiefAddress with:
             gas 2300 wei
    else:
        require stupidTaxRate * msg.value / msg.value == stupidTaxRate
        require stupidTaxRate * msg.value / 100 <= msg.value
        require msg.value - (stupidTaxRate * msg.value / 100) >= scamPrice
        require scamPrice
        userTime[msg.sender] = block.timestamp
        userScams[msg.sender] += msg.value - (stupidTaxRate * msg.value / 100) / scamPrice
        scamSupply += msg.value - (stupidTaxRate * msg.value / 100) / scamPrice
        availableBalance = msg.value - (stupidTaxRate * msg.value / 100) + availableBalance
        require (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply
        if not msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply:
            if 0 > scamPrice:
                scamPrice = 0
        else:
            require 2 * msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply / msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply == 2
            if 2 * msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply > scamPrice:
                bool(stor5.field_0) = 0
                uint255(stor5.field_1) = uint255(msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply)
        call scammerInChiefAddress with:
           value stupidTaxRate * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    greaterFools++
}

function _fallback() payable {
    require tx.origin == msg.sender
    if not msg.value:
        require 0 <= msg.value
        require msg.value >= scamPrice
        require scamPrice
        userTime[msg.sender] = block.timestamp
        userScams[msg.sender] += msg.value / scamPrice
        scamSupply += msg.value / scamPrice
        availableBalance += msg.value
        require (msg.value / scamPrice) + scamSupply
        if not msg.value + availableBalance / (msg.value / scamPrice) + scamSupply:
            if 0 > scamPrice:
                scamPrice = 0
        else:
            require 2 * msg.value + availableBalance / (msg.value / scamPrice) + scamSupply / msg.value + availableBalance / (msg.value / scamPrice) + scamSupply == 2
            if 2 * msg.value + availableBalance / (msg.value / scamPrice) + scamSupply > scamPrice:
                bool(stor5.field_0) = 0
                uint255(stor5.field_1) = uint255(msg.value + availableBalance / (msg.value / scamPrice) + scamSupply)
        call scammerInChiefAddress with:
             gas 2300 wei
    else:
        require stupidTaxRate * msg.value / msg.value == stupidTaxRate
        require stupidTaxRate * msg.value / 100 <= msg.value
        require msg.value - (stupidTaxRate * msg.value / 100) >= scamPrice
        require scamPrice
        userTime[msg.sender] = block.timestamp
        userScams[msg.sender] += msg.value - (stupidTaxRate * msg.value / 100) / scamPrice
        scamSupply += msg.value - (stupidTaxRate * msg.value / 100) / scamPrice
        availableBalance = msg.value - (stupidTaxRate * msg.value / 100) + availableBalance
        require (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply
        if not msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply:
            if 0 > scamPrice:
                scamPrice = 0
        else:
            require 2 * msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply / msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply == 2
            if 2 * msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply > scamPrice:
                bool(stor5.field_0) = 0
                uint255(stor5.field_1) = uint255(msg.value - (stupidTaxRate * msg.value / 100) + availableBalance / (msg.value - (stupidTaxRate * msg.value / 100) / scamPrice) + scamSupply)
        call scammerInChiefAddress with:
           value stupidTaxRate * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    greaterFools++
}

function fastEscape() {
    require tx.origin == msg.sender
    if not userScams[msg.sender]:
        if 0 <= availableBalance:
            require tx.origin == msg.sender
            require block.timestamp >= userTime[msg.sender] + timeOut
            require userScams[msg.sender] > 0
            require userScams[msg.sender] <= userScams[msg.sender]
            if not userScams[msg.sender]:
                require 0 <= availableBalance
                require userScams[msg.sender] <= scamSupply
                scamSupply -= userScams[msg.sender]
                require 0 <= availableBalance
                require userScams[msg.sender] <= userScams[msg.sender]
                userScams[msg.sender] = 0
            else:
                require scamPrice * userScams[msg.sender] / userScams[msg.sender] == scamPrice
                require scamPrice * userScams[msg.sender] <= availableBalance
                require userScams[msg.sender] <= scamSupply
                scamSupply -= userScams[msg.sender]
                require scamPrice * userScams[msg.sender] <= availableBalance
                availableBalance += -1 * scamPrice * userScams[msg.sender]
                require userScams[msg.sender] <= userScams[msg.sender]
                userScams[msg.sender] = 0
                userBalance[msg.sender] += scamPrice * userScams[msg.sender]
        else:
            require scamPrice
            require availableBalance / scamPrice <= userScams[msg.sender]
            require tx.origin == msg.sender
            require block.timestamp >= userTime[msg.sender] + timeOut
            require userScams[msg.sender] > 0
            require availableBalance / scamPrice <= userScams[msg.sender]
            if not availableBalance / scamPrice:
                require 0 <= availableBalance
                require availableBalance / scamPrice <= scamSupply
                scamSupply -= availableBalance / scamPrice
                require 0 <= availableBalance
                require availableBalance / scamPrice <= userScams[msg.sender]
                userScams[msg.sender] -= availableBalance / scamPrice
            else:
                require scamPrice * availableBalance / scamPrice / availableBalance / scamPrice == scamPrice
                require scamPrice * availableBalance / scamPrice <= availableBalance
                require availableBalance / scamPrice <= scamSupply
                scamSupply -= availableBalance / scamPrice
                require scamPrice * availableBalance / scamPrice <= availableBalance
                availableBalance += -1 * scamPrice * availableBalance / scamPrice
                require availableBalance / scamPrice <= userScams[msg.sender]
                userScams[msg.sender] -= availableBalance / scamPrice
                userBalance[msg.sender] += scamPrice * availableBalance / scamPrice
    else:
        require scamPrice * userScams[msg.sender] / userScams[msg.sender] == scamPrice
        if scamPrice * userScams[msg.sender] <= availableBalance:
            require tx.origin == msg.sender
            require block.timestamp >= userTime[msg.sender] + timeOut
            require userScams[msg.sender] > 0
            require userScams[msg.sender] <= userScams[msg.sender]
            if not userScams[msg.sender]:
                require 0 <= availableBalance
                require userScams[msg.sender] <= scamSupply
                scamSupply -= userScams[msg.sender]
                require 0 <= availableBalance
                require userScams[msg.sender] <= userScams[msg.sender]
                userScams[msg.sender] = 0
            else:
                require scamPrice * userScams[msg.sender] / userScams[msg.sender] == scamPrice
                require scamPrice * userScams[msg.sender] <= availableBalance
                require userScams[msg.sender] <= scamSupply
                scamSupply -= userScams[msg.sender]
                require scamPrice * userScams[msg.sender] <= availableBalance
                availableBalance += -1 * scamPrice * userScams[msg.sender]
                require userScams[msg.sender] <= userScams[msg.sender]
                userScams[msg.sender] = 0
                userBalance[msg.sender] += scamPrice * userScams[msg.sender]
        else:
            require scamPrice
            require availableBalance / scamPrice <= userScams[msg.sender]
            require tx.origin == msg.sender
            require block.timestamp >= userTime[msg.sender] + timeOut
            require userScams[msg.sender] > 0
            require availableBalance / scamPrice <= userScams[msg.sender]
            if not availableBalance / scamPrice:
                require 0 <= availableBalance
                require availableBalance / scamPrice <= scamSupply
                scamSupply -= availableBalance / scamPrice
                require 0 <= availableBalance
                require availableBalance / scamPrice <= userScams[msg.sender]
                userScams[msg.sender] -= availableBalance / scamPrice
            else:
                require scamPrice * availableBalance / scamPrice / availableBalance / scamPrice == scamPrice
                require scamPrice * availableBalance / scamPrice <= availableBalance
                require availableBalance / scamPrice <= scamSupply
                scamSupply -= availableBalance / scamPrice
                require scamPrice * availableBalance / scamPrice <= availableBalance
                availableBalance += -1 * scamPrice * availableBalance / scamPrice
                require availableBalance / scamPrice <= userScams[msg.sender]
                userScams[msg.sender] -= availableBalance / scamPrice
                userBalance[msg.sender] += scamPrice * availableBalance / scamPrice
    userTime[msg.sender] = block.timestamp
    require tx.origin == msg.sender
    require userBalance[msg.sender] > 0
    userBalance[msg.sender] = 0
    call msg.sender with:
       value userBalance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
