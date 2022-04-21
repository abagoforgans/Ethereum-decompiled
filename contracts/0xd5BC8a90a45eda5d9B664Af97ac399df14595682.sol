contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
uint8 stor7; offset 176
uint16 stor7; offset 160
address stor7;

function _fallback() payable {
    uint16(stor7.field_160) = 0
    uint8(stor7.field_176) = 1
    require not msg.value
    require code.data[16258 len 32] >= block.timestamp
    require code.data[16290 len 32] >= code.data[16258 len 32]
    require code.data[16322 len 32] > 0
    require code.data[16398 len 20]
    create contract with 0 wei
                    code: code.data[10759 len 5467]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[16258 len 32]
    stor2 = code.data[16290 len 32]
    stor4 = code.data[16322 len 32]
    stor3 = code.data[16398 len 20]
    require code.data[16354 len 32] > 0
    stor6 = code.data[16354 len 32]
    address(stor7.field_0) = msg.sender
    address(stor7.field_0) = code.data[16238 len 20]
    require address(stor7.field_0) == msg.sender
    require not uint8(stor7.field_160)
    uint8(stor7.field_160) = 1
    emit Pause()
    return code.data[627 len 10132]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint128 stor7; offset 176
uint128 stor7; offset 168
address owner;
array of address sub_e9fccddc;
mapping of uint256 deposited;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor7.field_160))
}

function startTime() {
    return startTime
}

function sub_8a5c016d(?) {
    return sub_e9fccddc.length
}

function owner() {
    return owner
}

function sub_c9a418dc(?) {
    return bool(uint8(stor7.field_168))
}

function deposited(address arg1) {
    return deposited[arg1]
}

function sub_e9fccddc(?) {
    require arg1 < sub_e9fccddc.length
    return address(sub_e9fccddc[arg1])
}

function sub_edbc7c0a(?) {
    return bool(uint8(stor7.field_176))
}

function token() {
    return tokenAddress
}

function changeCap(uint256 arg1) {
    require owner == msg.sender
    require arg1
    cap = arg1
}

function changeRate(uint256 arg1) {
    require owner == msg.sender
    require arg1
    rate = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function changeEndTime(uint256 arg1) {
    require owner == msg.sender
    require arg1
    endTime = arg1
}

function changeStartTime(uint256 arg1) {
    require owner == msg.sender
    require arg1
    startTime = arg1
}

function changeWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function sub_5a07bb50(?) {
    require owner == msg.sender
    Mask(88, 0, stor7.field_168) = Mask(88, 0, not uint8(stor7.field_168))
}

function sub_8ef17676(?) {
    require owner == msg.sender
    Mask(80, 0, stor7.field_176) = Mask(80, 0, not uint8(stor7.field_176))
}

function unpause() {
    require owner == msg.sender
    require uint8(stor7.field_160)
    uint8(stor7.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor7.field_160)
    uint8(stor7.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f05491a9(?) {
    require owner == msg.sender
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.setUpgradeMaster(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function refund() {
    require not uint8(stor7.field_176)
    require deposited[address(msg.sender)] > 0
    deposited[address(msg.sender)] = 0
    call walletAddress with:
       value deposited[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(deposited[address(msg.sender)], msg.sender);
}

function sub_16538e05(?) {
    require owner == msg.sender
    require not uint8(stor7.field_168)
    sub_e9fccddc.length++
    if not sub_e9fccddc.length <= sub_e9fccddc.length + 1:
        idx = sub_e9fccddc.length + 1
        while sub_e9fccddc.length > idx:
            uint256(sub_e9fccddc[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_e9fccddc[sub_e9fccddc.length]) = arg1
    if not arg2:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 10^18 * arg2
        require ext_call.success
        if ext_call.return_data[0]:
    else:
        if arg2:
            if 10^18 * arg2 / arg2 == 10^18:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^18 * arg2
                require ext_call.success
                if ext_call.return_data[0]:
    revert
}

function _fallback() payable {
    require not uint8(stor7.field_160)
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require rate * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require msg.value + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
    deposited[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require not uint8(stor7.field_160)
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require rate * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require msg.value + deposited[address(msg.sender)] >= deposited[address(msg.sender)]
    deposited[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function distributePreBuyersRewards(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require not uint8(stor7.field_168)
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not mem[(32 * idx) + (32 * arg1.length) + 160]:
            require idx < arg1.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _34
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _34
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require idx < arg1.length
            require idx < arg2.length
            _52 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _52
            emit TransferredPreBuyersReward(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _52);
        else:
            require mem[(32 * idx) + (32 * arg1.length) + 160]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] / mem[(32 * idx) + (32 * arg1.length) + 160] == 10^18
            require idx < arg1.length
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _34
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _34
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            require idx < arg1.length
            require idx < arg2.length
            _58 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _58
            emit TransferredPreBuyersReward(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _58);
        s = 10^18 * _34
        idx = idx + 1
        continue 
}



}
