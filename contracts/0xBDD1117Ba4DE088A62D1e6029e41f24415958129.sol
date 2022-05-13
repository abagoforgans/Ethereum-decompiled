contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
mapping of uint256 returns;
uint256 serpenSegmentCount;
uint256 countdownDate;
address serpentHeadAddress;
array of address stor5;
array of struct investorsList;

function SerpenSegmentCount() {
    return serpenSegmentCount
}

function investorsList(uint256 arg1) {
    require arg1 < investorsList.length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'investorsList', 6) + 4)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'investorsList', 6) + 4].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'investorsList', 6) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return investorsList[arg1].field_0, 
           investorsList[arg1].field_256,
           investorsList[arg1].field_512,
           investorsList[arg1].field_768,
           Array(len=stor[(5 * arg1) + ('name', 'investorsList', 6) + 4].length, data=mem[128 len stor[(5 * arg1) + ('name', 'investorsList', 6) + 4].length])
}

function SerpentCountDown() {
    return countdownDate
}

function getParticipants() {
    return stor5.length
}

function getCountdownDate() {
    return countdownDate
}

function getReturns(address arg1) {
    return returns[address(arg1)]
}

function SerpentHead() {
    return serpentHeadAddress
}

function owner() {
    return owner
}

function sub_f978372a(?) {
    return returns[arg1]
}

function SerpentIsRunning() {
    return (block.timestamp < countdownDate)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function CollectReturns() {
    require block.timestamp > countdownDate
    require eth.balance(this.address) >= returns[address(msg.sender)]
    call msg.sender with:
       value returns[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    returns[address(msg.sender)] = 0
}

function NewSerpent(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > countdownDate
    serpenSegmentCount = 0
    countdownDate = arg1
    idx = 0
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        require returns[stor5[idx]] >= 0
        idx = idx + 1
        continue 
    call serpentHeadAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}

function Play(string arg1) payable {
    require msg.value > 0
    require msg.sender
    require block.timestamp < countdownDate
    require stor5.length
    idx = 0
    while idx < stor5.length:
        require returns[stor5[idx]] + (msg.value / stor5.length) >= returns[stor5[idx]]
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        returns[stor5[idx]] += msg.value / stor5.length
        idx = idx + 1
        continue 
    require serpenSegmentCount + 1 >= serpenSegmentCount
    serpenSegmentCount++
    require msg.value > 0
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        returns[address(msg.sender)] = 0
        stor5.length++
        stor5[stor5.length] = msg.sender
    investorsList.length++
    investorsList[investorsList.length].field_0 = msg.sender
    investorsList[investorsList.length].field_256 = msg.value
    investorsList[investorsList.length].field_512 = serpenSegmentCount
    investorsList[investorsList.length].field_768 = block.timestamp
    stor[sha3((5 * investorsList.length) + ('name', 'investorsList', 6) + 4)][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function _fallback() payable {
    require msg.value > 0
    require msg.sender
    require block.timestamp < countdownDate
    require stor5.length
    idx = 0
    while idx < stor5.length:
        require returns[stor5[idx]] + (msg.value / stor5.length) >= returns[stor5[idx]]
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        returns[stor5[idx]] += msg.value / stor5.length
        idx = idx + 1
        continue 
    require serpenSegmentCount + 1 >= serpenSegmentCount
    serpenSegmentCount++
    require msg.value > 0
    idx = 0
    s = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        returns[address(msg.sender)] = 0
        stor5.length++
        stor5[stor5.length] = msg.sender
    investorsList.length++
    investorsList[investorsList.length].field_0 = msg.sender
    investorsList[investorsList.length].field_256 = msg.value
    investorsList[investorsList.length].field_512 = serpenSegmentCount
    investorsList[investorsList.length].field_768 = block.timestamp
    investorsList[investorsList.length].field_1024 = 0
    investorsList[investorsList.length].field_1025 = 18
    investorsList[investorsList.length].field_1032 = 'Callback, No quote' / 256
    idx = 0
    while stor[(5 * investorsList.length) + ('name', 'investorsList', 6) + 4].length + 31 / 32 > idx:
        stor[idx + sha3((5 * investorsList.length) + ('name', 'investorsList', 6) + 4)].field_0 = 0
        idx = idx + 1
        continue 
}



}
