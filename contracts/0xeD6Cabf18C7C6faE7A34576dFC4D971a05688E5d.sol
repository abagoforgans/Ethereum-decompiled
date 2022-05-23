contract main {




// =====================  Runtime code  =====================


#
#  - getPlayerGuessNumbers()
#
address owner;
array of struct bets;
mapping of address betNumber;
array of struct stor3;
mapping of struct stor4;
mapping of uint256 winResults;
address stor6;
address stor7;
uint256 stor8;
uint256 odds;
uint256 minBetVal;
uint256 blockInterval;
uint256 curOpenBNumber;
uint256 numberRange;
uint8 stor14;
mapping of uint256 stor15;
uint256 balanceOfSPS;
array of struct sponsor;
uint256 stor18;

function curOpenBNumber() {
    return curOpenBNumber
}

function betNumber(uint256 arg1) {
    return betNumber[arg1]
}

function odds() {
    return odds
}

function numberRange() {
    return numberRange
}

function SponsorAddresses(uint256 arg1) {
    require arg1 < sponsor.length
    return sponsor[arg1].field_0
}

function bets(uint256 arg1, uint256 arg2) {
    require arg2 < bets[arg1].field_0
    return bets[arg1][arg2].field_0, 
           bets[arg1][arg2].field_256,
           bets[arg1][arg2].field_512,
           ('signextend', 0, ('signextend', 0, ('signextend', 0, ('field', 768, ('stor', ('array', ('mul', 5, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'bets', 1)))))))),
           bets[arg1][arg2].field_1024
}

function owner() {
    return owner
}

function minBetVal() {
    return minBetVal
}

function gamePaused() {
    return bool(stor14)
}

function blockInterval() {
    return blockInterval
}

function getWinResults(uint256 arg1) {
    return winResults[arg1]
}

function balanceOfSPS() {
    return balanceOfSPS
}

function sharesOfSPS() {
    return stor15[msg.sender], balanceOfSPS
}

function _fallback() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function pauseGame(bool arg1) {
    require msg.sender == owner
    stor14 = uint8(arg1)
    emit pauseGameEvt(arg1);
    return 0
}

function setReservefund(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require msg.sender == owner
    stor18 = 10^18 * arg1
    return 0
}

function setOdds(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require msg.sender == owner
    odds = arg1
    emit setOddsEvt(arg1);
    return 0
}

function getTargetBNumber() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require blockInterval
    return ((stor8 * blockInterval) + (block.number / blockInterval * blockInterval))
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= eth.balance(this.address)
    require eth.balance(this.address) - arg2 > 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit withdrawEvt(arg2, arg1);
    return 1
}

function invest() payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if msg.value < 10^18:
        revert with 0, 'Minima amoun:1 ether'
    require msg.value + stor15[msg.sender] >= stor15[msg.sender]
    stor15[msg.sender] += msg.value
    require msg.value + balanceOfSPS >= balanceOfSPS
    balanceOfSPS += msg.value
    if sponsor.length:
        mem[128] = address(sponsor.field_0)
        idx = 128
        s = 0
        while (32 * sponsor.length) + 96 > idx:
            mem[idx + 32] = sponsor[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sponsor.length:
        require idx < sponsor.length
        if mem[(32 * idx) + 140 len 20] != msg.sender:
            idx = idx + 1
            continue 
        return stor15[msg.sender]
    sponsor.length++
    sponsor[sponsor.length].field_0 = msg.sender or Mask(96, 160, sponsor[sponsor.length].field_0)
    emit sponseEvt(msg.value, msg.sender);
    return stor15[msg.sender]
}

function getAllSponsors() {
    s = 0
    idx = 0
    while idx < sponsor.length:
        s = s + 1
        idx = idx + 1
        continue 
    if not sponsor.length:
        mem[(32 * sponsor.length) + 128] = sponsor.length
    else:
        mem[128 len 32 * sponsor.length] = code.data[7412 len 32 * sponsor.length]
        mem[(32 * sponsor.length) + 128] = sponsor.length
        mem[(32 * sponsor.length) + 160 len 32 * sponsor.length] = code.data[7412 len 32 * sponsor.length]
    idx = 0
    while idx < sponsor.length:
        require idx < sponsor.length
        mem[(32 * idx) + 128] = sponsor[idx].field_0
        require idx < sponsor.length
        mem[0] = sponsor[idx].field_0
        mem[32] = 15
        require idx < mem[(32 * sponsor.length) + 128]
        mem[(32 * sponsor.length) + (32 * idx) + 160] = stor15[stor17[idx].field_0]
        idx = idx + 1
        continue 
    mem[(64 * sponsor.length) + 224] = balanceOfSPS
    mem[(64 * sponsor.length) + 160] = 96
    mem[(64 * sponsor.length) + 256] = sponsor.length
    mem[(64 * sponsor.length) + 288 len floor32(sponsor.length)] = mem[128 len floor32(sponsor.length)]
    mem[(64 * sponsor.length) + 192] = (32 * sponsor.length) + 128
    mem[(98 * sponsor.length) + 288] = mem[(32 * sponsor.length) + 128]
    mem[(98 * sponsor.length) + 320 len floor32(mem[(32 * sponsor.length) + 128])] = mem[(32 * sponsor.length) + 160 len floor32(mem[(32 * sponsor.length) + 128])]
    return memory
      from (64 * sponsor.length) + 160
       len (32 * mem[(32 * sponsor.length) + 128]) + (161 * sponsor.length) + 160
}

function getWinners(uint256 arg1) {
    if not stor4[arg1].field_0:
        idx = 0
        while idx < stor4[arg1].field_0:
            mem[32] = 4
            require idx < stor4[arg1].field_0
            mem[0] = sha3(arg1, 4)
            require idx < stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_0) + (32 * idx) + 160] = stor4[arg1][idx].field_256
            idx = idx + 1
            continue 
        mem[(64 * stor4[arg1].field_0) + 160] = 64
        mem[(64 * stor4[arg1].field_0) + 224] = stor4[arg1].field_0
        mem[(64 * stor4[arg1].field_0) + 256 len floor32(stor4[arg1].field_0)] = mem[128 len floor32(stor4[arg1].field_0)]
    else:
        mem[(32 * stor4[arg1].field_0) + 160 len 32 * stor4[arg1].field_0] = code.data[7412 len 32 * stor4[arg1].field_0]
        idx = 0
        while idx < stor4[arg1].field_0:
            mem[32] = 4
            require idx < stor4[arg1].field_0
            mem[0] = sha3(arg1, 4)
            require idx < stor4[arg1].field_0
            mem[(32 * stor4[arg1].field_0) + (32 * idx) + 160] = stor4[arg1][idx].field_256
            idx = idx + 1
            continue 
        mem[(64 * stor4[arg1].field_0) + 160] = 64
        mem[(64 * stor4[arg1].field_0) + 224] = stor4[arg1].field_0
        mem[(64 * stor4[arg1].field_0) + 256 len floor32(stor4[arg1].field_0)] = code.data[7412 len floor32(stor4[arg1].field_0)]
    mem[(64 * stor4[arg1].field_0) + 192] = (32 * stor4[arg1].field_0) + 96
    mem[(98 * stor4[arg1].field_0) + 256] = stor4[arg1].field_0
    mem[(98 * stor4[arg1].field_0) + 288 len floor32(stor4[arg1].field_0)] = mem[(32 * stor4[arg1].field_0) + 160 len floor32(stor4[arg1].field_0)]
    return memory
      from (64 * stor4[arg1].field_0) + 160
       len (162 * stor4[arg1].field_0) + 128
}

function draw(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require block.number >= curOpenBNumber + blockInterval
    curOpenBNumber = arg1
    require numberRange
    winResults[arg1] = arg2 % numberRange
    idx = 0
    while idx < bets[arg1].field_0:
        require idx < bets[arg1].field_0
        require idx < bets[arg1].field_0
        if bets[arg1][idx].field_256 != arg2 % numberRange:
            bets[arg1][idx].field_768 = 0
            require idx < bets[arg1].field_0
            bets[arg1][idx].field_1024 = 0
        else:
            bets[arg1][idx].field_768 = 1
            require idx < bets[arg1].field_0
            require idx < bets[arg1].field_0
            bets[arg1][idx].field_1024 = bets[arg1][idx].field_512 * odds
            require idx < bets[arg1].field_0
            require idx < bets[arg1].field_0
            mem[32] = 1
            require idx < bets[arg1].field_0
            mem[mem[64] + 32] = bets[arg1][idx].field_512
            mem[mem[64] + 64] = bets[arg1][idx].field_1024
            emit winnersEvt(arg1, bets[arg1][idx].field_512, bets[arg1][idx].field_1024, bets[arg1][idx].field_0);
            require idx < bets[arg1].field_0
            require idx < bets[arg1].field_0
            require msg.sender == owner
            require bets[arg1][idx].field_1024 <= eth.balance(this.address)
            require eth.balance(this.address) - bets[arg1][idx].field_1024 > 0
            call bets[arg1][idx].field_0 with:
               value bets[arg1][idx].field_1024 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = bets[arg1][idx].field_1024
            emit withdrawEvt(bets[arg1][idx].field_1024, bets[arg1][idx].field_0);
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    emit drawEvt(curOpenBNumber, arg1);
    return (arg2 % numberRange)
}

function distribute() {
    require msg.sender == owner
    if eth.balance(this.address) >= stor18:
        require stor18 <= eth.balance(this.address)
        if eth.balance(this.address) - stor18:
            require eth.balance(this.address) - stor18
            require (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / eth.balance(this.address) - stor18 == 3 * 10^18
        require (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18 <= eth.balance(this.address) - stor18
        idx = 0
        s = 0
        while idx < sponsor.length:
            mem[32] = 15
            require balanceOfSPS
            require idx < sponsor.length
            mem[0] = 17
            call sponsor[idx].field_0 with:
               value (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18 * stor15[stor17[idx].field_0] / balanceOfSPS wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18 * stor15[stor17[idx].field_0] / balanceOfSPS
            continue 
        if eth.balance(this.address) - stor18 - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18):
            require eth.balance(this.address) - stor18 - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18)
            require (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) - (3 * 10^18 * (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) / eth.balance(this.address) - stor18 - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) == 3 * 10^18
        call stor6 with:
           value (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) - (3 * 10^18 * (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) / 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) - (3 * 10^18 * (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) / 10 * 10^18 <= eth.balance(this.address) - stor18 - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18)
        call stor7 with:
           value eth.balance(this.address) - stor18 - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) - ((3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) - (3 * 10^18 * (3 * 10^18 * eth.balance(this.address)) - (3 * 10^18 * stor18) / 10 * 10^18) / 10 * 10^18) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function guess(uint256[] arg1) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[(32 * arg1.length) + 256] = 0
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not arg1.length:
        require msg.value >= minBetVal * arg1.length
        require blockInterval
        idx = 0
        while idx < arg1.length:
            mem[(32 * arg1.length) + 128] = msg.sender
            require idx < arg1.length
            mem[(32 * arg1.length) + 160] = mem[(32 * idx) + 128]
            require arg1.length
            mem[(32 * arg1.length) + 192] = msg.value / arg1.length
            mem[(32 * arg1.length) + 224] = -1
            mem[32] = 1
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0++
            mem[0] = sha3((stor8 * blockInterval) + (block.number / blockInterval * blockInterval), 1)
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_0 = msg.sender
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_256 = mem[(32 * arg1.length) + 160]
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_512 = msg.value / arg1.length
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_768 = uint8(('signextend', 0, -1))
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_1024 = 0
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 3
        mem[64] = (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 320
        mem[(32 * arg1.length) + 288] = stor3[msg.sender].field_0
        if not stor3[msg.sender].field_0:
            idx = 0
            while idx < stor3[msg.sender].field_0:
                require idx < stor3[msg.sender].field_0
                if mem[(32 * idx) + (32 * arg1.length) + 320] != (stor8 * blockInterval) + (block.number / blockInterval * blockInterval):
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < 32 * arg1.length:
                    mem[idx + (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit guessEvt(Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len 32 * arg1.length]), msg.value, msg.sender);
                return arg1.length
            stor3[msg.sender].field_0++
            stor3[msg.sender][stor3[msg.sender].field_0].field_0 = (stor8 * blockInterval) + (block.number / blockInterval * blockInterval)
            mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var26001 = floor32(arg1.length)
        else:
            mem[0] = sha3(msg.sender, 3)
            mem[(32 * arg1.length) + 320] = stor3[msg.sender].field_0
            idx = (32 * arg1.length) + 320
            s = 0
            while (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 288 > idx:
                mem[idx + 32] = stor3[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < stor3[msg.sender].field_0:
                require idx < stor3[msg.sender].field_0
                if mem[(32 * idx) + (32 * arg1.length) + 320] != (stor8 * blockInterval) + (block.number / blockInterval * blockInterval):
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 352] = msg.value
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 320] = 64
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 384] = arg1.length
                idx = 0
                while idx < 32 * arg1.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit guessEvt(address arg1, uint256[] arg2, uint256 arg3):
                              mem[mem[64] len (64 * arg1.length) + (32 * stor3[msg.sender].field_0) + -mem[64] + 416],
                              msg.sender,
                mem[mem[64]] = mem[96]
                return memory
                  from mem[64]
                   len 32
            stor3[msg.sender].field_0++
            stor3[msg.sender][stor3[msg.sender].field_0].field_0 = (stor8 * blockInterval) + (block.number / blockInterval * blockInterval)
            mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    else:
        require arg1.length
        require minBetVal * arg1.length / arg1.length == minBetVal
        require msg.value >= minBetVal * arg1.length
        require blockInterval
        idx = 0
        while idx < arg1.length:
            mem[(32 * arg1.length) + 128] = msg.sender
            require idx < arg1.length
            mem[(32 * arg1.length) + 160] = mem[(32 * idx) + 128]
            require arg1.length
            mem[(32 * arg1.length) + 192] = msg.value / arg1.length
            mem[(32 * arg1.length) + 224] = -1
            mem[32] = 1
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0++
            mem[0] = sha3((stor8 * blockInterval) + (block.number / blockInterval * blockInterval), 1)
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_0 = msg.sender
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_256 = mem[(32 * arg1.length) + 160]
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_512 = msg.value / arg1.length
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_768 = uint8(('signextend', 0, -1))
            bets[(stor8 * stor11) + (block.number / stor11 * stor11)][bets[(stor8 * stor11) + (block.number / stor11 * stor11)].field_0].field_1024 = 0
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 3
        mem[64] = (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 320
        mem[(32 * arg1.length) + 288] = stor3[msg.sender].field_0
        if not stor3[msg.sender].field_0:
            idx = 0
            while idx < stor3[msg.sender].field_0:
                require idx < stor3[msg.sender].field_0
                if mem[(32 * idx) + (32 * arg1.length) + 320] != (stor8 * blockInterval) + (block.number / blockInterval * blockInterval):
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < 32 * arg1.length:
                    mem[idx + (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit guessEvt(Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len 32 * arg1.length]), msg.value, msg.sender);
                return arg1.length
            stor3[msg.sender].field_0++
            stor3[msg.sender][stor3[msg.sender].field_0].field_0 = (stor8 * blockInterval) + (block.number / blockInterval * blockInterval)
            mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            var28001 = floor32(arg1.length)
        else:
            mem[0] = sha3(msg.sender, 3)
            mem[(32 * arg1.length) + 320] = stor3[msg.sender].field_0
            idx = (32 * arg1.length) + 320
            s = 0
            while (32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 288 > idx:
                mem[idx + 32] = stor3[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            idx = 0
            while idx < stor3[msg.sender].field_0:
                require idx < stor3[msg.sender].field_0
                if mem[(32 * idx) + (32 * arg1.length) + 320] != (stor8 * blockInterval) + (block.number / blockInterval * blockInterval):
                    idx = idx + 1
                    continue 
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 352] = msg.value
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 320] = 64
                mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 384] = arg1.length
                idx = 0
                while idx < 32 * arg1.length:
                    mem[idx + mem[64] + 96] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                emit guessEvt(address arg1, uint256[] arg2, uint256 arg3):
                              mem[mem[64] len (64 * arg1.length) + (32 * stor3[msg.sender].field_0) + -mem[64] + 416],
                              msg.sender,
                mem[mem[64]] = mem[96]
                return memory
                  from mem[64]
                   len 32
            stor3[msg.sender].field_0++
            stor3[msg.sender][stor3[msg.sender].field_0].field_0 = (stor8 * blockInterval) + (block.number / blockInterval * blockInterval)
            mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + 416 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit guessEvt(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * stor3[msg.sender].field_0) + floor32(arg1.length) + 416 len (32 * arg1.length) - floor32(arg1.length)]), msg.value, msg.sender);
    return arg1.length
}



}
