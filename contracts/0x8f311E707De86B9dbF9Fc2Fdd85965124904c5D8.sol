contract main {




// =====================  Runtime code  =====================


address owner;
uint128 stor1; offset 160
uint256 stor1;
uint256 prizePool;
uint256 numberOfTickets;
uint256 ticketPrice;
uint256 sub_c65a2178;
uint256 sub_f0846d1d;
address wallet1Address;
address wallet2Address;
uint8 stor9; offset 160
address wallet3Address;
uint256 sub_c26eea54;
uint8 stor11; offset 160
address winnerAddress;
uint256 createdAt;
uint256 startedAt;
uint256 finishedAt;
uint256 closedAt;
uint256 sub_ee67df45;
uint256 sub_e38d0530;
array of address sub_15c6aee2;
array of struct sub_44d855f1;
array of struct referrers;
mapping of struct sub_55f0ae09;
mapping of uint8 stor22;
uint8 stage;

function wallet2() {
    return wallet2Address
}

function sub_10f646ac(?) {
    return bool(stor22[arg1])
}

function ticketPrice() {
    return ticketPrice
}

function sub_15c6aee2(?) {
    require arg1 < sub_15c6aee2.length
    return address(sub_15c6aee2[arg1])
}

function wallet1() {
    return wallet1Address
}

function teamClaimed() {
    return bool(stor9)
}

function wallet3() {
    return wallet3Address
}

function sub_44d855f1(?) {
    require arg2 < sub_44d855f1[arg1].field_0
    return sub_44d855f1[arg1][arg2].field_0, 
           sub_44d855f1[arg1][arg2].field_256,
           sub_44d855f1[arg1][arg2].field_512,
           sub_44d855f1[arg1][arg2].field_768
}

function numberOfTickets() {
    return numberOfTickets
}

function finishedAt() {
    return finishedAt
}

function sub_55f0ae09(?) {
    return sub_55f0ae09[arg1].field_0, bool(sub_55f0ae09[arg1].field_256), bool(sub_55f0ae09[arg1].field_264)
}

function sub_6c66cbb9(?) {
    return bool(stor11)
}

function prizePool() {
    return prizePool
}

function owner() {
    return owner
}

function closedAt() {
    return closedAt
}

function stage() {
    require stage <= 2
    return stage
}

function sub_c26eea54(?) {
    return sub_c26eea54
}

function sub_c65a2178(?) {
    return sub_c65a2178
}

function referrers(address arg1, uint256 arg2) {
    require arg2 < referrers[arg1].field_0
    return referrers[arg1][arg2].field_0, referrers[arg1][arg2].field_256
}

function createdAt() {
    return createdAt
}

function sub_e1bedb53(?) {
    return sub_55f0ae09[address(arg1)].field_0
}

function sub_e38d0530(?) {
    return sub_e38d0530
}

function winnerAddress() {
    return winnerAddress
}

function sub_ee67df45(?) {
    return sub_ee67df45
}

function sub_f0846d1d(?) {
    return sub_f0846d1d
}

function startedAt() {
    return startedAt
}

function getBalance() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit ChangeOwnership(owner, arg1);
    owner = arg1
}

function sub_75f451ef(?) {
    require sub_c65a2178 <= sub_f0846d1d
    require sub_f0846d1d - sub_c65a2178 <= numberOfTickets
    return (numberOfTickets - sub_f0846d1d + sub_c65a2178)
}

function sub_607e9d77(?) {
    require msg.sender == owner
    require stage <= 2
    require not stage
    stage = 1
    startedAt = block.timestamp
    closedAt = block.timestamp + (8760 * 24 * 3600)
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    wallet1Address = owner
    emit 0x152c3259: block.timestamp, block.timestamp + (8760 * 24 * 3600)
}

function sub_b3d92b04(?) {
    mem[32] = 19
    mem[64] = (32 * sub_44d855f1[address(arg1)].field_0) + 128
    mem[96] = sub_44d855f1[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < sub_44d855f1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 19)
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = sub_44d855f1[address(arg1)][idx].field_0
        mem[_13 + 32] = sub_44d855f1[address(arg1)][idx].field_256
        mem[_13 + 64] = sub_44d855f1[address(arg1)][idx].field_512
        mem[_13 + 96] = sub_44d855f1[address(arg1)][idx].field_768
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        require idx < mem[96]
        _23 = mem[mem[(32 * idx) + 128] + 64]
        idx = idx + 1
        s = mem[mem[(32 * idx) + 128] + 64] + s
        continue 
    mem[mem[64]] = _23 * mem[96]
    return memory
      from mem[64]
       len 32
}

function withdrawRefund() {
    require block.timestamp > closedAt
    require bool(stor22[msg.sender]) != 1
    require closedAt + (1440 * 24 * 3600) >= closedAt
    require block.timestamp <= closedAt + (1440 * 24 * 3600)
    require sub_44d855f1[msg.sender].field_0 > 0
    mem[32] = 19
    mem[64] = (32 * sub_44d855f1[address(msg.sender)].field_0) + 128
    mem[96] = sub_44d855f1[address(msg.sender)].field_0
    s = 128
    idx = 0
    while idx < sub_44d855f1[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 19)
        _24 = mem[64]
        mem[64] = mem[64] + 128
        mem[_24] = sub_44d855f1[address(msg.sender)][idx].field_0
        mem[_24 + 32] = sub_44d855f1[address(msg.sender)][idx].field_256
        mem[_24 + 64] = sub_44d855f1[address(msg.sender)][idx].field_512
        mem[_24 + 96] = sub_44d855f1[address(msg.sender)][idx].field_768
        mem[s] = _24
        s = s + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < mem[96]:
        require idx < mem[96]
        _42 = mem[mem[(32 * idx) + 128] + 64]
        idx = idx + 1
        s = mem[mem[(32 * idx) + 128] + 64] + s
        continue 
    call msg.sender with:
       value _42 * mem[96] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor22[msg.sender] = 1
    if not eth.balance(this.address):
        emit 0xb41b8cee: mem[mem[(32 * mem[96]) + 128] + 64] * mem[96], block.timestamp, 1, msg.sender
    else:
        emit 0xb41b8cee: mem[mem[(32 * mem[96]) + 128] + 64] * mem[96], block.timestamp, 0, msg.sender
    return 1
}

function sub_5a27b2d3(?) {
    require msg.sender == owner
    if not referrers[address(arg1)].field_0:
        mem[(32 * referrers[address(arg1)].field_0) + 128] = referrers[address(arg1)].field_0
    else:
        mem[128 len 32 * referrers[address(arg1)].field_0] = code.data[7599 len 32 * referrers[address(arg1)].field_0]
        mem[(32 * referrers[address(arg1)].field_0) + 128] = referrers[address(arg1)].field_0
        mem[(32 * referrers[address(arg1)].field_0) + 160 len 32 * referrers[address(arg1)].field_0] = code.data[7599 len 32 * referrers[address(arg1)].field_0]
    s = 0
    idx = 0
    while idx < referrers[address(arg1)].field_0:
        mem[32] = 20
        require idx < referrers[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 20)
        require idx < referrers[address(arg1)].field_0
        mem[(32 * idx) + 128] = referrers[address(arg1)][idx].field_0
        require idx < mem[(32 * referrers[address(arg1)].field_0) + 128]
        mem[(32 * referrers[address(arg1)].field_0) + (32 * idx) + 160] = referrers[address(arg1)][idx].field_256
        s = (2 * idx) + sha3(sha3(address(arg1), 20))
        idx = idx + 1
        continue 
    mem[(64 * referrers[address(arg1)].field_0) + 160] = 64
    mem[(64 * referrers[address(arg1)].field_0) + 224] = referrers[address(arg1)].field_0
    mem[(64 * referrers[address(arg1)].field_0) + 256 len floor32(referrers[address(arg1)].field_0)] = mem[128 len floor32(referrers[address(arg1)].field_0)]
    mem[(64 * referrers[address(arg1)].field_0) + 192] = (32 * referrers[address(arg1)].field_0) + 96
    mem[(98 * referrers[address(arg1)].field_0) + 256] = mem[(32 * referrers[address(arg1)].field_0) + 128]
    mem[(98 * referrers[address(arg1)].field_0) + 288 len floor32(mem[(32 * referrers[address(arg1)].field_0) + 128])] = mem[(32 * referrers[address(arg1)].field_0) + 160 len floor32(mem[(32 * referrers[address(arg1)].field_0) + 128])]
    return memory
      from (64 * referrers[address(arg1)].field_0) + 160
       len (32 * mem[(32 * referrers[address(arg1)].field_0) + 128]) + (161 * referrers[address(arg1)].field_0) + 128
}

function withdrawPlayer() {
    require stage <= 2
    require stage == 2
    require block.timestamp <= sub_ee67df45
    if stor11:
        require sub_55f0ae09[msg.sender].field_264
        require bool(sub_55f0ae09[msg.sender].field_264) == 1
        require not sub_55f0ae09[msg.sender].field_256
        sub_55f0ae09[msg.sender].field_256 = 1
        require sub_55f0ae09[msg.sender].field_0
        require sub_55f0ae09[msg.sender].field_0 >= 0
        call msg.sender with:
           value sub_55f0ae09[msg.sender].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not eth.balance(this.address):
            emit 0x1aaaf4dd: 0, sub_55f0ae09[msg.sender].field_0, block.timestamp, 1, msg.sender
        else:
            emit 0x1aaaf4dd: 0, sub_55f0ae09[msg.sender].field_0, block.timestamp, 0, msg.sender
    else:
        if winnerAddress != msg.sender:
            require sub_55f0ae09[msg.sender].field_264
            require bool(sub_55f0ae09[msg.sender].field_264) == 1
            require not sub_55f0ae09[msg.sender].field_256
            sub_55f0ae09[msg.sender].field_256 = 1
            require sub_55f0ae09[msg.sender].field_0
            require sub_55f0ae09[msg.sender].field_0 >= 0
            call msg.sender with:
               value sub_55f0ae09[msg.sender].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not eth.balance(this.address):
                emit 0x1aaaf4dd: 0, sub_55f0ae09[msg.sender].field_0, block.timestamp, 1, msg.sender
            else:
                emit 0x1aaaf4dd: 0, sub_55f0ae09[msg.sender].field_0, block.timestamp, 0, msg.sender
        else:
            stor11 = 1
            if not sub_55f0ae09[msg.sender].field_264:
                require prizePool
            if bool(sub_55f0ae09[msg.sender].field_264) != 1:
                require prizePool
                require prizePool >= prizePool
                call msg.sender with:
                   value prizePool wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not eth.balance(this.address):
                    emit 0x1aaaf4dd: prizePool, 0, block.timestamp, 1, msg.sender
                else:
                    emit 0x1aaaf4dd: prizePool, 0, block.timestamp, 0, msg.sender
            else:
                if sub_55f0ae09[msg.sender].field_256:
                    require prizePool
                    require prizePool >= prizePool
                    call msg.sender with:
                       value prizePool wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        emit 0x1aaaf4dd: prizePool, 0, block.timestamp, 1, msg.sender
                    else:
                        emit 0x1aaaf4dd: prizePool, 0, block.timestamp, 0, msg.sender
                else:
                    sub_55f0ae09[msg.sender].field_256 = 1
                    if not sub_55f0ae09[msg.sender].field_0:
                        require prizePool
                    require sub_55f0ae09[msg.sender].field_0 + prizePool >= prizePool
                    call msg.sender with:
                       value sub_55f0ae09[msg.sender].field_0 + prizePool wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not eth.balance(this.address):
                        emit 0x1aaaf4dd: prizePool, sub_55f0ae09[msg.sender].field_0, block.timestamp, 1, msg.sender
                    else:
                        emit 0x1aaaf4dd: prizePool, sub_55f0ae09[msg.sender].field_0, block.timestamp, 0, msg.sender
    return 1
}

function withdraw() {
    require msg.sender == owner
    require eth.balance(this.address)
    if finishedAt <= 0:
        require closedAt + (1440 * 24 * 3600) >= closedAt
        if block.timestamp > closedAt + (1440 * 24 * 3600):
            if eth.balance(this.address) > 0:
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 50 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 50
                call wallet1Address with:
                   value 50 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 30 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 30
                call wallet2Address with:
                   value 30 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 20 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 20
                call wallet3Address with:
                   value 20 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor9 = 1
                if not eth.balance(this.address):
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, eth.balance(this.address), block.timestamp, 1, msg.sender
                else:
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, eth.balance(this.address), block.timestamp, 0, msg.sender
    else:
        if block.timestamp > sub_ee67df45:
            if eth.balance(this.address) > 0:
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 50 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 50
                call wallet1Address with:
                   value 50 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 30 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 30
                call wallet2Address with:
                   value 30 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) / 100:
                    require eth.balance(this.address) / 100
                    require 20 * eth.balance(this.address) / 100 / eth.balance(this.address) / 100 == 20
                call wallet3Address with:
                   value 20 * eth.balance(this.address) / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor9 = 1
                if not eth.balance(this.address):
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, eth.balance(this.address), block.timestamp, 1, msg.sender
                else:
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, eth.balance(this.address), block.timestamp, 0, msg.sender
        else:
            require not stor9
            if numberOfTickets:
                require numberOfTickets
                require ticketPrice * numberOfTickets / numberOfTickets == ticketPrice
            require prizePool <= ticketPrice * numberOfTickets
            require sub_e38d0530 <= (ticketPrice * numberOfTickets) - prizePool
            if (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 > 0:
                if (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100:
                    require (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100
                    require 50 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 / (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 == 50
                call wallet1Address with:
                   value 50 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100:
                    require (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100
                    require 30 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 / (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 == 30
                call wallet2Address with:
                   value 30 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100:
                    require (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100
                    require 20 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 / (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 == 20
                call wallet3Address with:
                   value 20 * (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor9 = 1
                if not eth.balance(this.address):
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530, block.timestamp, 1, msg.sender
                else:
                    emit 0x8c79035f: wallet1Address, wallet2Address, wallet3Address, (ticketPrice * numberOfTickets) - prizePool - sub_e38d0530, block.timestamp, 0, msg.sender
    return 1
}

function sub_181490da(?) {
    require msg.sender == owner
    mem[0] = arg1
    mem[96] = sub_44d855f1[address(arg1)].field_0
    if not sub_44d855f1[address(arg1)].field_0:
        mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128] = sub_44d855f1[address(arg1)].field_0
        mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160] = sub_44d855f1[address(arg1)].field_0
        mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192] = sub_44d855f1[address(arg1)].field_0
        mem[64] = (131 * sub_44d855f1[address(arg1)].field_0) + 224
        s = 0
        idx = 0
        while idx < sub_44d855f1[address(arg1)].field_0:
            mem[32] = 19
            require idx < sub_44d855f1[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 19)
            require idx < mem[96]
            mem[(32 * idx) + 128] = sub_44d855f1[address(arg1)][idx].field_0
            require idx < mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
            mem[(32 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 160] = sub_44d855f1[address(arg1)][idx].field_256
            require idx < mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
            mem[(64 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 192] = sub_44d855f1[address(arg1)][idx].field_512
            require idx < mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
            mem[(98 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 224] = sub_44d855f1[address(arg1)][idx].field_768
            s = (4 * idx) + sha3(sha3(address(arg1), 19))
            idx = idx + 1
            continue 
        _51 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[96]
        _53 = mem[96]
        mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
        _90 = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
        mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128])] = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 160 len floor32(mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128])]
        mem[mem[64] + 64] = (32 * _90) + (32 * mem[96]) + 192
        mem[(32 * _90) + (32 * _53) + _51 + 192] = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
        _112 = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
        mem[(32 * _90) + (32 * _53) + _51 + 224 len floor32(mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160])] = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 192 len floor32(mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160])]
        mem[_51 + 96] = (32 * _112) + (32 * _90) + (32 * _53) + 224
        mem[(32 * _112) + (32 * _90) + (32 * _53) + _51 + 224] = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
        _128 = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
        mem[(32 * _112) + (32 * _90) + (32 * _53) + _51 + 256 len floor32(mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192])] = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 224 len floor32(mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192])]
        return memory
          from mem[64]
           len (32 * _128) + (32 * _112) + (32 * _90) + (32 * _53) + _51 + -mem[64] + 256
    mem[128 len 32 * sub_44d855f1[address(arg1)].field_0] = code.data[7599 len 32 * sub_44d855f1[address(arg1)].field_0]
    mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128] = sub_44d855f1[address(arg1)].field_0
    mem[(32 * sub_44d855f1[address(arg1)].field_0) + 160 len 32 * sub_44d855f1[address(arg1)].field_0] = code.data[7599 len 32 * sub_44d855f1[address(arg1)].field_0]
    mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160] = sub_44d855f1[address(arg1)].field_0
    mem[(64 * sub_44d855f1[address(arg1)].field_0) + 192 len 32 * sub_44d855f1[address(arg1)].field_0] = code.data[7599 len 32 * sub_44d855f1[address(arg1)].field_0]
    mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192] = sub_44d855f1[address(arg1)].field_0
    mem[64] = (131 * sub_44d855f1[address(arg1)].field_0) + 224
    mem[(98 * sub_44d855f1[address(arg1)].field_0) + 224 len 32 * sub_44d855f1[address(arg1)].field_0] = code.data[7599 len 32 * sub_44d855f1[address(arg1)].field_0]
    s = 0
    idx = 0
    while idx < sub_44d855f1[address(arg1)].field_0:
        mem[32] = 19
        require idx < sub_44d855f1[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 19)
        require idx < mem[96]
        mem[(32 * idx) + 128] = sub_44d855f1[address(arg1)][idx].field_0
        require idx < mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
        mem[(32 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 160] = sub_44d855f1[address(arg1)][idx].field_256
        require idx < mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
        mem[(64 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 192] = sub_44d855f1[address(arg1)][idx].field_512
        require idx < mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
        mem[(98 * sub_44d855f1[address(arg1)].field_0) + (32 * idx) + 224] = sub_44d855f1[address(arg1)][idx].field_768
        s = (4 * idx) + sha3(sha3(address(arg1), 19))
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _58 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
    _93 = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128]
    mem[(32 * mem[96]) + mem[64] + 192 len floor32(mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128])] = mem[(32 * sub_44d855f1[address(arg1)].field_0) + 160 len floor32(mem[(32 * sub_44d855f1[address(arg1)].field_0) + 128])]
    mem[mem[64] + 64] = (32 * _93) + (32 * mem[96]) + 192
    mem[(32 * _93) + (32 * _58) + _56 + 192] = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
    _115 = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160]
    mem[(32 * _93) + (32 * _58) + _56 + 224 len floor32(mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160])] = mem[(64 * sub_44d855f1[address(arg1)].field_0) + 192 len floor32(mem[(64 * sub_44d855f1[address(arg1)].field_0) + 160])]
    mem[_56 + 96] = (32 * _115) + (32 * _93) + (32 * _58) + 224
    mem[(32 * _115) + (32 * _93) + (32 * _58) + _56 + 224] = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
    _131 = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192]
    mem[(32 * _115) + (32 * _93) + (32 * _58) + _56 + 256 len floor32(mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192])] = mem[(98 * sub_44d855f1[address(arg1)].field_0) + 224 len floor32(mem[(98 * sub_44d855f1[address(arg1)].field_0) + 192])]
    return memory
      from mem[64]
       len (32 * _131) + (32 * _115) + (32 * _93) + (32 * _58) + _56 + -mem[64] + 256
}

function _fallback() payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require stage <= 2
    require stage == 1
    require block.timestamp <= closedAt
    require msg.value >= ticketPrice
    require ticketPrice
    require not msg.value % ticketPrice
    require ticketPrice
    require sub_c65a2178 <= sub_f0846d1d
    require sub_f0846d1d - sub_c65a2178 <= numberOfTickets
    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
    require (msg.value / ticketPrice) + sub_f0846d1d >= sub_f0846d1d
    require 1 <= (msg.value / ticketPrice) + sub_f0846d1d
    sub_f0846d1d += msg.value / ticketPrice
    if 20 != calldata.size:
        mem[64] = 352
        mem[224] = sub_f0846d1d
        mem[256] = (msg.value / ticketPrice) + sub_f0846d1d - 1
        mem[288] = msg.value
        mem[320] = 0
        mem[32] = 19
        sub_44d855f1[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 19)
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = 0
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_1024 = 0
        idx = 0
        while idx < sub_15c6aee2.length:
            mem[0] = 18
            if address(sub_15c6aee2[idx]) != msg.sender:
                idx = idx + 1
                continue 
            mem[448] = 0
            mem[480] = block.timestamp
            emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, 0, block.timestamp, msg.sender
            require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
            if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                require 1 <= numberOfTickets
                mem[384] = block.timestamp
                mem[416] = block.difficulty
                mem[352] = 64
                mem[64] = 448
                s = 384
                t = mem[64]
                idx = mem[352]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[352])] = mem[mem[64] + floor32(mem[352])] and 256^(-(mem[352] % 32) + 32) - 1 or mem[floor32(mem[352]) + 384] and !(256^(-(mem[352] % 32) + 32) - 1)
                _1228 = sha3(mem[mem[64] len -mem[64] + 512])
                require numberOfTickets - 1
                s = 0
                s = 96
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = address(sub_15c6aee2[idx])
                    mem[32] = 19
                    _1663 = mem[64]
                    mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                    mem[_1663] = sub_44d855f1[address(stor18[idx])].field_0
                    s = _1663 + 32
                    t = 0
                    while t < sub_44d855f1[address(stor18[idx])].field_0:
                        mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                        _2003 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2003] = sub_44d855f1[address(stor18[idx])][t].field_0
                        mem[_2003 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                        mem[_2003 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                        mem[_2003 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                        mem[s] = _2003
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < mem[_1663]:
                        require s < mem[_1663]
                        if (_1228 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1663 + (32 * s) + 32]]:
                            s = s + 1
                            continue 
                        require s < mem[_1663]
                        if (_1228 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1663 + 32] + 32]:
                            s = s + 1
                            continue 
                        require idx < sub_15c6aee2.length
                        winnerAddress = address(sub_15c6aee2[idx])
                        sub_c26eea54 = (_1228 % numberOfTickets - 1) + sub_c65a2178
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    s = mem[_1663]
                    s = _1663
                    idx = idx + 1
                    continue 
                require stage <= 2
                require stage == 1
                require block.timestamp + 1 >= block.timestamp
                finishedAt = block.timestamp + 1
                stage = 2
                sub_ee67df45 = block.timestamp + 5184001
                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
        sub_15c6aee2.length++
        uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
        mem[0] = msg.sender
        mem[32] = 22
        stor22[msg.sender] = 0
        emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, 0, block.timestamp, msg.sender
        require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
        if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
            require 1 <= numberOfTickets
            mem[384] = block.timestamp
            mem[416] = block.difficulty
            mem[352] = 64
            mem[64] = 448
            mem[448 len 64] = block.timestamp, block.difficulty
            require numberOfTickets - 1
            s = 0
            s = 96
            idx = 0
            while idx < sub_15c6aee2.length:
                mem[0] = address(sub_15c6aee2[idx])
                mem[32] = 19
                _1660 = mem[64]
                mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                mem[_1660] = sub_44d855f1[address(stor18[idx])].field_0
                s = _1660 + 32
                t = 0
                while t < sub_44d855f1[address(stor18[idx])].field_0:
                    mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                    _2000 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2000] = sub_44d855f1[address(stor18[idx])][t].field_0
                    mem[_2000 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                    mem[_2000 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                    mem[_2000 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                    mem[s] = _2000
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < mem[_1660]:
                    require s < mem[_1660]
                    if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1660 + (32 * s) + 32]]:
                        s = s + 1
                        continue 
                    require s < mem[_1660]
                    if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1660 + 32] + 32]:
                        s = s + 1
                        continue 
                    require idx < sub_15c6aee2.length
                    winnerAddress = address(sub_15c6aee2[idx])
                    sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                s = mem[_1660]
                s = _1660
                idx = idx + 1
                continue 
            require stage <= 2
            require stage == 1
            require block.timestamp + 1 >= block.timestamp
            finishedAt = block.timestamp + 1
            stage = 2
            sub_ee67df45 = block.timestamp + 5184001
            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
    else:
        mem[224] = calldata.size
        mem[256 len calldata.size] = call.data[0 len calldata.size]
        if not msg.value / 100:
            require (10 * msg.value / 100) + sub_e38d0530 >= sub_e38d0530
            sub_e38d0530 += 10 * msg.value / 100
            mem[ceil32(calldata.size) + 256] = msg.sender
            mem[ceil32(calldata.size) + 288] = 10 * msg.value / 100
            referrers[mem[256 len 20]].field_0++
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_0 = msg.sender
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_256 = 10 * msg.value / 100
            if sub_55f0ae09[address(mem[256 len 20])].field_264:
                require (10 * msg.value / 100) + sub_55f0ae09[address(mem[256 len 20])].field_0 >= sub_55f0ae09[address(mem[256 len 20])].field_0
                sub_55f0ae09[address(mem[256 len 20])].field_0 += 10 * msg.value / 100
                mem[64] = ceil32(calldata.size) + 448
                mem[ceil32(calldata.size) + 320] = sub_f0846d1d
                mem[ceil32(calldata.size) + 352] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 384] = msg.value
                mem[ceil32(calldata.size) + 416] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 544] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 480] = block.timestamp
                        mem[ceil32(calldata.size) + 512] = block.difficulty
                        mem[ceil32(calldata.size) + 448] = 64
                        mem[64] = ceil32(calldata.size) + 544
                        s = ceil32(calldata.size) + 480
                        t = mem[64]
                        idx = mem[ceil32(calldata.size) + 448]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] = mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] and 256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1 or mem[ceil32(calldata.size) + floor32(mem[ceil32(calldata.size) + 448]) + 480] and !(256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1)
                        _1248 = sha3(mem[mem[64] len ceil32(calldata.size) + -mem[64] + 608])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _1675 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_1675] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _1675 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2015 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2015] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2015 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2015 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2015 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2015
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_1675]:
                                require s < mem[_1675]
                                if (_1248 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1675 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_1675]
                                if (_1248 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1675 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1248 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            s = mem[_1675]
                            s = _1675
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 480] = block.timestamp
                    mem[ceil32(calldata.size) + 512] = block.difficulty
                    mem[ceil32(calldata.size) + 448] = 64
                    mem[64] = ceil32(calldata.size) + 544
                    mem[ceil32(calldata.size) + 544 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _1672 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_1672] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _1672 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2012 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2012] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2012 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2012 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2012 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2012
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_1672]:
                            require s < mem[_1672]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1672 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_1672]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1672 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                        s = mem[_1672]
                        s = _1672
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
            else:
                mem[ceil32(calldata.size) + 320] = 10 * msg.value / 100
                mem[ceil32(calldata.size) + 352] = 0
                mem[ceil32(calldata.size) + 384] = 1
                sub_55f0ae09[address(mem[256 len 20])].field_0 = 10 * msg.value / 100
                sub_55f0ae09[address(mem[256 len 20])].field_256 = 0
                sub_55f0ae09[address(mem[256 len 20])].field_264 = 1
                sub_55f0ae09[address(mem[256 len 20])].field_272 = 0
                mem[64] = ceil32(calldata.size) + 544
                mem[ceil32(calldata.size) + 416] = sub_f0846d1d
                mem[ceil32(calldata.size) + 448] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 480] = msg.value
                mem[ceil32(calldata.size) + 512] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 640] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 672] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 576] = block.timestamp
                        mem[ceil32(calldata.size) + 608] = block.difficulty
                        mem[ceil32(calldata.size) + 544] = 64
                        mem[64] = ceil32(calldata.size) + 640
                        s = ceil32(calldata.size) + 576
                        t = ceil32(calldata.size) + 640
                        idx = 64
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        _1268 = sha3(mem[ceil32(calldata.size) + 640 len 64])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _1687 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_1687] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _1687 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2027 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2027] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2027 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2027 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2027 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2027
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_1687]:
                                require s < mem[_1687]
                                if (_1268 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1687 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_1687]
                                if (_1268 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1687 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1268 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            s = mem[_1687]
                            s = _1687
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    mem[ceil32(calldata.size) + 608] = block.difficulty
                    mem[ceil32(calldata.size) + 544] = 64
                    mem[64] = ceil32(calldata.size) + 640
                    mem[ceil32(calldata.size) + 640 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _1684 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_1684] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _1684 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2024 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2024] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2024 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2024 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2024 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2024
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_1684]:
                            require s < mem[_1684]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1684 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_1684]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1684 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                        s = mem[_1684]
                        s = _1684
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
        else:
            require msg.value / 100
            require 10 * msg.value / 100 / msg.value / 100 == 10
            require (10 * msg.value / 100) + sub_e38d0530 >= sub_e38d0530
            sub_e38d0530 += 10 * msg.value / 100
            mem[ceil32(calldata.size) + 256] = msg.sender
            mem[ceil32(calldata.size) + 288] = 10 * msg.value / 100
            referrers[mem[256 len 20]].field_0++
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_0 = msg.sender
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_256 = 10 * msg.value / 100
            if sub_55f0ae09[address(mem[256 len 20])].field_264:
                require (10 * msg.value / 100) + sub_55f0ae09[address(mem[256 len 20])].field_0 >= sub_55f0ae09[address(mem[256 len 20])].field_0
                sub_55f0ae09[address(mem[256 len 20])].field_0 += 10 * msg.value / 100
                mem[64] = ceil32(calldata.size) + 448
                mem[ceil32(calldata.size) + 320] = sub_f0846d1d
                mem[ceil32(calldata.size) + 352] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 384] = msg.value
                mem[ceil32(calldata.size) + 416] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 544] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 480] = block.timestamp
                        mem[ceil32(calldata.size) + 512] = block.difficulty
                        mem[ceil32(calldata.size) + 448] = 64
                        mem[64] = ceil32(calldata.size) + 544
                        s = ceil32(calldata.size) + 480
                        t = mem[64]
                        idx = mem[ceil32(calldata.size) + 448]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] = mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] and 256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1 or mem[ceil32(calldata.size) + floor32(mem[ceil32(calldata.size) + 448]) + 480] and !(256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1)
                        _1288 = sha3(mem[mem[64] len ceil32(calldata.size) + -mem[64] + 608])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _1699 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_1699] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _1699 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2039 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2039] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2039 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2039 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2039 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2039
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_1699]:
                                require s < mem[_1699]
                                if (_1288 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1699 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_1699]
                                if (_1288 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1699 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1288 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            s = mem[_1699]
                            s = _1699
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 480] = block.timestamp
                    mem[ceil32(calldata.size) + 512] = block.difficulty
                    mem[ceil32(calldata.size) + 448] = 64
                    mem[64] = ceil32(calldata.size) + 544
                    mem[ceil32(calldata.size) + 544 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _1696 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_1696] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _1696 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2036 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2036] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2036 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2036 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2036 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2036
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_1696]:
                            require s < mem[_1696]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1696 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_1696]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1696 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                        s = mem[_1696]
                        s = _1696
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
            else:
                mem[ceil32(calldata.size) + 320] = 10 * msg.value / 100
                mem[ceil32(calldata.size) + 352] = 0
                mem[ceil32(calldata.size) + 384] = 1
                sub_55f0ae09[address(mem[256 len 20])].field_0 = 10 * msg.value / 100
                sub_55f0ae09[address(mem[256 len 20])].field_256 = 0
                sub_55f0ae09[address(mem[256 len 20])].field_264 = 1
                sub_55f0ae09[address(mem[256 len 20])].field_272 = 0
                mem[64] = ceil32(calldata.size) + 544
                mem[ceil32(calldata.size) + 416] = sub_f0846d1d
                mem[ceil32(calldata.size) + 448] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 480] = msg.value
                mem[ceil32(calldata.size) + 512] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 640] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 672] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 576] = block.timestamp
                        mem[ceil32(calldata.size) + 608] = block.difficulty
                        mem[ceil32(calldata.size) + 544] = 64
                        mem[64] = ceil32(calldata.size) + 640
                        s = ceil32(calldata.size) + 576
                        t = ceil32(calldata.size) + 640
                        idx = 64
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        _1308 = sha3(mem[ceil32(calldata.size) + 640 len 64])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _1711 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_1711] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _1711 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2051 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2051] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2051 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2051 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2051 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2051
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_1711]:
                                require s < mem[_1711]
                                if (_1308 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1711 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_1711]
                                if (_1308 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1711 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1308 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            s = mem[_1711]
                            s = _1711
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    mem[ceil32(calldata.size) + 608] = block.difficulty
                    mem[ceil32(calldata.size) + 544] = 64
                    mem[64] = ceil32(calldata.size) + 640
                    mem[ceil32(calldata.size) + 640 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _1708 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_1708] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _1708 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2048 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2048] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2048 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2048 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2048 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2048
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_1708]:
                            require s < mem[_1708]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1708 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_1708]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1708 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                        s = mem[_1708]
                        s = _1708
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
}

function buyTickets() payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require stage <= 2
    require stage == 1
    require block.timestamp <= closedAt
    require msg.value >= ticketPrice
    require ticketPrice
    require not msg.value % ticketPrice
    require ticketPrice
    require sub_c65a2178 <= sub_f0846d1d
    require sub_f0846d1d - sub_c65a2178 <= numberOfTickets
    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
    require (msg.value / ticketPrice) + sub_f0846d1d >= sub_f0846d1d
    require 1 <= (msg.value / ticketPrice) + sub_f0846d1d
    sub_f0846d1d += msg.value / ticketPrice
    if 20 != calldata.size:
        mem[64] = 352
        mem[224] = sub_f0846d1d
        mem[256] = (msg.value / ticketPrice) + sub_f0846d1d - 1
        mem[288] = msg.value
        mem[320] = 0
        mem[32] = 19
        sub_44d855f1[msg.sender].field_0++
        mem[0] = sha3(msg.sender, 19)
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = 0
        sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_1024 = 0
        idx = 0
        while idx < sub_15c6aee2.length:
            mem[0] = 18
            if address(sub_15c6aee2[idx]) != msg.sender:
                idx = idx + 1
                continue 
            mem[448] = 0
            mem[480] = block.timestamp
            emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, 0, block.timestamp, msg.sender
            require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
            if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                require 1 <= numberOfTickets
                mem[384] = block.timestamp
                mem[416] = block.difficulty
                mem[352] = 64
                mem[64] = 448
                s = 384
                t = mem[64]
                idx = mem[352]
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[mem[64] + floor32(mem[352])] = mem[mem[64] + floor32(mem[352])] and 256^(-(mem[352] % 32) + 32) - 1 or mem[floor32(mem[352]) + 384] and !(256^(-(mem[352] % 32) + 32) - 1)
                _1468 = sha3(mem[mem[64] len -mem[64] + 512])
                require numberOfTickets - 1
                s = 0
                s = 96
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = address(sub_15c6aee2[idx])
                    mem[32] = 19
                    _1983 = mem[64]
                    mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                    mem[_1983] = sub_44d855f1[address(stor18[idx])].field_0
                    s = _1983 + 32
                    t = 0
                    while t < sub_44d855f1[address(stor18[idx])].field_0:
                        mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                        _2403 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_2403] = sub_44d855f1[address(stor18[idx])][t].field_0
                        mem[_2403 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                        mem[_2403 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                        mem[_2403 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                        mem[s] = _2403
                        s = s + 32
                        t = t + 1
                        continue 
                    s = 0
                    while s < mem[_1983]:
                        require s < mem[_1983]
                        if (_1468 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1983 + (32 * s) + 32]]:
                            s = s + 1
                            continue 
                        require s < mem[_1983]
                        if (_1468 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1983 + 32] + 32]:
                            s = s + 1
                            continue 
                        require idx < sub_15c6aee2.length
                        winnerAddress = address(sub_15c6aee2[idx])
                        sub_c26eea54 = (_1468 % numberOfTickets - 1) + sub_c65a2178
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                        return 1
                    s = mem[_1983]
                    s = _1983
                    idx = idx + 1
                    continue 
                require stage <= 2
                require stage == 1
                require block.timestamp + 1 >= block.timestamp
                finishedAt = block.timestamp + 1
                stage = 2
                sub_ee67df45 = block.timestamp + 5184001
                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
            return 1
        sub_15c6aee2.length++
        uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
        mem[0] = msg.sender
        mem[32] = 22
        stor22[msg.sender] = 0
        emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, 0, block.timestamp, msg.sender
        require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
        if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
            require 1 <= numberOfTickets
            mem[384] = block.timestamp
            mem[416] = block.difficulty
            mem[352] = 64
            mem[64] = 448
            mem[448 len 64] = block.timestamp, block.difficulty
            require numberOfTickets - 1
            s = 0
            s = 96
            idx = 0
            while idx < sub_15c6aee2.length:
                mem[0] = address(sub_15c6aee2[idx])
                mem[32] = 19
                _1980 = mem[64]
                mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                mem[_1980] = sub_44d855f1[address(stor18[idx])].field_0
                s = _1980 + 32
                t = 0
                while t < sub_44d855f1[address(stor18[idx])].field_0:
                    mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                    _2400 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2400] = sub_44d855f1[address(stor18[idx])][t].field_0
                    mem[_2400 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                    mem[_2400 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                    mem[_2400 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                    mem[s] = _2400
                    s = s + 32
                    t = t + 1
                    continue 
                s = 0
                while s < mem[_1980]:
                    require s < mem[_1980]
                    if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1980 + (32 * s) + 32]]:
                        s = s + 1
                        continue 
                    require s < mem[_1980]
                    if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1980 + 32] + 32]:
                        s = s + 1
                        continue 
                    require idx < sub_15c6aee2.length
                    winnerAddress = address(sub_15c6aee2[idx])
                    sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    return 1
                s = mem[_1980]
                s = _1980
                idx = idx + 1
                continue 
            require stage <= 2
            require stage == 1
            require block.timestamp + 1 >= block.timestamp
            finishedAt = block.timestamp + 1
            stage = 2
            sub_ee67df45 = block.timestamp + 5184001
            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
    else:
        mem[224] = calldata.size
        mem[256 len calldata.size] = call.data[0 len calldata.size]
        if not msg.value / 100:
            require (10 * msg.value / 100) + sub_e38d0530 >= sub_e38d0530
            sub_e38d0530 += 10 * msg.value / 100
            mem[ceil32(calldata.size) + 256] = msg.sender
            mem[ceil32(calldata.size) + 288] = 10 * msg.value / 100
            referrers[mem[256 len 20]].field_0++
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_0 = msg.sender
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_256 = 10 * msg.value / 100
            if sub_55f0ae09[address(mem[256 len 20])].field_264:
                require (10 * msg.value / 100) + sub_55f0ae09[address(mem[256 len 20])].field_0 >= sub_55f0ae09[address(mem[256 len 20])].field_0
                sub_55f0ae09[address(mem[256 len 20])].field_0 += 10 * msg.value / 100
                mem[64] = ceil32(calldata.size) + 448
                mem[ceil32(calldata.size) + 320] = sub_f0846d1d
                mem[ceil32(calldata.size) + 352] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 384] = msg.value
                mem[ceil32(calldata.size) + 416] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 544] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 480] = block.timestamp
                        mem[ceil32(calldata.size) + 512] = block.difficulty
                        mem[ceil32(calldata.size) + 448] = 64
                        mem[64] = ceil32(calldata.size) + 544
                        s = ceil32(calldata.size) + 480
                        t = mem[64]
                        idx = mem[ceil32(calldata.size) + 448]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] = mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] and 256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1 or mem[ceil32(calldata.size) + floor32(mem[ceil32(calldata.size) + 448]) + 480] and !(256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1)
                        _1488 = sha3(mem[mem[64] len ceil32(calldata.size) + -mem[64] + 608])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _1995 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_1995] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _1995 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2415 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2415] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2415 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2415 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2415 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2415
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_1995]:
                                require s < mem[_1995]
                                if (_1488 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1995 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_1995]
                                if (_1488 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1995 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1488 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                                return 1
                            s = mem[_1995]
                            s = _1995
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    return 1
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 480] = block.timestamp
                    mem[ceil32(calldata.size) + 512] = block.difficulty
                    mem[ceil32(calldata.size) + 448] = 64
                    mem[64] = ceil32(calldata.size) + 544
                    mem[ceil32(calldata.size) + 544 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _1992 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_1992] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _1992 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2412 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2412] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2412 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2412 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2412 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2412
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_1992]:
                            require s < mem[_1992]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_1992 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_1992]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _1992 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            return 1
                        s = mem[_1992]
                        s = _1992
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
            else:
                mem[ceil32(calldata.size) + 320] = 10 * msg.value / 100
                mem[ceil32(calldata.size) + 352] = 0
                mem[ceil32(calldata.size) + 384] = 1
                sub_55f0ae09[address(mem[256 len 20])].field_0 = 10 * msg.value / 100
                sub_55f0ae09[address(mem[256 len 20])].field_256 = 0
                sub_55f0ae09[address(mem[256 len 20])].field_264 = 1
                sub_55f0ae09[address(mem[256 len 20])].field_272 = 0
                mem[64] = ceil32(calldata.size) + 544
                mem[ceil32(calldata.size) + 416] = sub_f0846d1d
                mem[ceil32(calldata.size) + 448] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 480] = msg.value
                mem[ceil32(calldata.size) + 512] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 640] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 672] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 576] = block.timestamp
                        mem[ceil32(calldata.size) + 608] = block.difficulty
                        mem[ceil32(calldata.size) + 544] = 64
                        mem[64] = ceil32(calldata.size) + 640
                        s = ceil32(calldata.size) + 576
                        t = ceil32(calldata.size) + 640
                        idx = 64
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        _1508 = sha3(mem[ceil32(calldata.size) + 640 len 64])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _2007 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_2007] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _2007 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2427 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2427] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2427 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2427 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2427 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2427
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_2007]:
                                require s < mem[_2007]
                                if (_1508 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2007 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_2007]
                                if (_1508 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2007 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1508 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                                return 1
                            s = mem[_2007]
                            s = _2007
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    return 1
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    mem[ceil32(calldata.size) + 608] = block.difficulty
                    mem[ceil32(calldata.size) + 544] = 64
                    mem[64] = ceil32(calldata.size) + 640
                    mem[ceil32(calldata.size) + 640 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _2004 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_2004] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _2004 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2424 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2424] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2424 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2424 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2424 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2424
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_2004]:
                            require s < mem[_2004]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2004 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_2004]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2004 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            return 1
                        s = mem[_2004]
                        s = _2004
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
        else:
            require msg.value / 100
            require 10 * msg.value / 100 / msg.value / 100 == 10
            require (10 * msg.value / 100) + sub_e38d0530 >= sub_e38d0530
            sub_e38d0530 += 10 * msg.value / 100
            mem[ceil32(calldata.size) + 256] = msg.sender
            mem[ceil32(calldata.size) + 288] = 10 * msg.value / 100
            referrers[mem[256 len 20]].field_0++
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_0 = msg.sender
            referrers[mem[256 len 20]][referrers[mem[256 len 20]].field_0].field_256 = 10 * msg.value / 100
            if sub_55f0ae09[address(mem[256 len 20])].field_264:
                require (10 * msg.value / 100) + sub_55f0ae09[address(mem[256 len 20])].field_0 >= sub_55f0ae09[address(mem[256 len 20])].field_0
                sub_55f0ae09[address(mem[256 len 20])].field_0 += 10 * msg.value / 100
                mem[64] = ceil32(calldata.size) + 448
                mem[ceil32(calldata.size) + 320] = sub_f0846d1d
                mem[ceil32(calldata.size) + 352] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 384] = msg.value
                mem[ceil32(calldata.size) + 416] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 544] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 480] = block.timestamp
                        mem[ceil32(calldata.size) + 512] = block.difficulty
                        mem[ceil32(calldata.size) + 448] = 64
                        mem[64] = ceil32(calldata.size) + 544
                        s = ceil32(calldata.size) + 480
                        t = mem[64]
                        idx = mem[ceil32(calldata.size) + 448]
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] = mem[mem[64] + floor32(mem[ceil32(calldata.size) + 448])] and 256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1 or mem[ceil32(calldata.size) + floor32(mem[ceil32(calldata.size) + 448]) + 480] and !(256^(-(mem[ceil32(calldata.size) + 448] % 32) + 32) - 1)
                        _1528 = sha3(mem[mem[64] len ceil32(calldata.size) + -mem[64] + 608])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _2019 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_2019] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _2019 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2439 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2439] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2439 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2439 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2439 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2439
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_2019]:
                                require s < mem[_2019]
                                if (_1528 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2019 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_2019]
                                if (_1528 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2019 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1528 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                                return 1
                            s = mem[_2019]
                            s = _2019
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    return 1
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 480] = block.timestamp
                    mem[ceil32(calldata.size) + 512] = block.difficulty
                    mem[ceil32(calldata.size) + 448] = 64
                    mem[64] = ceil32(calldata.size) + 544
                    mem[ceil32(calldata.size) + 544 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _2016 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_2016] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _2016 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2436 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2436] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2436 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2436 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2436 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2436
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_2016]:
                            require s < mem[_2016]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2016 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_2016]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2016 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            return 1
                        s = mem[_2016]
                        s = _2016
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
            else:
                mem[ceil32(calldata.size) + 320] = 10 * msg.value / 100
                mem[ceil32(calldata.size) + 352] = 0
                mem[ceil32(calldata.size) + 384] = 1
                sub_55f0ae09[address(mem[256 len 20])].field_0 = 10 * msg.value / 100
                sub_55f0ae09[address(mem[256 len 20])].field_256 = 0
                sub_55f0ae09[address(mem[256 len 20])].field_264 = 1
                sub_55f0ae09[address(mem[256 len 20])].field_272 = 0
                mem[64] = ceil32(calldata.size) + 544
                mem[ceil32(calldata.size) + 416] = sub_f0846d1d
                mem[ceil32(calldata.size) + 448] = (msg.value / ticketPrice) + sub_f0846d1d - 1
                mem[ceil32(calldata.size) + 480] = msg.value
                mem[ceil32(calldata.size) + 512] = mem[256 len 20]
                mem[32] = 19
                sub_44d855f1[msg.sender].field_0++
                mem[0] = sha3(msg.sender, 19)
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_0 = sub_f0846d1d
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_256 = (msg.value / ticketPrice) + sub_f0846d1d - 1
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_512 = msg.value
                sub_44d855f1[msg.sender][sub_44d855f1[msg.sender].field_0].field_768 = mem[256 len 20]
                idx = 0
                while idx < sub_15c6aee2.length:
                    mem[0] = 18
                    if address(sub_15c6aee2[idx]) != msg.sender:
                        idx = idx + 1
                        continue 
                    mem[ceil32(calldata.size) + 640] = mem[256 len 20]
                    mem[ceil32(calldata.size) + 672] = block.timestamp
                    emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                    require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                    if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                        require 1 <= numberOfTickets
                        mem[ceil32(calldata.size) + 576] = block.timestamp
                        mem[ceil32(calldata.size) + 608] = block.difficulty
                        mem[ceil32(calldata.size) + 544] = 64
                        mem[64] = ceil32(calldata.size) + 640
                        s = ceil32(calldata.size) + 576
                        t = ceil32(calldata.size) + 640
                        idx = 64
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        _1548 = sha3(mem[ceil32(calldata.size) + 640 len 64])
                        require numberOfTickets - 1
                        s = 0
                        s = 96
                        idx = 0
                        while idx < sub_15c6aee2.length:
                            mem[0] = address(sub_15c6aee2[idx])
                            mem[32] = 19
                            _2031 = mem[64]
                            mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                            mem[_2031] = sub_44d855f1[address(stor18[idx])].field_0
                            s = _2031 + 32
                            t = 0
                            while t < sub_44d855f1[address(stor18[idx])].field_0:
                                mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                                _2451 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_2451] = sub_44d855f1[address(stor18[idx])][t].field_0
                                mem[_2451 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                                mem[_2451 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                                mem[_2451 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                                mem[s] = _2451
                                s = s + 32
                                t = t + 1
                                continue 
                            s = 0
                            while s < mem[_2031]:
                                require s < mem[_2031]
                                if (_1548 % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2031 + (32 * s) + 32]]:
                                    s = s + 1
                                    continue 
                                require s < mem[_2031]
                                if (_1548 % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2031 + 32] + 32]:
                                    s = s + 1
                                    continue 
                                require idx < sub_15c6aee2.length
                                winnerAddress = address(sub_15c6aee2[idx])
                                sub_c26eea54 = (_1548 % numberOfTickets - 1) + sub_c65a2178
                                require stage <= 2
                                require stage == 1
                                require block.timestamp + 1 >= block.timestamp
                                finishedAt = block.timestamp + 1
                                stage = 2
                                sub_ee67df45 = block.timestamp + 5184001
                                emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                                return 1
                            s = mem[_2031]
                            s = _2031
                            idx = idx + 1
                            continue 
                        require stage <= 2
                        require stage == 1
                        require block.timestamp + 1 >= block.timestamp
                        finishedAt = block.timestamp + 1
                        stage = 2
                        sub_ee67df45 = block.timestamp + 5184001
                        emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                    return 1
                sub_15c6aee2.length++
                uint256(sub_15c6aee2[sub_15c6aee2.length]) = msg.sender or Mask(96, 160, uint256(sub_15c6aee2[sub_15c6aee2.length]))
                mem[0] = msg.sender
                mem[32] = 22
                stor22[msg.sender] = 0
                emit 0x86b10a3c: sub_f0846d1d, (msg.value / ticketPrice) + sub_f0846d1d - 1, msg.value, mem[256 len 20], block.timestamp, msg.sender
                require msg.value / ticketPrice <= numberOfTickets - sub_f0846d1d + sub_c65a2178
                if not numberOfTickets - sub_f0846d1d + sub_c65a2178 - (msg.value / ticketPrice):
                    require 1 <= numberOfTickets
                    mem[ceil32(calldata.size) + 576] = block.timestamp
                    mem[ceil32(calldata.size) + 608] = block.difficulty
                    mem[ceil32(calldata.size) + 544] = 64
                    mem[64] = ceil32(calldata.size) + 640
                    mem[ceil32(calldata.size) + 640 len 64] = block.timestamp, block.difficulty
                    require numberOfTickets - 1
                    s = 0
                    s = 96
                    idx = 0
                    while idx < sub_15c6aee2.length:
                        mem[0] = address(sub_15c6aee2[idx])
                        mem[32] = 19
                        _2028 = mem[64]
                        mem[64] = mem[64] + (32 * sub_44d855f1[address(stor18[idx])].field_0) + 32
                        mem[_2028] = sub_44d855f1[address(stor18[idx])].field_0
                        s = _2028 + 32
                        t = 0
                        while t < sub_44d855f1[address(stor18[idx])].field_0:
                            mem[0] = sha3(address(sub_15c6aee2[idx]), 19)
                            _2448 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_2448] = sub_44d855f1[address(stor18[idx])][t].field_0
                            mem[_2448 + 32] = sub_44d855f1[address(stor18[idx])][t].field_256
                            mem[_2448 + 64] = sub_44d855f1[address(stor18[idx])][t].field_512
                            mem[_2448 + 96] = sub_44d855f1[address(stor18[idx])][t].field_768
                            mem[s] = _2448
                            s = s + 32
                            t = t + 1
                            continue 
                        s = 0
                        while s < mem[_2028]:
                            require s < mem[_2028]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 < mem[mem[_2028 + (32 * s) + 32]]:
                                s = s + 1
                                continue 
                            require s < mem[_2028]
                            if (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178 > mem[mem[(32 * s) + _2028 + 32] + 32]:
                                s = s + 1
                                continue 
                            require idx < sub_15c6aee2.length
                            winnerAddress = address(sub_15c6aee2[idx])
                            sub_c26eea54 = (sha3(block.timestamp, block.difficulty) % numberOfTickets - 1) + sub_c65a2178
                            require stage <= 2
                            require stage == 1
                            require block.timestamp + 1 >= block.timestamp
                            finishedAt = block.timestamp + 1
                            stage = 2
                            sub_ee67df45 = block.timestamp + 5184001
                            emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
                            return 1
                        s = mem[_2028]
                        s = _2028
                        idx = idx + 1
                        continue 
                    require stage <= 2
                    require stage == 1
                    require block.timestamp + 1 >= block.timestamp
                    finishedAt = block.timestamp + 1
                    stage = 2
                    sub_ee67df45 = block.timestamp + 5184001
                    emit 0xc0667f50: sub_c26eea54, sub_c65a2178, block.timestamp + 1, winnerAddress
    return 1
}



}
