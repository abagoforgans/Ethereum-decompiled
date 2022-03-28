contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor4;
array of uint8 stor5;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0x25b7dbaf654718171892f39357af75e060b2db5b
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor1 = stor2
    stor5.length = 0
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx] = 0
        idx = idx + 1
        continue 
    return code.data[602 len 6049]
}



// =====================  Runtime code  =====================


#
#  - sub_44c441d3(?)
#  - getCard(uint256 arg1)
#
address stor0;
address stor1;
uint256 totalBet;
uint8 totalGames;
array of uint256 stor6;
array of uint256 stor7;

function totalGames() {
    return totalGames
}

function sub_2ebb3366(?) {
    require arg1 < stor7.length
    return sub_2ebb3366[uint8(arg1)]
}

function sub_7d8a30af(?) {
    require arg1 < stor6.length
    return sub_7d8a30af[uint8(arg1)]
}

function totalBet() {
    return totalBet
}

function _fallback() payable {
  stop
}

function cardFacevalue(uint8 arg1) {
    return uint8((arg1 % 13) + 1)
}

function blackjackValue(uint8 arg1) {
    if uint8((arg1 % 13) + 1) < 10:
        return uint8((arg1 % 13) + 1)
    return 10
}

function cashOut() {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function hit(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0xebf6e91d with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function stand(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x96b76c23 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function gameTick(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x91b56822 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function doubleDown(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.0x27a1d948 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}

function getRandomNumber(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require block.hash(arg1)
    require arg5
    return (sha3(block.hash(arg1), arg2, arg3, arg4) % arg5)
}

function sub_4dc8176b(?) {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function startGame() payable {
    totalBet += msg.value
    totalGames = uint8(totalGames + 1)
    require ext_code.size(stor1)
    call stor1.0xd65ab5f2 with:
       value msg.value wei
         gas gas_remaining - 9050 wei
    require ext_call.success
}

function bestSum(uint8[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 159 len 1] <= 21:
            idx = idx + 1
            continue 
        if 50 < mem[(32 * idx) + 159 len 1]:
            idx = idx + 1
            continue 
        if 50 <= mem[(32 * idx) + 159 len 1]:
            idx = idx + 1
            continue 
        require idx < arg1.length
        idx = idx + 1
        continue 
    return 50
}

function sub_fe5856a1(?) {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.gameState(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[95 len 1], 
           ext_call.return_data[96] << 248,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192] << 248,
           ext_call.return_data[224] << 248,
           bool(ext_call.return_data[256]),
           ext_call.return_data[288]
}

function compareHands(uint8 arg1, uint8 arg2) {
    if arg1 > 21:
        if arg2 <= 21:
            return 0
        if arg1 < arg2:
            return 0
        if arg1 <= arg2:
            return 0
    else:
        if arg2 > 21:
            if arg1 <= 21:
                return 0
            if arg2 <= 21:
                return 0
            if arg1 < arg2:
                return 0
            if arg1 <= arg2:
                return 0
        else:
            if arg1 > arg2:
                return 0
            if arg1 >= arg2:
                if arg1 <= 21:
                    return 0
                if arg2 <= 21:
                    return 0
                if arg1 < arg2:
                    return 0
                if arg1 <= arg2:
                    return 0
    return 1
}

function appendArray(uint8[] arg1, uint8 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = arg1.length + 1
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        require uint8(idx) < mem[(32 * arg1.length) + 192]
        mem[(32 * uint8(idx)) + (32 * arg1.length) + 224] = mem[(32 * uint8(idx)) + 159 len 1]
        idx = idx + 1
        continue 
    require arg1.length < mem[(32 * arg1.length) + 192]
    mem[(64 * arg1.length) + 224] = arg2
    mem[(32 * arg1.length) + (32 * arg1.length + 1) + 224] = 32
    mem[(32 * arg1.length) + (32 * arg1.length + 1) + 256] = mem[(32 * arg1.length) + 192]
    if Mask(251, 0, mem[(32 * arg1.length) + 192]):
        mem[(32 * arg1.length) + (32 * arg1.length + 1) + 288] = mem[(32 * arg1.length) + 224]
        mem[(32 * arg1.length) + (32 * arg1.length + 1) + 320 len floor32((32 * mem[(32 * arg1.length) + 192]) - 1)] = mem[(32 * arg1.length) + 256 len floor32((32 * mem[(32 * arg1.length) + 192]) - 1)]
    return 32, mem[(32 * arg1.length) + (32 * arg1.length + 1) + 256 len (32 * mem[(32 * arg1.length) + 192]) + 32]
}

function sub_f5632bf1(?) payable {
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x91b56822 with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.currentGame(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.gameState(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args ext_call.return_data[0]
    mem[96 len 320] = ext_call.return_data[0 len 320]
    require ext_call.success
    s = mem[320]
    idx = mem[192]
    while uint8(idx) < 21:
        require ext_code.size(stor1)
        call stor1.0xebf6e91d with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.0x91b56822 with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.currentGame(address rg1) with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        mem[416] = 0
        require ext_code.size(stor1)
        call stor1.gameState(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args ext_call.return_data[0]
        mem[96 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        s = ext_call.return_data[224]
        idx = ext_call.return_data[96]
        continue 
    if uint8(idx) <= 21:
    revert 
}

function countHand(uint8[] arg1) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 1
    mem[64] = (32 * arg1.length) + 224
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _83 = mem[(32 * idx) + 128]
        if uint8((mem[(32 * idx) + 159 len 1] % 13) + 1) < 10:
            _96 = mem[(32 * arg1.length) + 160]
            s = 0
            t = (32 * arg1.length) + 160
            while s < _96:
                require s < mem[t]
                mem[(32 * s) + t + 32] = uint8(mem[(32 * s) + t + 32] + (uint8(_83) % 13) + 1)
                if uint8((uint8(_83) % 13) + 1) != 1:
                    s = s + 1
                    t = t
                    continue 
                require s < mem[t]
                _167 = mem[(32 * s) + t + 32]
                _173 = mem[64]
                mem[64] = mem[64] + 32
                mem[_173] = 0
                _175 = mem[64]
                mem[64] = mem[64] + 32
                mem[_175] = 0
                _179 = mem[t]
                _180 = mem[64]
                if msize < mem[64]:
                    mem[mem[64]] = mem[t] + 1
                    mem[64] = mem[64] + (32 * _179 + 1) + 32
                    _214 = mem[t]
                    idx = 0
                    while uint8(idx) < _214:
                        require uint8(idx) < mem[t]
                        require uint8(idx) < mem[_180]
                        mem[(32 * uint8(idx)) + _180 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                        idx = idx + 1
                        continue 
                    require mem[t] < mem[_180]
                    mem[(32 * mem[t]) + _180 + 32] = uint8(_167 + 10)
                    s = s + 1
                    t = _180
                    continue 
                _183 = msize
                mem[msize] = mem[t] + 1
                mem[64] = _183 + (32 * _179 + 1) + 32
                _215 = mem[t]
                idx = 0
                while uint8(idx) < _215:
                    require uint8(idx) < mem[t]
                    require uint8(idx) < mem[_183]
                    mem[(32 * uint8(idx)) + _183 + 32] = mem[(32 * uint8(idx)) + t + 63 len 1]
                    idx = idx + 1
                    continue 
                require mem[t] < mem[_183]
                mem[(32 * mem[t]) + _183 + 32] = uint8(_167 + 10)
                s = s + 1
                t = _183
                continue 
            s = _96
            s = (uint8(_83) % 13) + 1
            idx = idx + 1
            continue 
        _97 = mem[(32 * arg1.length) + 160]
        s = 0
        while s < mem[(32 * arg1.length) + 160]:
            require s < mem[(32 * arg1.length) + 160]
            mem[(32 * s) + (32 * arg1.length) + 192] = uint8(mem[(32 * s) + (32 * arg1.length) + 192] + 10)
            s = s + 1
            continue 
        s = _97
        s = 10
        idx = idx + 1
        continue 
    idx = 0
    while idx < mem[(32 * arg1.length) + 160]:
        require idx < mem[(32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 223 len 1] <= 21:
            idx = idx + 1
            continue 
        if 50 < mem[(32 * idx) + (32 * arg1.length) + 223 len 1]:
            idx = idx + 1
            continue 
        if 50 <= mem[(32 * idx) + (32 * arg1.length) + 223 len 1]:
            idx = idx + 1
            continue 
        require idx < mem[(32 * arg1.length) + 160]
        idx = idx + 1
        continue 
    return 50
}



}
