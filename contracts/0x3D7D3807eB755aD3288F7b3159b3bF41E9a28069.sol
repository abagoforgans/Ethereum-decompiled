contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
address stor1;
address stor2;
address stor3;
uint32 stor5;

function _fallback() {
    stor0[address(msg.sender)] = 1
    require code.data[6943 len 32] > block.timestamp
    require code.data[7019 len 20]
    require code.data[6943 len 32] < block.timestamp + (2160 * 24 * 3600)
    create contract with 0 wei
                    code: code.data[3585 len 1434]
    require create.new_address
    stor1 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).giveAccess(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    create contract with 0 wei
                    code: code.data[5019 len 1924], block.timestamp + (2160 * 24 * 3600), address(code.data[7007 len 32])
    require create.new_address
    stor2 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).giveAccess(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor5 = uint32(code.data[6943 len 32])
    stor3 = address(code.data[6975 len 32])
    return code.data[624 len 2961]
}



// =====================  Runtime code  =====================


#
#  - sub_f239f536(?)
#  - _fallback()
#
mapping of uint8 stor0;
address ticketHolderAddress;
address fundAddress;
address stor3;
array of uint256 randomNumbers;
uint32 endDate;

function randomNumbers(uint256 arg1) {
    require arg1 < randomNumbers.length
    return randomNumbers[arg1]
}

function randomCount() {
    return randomNumbers.length
}

function ticketHolder() {
    return ticketHolderAddress
}

function hasAccess() {
    return bool(stor0[address(msg.sender)])
}

function fund() {
    return fundAddress
}

function endDate() {
    return endDate
}

function isEnded() {
    return (block.timestamp > endDate)
}

function giveAccess(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 1
}

function removeAccess(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
}

function finish() {
    require stor0[address(msg.sender)]
    if endDate > uint32(block.timestamp):
        endDate = uint32(block.timestamp)
}

function refund() {
    require ext_code.size(fundAddress)
    call fundAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function getRandomPrice() {
    require ext_code.size(stor3)
    call stor3.getRandomPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^6
    require ext_call.success
    return ext_call.return_data[0]
}

function random_callback(bytes32 arg1) {
    require stor3 == msg.sender
    randomNumbers.length++
    if not randomNumbers.length <= randomNumbers.length + 1:
        idx = randomNumbers.length + 1
        while randomNumbers.length > idx:
            randomNumbers[idx] = 0
            idx = idx + 1
            continue 
    randomNumbers[randomNumbers.length] = arg1
}

function isPayed(uint256 arg1) {
    require ext_code.size(ticketHolderAddress)
    call ticketHolderAddress.getTickets(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(fundAddress)
    call fundAddress.isPayed(address rg1) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0])
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function payout(uint256 arg1, uint256 arg2) {
    require stor0[address(msg.sender)]
    require block.timestamp > endDate
    require ext_code.size(ticketHolderAddress)
    call ticketHolderAddress.getTickets(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(fundAddress)
    call fundAddress.pay(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), arg2
    require ext_call.success
}

function requestRandom() payable {
    require stor0[address(msg.sender)]
    require ext_code.size(stor3)
    call stor3.getRandomPrice(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args 10^6
    require ext_call.success
    require msg.value >= ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.0x63d4d870 with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 9710 wei
        args this.address, 0, 0, 10^6
    require ext_call.success
    if msg.value - ext_call.return_data[0] > 0:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTickets(uint256 arg1) payable {
    require block.timestamp <= endDate
    require msg.value >= 10^17
    require ext_code.size(ticketHolderAddress)
    call ticketHolderAddress.issueTickets(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % 10^17) / 10^17, arg1
    require ext_call.success
    require ext_code.size(fundAddress)
    call fundAddress.deposit(address rg1) with:
       value msg.value - (msg.value % 10^17) wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    if msg.value % 10^17:
        call msg.sender with:
           value msg.value % 10^17 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function buyTicketsFor(address arg1, uint256 arg2) payable {
    require block.timestamp <= endDate
    require msg.value >= 10^17
    require ext_code.size(ticketHolderAddress)
    call ticketHolderAddress.issueTickets(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value - (msg.value % 10^17) / 10^17, arg2
    require ext_call.success
    require ext_code.size(fundAddress)
    call fundAddress.deposit(address rg1) with:
       value msg.value - (msg.value % 10^17) wei
         gas gas_remaining - 9710 wei
        args arg1
    require ext_call.success
    if msg.value % 10^17:
        call msg.sender with:
           value msg.value % 10^17 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
