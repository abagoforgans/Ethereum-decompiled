contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor0 = 1503970000
    stor1 = 419789 * 3600
    stor4 = 10^13
    stor5 = 250000 * 3600
    stor6 = 125 * 10^11
    stor7 = 2500 * 10^6
    stor8 = 16 * 10^12
    stor9 = 3750 * 10^6
    require not msg.value
    create contract with 0 wei
                    code: code.data[2726 len 4637]
    require create.new_address
    stor3 = address(create.new_address)
    stor2 = code.data[7375 len 20]
    return code.data[422 len 2304]
}



// =====================  Runtime code  =====================


uint256 start;
uint256 end;
address walletAddress;
address catAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function wallet() {
    return walletAddress
}

function start() {
    return start
}

function cat() {
    return catAddress
}

function end() {
    return end
}

function isRunning() {
    if block.timestamp >= start:
        if block.timestamp < end:
            require ext_code.size(catAddress)
            call catAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0] < stor9:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function _fallback() payable {
    require block.timestamp >= start
    require block.timestamp < end
    require ext_code.size(catAddress)
    call catAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < stor9
    mem[128] = 0
    require ext_code.size(catAddress)
    call catAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    mem[96] = ext_call.return_data[0]
    require ext_call.success
    mem[64] = 352
    mem[288] = 0
    mem[320] = 0
    mem[var15001] = 288
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[288] = 0
        mem[320] = 0
        mem[s + 32] = 288
        s = s + 32
        idx = idx - 1
        continue 
    _28 = mem[64]
    mem[64] = mem[64] + 96
    _29 = mem[64]
    mem[64] = mem[64] + 64
    mem[_29] = stor4
    mem[_29 + 32] = stor5
    mem[_28] = _29
    _30 = mem[64]
    mem[64] = mem[64] + 64
    mem[_30] = stor6
    mem[_30 + 32] = stor7
    mem[_28 + 32] = _30
    _31 = mem[64]
    mem[64] = mem[64] + 64
    mem[_31] = stor8
    mem[_31 + 32] = stor9
    mem[_28 + 64] = _31
    idx = 0
    while uint8(idx) < 2:
        if ext_call.return_data[0] < mem[mem[(32 * uint8(idx)) + _28] + 32]:
            if msg.value >= mem[mem[(32 * uint8(idx)) + _28]]:
                require mem[mem[(32 * uint8(idx)) + _28]]
                if ext_call.return_data[0] <= mem[mem[(32 * uint8(idx)) + _28] + 32]:
                    if msg.value / mem[mem[(32 * uint8(idx)) + _28]] > mem[mem[(32 * uint8(idx)) + _28] + 32] - ext_call.return_data[0]:
                        if (mem[mem[(32 * uint8(idx)) + _28] + 32] * mem[mem[(32 * uint8(idx)) + _28]]) - (ext_call.return_data[0] * mem[mem[(32 * uint8(idx)) + _28]]) <= msg.value:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        if msg.value / mem[mem[(32 * uint8(idx)) + _28]] * mem[mem[(32 * uint8(idx)) + _28]] <= msg.value:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                else:
                    if msg.value / mem[mem[(32 * uint8(idx)) + _28]] > 0:
                        if 0 <= msg.value:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
                    else:
                        if msg.value / mem[mem[(32 * uint8(idx)) + _28]] * mem[mem[(32 * uint8(idx)) + _28]] <= msg.value:
                            idx = idx + 1
                            continue 
                        else:
                            idx = idx + 1
                            continue 
            else:
                idx = idx + 1
                continue 
        else:
            idx = idx + 1
            continue 
    require stor8
    require msg.value / stor8 > 0
    require ext_code.size(catAddress)
    call catAddress.emit(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (msg.value / stor8)
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(catAddress)
    call catAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / stor8
    require ext_call.success
    require ext_call.return_data[0]
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
