contract main {




// =====================  Runtime code  =====================


#
#  - result()
#
const getContractBalance = eth.balance(this.address)

const sub_c1e1e5a9(?) = 0x696826c18a6bc9be4bbfe3c3a6bb9f5a69388687


uint256 totalDividends;
uint256 totalWinnings;
array of uint8 stor2;
uint256 maxBet;
uint256 minBet;
uint256 sub_69d54554;
uint256 sub_30b1b62c;
uint256 jackpotBalance;
uint256 sub_7f55d0d2;
uint256 ownerDeposit;
array of address owners;
address stor11;
array of address candidates;
uint8 paused;
mapping of struct sub_f4d024da;

function owners(uint256 arg1) {
    require arg1 < 2
    return owners[arg1]
}

function jackpotBalance() {
    return jackpotBalance
}

function maxBet() {
    return maxBet
}

function sub_30b1b62c(?) {
    return sub_30b1b62c
}

function candidates(uint256 arg1) {
    require arg1 < 2
    return candidates[arg1]
}

function paused() {
    return bool(paused)
}

function totalTurnover() {
    return stor2.length
}

function sub_69d54554(?) {
    return sub_69d54554
}

function ownerDeposit() {
    return ownerDeposit
}

function sub_7f55d0d2(?) {
    return sub_7f55d0d2
}

function minBet() {
    return minBet
}

function totalDividends() {
    return totalDividends
}

function totalWinnings() {
    return totalWinnings
}

function sub_f4d024da(?) {
    return sub_f4d024da[arg1].field_0, sub_f4d024da[arg1].field_256
}

function _fallback() payable {
    revert
}

function setMaxBet(uint256 arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    maxBet = arg1
}

function setMinBet(uint256 arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    minBet = arg1
}

function pauseGame(bool arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    paused = uint8(arg1)
}

function setMinBetForJackpot(uint256 arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    sub_30b1b62c = arg1
}

function setMinContractBalance(uint256 arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    sub_69d54554 = arg1
}

function confirmOwner(uint8 arg1) {
    require arg1 < 2
    require msg.sender == candidates[arg1]
    require arg1 < 2
    owners[arg1] = candidates[arg1]
}

function transferOwnership(address arg1, uint8 arg2) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    require arg2 < 2
    candidates[arg2] = arg1
}

function deposit() payable {
    if owners.length != msg.sender:
        require msg.sender == stor11
    require msg.value + ownerDeposit >= ownerDeposit
    ownerDeposit += msg.value
}

function sub_9e20b71c(?) {
    if not arg1:
        require arg1 >= arg1
        require jackpotBalance + arg1 >= arg1
        if eth.balance(this.address) <= jackpotBalance + arg1:
            return 0
    else:
        require 500 * arg1 / arg1 == 500
        require (500 * arg1 / 100) + arg1 >= arg1
        require jackpotBalance >= 0
        if eth.balance(this.address) <= jackpotBalance + (500 * arg1 / 100) + arg1:
            return 0
    return 1
}

function sub_e16b503b(?) {
    mem[96 len 192] = call.data[4 len 192]
    idx = 0
    s = 0
    while idx < 6:
        if bool(mem[(32 * idx) + 96]) != 1:
            idx = idx + 1
            s = s
            continue 
        require s + 1 >= s
        idx = idx + 1
        s = s + 1
        continue 
    if 1 == s:
        return 580
    if 2 == s:
        return 290
    if 3 == s:
        return 195
    if 4 == s:
        return 147
    if s != 5:
        return 0
    return 117
}

function sendOwnerDeposit(address arg1) {
    if owners.length != msg.sender:
        require msg.sender == stor11
    if bool(paused) != 1:
        revert with 0, 'Game was not stopped'
    if eth.balance(this.address) < ownerDeposit:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value ownerDeposit wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    jackpotBalance = 0
    ownerDeposit = 0
}

function sendDividends() {
    if eth.balance(this.address) <= sub_69d54554:
        revert with 0, 'You cannot send dividends'
    if block.timestamp <= sub_7f55d0d2:
        revert with 0, 'You cannot send dividends'
    require sub_69d54554 <= eth.balance(this.address)
    require block.timestamp + (168 * 24 * 3600) >= block.timestamp
    sub_7f55d0d2 = block.timestamp + (168 * 24 * 3600)
    require eth.balance(this.address) - sub_69d54554 + totalDividends >= totalDividends
    totalDividends = eth.balance(this.address) - sub_69d54554 + totalDividends
    require ext_code.size(0x696826c18a6bc9be4bbfe3c3a6bb9f5a69388687)
    call 0x696826c18a6bc9be4bbfe3c3a6bb9f5a69388687.gamingDividendsReception() with:
       value eth.balance(this.address) - sub_69d54554 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfac2f03c: eth.balance(this.address), eth.balance(this.address) - sub_69d54554, block.timestamp
}

function sub_3e32d0bf(?) payable {
    require sub_f4d024da[msg.sender].field_0 <= block.number
    if block.number - sub_f4d024da[msg.sender].field_0 < 250:
        if not msg.value:
            require msg.value >= msg.value
            require jackpotBalance + msg.value >= msg.value
            if eth.balance(this.address) <= jackpotBalance + msg.value:
                revert with 0, 'Not enough ETH in contract'
        else:
            require 500 * msg.value / msg.value == 500
            require (500 * msg.value / 100) + msg.value >= msg.value
            require jackpotBalance >= 0
            if eth.balance(this.address) <= jackpotBalance + (500 * msg.value / 100) + msg.value:
                revert with 0, 'Not enough ETH in contract'
        if paused:
            revert with 0, 'Game was stopped'
        if msg.value < minBet:
            revert with 0, 'Amount should be within range'
        if msg.value > maxBet:
            revert with 0, 'Amount should be within range'
        if sub_f4d024da[msg.sender].field_256:
            revert with 0, 'You have already bet'
        mem[288] = arg1
        mem[320] = arg2
        mem[352] = arg3
        mem[384] = arg4
        mem[416] = arg5
        mem[448] = arg6
        sub_f4d024da[msg.sender].field_256 = msg.value
        sub_f4d024da[msg.sender].field_0 = block.number
        s = 0
        idx = 288
        while 480 > idx:
            sub_f4d024da[msg.sender].field_512 = bool(mem[idx]) * 256^s or !(255 * 256^s) and sub_f4d024da[msg.sender].field_512
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = 6
        s = sha3(msg.sender, 15) + 2
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 2
        while 3 > idx:
            uint8(sub_f4d024da[msg.sender][idx].field_0) = 0
            idx = idx + 1
            continue 
        require msg.value + stor2.length >= stor2.length
        stor2.length += msg.value
        emit 0x59ef8f57: msg.value, arg1, arg2, arg3, arg4, arg5, arg6 >> 1280, block.timestamp, msg.sender
    else:
        if sub_f4d024da[msg.sender].field_0 > 0:
            idx = 384
            s = 0
            while 576 > idx + 32:
                mem[idx + 32] = bool(stor2[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            emit 0x592d7281: 0, jackpotBalance, sub_f4d024da[msg.sender].field_256, bool(uint8(sub_f4d024da[msg.sender].field_512)), mem[416 len 160], 0, msg.sender, 1000
            sub_f4d024da[msg.sender].field_0 = 0
            sub_f4d024da[msg.sender].field_256 = 0
            sub_f4d024da[msg.sender].field_512 = 0
        else:
            if not msg.value:
                require msg.value >= msg.value
                require jackpotBalance + msg.value >= msg.value
                if eth.balance(this.address) <= jackpotBalance + msg.value:
                    revert with 0, 'Not enough ETH in contract'
            else:
                require 500 * msg.value / msg.value == 500
                require (500 * msg.value / 100) + msg.value >= msg.value
                require jackpotBalance >= 0
                if eth.balance(this.address) <= jackpotBalance + (500 * msg.value / 100) + msg.value:
                    revert with 0, 'Not enough ETH in contract'
            if paused:
                revert with 0, 'Game was stopped'
            if msg.value < minBet:
                revert with 0, 'Amount should be within range'
            if msg.value > maxBet:
                revert with 0, 'Amount should be within range'
            if sub_f4d024da[msg.sender].field_256:
                revert with 0, 'You have already bet'
            mem[288] = arg1
            mem[320] = arg2
            mem[352] = arg3
            mem[384] = arg4
            mem[416] = arg5
            mem[448] = arg6
            sub_f4d024da[msg.sender].field_256 = msg.value
            sub_f4d024da[msg.sender].field_0 = block.number
            s = 0
            idx = 288
            while 480 > idx:
                sub_f4d024da[msg.sender].field_512 = bool(mem[idx]) * 256^s or !(255 * 256^s) and sub_f4d024da[msg.sender].field_512
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 6
            s = sha3(msg.sender, 15) + 2
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-4 * None + 3 / 32) + (None * None + 3 / 32) + 2
            while 3 > idx:
                uint8(sub_f4d024da[msg.sender][idx].field_0) = 0
                idx = idx + 1
                continue 
            require msg.value + stor2.length >= stor2.length
            stor2.length += msg.value
            emit 0x59ef8f57: msg.value, arg1, arg2, arg3, arg4, arg5, arg6 >> 1280, block.timestamp, msg.sender
}



}
