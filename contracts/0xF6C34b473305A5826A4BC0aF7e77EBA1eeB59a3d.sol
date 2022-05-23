contract main {




// =====================  Runtime code  =====================


const getRewardAmount = eth.balance(this.address)


address managerAddress;
array of address stor1;
uint256 donatedAmount;
uint256 stor3;
uint256 stor4;
address stor5;
array of struct stor6;
array of uint256 stor7;
array of uint256 stor8;
array of address stor9;
array of struct stor11;
array of struct stor12;
mapping of uint8 stor13;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function manager() {
    return managerAddress
}

function donatedAmount() {
    return donatedAmount
}

function Wallets(address arg1) {
    return bool(stor13[arg1])
}

function enddate() {
    return stor1.length
}

function kill() {
    if managerAddress != msg.sender:
        revert with 0, 'Sender is not authorized.'
    selfdestruct(stor5)
}

function _fallback() payable {
    revert
}

function checkIsOpen() {
    if block.timestamp > stor1.length:
        return 0
    return 1
}

function increaseReward() payable {
    if stor1.length < block.timestamp:
        revert with 0, 'Paticipants not allwoed.Time up!'
    emit IncreasedReward(msg.sender, msg.value);
}

function enter(bytes32 arg1) payable {
    if msg.value < 10^16:
        revert with 0, 'Minimum ETH not sent'
    if stor13[msg.sender]:
        revert with 0, 'Sender has already participated.'
    if stor1.length < block.timestamp:
        revert with 0, 'Paticipants not allwoed.Time up!'
    emit ParticipantJoined(msg.sender, arg1);
    if arg1 != stor4:
        if arg1 != stor3:
            revert with 0, 'Invalid Entry!'
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.value + donatedAmount >= donatedAmount
    require msg.value + donatedAmount >= msg.value
    donatedAmount += msg.value
    stor6.length++
    stor6[stor6.length].field_0 = msg.sender or Mask(96, 160, stor6[stor6.length].field_0)
    stor12.length++
    stor12[stor12.length].field_0 = msg.value
    stor13[address(msg.sender)] = 1
    if arg1 == stor4:
        stor7.length++
        stor7[stor7.length] = msg.sender or Mask(96, 160, stor7[stor7.length])
    else:
        if arg1 == stor3:
            stor8.length++
            stor8[stor8.length] = msg.sender or Mask(96, 160, stor8[stor8.length])
}

function getParticipants() {
    if stor6.length:
        mem[128] = address(stor6.field_0)
        idx = 128
        s = 0
        while (32 * stor6.length) + 96 > idx:
            mem[idx + 32] = address(stor6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if stor12.length:
        mem[(32 * stor6.length) + 160] = uint256(stor12.field_0)
        idx = (32 * stor6.length) + 160
        s = 0
        while (32 * stor6.length) + (32 * stor12.length) + 128 > idx:
            mem[idx + 32] = stor12[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor6.length) + (32 * stor12.length) + 320 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    mem[(64 * stor6.length) + (32 * stor12.length) + 320] = stor12.length
    mem[(64 * stor6.length) + (32 * stor12.length) + 352 len floor32(stor12.length)] = mem[(32 * stor6.length) + 160 len floor32(stor12.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + (32 * stor12.length) + floor32(stor6.length) + 320 len (32 * stor6.length) + (32 * stor12.length) + -floor32(stor6.length) + 32]), 
           (32 * stor6.length) + 160,
           stor7.length,
           stor8.length
}

function pickWinner(bytes32 arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    if managerAddress != msg.sender:
        revert with 0, 'Sender is not authorized.'
    if stor1.length >= block.timestamp:
        revert with 0, 'Not yet time'
    if 100 > stor6.length:
        require ext_code.size(this.address)
        call this.address.getRewardAmount() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call stor5 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if 30 > stor7.length:
            require ext_code.size(this.address)
            call this.address.getRewardAmount() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call stor5 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 30 > stor8.length:
                require ext_code.size(this.address)
                call this.address.getRewardAmount() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call stor5 with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg1 == stor4:
                    stor9.length = stor7.length
                    mem[0] = 9
                    if not stor7.length:
                        idx = 0
                        while stor9.length > idx:
                            address(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                        s = 0
                        s = 0
                        idx = 0
                        while idx < 2:
                            _153 = mem[64]
                            mem[64] = mem[64] + (32 * stor9.length) + 32
                            mem[_153] = stor9.length
                            if not stor9.length:
                                _160 = mem[64]
                                mem[mem[64]] = block.difficulty
                                mem[mem[64] + 32] = block.timestamp
                                s = 0
                                while s < 32 * stor9.length:
                                    mem[s + _160 + 64] = mem[s + _153 + 32]
                                    s = s + 32
                                    continue 
                                mem[(32 * stor9.length) + _160 + 64] = arg2
                                _228 = sha3(mem[mem[64] len (32 * stor9.length) + _160 + -mem[64] + 96])
                                require stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _160 + -mem[64] + 96]) % stor9.length < stor9.length
                                require stor9.length - 1 < stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _160 + -mem[64] + 96]) % stor9.length < stor9.length
                                address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _160 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                stor9.length--
                                if stor9.length > stor9.length - 1:
                                    s = stor9.length + sha3(9) - 1
                                    while sha3(9) + stor9.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor11.length++
                                mem[0] = 11
                                stor175B[stor11.length] = address(stor9[_228 % stor9.length])
                                s = address(stor9[_228 % stor9.length])
                                s = _228 % stor9.length
                                idx = idx + 1
                                continue 
                            mem[_153 + 32] = address(stor9)
                            s = _153 + 32
                            t = sha3(9)
                            while _153 + (32 * stor9.length) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _296 = mem[64]
                            mem[mem[64]] = block.difficulty
                            mem[mem[64] + 32] = block.timestamp
                            s = 0
                            while s < 32 * stor9.length:
                                mem[s + _296 + 64] = mem[s + _153 + 32]
                                s = s + 32
                                continue 
                            mem[(32 * stor9.length) + _296 + 64] = arg2
                            _335 = sha3(mem[mem[64] len (32 * stor9.length) + _296 + -mem[64] + 96])
                            require stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _296 + -mem[64] + 96]) % stor9.length < stor9.length
                            require stor9.length - 1 < stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _296 + -mem[64] + 96]) % stor9.length < stor9.length
                            address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _296 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                            stor9.length--
                            if stor9.length > stor9.length - 1:
                                s = stor9.length + sha3(9) - 1
                                while sha3(9) + stor9.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            stor11.length++
                            mem[0] = 11
                            stor175B[stor11.length] = address(stor9[_335 % stor9.length])
                            s = address(stor9[_335 % stor9.length])
                            s = _335 % stor9.length
                            idx = idx + 1
                            continue 
                    else:
                        mem[0] = 7
                        s = 0
                        idx = 0
                        while stor7.length > idx:
                            uint256(stor9[s]) = stor7[idx]
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor7.length
                        while stor9.length > idx:
                            address(stor9[idx]) = 0
                            idx = idx + 1
                            continue 
                        s = 0
                        s = 0
                        idx = 0
                        while idx < 2:
                            _232 = mem[64]
                            mem[64] = mem[64] + (32 * stor9.length) + 32
                            mem[_232] = stor9.length
                            if not stor9.length:
                                _242 = mem[64]
                                mem[mem[64]] = block.difficulty
                                mem[mem[64] + 32] = block.timestamp
                                s = 0
                                while s < 32 * stor9.length:
                                    mem[s + _242 + 64] = mem[s + _232 + 32]
                                    s = s + 32
                                    continue 
                                mem[(32 * stor9.length) + _242 + 64] = arg2
                                _299 = sha3(mem[mem[64] len (32 * stor9.length) + _242 + -mem[64] + 96])
                                require stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _242 + -mem[64] + 96]) % stor9.length < stor9.length
                                require stor9.length - 1 < stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _242 + -mem[64] + 96]) % stor9.length < stor9.length
                                address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _242 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                stor9.length--
                                if stor9.length > stor9.length - 1:
                                    s = stor9.length + sha3(9) - 1
                                    while sha3(9) + stor9.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor11.length++
                                mem[0] = 11
                                stor175B[stor11.length] = address(stor9[_299 % stor9.length])
                                s = address(stor9[_299 % stor9.length])
                                s = _299 % stor9.length
                                idx = idx + 1
                                continue 
                            mem[_232 + 32] = address(stor9)
                            s = _232 + 32
                            t = sha3(9)
                            while _232 + (32 * stor9.length) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _337 = mem[64]
                            mem[mem[64]] = block.difficulty
                            mem[mem[64] + 32] = block.timestamp
                            s = 0
                            while s < 32 * stor9.length:
                                mem[s + _337 + 64] = mem[s + _232 + 32]
                                s = s + 32
                                continue 
                            mem[(32 * stor9.length) + _337 + 64] = arg2
                            _365 = sha3(mem[mem[64] len (32 * stor9.length) + _337 + -mem[64] + 96])
                            require stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _337 + -mem[64] + 96]) % stor9.length < stor9.length
                            require stor9.length - 1 < stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _337 + -mem[64] + 96]) % stor9.length < stor9.length
                            address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _337 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                            stor9.length--
                            if stor9.length > stor9.length - 1:
                                s = stor9.length + sha3(9) - 1
                                while sha3(9) + stor9.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            stor11.length++
                            mem[0] = 11
                            stor175B[stor11.length] = address(stor9[_365 % stor9.length])
                            s = address(stor9[_365 % stor9.length])
                            s = _365 % stor9.length
                            idx = idx + 1
                            continue 
                else:
                    if arg1 != stor3:
                        s = 0
                        s = 0
                        idx = 0
                        while idx < 2:
                            _81 = mem[64]
                            mem[64] = mem[64] + (32 * stor9.length) + 32
                            mem[_81] = stor9.length
                            if not stor9.length:
                                _84 = mem[64]
                                mem[mem[64]] = block.difficulty
                                mem[mem[64] + 32] = block.timestamp
                                s = 0
                                while s < 32 * stor9.length:
                                    mem[s + _84 + 64] = mem[s + _81 + 32]
                                    s = s + 32
                                    continue 
                                mem[(32 * stor9.length) + _84 + 64] = arg2
                                _146 = sha3(mem[mem[64] len (32 * stor9.length) + _84 + -mem[64] + 96])
                                require stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _84 + -mem[64] + 96]) % stor9.length < stor9.length
                                require stor9.length - 1 < stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _84 + -mem[64] + 96]) % stor9.length < stor9.length
                                address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _84 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                stor9.length--
                                if stor9.length > stor9.length - 1:
                                    s = stor9.length + sha3(9) - 1
                                    while sha3(9) + stor9.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor11.length++
                                mem[0] = 11
                                stor175B[stor11.length] = address(stor9[_146 % stor9.length])
                                s = address(stor9[_146 % stor9.length])
                                s = _146 % stor9.length
                                idx = idx + 1
                                continue 
                            mem[_81 + 32] = address(stor9)
                            s = _81 + 32
                            t = sha3(9)
                            while _81 + (32 * stor9.length) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                            _219 = mem[64]
                            mem[mem[64]] = block.difficulty
                            mem[mem[64] + 32] = block.timestamp
                            s = 0
                            while s < 32 * stor9.length:
                                mem[s + _219 + 64] = mem[s + _81 + 32]
                                s = s + 32
                                continue 
                            mem[(32 * stor9.length) + _219 + 64] = arg2
                            _289 = sha3(mem[mem[64] len (32 * stor9.length) + _219 + -mem[64] + 96])
                            require stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _219 + -mem[64] + 96]) % stor9.length < stor9.length
                            require stor9.length - 1 < stor9.length
                            require sha3(mem[mem[64] len (32 * stor9.length) + _219 + -mem[64] + 96]) % stor9.length < stor9.length
                            address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _219 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                            stor9.length--
                            if stor9.length > stor9.length - 1:
                                s = stor9.length + sha3(9) - 1
                                while sha3(9) + stor9.length > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            stor11.length++
                            mem[0] = 11
                            stor175B[stor11.length] = address(stor9[_289 % stor9.length])
                            s = address(stor9[_289 % stor9.length])
                            s = _289 % stor9.length
                            idx = idx + 1
                            continue 
                    else:
                        stor9.length = stor8.length
                        mem[0] = 9
                        if not stor8.length:
                            idx = 0
                            while stor9.length > idx:
                                address(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                            s = 0
                            s = 0
                            idx = 0
                            while idx < 2:
                                _150 = mem[64]
                                mem[64] = mem[64] + (32 * stor9.length) + 32
                                mem[_150] = stor9.length
                                if not stor9.length:
                                    _157 = mem[64]
                                    mem[mem[64]] = block.difficulty
                                    mem[mem[64] + 32] = block.timestamp
                                    s = 0
                                    while s < 32 * stor9.length:
                                        mem[s + _157 + 64] = mem[s + _150 + 32]
                                        s = s + 32
                                        continue 
                                    mem[(32 * stor9.length) + _157 + 64] = arg2
                                    _222 = sha3(mem[mem[64] len (32 * stor9.length) + _157 + -mem[64] + 96])
                                    require stor9.length
                                    require sha3(mem[mem[64] len (32 * stor9.length) + _157 + -mem[64] + 96]) % stor9.length < stor9.length
                                    require stor9.length - 1 < stor9.length
                                    require sha3(mem[mem[64] len (32 * stor9.length) + _157 + -mem[64] + 96]) % stor9.length < stor9.length
                                    address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _157 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                    stor9.length--
                                    if stor9.length > stor9.length - 1:
                                        s = stor9.length + sha3(9) - 1
                                        while sha3(9) + stor9.length > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    stor11.length++
                                    mem[0] = 11
                                    stor175B[stor11.length] = address(stor9[_222 % stor9.length])
                                    s = address(stor9[_222 % stor9.length])
                                    s = _222 % stor9.length
                                    idx = idx + 1
                                    continue 
                                mem[_150 + 32] = address(stor9)
                                s = _150 + 32
                                t = sha3(9)
                                while _150 + (32 * stor9.length) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _291 = mem[64]
                                mem[mem[64]] = block.difficulty
                                mem[mem[64] + 32] = block.timestamp
                                s = 0
                                while s < 32 * stor9.length:
                                    mem[s + _291 + 64] = mem[s + _150 + 32]
                                    s = s + 32
                                    continue 
                                mem[(32 * stor9.length) + _291 + 64] = arg2
                                _330 = sha3(mem[mem[64] len (32 * stor9.length) + _291 + -mem[64] + 96])
                                require stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _291 + -mem[64] + 96]) % stor9.length < stor9.length
                                require stor9.length - 1 < stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _291 + -mem[64] + 96]) % stor9.length < stor9.length
                                address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _291 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                stor9.length--
                                if stor9.length > stor9.length - 1:
                                    s = stor9.length + sha3(9) - 1
                                    while sha3(9) + stor9.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor11.length++
                                mem[0] = 11
                                stor175B[stor11.length] = address(stor9[_330 % stor9.length])
                                s = address(stor9[_330 % stor9.length])
                                s = _330 % stor9.length
                                idx = idx + 1
                                continue 
                        else:
                            mem[0] = 8
                            s = 0
                            idx = 0
                            while stor8.length > idx:
                                uint256(stor9[s]) = stor8[idx]
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = stor8.length
                            while stor9.length > idx:
                                address(stor9[idx]) = 0
                                idx = idx + 1
                                continue 
                            s = 0
                            s = 0
                            idx = 0
                            while idx < 2:
                                _226 = mem[64]
                                mem[64] = mem[64] + (32 * stor9.length) + 32
                                mem[_226] = stor9.length
                                if not stor9.length:
                                    _239 = mem[64]
                                    mem[mem[64]] = block.difficulty
                                    mem[mem[64] + 32] = block.timestamp
                                    s = 0
                                    while s < 32 * stor9.length:
                                        mem[s + _239 + 64] = mem[s + _226 + 32]
                                        s = s + 32
                                        continue 
                                    mem[(32 * stor9.length) + _239 + 64] = arg2
                                    _294 = sha3(mem[mem[64] len (32 * stor9.length) + _239 + -mem[64] + 96])
                                    require stor9.length
                                    require sha3(mem[mem[64] len (32 * stor9.length) + _239 + -mem[64] + 96]) % stor9.length < stor9.length
                                    require stor9.length - 1 < stor9.length
                                    require sha3(mem[mem[64] len (32 * stor9.length) + _239 + -mem[64] + 96]) % stor9.length < stor9.length
                                    address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _239 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                    stor9.length--
                                    if stor9.length > stor9.length - 1:
                                        s = stor9.length + sha3(9) - 1
                                        while sha3(9) + stor9.length > s:
                                            stor[s] = 0
                                            s = s + 1
                                            continue 
                                    stor11.length++
                                    mem[0] = 11
                                    stor175B[stor11.length] = address(stor9[_294 % stor9.length])
                                    s = address(stor9[_294 % stor9.length])
                                    s = _294 % stor9.length
                                    idx = idx + 1
                                    continue 
                                mem[_226 + 32] = address(stor9)
                                s = _226 + 32
                                t = sha3(9)
                                while _226 + (32 * stor9.length) > s:
                                    mem[s + 32] = stor1[t]
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                _332 = mem[64]
                                mem[mem[64]] = block.difficulty
                                mem[mem[64] + 32] = block.timestamp
                                s = 0
                                while s < 32 * stor9.length:
                                    mem[s + _332 + 64] = mem[s + _226 + 32]
                                    s = s + 32
                                    continue 
                                mem[(32 * stor9.length) + _332 + 64] = arg2
                                _362 = sha3(mem[mem[64] len (32 * stor9.length) + _332 + -mem[64] + 96])
                                require stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _332 + -mem[64] + 96]) % stor9.length < stor9.length
                                require stor9.length - 1 < stor9.length
                                require sha3(mem[mem[64] len (32 * stor9.length) + _332 + -mem[64] + 96]) % stor9.length < stor9.length
                                address(stor9[sha3(mem[mem[64] len (32 * stor9.length) + _332 + -mem[64] + 96]) % stor9.length]) = address(stor9[stor9.length])
                                stor9.length--
                                if stor9.length > stor9.length - 1:
                                    s = stor9.length + sha3(9) - 1
                                    while sha3(9) + stor9.length > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor11.length++
                                mem[0] = 11
                                stor175B[stor11.length] = address(stor9[_362 % stor9.length])
                                s = address(stor9[_362 % stor9.length])
                                s = _362 % stor9.length
                                idx = idx + 1
                                continue 
                require ext_code.size(this.address)
                call this.address.getRewardAmount() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < stor11.length
                call address(stor11.field_0) with:
                   value ext_call.return_data[0] / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require 1 < stor11.length
                call address(stor11.field_256) with:
                   value ext_call.return_data[0] / 2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 64] = stor11.length
                if not stor11.length:
                    emit Winners(address[] arg1, uint256 arg2):
                                 64,
                                 Mask(255, 1, ext_call.return_data[0]),
                                 stor11.length,
                else:
                    mem[mem[64] + 96] = address(stor11.field_0)
                    idx = mem[64] + 96
                    s = 0
                    while mem[64] + (32 * stor11.length) + 96 > idx + 32:
                        mem[idx + 32] = address(stor11[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit Winners(Array(len=stor11.length, data=mem[mem[64] + 96 len 32 * stor11.length]), Mask(255, 1, ext_call.return_data[0]));
}



}
