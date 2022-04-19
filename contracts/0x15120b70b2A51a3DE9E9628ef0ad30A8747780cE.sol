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

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 40
    require not msg.value
    stor0 = msg.sender
    require block.timestamp < 419164 * 3600
    create contract with 0 wei
                    code: code.data[4554 len 2833]
    require create.new_address
    stor2 = address(create.new_address)
    return code.data[195 len 4359]
}



// =====================  Runtime code  =====================


const sub_00df055c(?) = 100000 * 10^18

const sub_1ee40e5f(?) = 10^15

const sub_26f96dee(?) = 28000000 * 10^18

const endTime = (419188 * 3600)

const sub_334ff6eb(?) = 30

const rateToEther = 500 * 10^6

const sub_594eebd9(?) = (12 * 3600)

const maxAmount = 35000000 * 10^18

const teamAmount = 1750000 * 10^18

const startTime = (419164 * 3600)

const sub_94029b80(?) = 3500000 * 10^18

const presaleBonus = 40

const sub_aec92cb4(?) = (1250 * 10^18 * 3600)

const sub_b8078110(?) = 15000000 * 10^18

const bountyAmount = 1750000 * 10^18

const maxPresaleAmount = 1500000 * 10^18

const sub_e1f78dac(?) = 10

const secondPhaseBonus = 20


address owner;
address newOwner;
address tokenAddress;
uint256 totalSupply;
uint256 totalAmount;
uint256 currentAmount;
uint256 transactionCounter;
uint8 stor7;
uint256 currentBonus;
mapping of uint256 stor9;

function transactionCounter() {
    return transactionCounter
}

function totalSupply() {
    return totalSupply
}

function totalAmount() {
    return totalAmount
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
    return totalSupply >= 100000 * 10^18
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
    if block.timestamp > 419188 * 3600:
        return (block.timestamp > 419188 * 3600)
    return totalSupply >= 28000000 * 10^18
}

function withdraw() {
    require owner == msg.sender
    require totalSupply >= 100000 * 10^18
    call msg.sender with:
       value currentAmount wei
         gas 3 * 10^6 wei
    require ext_call.success
    currentAmount = 0
}

function sub_c0b1fbd0(?) {
    require owner == msg.sender
    require stor7
    require block.timestamp > 419200 * 3600
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 7000000 * 10^18
    require ext_call.success
}

function withdrawAmount(uint256 arg1) {
    require owner == msg.sender
    require totalSupply >= 100000 * 10^18
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
    if block.timestamp <= 419188 * 3600:
        require totalSupply >= 28000000 * 10^18
    require totalSupply >= 100000 * 10^18
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
    if block.timestamp <= 419188 * 3600:
        require totalSupply >= 28000000 * 10^18
    require totalSupply < 100000 * 10^18
    require stor9[address(msg.sender)] > 0
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
       value stor9[address(msg.sender)] wei
         gas 3 * 10^6 wei
}

function _fallback() payable {
    require block.timestamp <= 419188 * 3600
    require totalSupply < 28000000 * 10^18
    if block.timestamp >= 419164 * 3600:
        require totalSupply < 28000000 * 10^18
    else:
        require msg.value >= 10^15
        require totalSupply < 1500000 * 10^18
    if msg.value:
        require msg.value
        require 500 * 10^6 * msg.value / msg.value == 500 * 10^6
    if 500 * 10^6 * msg.value / 100:
        require 500 * 10^6 * msg.value / 100
        require (100 * 500 * 10^6 * msg.value / 100) + (currentBonus * 500 * 10^6 * msg.value / 100) / 500 * 10^6 * msg.value / 100 == currentBonus + 100
    require totalSupply <= 28000000 * 10^18
    if (100 * 500 * 10^6 * msg.value / 100) + (currentBonus * 500 * 10^6 * msg.value / 100) <= -totalSupply + 28000000 * 10^18:
        if totalSupply < 100000 * 10^18:
            require stor9[address(msg.sender)] + msg.value >= msg.value
            stor9[address(msg.sender)] += msg.value
        require msg.value + totalAmount >= totalAmount
        totalAmount += msg.value
        require msg.value + currentAmount >= currentAmount
        currentAmount += msg.value
        require (100 * 500 * 10^6 * msg.value / 100) + (currentBonus * 500 * 10^6 * msg.value / 100) + totalSupply >= totalSupply
        totalSupply = (100 * 500 * 10^6 * msg.value / 100) + (currentBonus * 500 * 10^6 * msg.value / 100) + totalSupply
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (100 * 500 * 10^6 * msg.value / 100) + (currentBonus * 500 * 10^6 * msg.value / 100)
    else:
        if -totalSupply + 28000000 * 10^18:
            require -totalSupply + 28000000 * 10^18
            require (-100 * totalSupply) + 2800000000 * 10^18 / -totalSupply + 28000000 * 10^18 == 100
        require currentBonus + 100
        require msg.value > (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6
        call msg.sender with:
           value msg.value - ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6) wei
             gas 3 * 10^6 wei
        require ext_call.success
        if totalSupply < 100000 * 10^18:
            require stor9[address(msg.sender)] + ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6) >= (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6
            stor9[address(msg.sender)] += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6
        require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6) + totalAmount >= totalAmount
        totalAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6
        require ((-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6) + currentAmount >= currentAmount
        currentAmount += (-100 * totalSupply) + 2800000000 * 10^18 / currentBonus + 100 / 500 * 10^6
        require 28000000 * 10^18 >= totalSupply
        totalSupply = 28000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, -totalSupply + 28000000 * 10^18
    require ext_call.success
    if block.timestamp < 419164 * 3600:
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
