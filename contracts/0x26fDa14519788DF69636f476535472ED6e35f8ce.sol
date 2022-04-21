contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
address stor4;

function _fallback() {
    uint8(stor0.field_0) = 0
    address(stor0.field_8) = msg.sender
    stor1 = code.data[4183 len 32]
    stor4 = code.data[4227 len 20]
    emit GameStarted(code.data[4183 len 32]);
    return code.data[181 len 4002]
}



// =====================  Runtime code  =====================


uint8 state;
address stor0; offset 8
uint256 bet;
mapping of struct playerDetails;
array of struct stor3;
address stor4;
uint256 stor5;

function getState() {
    require state <= 4
    return state
}

function getBet() {
    return bet
}

function getPlayerDetails(address arg1) {
    require state <= 4
    require state
    return bool(playerDetails[address(arg1)].field_0), 
           bool(playerDetails[address(arg1)].field_8),
           playerDetails[address(arg1)].field_256,
           playerDetails[address(arg1)].field_512,
           playerDetails[address(arg1)].field_768,
           playerDetails[address(arg1)].field_1024
}

function getNumWinners() {
    require ext_code.size(stor4)
    call stor4.getNumWinners(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor3.length
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32]
}

function revoke() {
    require stor0 == msg.sender
    require state <= 4
    require not state
    idx = 0
    while idx < stor3.length:
        mem[32] = 2
        playerDetails[stor3[idx].field_0].field_8 = 0
        mem[0] = 3
        call stor3[idx].field_0 with:
           value bet wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    state = 3
}

function getPrizeAmount() {
    require state <= 4
    require ext_code.size(stor4)
    if state != 1:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args eth.balance(this.address)
    else:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (bet * stor3.length)
    require ext_call.success
    return ext_call.return_data[0]
}

function getStat() {
    require ext_code.size(stor4)
    call stor4.getNumWinners(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor3.length
    require ext_call.success
    require state <= 4
    require ext_code.size(stor4)
    if state != 1:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args eth.balance(this.address)
    else:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (bet * stor3.length)
    require ext_call.success
    return stor3.length, ext_call.return_data[0], ext_call.return_data[0] + ext_call.return_data[32]
}

function getPlayers() {
    if not stor3.length:
        mem[(32 * stor3.length) + 160] = 32
        mem[(32 * stor3.length) + 192] = stor3.length
        mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 160
           len (96 * stor3.length) + 64
    mem[160] = address(stor3.field_0)
    idx = 160
    s = 0
    while (32 * stor3.length) + 128 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 224 len floor32(stor3.length)] = mem[160 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[160 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 224 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function play() payable {
    require msg.value == bet
    require stor0 != msg.sender
    require not playerDetails[address(msg.sender)].field_256
    require stor3.length < 200
    playerDetails[address(msg.sender)].field_0 = 0
    playerDetails[address(msg.sender)].field_8 = 1
    playerDetails[address(msg.sender)].field_256 = block.number
    playerDetails[address(msg.sender)].field_512 = block.timestamp
    playerDetails[address(msg.sender)].field_768 = 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = msg.sender
    require state <= 4
    require ext_code.size(stor4)
    if state != 1:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args eth.balance(this.address)
    else:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (bet * stor3.length)
    require ext_call.success
    emit NewPlayerAdded(stor3.length, ext_call.return_data[0]);
}

function _fallback() payable {
    require msg.value == bet
    require stor0 != msg.sender
    require msg.value == bet
    require stor0 != msg.sender
    require not playerDetails[address(msg.sender)].field_256
    require stor3.length < 200
    playerDetails[address(msg.sender)].field_0 = 0
    playerDetails[address(msg.sender)].field_8 = 1
    playerDetails[address(msg.sender)].field_256 = block.number
    playerDetails[address(msg.sender)].field_512 = block.timestamp
    playerDetails[address(msg.sender)].field_768 = 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor3[stor3.length].field_0 = msg.sender
    require state <= 4
    require ext_code.size(stor4)
    if state != 1:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args eth.balance(this.address)
    else:
        call stor4.getPrizeAmount(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args (bet * stor3.length)
    require ext_call.success
    emit NewPlayerAdded(stor3.length, ext_call.return_data[0]);
}

function calcaultePrizes() {
    require ext_code.size(stor4)
    call stor4.getNumWinners(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor3.length
    require ext_call.success
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 3456] = 0
    require ext_code.size(stor4)
    call stor4.calcaultePrizes(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args bet, stor3.length
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1856 len 1600] = ext_call.return_data[0 len 1600]
    require ext_call.success
    idx = 0
    while idx < ext_call.return_data[0] + ext_call.return_data[32]:
        require idx < 50
        require idx < ext_call.return_data[0] + ext_call.return_data[32]
        mem[(32 * idx) + 1856] = mem[(32 * idx) + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1856]
        idx = idx + 1
        continue 
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 3520 len floor32(ext_call.return_data[0] + ext_call.return_data[32])] = mem[1856 len floor32(ext_call.return_data[0] + ext_call.return_data[32])]
    return Array(len=ext_call.return_data[0] + ext_call.return_data[32], data=mem[1856 len floor32(ext_call.return_data[0] + ext_call.return_data[32])], mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + floor32(ext_call.return_data[0] + ext_call.return_data[32]) + 3520 len (32 * ext_call.return_data[0] + ext_call.return_data[32]) - floor32(ext_call.return_data[0] + ext_call.return_data[32])]), 
}

function getWinners() {
    require state <= 4
    require state == 1
    require ext_code.size(stor4)
    call stor4.getNumWinners(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor3.length
    require ext_call.success
    if 288 < (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288:
        mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288] = ext_call.return_data[0] + ext_call.return_data[32]
        idx = 0
        s = 0
        while idx < stor3.length:
            mem[0] = stor3[idx].field_0
            mem[32] = 2
            if bool(playerDetails[stor3[idx].field_0].field_0) != 1:
                idx = idx + 1
                s = s
                continue 
            require idx < stor3.length
            require s < ext_call.return_data[0] + ext_call.return_data[32]
            mem[(32 * s) + 288] = stor3[idx].field_0
            require idx < stor3.length
            mem[0] = stor3[idx].field_0
            mem[32] = 2
            require s < mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288]
            mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + (32 * s) + 320] = playerDetails[stor3[idx].field_0].field_1024
            idx = idx + 1
            s = s + 1
            continue 
        mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 320] = 64
        mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 384] = ext_call.return_data[0] + ext_call.return_data[32]
        mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 416 len floor32(ext_call.return_data[0] + ext_call.return_data[32])] = mem[288 len floor32(ext_call.return_data[0] + ext_call.return_data[32])]
        mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 352] = (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 96
        mem[(98 * ext_call.return_data[0]) + (98 * ext_call.return_data[32]) + 416] = mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288]
        mem[(98 * ext_call.return_data[0]) + (98 * ext_call.return_data[32]) + 448 len floor32(mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288])] = mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 320 len floor32(mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288])]
        return memory
          from (64 * ext_call.return_data[0] + ext_call.return_data[32]) + 320
           len (32 * mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 288]) + (161 * ext_call.return_data[0]) + (161 * ext_call.return_data[32]) + 128
    mem[288] = ext_call.return_data[0] + ext_call.return_data[32]
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = stor3[idx].field_0
        mem[32] = 2
        if bool(playerDetails[stor3[idx].field_0].field_0) != 1:
            idx = idx + 1
            s = s
            continue 
        require idx < stor3.length
        require s < ext_call.return_data[0] + ext_call.return_data[32]
        mem[(32 * s) + 288] = stor3[idx].field_0
        require idx < stor3.length
        mem[0] = stor3[idx].field_0
        mem[32] = 2
        require s < mem[288]
        mem[(32 * s) + 320] = playerDetails[stor3[idx].field_0].field_1024
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 320] = 64
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 384] = ext_call.return_data[0] + ext_call.return_data[32]
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 416 len floor32(ext_call.return_data[0] + ext_call.return_data[32])] = mem[288 len floor32(ext_call.return_data[0] + ext_call.return_data[32])]
    mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + 352] = (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 96
    mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 416] = mem[288]
    mem[(64 * ext_call.return_data[0] + ext_call.return_data[32]) + 448 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
    return Array(len=ext_call.return_data[0] + ext_call.return_data[32], data=mem[288 len floor32(ext_call.return_data[0] + ext_call.return_data[32])], mem[(32 * ext_call.return_data[0] + ext_call.return_data[32]) + floor32(ext_call.return_data[0] + ext_call.return_data[32]) + 416 len (32 * ext_call.return_data[0] + ext_call.return_data[32]) + (32 * mem[288]) + -floor32(ext_call.return_data[0] + ext_call.return_data[32]) + 32]), 
           (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 96
}

function finish() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[64] = 320
    mem[288] = 0
    require stor0 == msg.sender
    require state <= 4
    require not state
    s = 0
    s = 0
    s = 96
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = stor3[idx].field_0
        mem[32] = 2
        _17 = mem[64]
        mem[64] = mem[64] + 192
        mem[_17] = bool(playerDetails[stor3[idx].field_0].field_0)
        mem[_17 + 32] = bool(playerDetails[stor3[idx].field_0].field_8)
        mem[_17 + 64] = playerDetails[stor3[idx].field_0].field_256
        mem[_17 + 96] = playerDetails[stor3[idx].field_0].field_512
        mem[_17 + 128] = playerDetails[stor3[idx].field_0].field_768
        mem[_17 + 160] = playerDetails[stor3[idx].field_0].field_1024
        require stor3.length
        require (playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length < stor3.length
        playerDetails[stor3[(playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0].field_768++
        mem[0] = stor3[(stor2[stor3[idx].field_0].field_256 * stor2[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0
        mem[32] = 2
        if playerDetails[stor3[(playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0].field_768 <= s:
            s = playerDetails[stor3[(playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0].field_768
            s = (playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length
            s = _17
            idx = idx + 1
            s = s
            continue 
        stor5 = (playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length
        s = playerDetails[stor3[(playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0].field_768
        s = (playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length
        s = _17
        idx = idx + 1
        s = playerDetails[stor3[(playerDetails[stor3[idx].field_0].field_256 * playerDetails[stor3[idx].field_0].field_512) + stor3[idx].field_0 % stor3.length].field_0].field_768
        continue 
    _18 = mem[64]
    mem[64] = mem[64] + 32
    mem[_18] = 0
    _22 = mem[64]
    mem[64] = mem[64] + 1600
    mem[_22] = 0
    mem[_22 + 32 len 1568] = 0
    mem[mem[64] + 64] = 0
    require ext_code.size(stor4)
    call stor4.getNumWinners(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args stor3.length
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    require ext_call.success
    _33 = mem[64]
    if msize < mem[64]:
        mem[mem[64] + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1632] = 0
        require ext_code.size(stor4)
        call stor4.calcaultePrizes(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args bet, stor3.length
        mem[mem[64] + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 32 len 1600] = ext_call.return_data[0 len 1600]
        require ext_call.success
        mem[64] = _33 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1632
        idx = 0
        while idx < ext_call.return_data[0] + ext_call.return_data[32]:
            require idx < 50
            require idx < mem[_33]
            mem[_33 + (32 * idx) + 32] = mem[(32 * idx) + _33 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 32]
            idx = idx + 1
            continue 
        _128 = mem[_33]
        s = stor5
        idx = 0
        while idx < _128:
            require s < stor3.length
            mem[0] = stor3[s].field_0
            mem[32] = 2
            if not playerDetails[stor3[s].field_0].field_8:
                _128 = mem[_33]
                if s > 0:
                    s = s - 1
                    idx = idx
                    continue 
                s = stor3.length - 1
                idx = idx
                continue 
            require idx < mem[_33]
            require s < stor3.length
            playerDetails[stor3[s].field_0].field_1024 = mem[(32 * idx) + _33 + 32]
            mem[32] = 2
            playerDetails[stor3[s].field_0].field_0 = 1
            mem[0] = 3
            require idx < mem[_33]
            call stor3[s].field_0 with:
               value mem[(32 * idx) + _33 + 32] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            _128 = mem[_33]
            if s > 0:
                s = s - 1
                idx = idx + 1
                continue 
            s = stor3.length - 1
            idx = idx + 1
            continue 
    else:
        _38 = max(max(0, _22 + 1632), _17 + 192, _18 + 32, mem[64] + 96)
        _msize = max(max(0, _22 + 1632), _17 + 192, _18 + 32, mem[64] + 96)
        mem[_msize] = ext_call.return_data[0] + ext_call.return_data[32]
        mem[_38 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1632] = 0
        require ext_code.size(stor4)
        call stor4.calcaultePrizes(uint256 rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args bet, stor3.length
        mem[_38 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 32 len 1600] = ext_call.return_data[0 len 1600]
        require ext_call.success
        mem[64] = _38 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 1632
        idx = 0
        while idx < ext_call.return_data[0] + ext_call.return_data[32]:
            require idx < 50
            require idx < mem[_38]
            mem[_38 + (32 * idx) + 32] = mem[(32 * idx) + _38 + (32 * ext_call.return_data[0] + ext_call.return_data[32]) + 32]
            idx = idx + 1
            continue 
        _129 = mem[_38]
        s = stor5
        idx = 0
        while idx < _129:
            require s < stor3.length
            mem[0] = stor3[s].field_0
            mem[32] = 2
            if not playerDetails[stor3[s].field_0].field_8:
                _129 = mem[_38]
                if s > 0:
                    s = s - 1
                    idx = idx
                    continue 
                s = stor3.length - 1
                idx = idx
                continue 
            require idx < mem[_38]
            require s < stor3.length
            playerDetails[stor3[s].field_0].field_1024 = mem[(32 * idx) + _38 + 32]
            mem[32] = 2
            playerDetails[stor3[s].field_0].field_0 = 1
            mem[0] = 3
            require idx < mem[_38]
            call stor3[s].field_0 with:
               value mem[(32 * idx) + _38 + 32] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            _129 = mem[_38]
            if s > 0:
                s = s - 1
                idx = idx + 1
                continue 
            s = stor3.length - 1
            idx = idx + 1
            continue 
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    state = 1
    require stor5 < stor3.length
    emit GameFinished(stor3[stor5].field_0);
}



}
