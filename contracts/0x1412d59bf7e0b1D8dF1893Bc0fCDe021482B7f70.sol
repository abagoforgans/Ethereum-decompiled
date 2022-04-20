contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor12;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 40
    stor9 = 0
    stor10 = 0
    stor12 = 0
    require not msg.value
    stor0 = msg.sender
    require block.timestamp < 419460 * 3600
    create contract with 0 wei
                    code: code.data[4468 len 2833]
    require create.new_address
    stor2 = address(create.new_address)
    return code.data[210 len 4258]
}



// =====================  Runtime code  =====================


const sub_0a076b6f(?) = 10^17

const sub_1ee40e5f(?) = 10^18

const sub_26f96dee(?) = 28000000 * 10^18

const endTime = (420180 * 3600)

const rateToEther = 250

const startTime = (419460 * 3600)

const sub_7e8e3dee(?) = 100 * 10^18

const sub_aec92cb4(?) = (1250 * 10^18 * 3600)

const sub_b8078110(?) = 15000000 * 10^18

const maxPresaleAmount = 1500000 * 10^18


address owner;
address newOwner;
address tokenAddress;
uint256 totalSupply;
uint256 totalAmount;
uint256 currentAmount;
uint256 transactionCounter;
uint8 stor7;
uint256 currentBonus;
uint256 sub_31c7d725;
uint256 sub_5bd77915;
mapping of uint256 stor11;
uint256 sub_eaf0be2a;

function transactionCounter() {
    return transactionCounter
}

function totalSupply() {
    return totalSupply
}

function totalAmount() {
    return totalAmount
}

function sub_31c7d725(?) {
    return sub_31c7d725
}

function sub_5bd77915(?) {
    return sub_5bd77915
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function bonusesPayed() {
    return bool(stor7)
}

function sub_eaf0be2a(?) {
    return sub_eaf0be2a
}

function currentBonus() {
    return currentBonus
}

function currentAmount() {
    return currentAmount
}

function token() {
    return tokenAddress
}

function isSuccess() {
    return totalSupply >= 120000 * 10^18
}

function confirmOwner() {
    require newOwner == msg.sender
    owner = newOwner
    newOwner = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function isFinished() {
    if block.timestamp > 420180 * 3600:
        return (block.timestamp > 420180 * 3600)
    return totalSupply >= 28000000 * 10^18
}

function sub_85425181(?) {
    require owner == msg.sender
    sub_31c7d725 = arg1
    sub_eaf0be2a = arg2 + block.timestamp
    sub_5bd77915 = 10^18 * arg3
}

function withdraw() {
    require owner == msg.sender
    require totalSupply >= 120000 * 10^18
    call msg.sender with:
       value currentAmount wei
         gas 3 * 10^6 wei
    require ext_call.success
    currentAmount = 0
}

function sub_c0b1fbd0(?) {
    require owner == msg.sender
    require stor7
    require block.timestamp > 424500 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 7000000 * 10^18
    require ext_call.success
}

function withdrawAmount(uint256 arg1) {
    require owner == msg.sender
    require totalSupply >= 120000 * 10^18
    call msg.sender with:
       value arg1 wei
         gas 3 * 10^6 wei
    require ext_call.success
    if currentAmount <= arg1:
        currentAmount = 0
    else:
        require arg1 <= currentAmount
        currentAmount -= arg1
}

function finishCrowdsale() {
    require owner == msg.sender
    if block.timestamp <= 420180 * 3600:
        require totalSupply >= 28000000 * 10^18
    require totalSupply >= 120000 * 10^18
    require not stor7
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), 7000000 * 10^18
    require ext_call.success
    stor7 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function refund() {
    if block.timestamp <= 420180 * 3600:
        require totalSupply >= 28000000 * 10^18
    require totalSupply < 120000 * 10^18
    require stor11[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value stor11[address(msg.sender)] wei
         gas 3 * 10^6 wei
}

function _fallback() payable {
    require block.timestamp <= 420180 * 3600
    require totalSupply < 28000000 * 10^18
    if block.timestamp >= 419460 * 3600:
        require msg.value >= 10^17
        require totalSupply < 28000000 * 10^18
    else:
        require msg.value >= 10^18
        require totalSupply < 1500000 * 10^18
    if msg.value:
        require msg.value
        require 250 * msg.value / msg.value == 250
    if block.timestamp >= sub_eaf0be2a:
        if msg.value < 100 * 10^18:
            if 250 * msg.value / 100:
                require 250 * msg.value / 100
                require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) / 250 * msg.value / 100 == currentBonus + 100
            require totalSupply <= 28000000 * 10^18
            if (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + msg.value >= msg.value
                    stor11[address(msg.sender)] += msg.value
                require msg.value + totalAmount >= totalAmount
                totalAmount += msg.value
                require msg.value + currentAmount >= currentAmount
                currentAmount += msg.value
                require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply >= totalSupply
                totalSupply = (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100)
            else:
                if -totalSupply + 28000000 * 10^18:
                    require -totalSupply + 28000000 * 10^18
                    require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
                require currentBonus + 100
                require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                call msg.sender with:
                   value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                    stor11[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) + totalAmount >= totalAmount
                totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) + currentAmount >= currentAmount
                currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                require 28000000 * 10^18 >= totalSupply
                totalSupply = 28000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -totalSupply + 28000000 * 10^18
        else:
            if 250 * msg.value / 100:
                require 250 * msg.value / 100
                require (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) / 250 * msg.value / 100 == currentBonus + 105
            require totalSupply <= 28000000 * 10^18
            if (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + msg.value >= msg.value
                    stor11[address(msg.sender)] += msg.value
                require msg.value + totalAmount >= totalAmount
                totalAmount += msg.value
                require msg.value + currentAmount >= currentAmount
                currentAmount += msg.value
                require (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply >= totalSupply
                totalSupply = (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100)
            else:
                if -totalSupply + 28000000 * 10^18:
                    require -totalSupply + 28000000 * 10^18
                    require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
                require currentBonus + 105
                require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                call msg.sender with:
                   value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                    stor11[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) + totalAmount >= totalAmount
                totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) + currentAmount >= currentAmount
                currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                require 28000000 * 10^18 >= totalSupply
                totalSupply = 28000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -totalSupply + 28000000 * 10^18
    else:
        if msg.value >= sub_5bd77915:
            if 250 * msg.value / 100:
                require 250 * msg.value / 100
                require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + (sub_31c7d725 * 250 * msg.value / 100) / 250 * msg.value / 100 == currentBonus + sub_31c7d725 + 100
            require totalSupply <= 28000000 * 10^18
            if (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + (sub_31c7d725 * 250 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + msg.value >= msg.value
                    stor11[address(msg.sender)] += msg.value
                require msg.value + totalAmount >= totalAmount
                totalAmount += msg.value
                require msg.value + currentAmount >= currentAmount
                currentAmount += msg.value
                require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + (sub_31c7d725 * 250 * msg.value / 100) + totalSupply >= totalSupply
                totalSupply = (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + (sub_31c7d725 * 250 * msg.value / 100) + totalSupply
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + (sub_31c7d725 * 250 * msg.value / 100)
            else:
                if -totalSupply + 28000000 * 10^18:
                    require -totalSupply + 28000000 * 10^18
                    require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
                require currentBonus + sub_31c7d725 + 100
                require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250
                call msg.sender with:
                   value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250) wei
                     gas 3 * 10^6 wei
                require ext_call.success
                if totalSupply < 120000 * 10^18:
                    require stor11[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250
                    stor11[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250) + totalAmount >= totalAmount
                totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250
                require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250) + currentAmount >= currentAmount
                currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + sub_31c7d725 + 100 / 250
                require 28000000 * 10^18 >= totalSupply
                totalSupply = 28000000 * 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -totalSupply + 28000000 * 10^18
        else:
            if msg.value < 100 * 10^18:
                if 250 * msg.value / 100:
                    require 250 * msg.value / 100
                    require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) / 250 * msg.value / 100 == currentBonus + 100
                require totalSupply <= 28000000 * 10^18
                if (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
                    if totalSupply < 120000 * 10^18:
                        require stor11[address(msg.sender)] + msg.value >= msg.value
                        stor11[address(msg.sender)] += msg.value
                    require msg.value + totalAmount >= totalAmount
                    totalAmount += msg.value
                    require msg.value + currentAmount >= currentAmount
                    currentAmount += msg.value
                    require (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply >= totalSupply
                    totalSupply = (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (100 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100)
                else:
                    if -totalSupply + 28000000 * 10^18:
                        require -totalSupply + 28000000 * 10^18
                        require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
                    require currentBonus + 100
                    require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                    call msg.sender with:
                       value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) wei
                         gas 3 * 10^6 wei
                    require ext_call.success
                    if totalSupply < 120000 * 10^18:
                        require stor11[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                        stor11[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                    require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) + totalAmount >= totalAmount
                    totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                    require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250) + currentAmount >= currentAmount
                    currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 250
                    require 28000000 * 10^18 >= totalSupply
                    totalSupply = 28000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -totalSupply + 28000000 * 10^18
            else:
                if 250 * msg.value / 100:
                    require 250 * msg.value / 100
                    require (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) / 250 * msg.value / 100 == currentBonus + 105
                require totalSupply <= 28000000 * 10^18
                if (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
                    if totalSupply < 120000 * 10^18:
                        require stor11[address(msg.sender)] + msg.value >= msg.value
                        stor11[address(msg.sender)] += msg.value
                    require msg.value + totalAmount >= totalAmount
                    totalAmount += msg.value
                    require msg.value + currentAmount >= currentAmount
                    currentAmount += msg.value
                    require (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply >= totalSupply
                    totalSupply = (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100) + totalSupply
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (105 * 250 * msg.value / 100) + (currentBonus * 250 * msg.value / 100)
                else:
                    if -totalSupply + 28000000 * 10^18:
                        require -totalSupply + 28000000 * 10^18
                        require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
                    require currentBonus + 105
                    require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                    call msg.sender with:
                       value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) wei
                         gas 3 * 10^6 wei
                    require ext_call.success
                    if totalSupply < 120000 * 10^18:
                        require stor11[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                        stor11[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                    require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) + totalAmount >= totalAmount
                    totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                    require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250) + currentAmount >= currentAmount
                    currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 105 / 250
                    require 28000000 * 10^18 >= totalSupply
                    totalSupply = 28000000 * 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -totalSupply + 28000000 * 10^18
    require ext_call.success
    if block.timestamp < 419460 * 3600:
        currentBonus = 40
    else:
        if totalSupply > 15000000 * 10^18:
            currentBonus = 10
        else:
            if totalSupply <= 1250 * 10^18 * 3600:
                currentBonus = 30
            else:
                currentBonus = 20
    transactionCounter++
}



}
