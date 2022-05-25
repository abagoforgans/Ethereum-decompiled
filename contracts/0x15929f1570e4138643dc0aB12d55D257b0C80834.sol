contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
mapping of struct stor1;
uint8 stor2;
address stor2; offset 8
uint256 weiRaised;
uint256 tokensSold;
array of struct stor5;
array of struct stor6;
uint256 startTime;
uint256 endTime;
address wallet_address;
uint256 capTokens;
uint256 minValue;
uint256 maxValue;
uint256 stor13;
uint8 round;
mapping of uint8 stor9929348265451764837644522120562;
mapping of uint8 stor1837497714814433476569169466944545592443235956;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function round() {
    return round
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(uint8(stor2.field_0))
}

function startTime() {
    return startTime
}

function maxValue() {
    return maxValue
}

function minValue() {
    return minValue
}

function capTokens() {
    return capTokens
}

function isAuthorized(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor1[address(arg1)][arg2].field_0)
}

function wallet_address() {
    return wallet_address
}

function getHighWater() {
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    return stor13
}

function setHighWater(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    stor13 = arg1
}

function setMinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    minValue = arg1
}

function setMaxPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    maxValue = arg1
}

function setCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if arg1 <= 0:
        revert with 0, 'Must have a valid token cap.'
    capTokens = arg1
}

function changeCompanyWallet(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if not arg1:
        revert with 0, 'Invalid wallet address.'
    wallet_address = arg1
}

function recoverEther() {
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if ext_call.success:
        emit EtherTransfer(eth.balance(this.address), this.address, msg.sender);
}

function setTimes(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if arg2 <= 0:
        revert with 0, 'Invalid duration.'
    startTime = arg1 + block.timestamp
    endTime = arg1 + block.timestamp + arg2
    emit SetPeriod(arg1 + block.timestamp, arg1 + block.timestamp + arg2);
}

function toggleAuthorization(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if arg1 == msg.sender:
        revert with 0, 'Cannot change own permissions.'
    if arg2 == sha3(0x52657075626c69637320507265736964656e74):
        if not stor1[address(arg1)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            stor1[address(arg1)][('name', 'stor7D53', 9929348265451764837644522120562)] = 0
    stor1[address(arg1)][arg2].field_0 = stor1[address(arg1)][arg2].field_8
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    require arg1
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6da6239b(?) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if stor6[address(arg1)].field_0 <= 0:
        revert with 0, 'No purchases of tokens found.'
    if stor6[address(arg1)].field_0:
        mem[128 len 32 * stor6[address(arg1)].field_0] = code.data[10919 len 32 * stor6[address(arg1)].field_0]
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        require idx < stor6[address(arg1)].field_0
        require idx < stor6[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx].field_0
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    return Array(len=stor6[address(arg1)].field_0, data=mem[128 len 32 * stor6[address(arg1)].field_0])
}

function getInvestments(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if stor6[address(arg1)].field_0 <= 0:
        revert with 0, 'No investments found.'
    if stor6[address(arg1)].field_0:
        mem[128 len 32 * stor6[address(arg1)].field_0] = code.data[10919 len 32 * stor6[address(arg1)].field_0]
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        require idx < stor6[address(arg1)].field_0
        require idx < stor6[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    return Array(len=stor6[address(arg1)].field_0, data=mem[128 len 32 * stor6[address(arg1)].field_0])
}

function getTokens(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    if stor6[address(arg1)].field_0 <= 0:
        revert with 0, 'No purchases of tokens found.'
    if stor6[address(arg1)].field_0:
        mem[128 len 32 * stor6[address(arg1)].field_0] = code.data[10919 len 32 * stor6[address(arg1)].field_0]
    idx = 0
    while idx < stor6[address(arg1)].field_0:
        require idx < stor6[address(arg1)].field_0
        require idx < stor6[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor6[address(arg1)][idx].field_512
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    return Array(len=stor6[address(arg1)].field_0, data=mem[128 len 32 * stor6[address(arg1)].field_0])
}

function pause() {
    if not stor0[1]:
        if uint8(stor2.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot operate in paused state.'
    else:
        require ext_code.size(stor0[1])
        call stor0[1].0x5c975abb with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Function cannot operate in paused state.'
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    emit Pause()
    if not stor0[1]:
        uint8(stor2.field_0) = 1
    else:
        require ext_code.size(stor0[1])
        call stor0[1].setPaused(bool arg1) with:
             gas gas_remaining wei
            args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function unpause() {
    if not stor0[1]:
        if not uint8(stor2.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function can only operate in paused state.'
    else:
        require ext_code.size(stor0[1])
        call stor0[1].0x5c975abb with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Function can only operate in paused state.'
    if not stor1[address(msg.sender)][('name', 'stor7D53', 9929348265451764837644522120562)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    emit Unpause()
    if not stor0[1]:
        uint8(stor2.field_0) = 0
    else:
        require ext_code.size(stor0[1])
        call stor0[1].setPaused(bool arg1) with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getInvestors() {
    if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
        if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
            revert with 0, 'Not authorized to access!'
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    if not stor0[1]:
        if uint8(stor2.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function cannot operate in paused state.'
        if not stor1[address(msg.sender)][sha3('Whitelisted Investor.')].field_0:
            if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
                revert with 0, 'Not authorized to access!'
        if msg.value < minValue:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Payment outside permitted bounds.'
        if msg.value > maxValue:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Payment outside permitted bounds.'
    else:
        require ext_code.size(stor0[1])
        call stor0[1].0x5c975abb with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'Function cannot operate in paused state.'
        if not stor1[address(msg.sender)][sha3('Whitelisted Investor.')].field_0:
            if not stor1[address(msg.sender)][('name', 'stor5265', 1837497714814433476569169466944545592443235956)]:
                revert with 0, 'Not authorized to access!'
        if msg.value < minValue:
            revert with 0, 'Payment outside permitted bounds.'
        if msg.value > maxValue:
            revert with 0, 'Payment outside permitted bounds.'
    ('le', 'callvalue', ('stor', ('name', 'maxValue', 12)))
    if eth.balance(this.address) >= stor13:
        call wallet_address with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        require ext_call.success
        emit EtherTransfer(eth.balance(this.address), this.address, wallet_address);
    if not msg.sender:
        revert with 0, 'Invalid investor address.'
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).ETHUSD() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'The Ether/U.S. Dollar exchange rate not been set yet.'
    if not stor6[address(msg.sender)].field_0:
        stor5.length++
        stor36B6[stor5.length] = msg.sender
    require ext_code.size(address(stor2.field_8))
    call address(stor2.field_8).ETHUSD() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value:
        require msg.value
        if ext_call.return_data[0] * msg.value / msg.value != ext_call.return_data[0]:
            revert with 0, 'Multiply in SafeMath caused overflow.'
    stor6[address(msg.sender)].field_0++
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_0 = ext_call.return_data[0]
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_256 = msg.value
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_512 = ext_call.return_data[0] * msg.value / 4
    stor6[address(msg.sender)][stor6[address(msg.sender)].field_0].field_766 = 0
    if msg.value + weiRaised < weiRaised:
        revert with 0, 'Addition in SafeMath caused overflow.'
    weiRaised += msg.value
    if (ext_call.return_data[0] * msg.value / 4) + tokensSold < tokensSold:
        revert with 0, 'Addition in SafeMath caused overflow.'
    tokensSold += ext_call.return_data[0] * msg.value / 4
    emit TokenPurchase(msg.value, ext_call.return_data[0] * msg.value / 4, msg.sender);
    if tokensSold > capTokens:
        revert with 0, 'Raised maximum allowable amount.'
}



}
