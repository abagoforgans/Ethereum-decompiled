contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
array of address stor9;
array of uint256 stor10;
address stor11;

function _fallback() payable {
    stor1 = 10^6
    require not msg.value
    mem[96 len -4619] = code.data[5512 len -4619]
    mem[64] = -4523
    require mem[mem[352] + 96] == mem[mem[384] + 96]
    require mem[mem[384] + 96] <= 4
    idx = 0
    s = 0
    while uint8(idx) < mem[mem[384] + 96]:
        require uint8(idx) < mem[mem[384] + 96]
        require mem[(32 * uint8(idx)) + mem[384] + 128] >= 0
        require uint8(idx) < mem[mem[384] + 96]
        require mem[(32 * uint8(idx)) + mem[384] + 128] <= 10^6
        require uint8(idx) < mem[mem[384] + 96]
        require mem[(32 * uint8(idx)) + mem[384] + 128] + s >= s
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + mem[384] + 128] + s
        continue 
    require _37 * None >= 0
    require _37 * None <= 10^6
    require mem[160] <= mem[192]
    require mem[224] <= mem[256]
    stor11 = mem[108 len 20]
    stor2 = mem[128]
    stor3 = mem[160]
    stor4 = mem[192]
    stor5 = mem[224]
    stor6 = mem[256]
    stor7 = mem[288]
    stor8 = mem[320]
    stor0 = 0
    stor9.length = mem[mem[352] + 96]
    mem[0] = 9
    if not mem[mem[352] + 96]:
        idx = 0
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[352] + 128
        while mem[352] + (32 * mem[mem[352] + 96]) + 128 > idx:
            stor9[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[352] + 96]) + 31) >> 5
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor10.length = mem[mem[384] + 96]
    if not mem[mem[384] + 96]:
        idx = 0
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[384] + 128
        while mem[384] + (32 * mem[mem[384] + 96]) + 128 > idx:
            stor10[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[384] + 96]) + 31) >> 5
        while stor10.length > idx:
            stor10[idx] = 0
            idx = idx + 1
            continue 
    return code.data[893 len 4619]
}



// =====================  Runtime code  =====================


uint8 state;
uint256 RATE_FACTOR;
uint256 startTime;
uint256 minDuration;
uint256 maxDuration;
uint256 softCap;
uint256 hardCap;
uint256 discountRate;
uint256 amountPower;
array of address milestoneRecipients;
array of uint256 milestoneShares;
address controllerAddr;
address powerAddr;
uint256 stor12;
address nutzAddr;
uint256 stor13;
uint256 initialReserve;
uint256 initialSupply;

function milestoneShares(uint256 arg1) {
    require arg1 < milestoneShares.length
    return milestoneShares[arg1]
}

function nutzAddr() {
    return address(nutzAddr)
}

function initialSupply() {
    return initialSupply
}

function powerAddr() {
    return address(powerAddr)
}

function milestoneRecipients(uint256 arg1) {
    require arg1 < milestoneRecipients.length
    return milestoneRecipients[arg1]
}

function minDuration() {
    return minDuration
}

function maxDuration() {
    return maxDuration
}

function RATE_FACTOR() {
    return RATE_FACTOR
}

function startTime() {
    return startTime
}

function amountPower() {
    return amountPower
}

function softCap() {
    return softCap
}

function state() {
    require state <= 4
    return state
}

function discountRate() {
    return discountRate
}

function initialReserve() {
    return initialReserve
}

function controllerAddr() {
    return controllerAddr
}

function hardCap() {
    return hardCap
}

function _fallback() payable {
    revert
}

function stopCollection() {
    require state <= 4
    require state == 1
    require initialReserve <= eth.balance(address(nutzAddr))
    require maxDuration + startTime >= startTime
    if block.timestamp > maxDuration + startTime:
        if eth.balance(address(nutzAddr)) - initialReserve < softCap:
            state = 3
        else:
            state = 2
    else:
        require minDuration + startTime >= startTime
        require block.timestamp > minDuration + startTime
        require eth.balance(address(nutzAddr)) - initialReserve >= hardCap
        state = 2
}

function completeFailed() {
    require state <= 4
    require state == 3
    require ext_code.size(controllerAddr)
    call controllerAddr.0x753ed1bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0xd726755b with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0x1785f53c with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    state = 4
}

function startCollection() {
    require state <= 4
    require not state
    require block.timestamp > startTime
    require ext_code.size(controllerAddr)
    call controllerAddr.0x48594f43 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
    require ext_code.size(controllerAddr)
    call controllerAddr.nutzAddr() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
    require ext_code.size(controllerAddr)
    call controllerAddr.0xa54b2a73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0x1e93c209 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0xbabd7012 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] >= 0
    initialSupply = 3 * ext_call.return_data[0]
    initialReserve = eth.balance(address(nutzAddr))
    require ext_code.size(controllerAddr)
    call controllerAddr.0x753ed1bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require discountRate * ext_call.return_data[0] / ext_call.return_data[0] == discountRate
    require RATE_FACTOR
    require ext_code.size(controllerAddr)
    call controllerAddr.0x6e596aef with:
         gas gas_remaining - 710 wei
        args (discountRate * ext_call.return_data[0] / RATE_FACTOR)
    require ext_call.success
    state = 1
}

function completeClosed() {
    require state <= 4
    require state == 2
    require ext_code.size(controllerAddr)
    call controllerAddr.0x753ed1bd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require RATE_FACTOR * ext_call.return_data[0] / ext_call.return_data[0] == RATE_FACTOR
    require discountRate
    require ext_code.size(controllerAddr)
    call controllerAddr.0x6e596aef with:
         gas gas_remaining - 710 wei
        args (RATE_FACTOR * ext_call.return_data[0] / discountRate)
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0xa54b2a73 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0x1e93c209 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0xbabd7012 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] >= 0
    require initialSupply <= 3 * ext_call.return_data[0]
    require ext_code.size(controllerAddr)
    call controllerAddr.0x7a91d5f9 with:
         gas gas_remaining - 710 wei
        args (3 * ext_call.return_data[0]) - initialSupply, amountPower
    require ext_call.success
    require ext_code.size(address(powerAddr))
    call address(powerAddr).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(controllerAddr)
    call controllerAddr.0x5c693657 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require initialReserve <= eth.balance(address(nutzAddr))
    s = 0
    idx = 0
    while idx < milestoneRecipients.length:
        require idx < milestoneShares.length
        if eth.balance(address(nutzAddr)) - initialReserve:
            require eth.balance(address(nutzAddr)) - initialReserve
            require (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / eth.balance(address(nutzAddr)) - initialReserve == milestoneShares[idx]
        require RATE_FACTOR
        require idx < milestoneRecipients.length
        mem[0] = 9
        mem[96] = 0x422dabac00000000000000000000000000000000000000000000000000000000
        mem[100] = (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR
        mem[132] = milestoneRecipients[idx]
        require ext_code.size(controllerAddr)
        call controllerAddr.0x422dabac with:
             gas gas_remaining - 710 wei
            args (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR, milestoneRecipients[idx]
        require ext_call.success
        s = (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR
        idx = idx + 1
        continue 
    require ext_code.size(controllerAddr)
    call controllerAddr.0x1785f53c with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    state = 4
}

function tick() {
    require state <= 4
    require state <= 4
    if not state:
        require not state
        require block.timestamp > startTime
        require ext_code.size(controllerAddr)
        call controllerAddr.0x48594f43 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor12) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor12))
        require ext_code.size(controllerAddr)
        call controllerAddr.nutzAddr() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor13) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor13))
        require ext_code.size(controllerAddr)
        call controllerAddr.0xa54b2a73 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(controllerAddr)
        call controllerAddr.0x1e93c209 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(controllerAddr)
        call controllerAddr.0xbabd7012 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_call.return_data[0] >= 0
        initialSupply = 3 * ext_call.return_data[0]
        initialReserve = eth.balance(address(nutzAddr))
        require ext_code.size(controllerAddr)
        call controllerAddr.0x753ed1bd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require discountRate * ext_call.return_data[0] / ext_call.return_data[0] == discountRate
        require RATE_FACTOR
        require ext_code.size(controllerAddr)
        call controllerAddr.0x6e596aef with:
             gas gas_remaining - 710 wei
            args (discountRate * ext_call.return_data[0] / RATE_FACTOR)
        require ext_call.success
        state = 1
    else:
        require state <= 4
        if state == 1:
            require state == 1
            require initialReserve <= eth.balance(address(nutzAddr))
            require maxDuration + startTime >= startTime
            if block.timestamp > maxDuration + startTime:
                if eth.balance(address(nutzAddr)) - initialReserve < softCap:
                    state = 3
                else:
                    state = 2
            else:
                require minDuration + startTime >= startTime
                require block.timestamp > minDuration + startTime
                require eth.balance(address(nutzAddr)) - initialReserve >= hardCap
                state = 2
        else:
            require state <= 4
            if state == 3:
                require state == 3
                require ext_code.size(controllerAddr)
                call controllerAddr.0x753ed1bd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(controllerAddr)
                call controllerAddr.0xd726755b with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0]
                require ext_call.success
            else:
                require state == 2
                require state <= 4
                require state == 2
                require ext_code.size(controllerAddr)
                call controllerAddr.0x753ed1bd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_call.return_data[0]
                    require RATE_FACTOR * ext_call.return_data[0] / ext_call.return_data[0] == RATE_FACTOR
                require discountRate
                require ext_code.size(controllerAddr)
                call controllerAddr.0x6e596aef with:
                     gas gas_remaining - 710 wei
                    args (RATE_FACTOR * ext_call.return_data[0] / discountRate)
                require ext_call.success
                require ext_code.size(controllerAddr)
                call controllerAddr.0xa54b2a73 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(controllerAddr)
                call controllerAddr.0x1e93c209 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(controllerAddr)
                call controllerAddr.0xbabd7012 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                require ext_call.return_data[0] >= 0
                require initialSupply <= 3 * ext_call.return_data[0]
                require ext_code.size(controllerAddr)
                call controllerAddr.0x7a91d5f9 with:
                     gas gas_remaining - 710 wei
                    args (3 * ext_call.return_data[0]) - initialSupply, amountPower
                require ext_call.success
                require ext_code.size(address(powerAddr))
                call address(powerAddr).0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(controllerAddr)
                call controllerAddr.0x5c693657 with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0]
                require ext_call.success
                require initialReserve <= eth.balance(address(nutzAddr))
                s = 0
                idx = 0
                while idx < milestoneRecipients.length:
                    require idx < milestoneShares.length
                    if eth.balance(address(nutzAddr)) - initialReserve:
                        require eth.balance(address(nutzAddr)) - initialReserve
                        require (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / eth.balance(address(nutzAddr)) - initialReserve == milestoneShares[idx]
                    require RATE_FACTOR
                    require idx < milestoneRecipients.length
                    mem[0] = 9
                    mem[96] = 0x422dabac00000000000000000000000000000000000000000000000000000000
                    mem[100] = (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR
                    mem[132] = milestoneRecipients[idx]
                    require ext_code.size(controllerAddr)
                    call controllerAddr.0x422dabac with:
                         gas gas_remaining - 710 wei
                        args (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR, milestoneRecipients[idx]
                    require ext_call.success
                    s = (eth.balance(address(nutzAddr)) * milestoneShares[idx]) - (initialReserve * milestoneShares[idx]) / RATE_FACTOR
                    idx = idx + 1
                    continue 
            require ext_code.size(controllerAddr)
            call controllerAddr.0x1785f53c with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            state = 4
}



}
