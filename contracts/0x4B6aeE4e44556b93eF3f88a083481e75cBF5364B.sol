contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
mapping of uint256 numbers;
uint256 price;
uint8 stor4;
uint256 numApplicants;
uint256 amount;
uint256 winningNumber;
uint256 winners;
uint256 prize;
uint256 timestamp;
array of struct stor11;
address tokenAddress;

function ended() {
    return bool(stor4)
}

function numApplicants() {
    return numApplicants
}

function winningNumber() {
    return winningNumber
}

function owner() {
    return owner
}

function price() {
    return price
}

function winners() {
    return winners
}

function amount() {
    return amount
}

function timestamp() {
    return timestamp
}

function numbers(uint256 arg1) {
    return numbers[arg1]
}

function prize() {
    return prize
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function allowance(address arg1, address arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function purchase(uint256 arg1) {
    require not stor4
    require arg1 >= 0
    require arg1 <= 99
    numbers[arg1]++
    numApplicants++
    address(stor1[stor5].field_0) = msg.sender
    stor1[stor5].field_256 = arg1
    amount += price
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function reset() {
    require msg.sender == owner
    require stor4
    s = 0
    idx = 0
    while idx < numApplicants:
        mem[0] = idx
        mem[32] = 1
        address(stor1[idx].field_0) = 0
        stor1[idx].field_256 = 0
        s = sha3(idx, 1)
        idx = idx + 1
        continue 
    idx = 0
    while idx < 100:
        mem[0] = idx
        mem[32] = 2
        numbers[idx] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        address(stor11[idx].field_0) = 0
        stor11.length--
        if stor11.length > stor11.length - 1:
            mem[0] = 11
            s = stor11.length + sha3(11) - 1
            while sha3(11) + stor11.length > s:
                stor[s] = 0
                s = s + 1
                continue 
        idx = idx + 1
        continue 
    numApplicants = 0
    amount = 0
    winningNumber = 0
    winners = 0
    prize = 0
    timestamp = 0
    stor4 = 0
}

function draw() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    timestamp = block.timestamp
    winningNumber = timestamp % 100
    if 0 == amount:
        prize = 0
    else:
        require amount
        require 70 * amount / amount == 70
        prize = 70 * amount / 100
    if not numbers[stor7]:
        return 0
    winners = numbers[stor7]
    require numbers[stor7]
    prize = prize / numbers[stor7]
    idx = 0
    while idx < numApplicants:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx].field_256 == winningNumber:
            mem[32] = 1
            stor11.length++
            mem[0] = 11
            address(stor11[stor11.length].field_0) = address(stor1[idx].field_0)
        idx = idx + 1
        continue 
    if not stor11.length:
        require ext_code.size(tokenAddress)
        call tokenAddress.airdrop(address[] arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 64, prize / 100 * 10^6, stor11.length
    else:
        mem[196] = address(stor11.field_0)
        idx = 196
        s = 0
        while (32 * stor11.length) + 196 > idx + 32:
            mem[idx + 32] = address(stor11[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.airdrop(address[] arg1, uint256 arg2) with:
             gas gas_remaining wei
            args Array(len=stor11.length, data=mem[196 len 32 * stor11.length]), prize / 100 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
