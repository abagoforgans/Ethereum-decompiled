contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint128 stor2; offset 160
address stor2;
uint256 stor3;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor2.field_160) = 0
    stor3 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    address(stor2.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[5362 len 7330], address(msg.sender)
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[375 len 4987]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address walletAddress;
uint256 cap;
uint256 startTime;
uint256 endTime;
uint256 weiRaised;
uint256 tokensMinted;
array of uint256 discountedRates;
array of uint256 crowsaleSlots;

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function crowdSaleOn() {
    return bool(uint8(stor2.field_160))
}

function weiRaised() {
    return weiRaised
}

function discountedRates(uint256 arg1) {
    require arg1 < discountedRates.length
    return discountedRates[arg1]
}

function wallet() {
    return walletAddress
}

function crowsaleSlots(uint256 arg1) {
    require arg1 < crowsaleSlots.length
    return crowsaleSlots[arg1]
}

function tokensMinted() {
    return tokensMinted
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function raiseInitialSupply(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7f4e4669 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return 1
}

function endCrowdsale() {
    require uint8(stor2.field_160)
    require msg.sender == owner
    endTime = block.timestamp
    if tokensMinted < cap:
        require tokensMinted <= cap
        require cap >= tokensMinted
        require cap <= cap
        require cap >= tokensMinted
        tokensMinted = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args owner, cap - tokensMinted / 10^18
        require ext_call.success
    Mask(96, 0, stor2.field_160) = 0
    return 1
}

function batchTransfers(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length == arg2.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + 260] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3badca25 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 260 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32]), (32 * arg1.length) + 96
    require ext_call.success
    return 1
}

function startCrowdsale(uint256 arg1, uint256 arg2, uint256 arg3, uint256[] arg4, uint256[] arg5) {
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require not uint8(stor2.field_160)
    require msg.sender == owner
    require arg3 > 0
    require arg4.length > 0
    require arg4.length == arg5.length
    require arg1 >= block.timestamp
    require arg2 > arg1
    cap = 10^18 * arg3
    startTime = arg1
    endTime = arg2
    Mask(96, 0, stor2.field_160) = 1
    weiRaised = 0
    tokensMinted = 0
    discountedRates.length = arg5.length
    if not arg5.length:
        idx = 0
        while discountedRates.length > idx:
            discountedRates[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 160
        while (32 * arg4.length) + (32 * arg5.length) + 160 > idx:
            discountedRates[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while discountedRates.length > idx:
            discountedRates[idx] = 0
            idx = idx + 1
            continue 
    crowsaleSlots.length = arg4.length
    if not arg4.length:
        idx = 0
        while crowsaleSlots.length > idx:
            crowsaleSlots[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg4.length) + 128 > idx:
            crowsaleSlots[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while crowsaleSlots.length > idx:
            crowsaleSlots[idx] = 0
            idx = idx + 1
            continue 
    return 1
}

function _fallback() payable {
    require uint8(stor2.field_160)
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require startTime <= block.timestamp
    require 0 < crowsaleSlots.length
    s = 0
    t = block.timestamp - startTime
    while t >= crowsaleSlots[s]:
        require s < crowsaleSlots.length
        require crowsaleSlots[s] <= t
        require s + 1 < crowsaleSlots.length
        mem[0] = 9
        s = s + 1
        t = t - crowsaleSlots[s]
        continue 
    require s < discountedRates.length
    require discountedRates[s]
    require 10^18 / discountedRates[s] > 0
    require 10^18 / discountedRates[s]
    require msg.value / 10^18 / discountedRates[s] > 0
    if msg.value / 10^18 / discountedRates[s]:
        require msg.value / 10^18 / discountedRates[s]
        require 10^18 * msg.value / 10^18 / discountedRates[s] / msg.value / 10^18 / discountedRates[s] == 10^18
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) >= tokensMinted
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) <= cap
    if msg.value / 10^18 / discountedRates[s]:
        require msg.value / 10^18 / discountedRates[s]
        require 10^18 * msg.value / 10^18 / discountedRates[s] / msg.value / 10^18 / discountedRates[s] == 10^18
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) >= tokensMinted
    tokensMinted += 10^18 * msg.value / 10^18 / discountedRates[s]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 10^18 / discountedRates[s]
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value / 10^18 / discountedRates[s], msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require uint8(stor2.field_160)
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require startTime <= block.timestamp
    require 0 < crowsaleSlots.length
    s = 0
    t = block.timestamp - startTime
    while t >= crowsaleSlots[s]:
        require s < crowsaleSlots.length
        require crowsaleSlots[s] <= t
        require s + 1 < crowsaleSlots.length
        mem[0] = 9
        s = s + 1
        t = t - crowsaleSlots[s]
        continue 
    require s < discountedRates.length
    require discountedRates[s]
    require 10^18 / discountedRates[s] > 0
    require 10^18 / discountedRates[s]
    require msg.value / 10^18 / discountedRates[s] > 0
    if msg.value / 10^18 / discountedRates[s]:
        require msg.value / 10^18 / discountedRates[s]
        require 10^18 * msg.value / 10^18 / discountedRates[s] / msg.value / 10^18 / discountedRates[s] == 10^18
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) >= tokensMinted
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) <= cap
    if msg.value / 10^18 / discountedRates[s]:
        require msg.value / 10^18 / discountedRates[s]
        require 10^18 * msg.value / 10^18 / discountedRates[s] / msg.value / 10^18 / discountedRates[s] == 10^18
    require tokensMinted + (10^18 * msg.value / 10^18 / discountedRates[s]) >= tokensMinted
    tokensMinted += 10^18 * msg.value / 10^18 / discountedRates[s]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value / 10^18 / discountedRates[s]
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value / 10^18 / discountedRates[s], msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
