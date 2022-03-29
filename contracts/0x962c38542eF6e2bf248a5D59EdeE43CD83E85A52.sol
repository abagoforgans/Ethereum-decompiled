contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor6;

function _fallback() payable {
    stor6 = 1000
    require not msg.value
    stor0 = msg.sender
    stor1 = msg.sender
    stor2 = 0x2a650356bd894370cc1d6aba71b36c0ad6b3dc18
    require ext_code.size(0x2a650356bd894370cc1d6aba71b36c0ad6b3dc18)
    call 0x2a650356bd894370cc1d6aba71b36c0ad6b3dc18.0x313ce567 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor3 = 10^ext_call.return_data[31 len 1]
    return code.data[221 len 5494]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
array of struct dividendInfo;
address gameAddress;
uint256 tokensNeededToGetPayment;

function tokensNeededToGetPayment() {
    return tokensNeededToGetPayment
}

function getDividendInfo(uint256 arg1) {
    require arg1 < dividendInfo.length
    return dividendInfo[arg1].field_0, dividendInfo[arg1].field_256, bool(dividendInfo[arg1].field_512)
}

function dividendCount() {
    return dividendInfo.length
}

function gameAddress() {
    return gameAddress
}

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function changeManager(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor1 = arg1
}

function changeDeveloper(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor0 = arg1
}

function changeTokensLimit(uint256 arg1) {
    require stor0 == msg.sender
    tokensNeededToGetPayment = arg1
}

function send_DividendToAddress(address arg1, uint256 arg2) {
    if stor1 == msg.sender:
        if arg2 >= 30000 * block.gasprice:
            call arg1 with:
               value arg2 - (30000 * block.gasprice) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if stor0 == msg.sender:
            if arg2 >= 30000 * block.gasprice:
                call arg1 with:
                   value arg2 - (30000 * block.gasprice) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert 
}

function SetAllPaymentsSent(uint256 arg1) {
    if stor1 == msg.sender:
        if arg1 < dividendInfo.length:
            dividendInfo[arg1].field_512 = 1
            call stor1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if stor0 == msg.sender:
            if arg1 < dividendInfo.length:
                dividendInfo[arg1].field_512 = 1
                call stor1 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert 
}

function _fallback() payable {
    require ext_code.size(stor2)
    call stor2.gameListOf(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if gameAddress:
        require gameAddress == msg.sender
    else:
        gameAddress = msg.sender
    if dividendInfo.length > 0:
        require dividendInfo.length - 1 < dividendInfo.length
        require dividendInfo[dividendInfo.length].field_0
    dividendInfo.length++
    if not dividendInfo.length <= dividendInfo.length + 1:
        idx = (3 * dividendInfo.length) + 3
        while 3 * dividendInfo.length > idx:
            dividendInfo[idx].field_0 = 0
            dividendInfo[idx].field_256 = 0
            dividendInfo[idx].field_512 = 0
            idx = idx + 3
            continue 
    dividendInfo[dividendInfo.length].field_0 = msg.value
    dividendInfo[dividendInfo.length].field_256 = block.number
    dividendInfo[dividendInfo.length].field_512 = 0
}

function get_CountAllHolderForProfit() {
    require ext_code.size(stor2)
    call stor2.getCountHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 0
    u = 0
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = s
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require stor3
        if 2 * ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = ext_call.return_data[0]
        idx = idx + 1
        u = u + 1
        continue 
    require ext_code.size(stor2)
    call stor2.getCountTempHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    v = 0
    idx = 0
    v = u
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemTempHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            s = s
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        require stor3
        if ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        v = ext_call.return_data[0]
        idx = idx + 1
        v = v + 1
        continue 
    return v
}

function get_CountProfitsToken() {
    require ext_code.size(stor2)
    call stor2.getCountHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 0
    u = 0
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = s
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require stor3
        if 2 * ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = ext_call.return_data[0]
        idx = idx + 1
        u = u + (2 * ext_call.return_data[0])
        continue 
    require ext_code.size(stor2)
    call stor2.getCountTempHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    v = 0
    idx = 0
    v = u
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemTempHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            s = s
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        require stor3
        if ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        v = ext_call.return_data[0]
        idx = idx + 1
        v = ext_call.return_data[0] + v
        continue 
    return v
}

function get_HoldersProfit(uint256 arg1, address arg2) {
    if not arg2:
        return 0
    if dividendInfo.length <= 0:
        return 0
    if arg1 >= dividendInfo.length:
        return 0
    require ext_code.size(stor2)
    call stor2.tempTokensBalanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    require stor3
    if 2 * ext_call.return_data[0] / stor3 <= tokensNeededToGetPayment:
        return 0
    require ext_code.size(stor2)
    call stor2.getCountHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 0
    u = 0
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = s
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require stor3
        if 2 * ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            idx = idx + 1
            u = u
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = ext_call.return_data[0]
        idx = idx + 1
        u = u + (2 * ext_call.return_data[0])
        continue 
    require ext_code.size(stor2)
    call stor2.getCountTempHolders() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    s = 0
    t = 0
    v = 0
    idx = 0
    v = u
    while idx < ext_call.return_data[0]:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(stor2)
        call stor2.getItemTempHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            s = s
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        require stor3
        if ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            v = ext_call.return_data[0]
            idx = idx + 1
            v = v
            continue 
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        v = ext_call.return_data[0]
        idx = idx + 1
        v = ext_call.return_data[0] + v
        continue 
    require arg1 < dividendInfo.length
    require v
    return ((ext_call.return_data[0] * dividendInfo[arg1].field_0) + (ext_call.return_data[0] * dividendInfo[arg1].field_0) / v)
}

function get_Holders(uint256 arg1) {
    mem[64] = 2144
    mem[96] = 0
    mem[128 len 2016] = 0
    mem[2176] = 0
    require ext_code.size(stor2)
    call stor2.getCountHolders() with:
         gas gas_remaining - 50 wei
    mem[2144] = ext_call.return_data[0]
    require ext_call.success
    s = 0
    t = 0
    u = 0
    u = 0
    v = 0
    idx = arg1
    while idx < ext_call.return_data[0]:
        mem[2176] = 0
        mem[2148] = idx
        require ext_code.size(stor2)
        call stor2.getItemHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = t
            u = ext_call.return_data[0]
            u = u
            v = idx + 1
            idx = idx + 1
            continue 
        mem[2176] = 0
        mem[2148] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            s = s
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            u = u
            v = idx + 1
            idx = idx + 1
            continue 
        mem[2176] = 0
        mem[2148] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        require stor3
        if 2 * ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            u = u
            v = idx + 1
            idx = idx + 1
            continue 
        require uint8(u) < 64
        mem[(32 * uint8(u)) + 96] = address(ext_call.return_data[0])
        if uint8(u + 1) != 64:
            s = ext_call.return_data[0]
            t = ext_call.return_data[0]
            u = ext_call.return_data[0]
            u = u + 1
            v = idx + 1
            idx = idx + 1
            continue 
        mem[2144] = mem[96]
        t = 160
        u = 2208
        s = 1984
        while s > 32:
            mem[u + 32] = mem[t + 32]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        return mem[96], mem[128], mem[160], mem[2240 len 1952], idx + 1
    mem[2176] = 0
    require ext_code.size(stor2)
    call stor2.getCountTempHolders() with:
         gas gas_remaining - 50 wei
    mem[2144] = ext_call.return_data[0]
    require ext_call.success
    t = 0
    w = 0
    x = 0
    s = idx - ext_call.return_data[0]
    x = u
    y = v
    while s < ext_call.return_data[0]:
        mem[2176] = 0
        mem[2148] = s
        require ext_code.size(stor2)
        call stor2.getItemTempHolders(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args s
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            t = t
            w = w
            x = ext_call.return_data[0]
            s = s + 1
            x = x
            y = idx + s + 1
            continue 
        mem[2176] = 0
        mem[2148] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            t = t
            w = ext_call.return_data[0]
            x = ext_call.return_data[0]
            s = s + 1
            x = x
            y = idx + s + 1
            continue 
        mem[2176] = 0
        mem[2148] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        call stor2.tempTokensBalanceOf(address rg1) with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0])
        mem[2144] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            t = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = ext_call.return_data[0]
            s = s + 1
            x = x
            y = idx + s + 1
            continue 
        require stor3
        if ext_call.return_data[0] / stor3 < tokensNeededToGetPayment:
            t = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = ext_call.return_data[0]
            s = s + 1
            x = x
            y = idx + s + 1
            continue 
        require uint8(x) < 64
        mem[(32 * uint8(x)) + 96] = address(ext_call.return_data[0])
        if uint8(x + 1) != 64:
            t = ext_call.return_data[0]
            w = ext_call.return_data[0]
            x = ext_call.return_data[0]
            s = s + 1
            x = x + 1
            y = idx + s + 1
            continue 
        mem[2144] = mem[96]
        u = 160
        v = 2208
        t = 1984
        while t > 32:
            mem[v + 32] = mem[u + 32]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        return mem[96], mem[128], mem[160], mem[2240 len 1952], idx + s + 1
    return mem[96], mem[128], mem[160], mem[192 len 1952], 0
}



}
