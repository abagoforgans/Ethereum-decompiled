contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
address stor3;
address stor4;
address stor5;
array of uint256 name;
uint256 keyRequired;
address keyAddress;
address prizePoolAddress;
uint256 boxPrice;
array of uint256 prizeIndex;
array of uint256 prizeRange;
array of uint256 sub_7bb7db6c;
array of uint256 sub_ba7cae0f;
array of uint256 sub_b377c114;
array of uint256 sub_25b6a1f9;

function name() {
    return name[0 len name.length]
}

function sub_1271a6cd(?) {
    return sub_b377c114.length
}

function sub_25b6a1f9(?) {
    require arg1 < sub_25b6a1f9.length
    return sub_25b6a1f9[arg1]
}

function sub_356a1cd7(?) {
    return sub_ba7cae0f.length
}

function sub_42571e25(?) {
    return sub_25b6a1f9.length
}

function keyRequired() {
    return keyRequired
}

function sub_7bb7db6c(?) {
    require arg1 < sub_7bb7db6c.length
    return sub_7bb7db6c[arg1]
}

function prizeRange(uint256 arg1) {
    require arg1 < prizeRange.length
    return prizeRange[arg1].field_0
}

function owner() {
    return owner
}

function sub_985d2804(?) {
    return sub_7bb7db6c.length
}

function serverAddressList(address arg1) {
    return bool(stor2[arg1])
}

function boxPrice() {
    return boxPrice
}

function prizeIndex(uint256 arg1) {
    require arg1 < prizeIndex.length
    return prizeIndex[arg1]
}

function sub_b377c114(?) {
    require arg1 < sub_b377c114.length
    return sub_b377c114[arg1]
}

function sub_ba7cae0f(?) {
    require arg1 < sub_ba7cae0f.length
    return sub_ba7cae0f[arg1]
}

function keyAddress() {
    return keyAddress
}

function prizePoolAddress() {
    return prizePoolAddress
}

function sub_26f09e02(?) {
    require msg.sender == owner
    stor5 = arg1
}

function sub_5d65f76e(?) {
    require msg.sender == owner
    stor4 = arg1
}

function sub_d00c167e(?) {
    require msg.sender == owner
    stor3 = arg1
}

function setCFO(address arg1) {
    require msg.sender == owner
    stor1 = arg1
}

function setupBoxPrice(uint256 arg1) {
    require msg.sender == owner
    boxPrice = arg1
}

function setKeyAddress(address arg1) {
    require msg.sender == owner
    keyAddress = arg1
}

function setupKeyRequired(uint256 arg1) {
    require msg.sender == owner
    keyRequired = arg1
}

function setPrizePoolAddress(address arg1) {
    require msg.sender == owner
    prizePoolAddress = arg1
}

function addServerAddress(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
    emit AddServerAddress(arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removeServerAddress(address arg1) {
    require msg.sender == owner
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit RemoveServerAddress(arg1);
}

function sub_ffaeb582(?) {
    if sub_7bb7db6c.length <= 0:
        return 0
    if sub_ba7cae0f.length <= 0:
        return 0
    if sub_b377c114.length <= 0:
        return 0
    if sub_25b6a1f9.length <= 0:
        return 0
    return 1
}

function withDrawToken(uint256 arg1) {
    require msg.sender == stor1
    require ext_code.size(keyAddress)
    call keyAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withDrawBalance(uint256 arg1) {
    require msg.sender == stor1
    require eth.balance(this.address) >= arg1
    if arg1:
        call stor1 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3ac55958(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        if not arg2:
            require idx < arg1.length
            sub_7bb7db6c.length++
            mem[0] = 13
            sub_7bb7db6c[sub_7bb7db6c.length] = mem[(32 * idx) + 128]
        else:
            if arg2 == 1:
                require idx < arg1.length
                sub_ba7cae0f.length++
                mem[0] = 14
                sub_ba7cae0f[sub_ba7cae0f.length] = mem[(32 * idx) + 128]
            else:
                if arg2 == 2:
                    require idx < arg1.length
                    sub_b377c114.length++
                    mem[0] = 15
                    sub_b377c114[sub_b377c114.length] = mem[(32 * idx) + 128]
                else:
                    require arg2 == 3
                    require idx < arg1.length
                    sub_25b6a1f9.length++
                    mem[0] = 16
                    sub_25b6a1f9[sub_25b6a1f9.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
}

function getPrizeIndex(uint256 arg1) {
    require prizeRange.length - 1 < prizeRange.length
    require prizeRange[prizeRange.length].field_0
    require 0 < prizeRange.length
    if uint256(prizeRange.field_0) > arg1 % prizeRange[prizeRange.length].field_0:
        return 0
    require prizeRange.length - 2 < prizeRange.length
    if prizeRange[prizeRange.length].field_0 <= arg1 % prizeRange[prizeRange.length].field_0:
        return (prizeRange.length - 1)
    s = 0
    idx = 0
    while idx <= prizeRange.length - 1:
        require idx + (prizeRange.length + -idx - 1 / 2) < prizeRange.length
        require idx + (prizeRange.length + -idx - 1 / 2) + 1 < prizeRange.length
        if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_0 <= arg1 % prizeRange[prizeRange.length].field_0:
            if arg1 % prizeRange[prizeRange.length].field_0 < stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256:
                return (idx + (prizeRange.length + -idx - 1 / 2) + 1)
        mem[0] = 12
        if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256 > arg1 % prizeRange[prizeRange.length].field_0:
            s = idx + (prizeRange.length + -idx - 1 / 2)
            idx = idx
            continue 
        s = idx + (prizeRange.length + -idx - 1 / 2)
        idx = idx + (prizeRange.length + -idx - 1 / 2) + 1
        continue 
    return idx
}

function setupPrize(uint256[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    prizeIndex.length = arg1.length
    if not arg1.length:
        idx = 0
        while prizeIndex.length > idx:
            prizeIndex[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            prizeIndex[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while prizeIndex.length > idx:
            prizeIndex[idx] = 0
            idx = idx + 1
            continue 
    prizeRange.length = arg2.length
    if not arg2.length:
        idx = 0
        while prizeRange.length > idx:
            prizeRange[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            prizeRange[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while prizeRange.length > idx:
            prizeRange[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_2447fdc3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(stor4)
        call stor4.getRarity(uint256 arg1) with:
             gas gas_remaining wei
            args _23
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require idx < arg1.length
            sub_7bb7db6c.length++
            mem[0] = 13
            sub_7bb7db6c[sub_7bb7db6c.length] = mem[(32 * idx) + 128]
        else:
            if ext_call.return_data[0] == 1:
                require idx < arg1.length
                sub_ba7cae0f.length++
                mem[0] = 14
                sub_ba7cae0f[sub_ba7cae0f.length] = mem[(32 * idx) + 128]
            else:
                if ext_call.return_data[0] == 2:
                    require idx < arg1.length
                    sub_b377c114.length++
                    mem[0] = 15
                    sub_b377c114[sub_b377c114.length] = mem[(32 * idx) + 128]
                else:
                    require ext_call.return_data[0] == 3
                    require idx < arg1.length
                    sub_25b6a1f9.length++
                    mem[0] = 16
                    sub_25b6a1f9[sub_25b6a1f9.length] = mem[(32 * idx) + 128]
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
}

function _fallback() payable {
    if boxPrice <= 0:
        revert with 0, 'this mode is not supported'
    require msg.value == boxPrice
    require ext_code.size(stor5)
    call stor5.0x340f266 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require prizeRange.length - 1 < prizeRange.length
    require prizeRange[prizeRange.length].field_0
    require 0 < prizeRange.length
    if uint256(prizeRange.field_0) > ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
        idx = 0
        while idx < prizeIndex.length:
            require 0 < prizeIndex.length
            mem[0] = 11
            if not prizeIndex:
                if sub_7bb7db6c.length <= 0:
                    mem[96] = msg.sender
                    mem[128] = 0
                    emit 0xe439cabf: msg.sender, 0
                    idx = idx + 1
                    continue 
                require sub_7bb7db6c.length
                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                require ext_code.size(stor3)
                call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                     gas gas_remaining wei
                    args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], msg.sender, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                sub_7bb7db6c.length--
                if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                    idx = sha3(13) + sub_7bb7db6c.length - 1
                    while sha3(13) + sub_7bb7db6c.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                require 0 < prizeIndex.length
                mem[0] = 11
                if prizeIndex == 1:
                    if sub_ba7cae0f.length <= 0:
                        mem[96] = msg.sender
                        mem[128] = 1
                        emit 0xe439cabf: msg.sender, 1
                        idx = idx + 1
                        continue 
                    require sub_ba7cae0f.length
                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                    sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                    sub_ba7cae0f.length--
                    if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                        idx = sha3(14) + sub_ba7cae0f.length - 1
                        while sha3(14) + sub_ba7cae0f.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require 0 < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex == 2:
                        if sub_b377c114.length <= 0:
                            mem[96] = msg.sender
                            mem[128] = 2
                            emit 0xe439cabf: msg.sender, 2
                            idx = idx + 1
                            continue 
                        require sub_b377c114.length
                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_b377c114.length - 1 < sub_b377c114.length
                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                        sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                        sub_b377c114.length--
                        if sub_b377c114.length > sub_b377c114.length - 1:
                            idx = sha3(15) + sub_b377c114.length - 1
                            while sha3(15) + sub_b377c114.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require 0 < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex != 3:
                            require 0 < prizeIndex.length
                            mem[0] = 11
                            mem[100] = msg.sender
                            mem[132] = prizeIndex - 10
                            require ext_code.size(prizePoolAddress)
                            call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, prizeIndex - 10
                            mem[96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        if sub_25b6a1f9.length <= 0:
                            mem[96] = msg.sender
                            mem[128] = 3
                            emit 0xe439cabf: msg.sender, 3
                            idx = idx + 1
                            continue 
                        require sub_25b6a1f9.length
                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                        sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                        sub_25b6a1f9.length--
                        if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                            idx = sha3(16) + sub_25b6a1f9.length - 1
                            while sha3(16) + sub_25b6a1f9.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
    else:
        require prizeRange.length - 2 < prizeRange.length
        if prizeRange[prizeRange.length].field_0 <= ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
            idx = 0
            s = prizeRange.length - 1
            while idx < prizeIndex.length:
                require s < prizeIndex.length
                mem[0] = 11
                if not prizeIndex[s]:
                    if sub_7bb7db6c.length <= 0:
                        mem[96] = msg.sender
                        mem[128] = 0
                        emit 0xe439cabf: msg.sender, 0
                        if s + 1 != prizeIndex.length:
                            idx = idx + 1
                            s = s + 1
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    require sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                    sub_7bb7db6c.length--
                    if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                        idx = sha3(13) + sub_7bb7db6c.length - 1
                        while sha3(13) + sub_7bb7db6c.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require s < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex[s] == 1:
                        if sub_ba7cae0f.length <= 0:
                            mem[96] = msg.sender
                            mem[128] = 1
                            emit 0xe439cabf: msg.sender, 1
                            if s + 1 != prizeIndex.length:
                                idx = idx + 1
                                s = s + 1
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        require sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                        sub_ba7cae0f.length--
                        if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                            idx = sha3(14) + sub_ba7cae0f.length - 1
                            while sha3(14) + sub_ba7cae0f.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require s < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex[s] == 2:
                            if sub_b377c114.length <= 0:
                                mem[96] = msg.sender
                                mem[128] = 2
                                emit 0xe439cabf: msg.sender, 2
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            require sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_b377c114.length - 1 < sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                            sub_b377c114.length--
                            if sub_b377c114.length > sub_b377c114.length - 1:
                                idx = sha3(15) + sub_b377c114.length - 1
                                while sha3(15) + sub_b377c114.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require s < prizeIndex.length
                            mem[0] = 11
                            if prizeIndex[s] != 3:
                                require s < prizeIndex.length
                                mem[0] = 11
                                mem[100] = msg.sender
                                mem[132] = prizeIndex[s] - 10
                                require ext_code.size(prizePoolAddress)
                                call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, prizeIndex[s] - 10
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            if sub_25b6a1f9.length <= 0:
                                mem[96] = msg.sender
                                mem[128] = 3
                                emit 0xe439cabf: msg.sender, 3
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            require sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                            sub_25b6a1f9.length--
                            if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                idx = sha3(16) + sub_25b6a1f9.length - 1
                                while sha3(16) + sub_25b6a1f9.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
        else:
            s = 0
            idx = 0
            while idx <= prizeRange.length - 1:
                require idx + (prizeRange.length + -idx - 1 / 2) < prizeRange.length
                require idx + (prizeRange.length + -idx - 1 / 2) + 1 < prizeRange.length
                if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_0 <= ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
                    if ext_call.return_data[0] % prizeRange[prizeRange.length].field_0 < stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256:
                        s = 0
                        t = idx + (prizeRange.length + -idx - 1 / 2) + 1
                        while s < prizeIndex.length:
                            require t < prizeIndex.length
                            mem[0] = 11
                            if not prizeIndex[t]:
                                if sub_7bb7db6c.length <= 0:
                                    mem[96] = msg.sender
                                    mem[128] = 0
                                    emit 0xe439cabf: msg.sender, 0
                                    if t + 1 != prizeIndex.length:
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = s + 1
                                    t = 0
                                    continue 
                                require sub_7bb7db6c.length
                                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                                require ext_code.size(stor3)
                                call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                     gas gas_remaining wei
                                    args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], msg.sender, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                                sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                                sub_7bb7db6c.length--
                                if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                                    idx = sha3(13) + sub_7bb7db6c.length - 1
                                    while sha3(13) + sub_7bb7db6c.length > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                require t < prizeIndex.length
                                mem[0] = 11
                                if prizeIndex[t] == 1:
                                    if sub_ba7cae0f.length <= 0:
                                        mem[96] = msg.sender
                                        mem[128] = 1
                                        emit 0xe439cabf: msg.sender, 1
                                        if t + 1 != prizeIndex.length:
                                            s = s + 1
                                            t = t + 1
                                            continue 
                                        s = s + 1
                                        t = 0
                                        continue 
                                    require sub_ba7cae0f.length
                                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                                    require ext_code.size(stor3)
                                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                         gas gas_remaining wei
                                        args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], msg.sender, 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                                    sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                                    sub_ba7cae0f.length--
                                    if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                                        idx = sha3(14) + sub_ba7cae0f.length - 1
                                        while sha3(14) + sub_ba7cae0f.length > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    require t < prizeIndex.length
                                    mem[0] = 11
                                    if prizeIndex[t] == 2:
                                        if sub_b377c114.length <= 0:
                                            mem[96] = msg.sender
                                            mem[128] = 2
                                            emit 0xe439cabf: msg.sender, 2
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        require sub_b377c114.length
                                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                                        require ext_code.size(stor3)
                                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                             gas gas_remaining wei
                                            args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], msg.sender, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require sub_b377c114.length - 1 < sub_b377c114.length
                                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                                        sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                                        sub_b377c114.length--
                                        if sub_b377c114.length > sub_b377c114.length - 1:
                                            idx = sha3(15) + sub_b377c114.length - 1
                                            while sha3(15) + sub_b377c114.length > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        require t < prizeIndex.length
                                        mem[0] = 11
                                        if prizeIndex[t] != 3:
                                            require t < prizeIndex.length
                                            mem[0] = 11
                                            mem[100] = msg.sender
                                            mem[132] = prizeIndex[t] - 10
                                            require ext_code.size(prizePoolAddress)
                                            call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args msg.sender, prizeIndex[t] - 10
                                            mem[96] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if sub_25b6a1f9.length <= 0:
                                            mem[96] = msg.sender
                                            mem[128] = 3
                                            emit 0xe439cabf: msg.sender, 3
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        require sub_25b6a1f9.length
                                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                                        require ext_code.size(stor3)
                                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                             gas gas_remaining wei
                                            args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], msg.sender, 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                                        sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                                        sub_25b6a1f9.length--
                                        if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                            idx = sha3(16) + sub_25b6a1f9.length - 1
                                            while sha3(16) + sub_25b6a1f9.length > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                mem[0] = 12
                if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256 > ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
                    s = idx + (prizeRange.length + -idx - 1 / 2)
                    idx = idx
                    continue 
                s = idx + (prizeRange.length + -idx - 1 / 2)
                idx = idx + (prizeRange.length + -idx - 1 / 2) + 1
                continue 
            s = 0
            t = idx
            while s < prizeIndex.length:
                require t < prizeIndex.length
                mem[0] = 11
                if not prizeIndex[t]:
                    if sub_7bb7db6c.length <= 0:
                        mem[96] = msg.sender
                        mem[128] = 0
                        emit 0xe439cabf: msg.sender, 0
                        if t + 1 != prizeIndex.length:
                            s = s + 1
                            t = t + 1
                            continue 
                        s = s + 1
                        t = 0
                        continue 
                    require sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                    sub_7bb7db6c.length--
                    if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                        idx = sha3(13) + sub_7bb7db6c.length - 1
                        while sha3(13) + sub_7bb7db6c.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require t < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex[t] == 1:
                        if sub_ba7cae0f.length <= 0:
                            mem[96] = msg.sender
                            mem[128] = 1
                            emit 0xe439cabf: msg.sender, 1
                            if t + 1 != prizeIndex.length:
                                s = s + 1
                                t = t + 1
                                continue 
                            s = s + 1
                            t = 0
                            continue 
                        require sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], msg.sender, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                        sub_ba7cae0f.length--
                        if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                            idx = sha3(14) + sub_ba7cae0f.length - 1
                            while sha3(14) + sub_ba7cae0f.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require t < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex[t] == 2:
                            if sub_b377c114.length <= 0:
                                mem[96] = msg.sender
                                mem[128] = 2
                                emit 0xe439cabf: msg.sender, 2
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            require sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_b377c114.length - 1 < sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                            sub_b377c114.length--
                            if sub_b377c114.length > sub_b377c114.length - 1:
                                idx = sha3(15) + sub_b377c114.length - 1
                                while sha3(15) + sub_b377c114.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require t < prizeIndex.length
                            mem[0] = 11
                            if prizeIndex[t] != 3:
                                require t < prizeIndex.length
                                mem[0] = 11
                                mem[100] = msg.sender
                                mem[132] = prizeIndex[t] - 10
                                require ext_code.size(prizePoolAddress)
                                call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, prizeIndex[t] - 10
                                mem[96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            if sub_25b6a1f9.length <= 0:
                                mem[96] = msg.sender
                                mem[128] = 3
                                emit 0xe439cabf: msg.sender, 3
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            require sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], msg.sender, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                            sub_25b6a1f9.length--
                            if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                idx = sha3(16) + sub_25b6a1f9.length - 1
                                while sha3(16) + sub_25b6a1f9.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    if keyRequired <= 0:
        revert with 0, 'this mode is not supported'
    require arg3 == keyAddress
    require arg2 == keyRequired
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x340f266 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require prizeRange.length - 1 < prizeRange.length
    require prizeRange[prizeRange.length].field_0
    require 0 < prizeRange.length
    if uint256(prizeRange.field_0) > ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
        idx = 0
        while idx < prizeIndex.length:
            require 0 < prizeIndex.length
            mem[0] = 11
            if not prizeIndex:
                if sub_7bb7db6c.length <= 0:
                    mem[ceil32(arg4.length) + 128] = arg1
                    mem[ceil32(arg4.length) + 160] = 0
                    emit 0xe439cabf: address(arg1), 0
                    idx = idx + 1
                    continue 
                require sub_7bb7db6c.length
                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                require ext_code.size(stor3)
                call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                     gas gas_remaining wei
                    args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                sub_7bb7db6c.length--
                if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                    idx = sha3(13) + sub_7bb7db6c.length - 1
                    while sha3(13) + sub_7bb7db6c.length > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                require 0 < prizeIndex.length
                mem[0] = 11
                if prizeIndex == 1:
                    if sub_ba7cae0f.length <= 0:
                        mem[ceil32(arg4.length) + 128] = arg1
                        mem[ceil32(arg4.length) + 160] = 1
                        emit 0xe439cabf: address(arg1), 1
                        idx = idx + 1
                        continue 
                    require sub_ba7cae0f.length
                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], address(arg1), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                    sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                    sub_ba7cae0f.length--
                    if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                        idx = sha3(14) + sub_ba7cae0f.length - 1
                        while sha3(14) + sub_ba7cae0f.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require 0 < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex == 2:
                        if sub_b377c114.length <= 0:
                            mem[ceil32(arg4.length) + 128] = arg1
                            mem[ceil32(arg4.length) + 160] = 2
                            emit 0xe439cabf: address(arg1), 2
                            idx = idx + 1
                            continue 
                        require sub_b377c114.length
                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], address(arg1), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_b377c114.length - 1 < sub_b377c114.length
                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                        sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                        sub_b377c114.length--
                        if sub_b377c114.length > sub_b377c114.length - 1:
                            idx = sha3(15) + sub_b377c114.length - 1
                            while sha3(15) + sub_b377c114.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require 0 < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex != 3:
                            require 0 < prizeIndex.length
                            mem[0] = 11
                            mem[ceil32(arg4.length) + 132] = arg1
                            mem[ceil32(arg4.length) + 164] = prizeIndex - 10
                            require ext_code.size(prizePoolAddress)
                            call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), prizeIndex - 10
                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                            idx = idx + 1
                            continue 
                        if sub_25b6a1f9.length <= 0:
                            mem[ceil32(arg4.length) + 128] = arg1
                            mem[ceil32(arg4.length) + 160] = 3
                            emit 0xe439cabf: address(arg1), 3
                            idx = idx + 1
                            continue 
                        require sub_25b6a1f9.length
                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], address(arg1), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                        sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                        sub_25b6a1f9.length--
                        if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                            idx = sha3(16) + sub_25b6a1f9.length - 1
                            while sha3(16) + sub_25b6a1f9.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
    else:
        require prizeRange.length - 2 < prizeRange.length
        if prizeRange[prizeRange.length].field_0 <= ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
            idx = 0
            s = prizeRange.length - 1
            while idx < prizeIndex.length:
                require s < prizeIndex.length
                mem[0] = 11
                if not prizeIndex[s]:
                    if sub_7bb7db6c.length <= 0:
                        mem[ceil32(arg4.length) + 128] = arg1
                        mem[ceil32(arg4.length) + 160] = 0
                        emit 0xe439cabf: address(arg1), 0
                        if s + 1 != prizeIndex.length:
                            idx = idx + 1
                            s = s + 1
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    require sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], address(arg1), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                    sub_7bb7db6c.length--
                    if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                        idx = sha3(13) + sub_7bb7db6c.length - 1
                        while sha3(13) + sub_7bb7db6c.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require s < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex[s] == 1:
                        if sub_ba7cae0f.length <= 0:
                            mem[ceil32(arg4.length) + 128] = arg1
                            mem[ceil32(arg4.length) + 160] = 1
                            emit 0xe439cabf: address(arg1), 1
                            if s + 1 != prizeIndex.length:
                                idx = idx + 1
                                s = s + 1
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        require sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], address(arg1), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                        sub_ba7cae0f.length--
                        if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                            idx = sha3(14) + sub_ba7cae0f.length - 1
                            while sha3(14) + sub_ba7cae0f.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require s < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex[s] == 2:
                            if sub_b377c114.length <= 0:
                                mem[ceil32(arg4.length) + 128] = arg1
                                mem[ceil32(arg4.length) + 160] = 2
                                emit 0xe439cabf: address(arg1), 2
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            require sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], address(arg1), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_b377c114.length - 1 < sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                            sub_b377c114.length--
                            if sub_b377c114.length > sub_b377c114.length - 1:
                                idx = sha3(15) + sub_b377c114.length - 1
                                while sha3(15) + sub_b377c114.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require s < prizeIndex.length
                            mem[0] = 11
                            if prizeIndex[s] != 3:
                                require s < prizeIndex.length
                                mem[0] = 11
                                mem[ceil32(arg4.length) + 132] = arg1
                                mem[ceil32(arg4.length) + 164] = prizeIndex[s] - 10
                                require ext_code.size(prizePoolAddress)
                                call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), prizeIndex[s] - 10
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            if sub_25b6a1f9.length <= 0:
                                mem[ceil32(arg4.length) + 128] = arg1
                                mem[ceil32(arg4.length) + 160] = 3
                                emit 0xe439cabf: address(arg1), 3
                                if s + 1 != prizeIndex.length:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                idx = idx + 1
                                s = 0
                                continue 
                            require sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], address(arg1), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                            sub_25b6a1f9.length--
                            if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                idx = sha3(16) + sub_25b6a1f9.length - 1
                                while sha3(16) + sub_25b6a1f9.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
        else:
            s = 0
            idx = 0
            while idx <= prizeRange.length - 1:
                require idx + (prizeRange.length + -idx - 1 / 2) < prizeRange.length
                require idx + (prizeRange.length + -idx - 1 / 2) + 1 < prizeRange.length
                if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_0 <= ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
                    if ext_call.return_data[0] % prizeRange[prizeRange.length].field_0 < stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256:
                        s = 0
                        t = idx + (prizeRange.length + -idx - 1 / 2) + 1
                        while s < prizeIndex.length:
                            require t < prizeIndex.length
                            mem[0] = 11
                            if not prizeIndex[t]:
                                if sub_7bb7db6c.length <= 0:
                                    mem[ceil32(arg4.length) + 128] = arg1
                                    mem[ceil32(arg4.length) + 160] = 0
                                    emit 0xe439cabf: address(arg1), 0
                                    if t + 1 != prizeIndex.length:
                                        s = s + 1
                                        t = t + 1
                                        continue 
                                    s = s + 1
                                    t = 0
                                    continue 
                                require sub_7bb7db6c.length
                                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                                require ext_code.size(stor3)
                                call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                     gas gas_remaining wei
                                    args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], address(arg1), 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                                require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                                sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                                sub_7bb7db6c.length--
                                if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                                    idx = sha3(13) + sub_7bb7db6c.length - 1
                                    while sha3(13) + sub_7bb7db6c.length > idx:
                                        stor[idx] = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                require t < prizeIndex.length
                                mem[0] = 11
                                if prizeIndex[t] == 1:
                                    if sub_ba7cae0f.length <= 0:
                                        mem[ceil32(arg4.length) + 128] = arg1
                                        mem[ceil32(arg4.length) + 160] = 1
                                        emit 0xe439cabf: address(arg1), 1
                                        if t + 1 != prizeIndex.length:
                                            s = s + 1
                                            t = t + 1
                                            continue 
                                        s = s + 1
                                        t = 0
                                        continue 
                                    require sub_ba7cae0f.length
                                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                                    require ext_code.size(stor3)
                                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                         gas gas_remaining wei
                                        args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], address(arg1), 1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                                    require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                                    sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                                    sub_ba7cae0f.length--
                                    if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                                        idx = sha3(14) + sub_ba7cae0f.length - 1
                                        while sha3(14) + sub_ba7cae0f.length > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    require t < prizeIndex.length
                                    mem[0] = 11
                                    if prizeIndex[t] == 2:
                                        if sub_b377c114.length <= 0:
                                            mem[ceil32(arg4.length) + 128] = arg1
                                            mem[ceil32(arg4.length) + 160] = 2
                                            emit 0xe439cabf: address(arg1), 2
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        require sub_b377c114.length
                                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                                        require ext_code.size(stor3)
                                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                             gas gas_remaining wei
                                            args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], address(arg1), 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require sub_b377c114.length - 1 < sub_b377c114.length
                                        require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                                        sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                                        sub_b377c114.length--
                                        if sub_b377c114.length > sub_b377c114.length - 1:
                                            idx = sha3(15) + sub_b377c114.length - 1
                                            while sha3(15) + sub_b377c114.length > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        require t < prizeIndex.length
                                        mem[0] = 11
                                        if prizeIndex[t] != 3:
                                            require t < prizeIndex.length
                                            mem[0] = 11
                                            mem[ceil32(arg4.length) + 132] = arg1
                                            mem[ceil32(arg4.length) + 164] = prizeIndex[t] - 10
                                            require ext_code.size(prizePoolAddress)
                                            call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(arg1), prizeIndex[t] - 10
                                            mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0]:
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        if sub_25b6a1f9.length <= 0:
                                            mem[ceil32(arg4.length) + 128] = arg1
                                            mem[ceil32(arg4.length) + 160] = 3
                                            emit 0xe439cabf: address(arg1), 3
                                            if t + 1 != prizeIndex.length:
                                                s = s + 1
                                                t = t + 1
                                                continue 
                                            s = s + 1
                                            t = 0
                                            continue 
                                        require sub_25b6a1f9.length
                                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                                        require ext_code.size(stor3)
                                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                             gas gas_remaining wei
                                            args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], address(arg1), 1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                                        require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                                        sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                                        sub_25b6a1f9.length--
                                        if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                            idx = sha3(16) + sub_25b6a1f9.length - 1
                                            while sha3(16) + sub_25b6a1f9.length > idx:
                                                stor[idx] = 0
                                                idx = idx + 1
                                                continue 
                mem[0] = 12
                if stor[('name', 'prizeRange', 12) + idx + (0.5 / prizeRange.length + -idx - 1)].field_256 > ext_call.return_data[0] % prizeRange[prizeRange.length].field_0:
                    s = idx + (prizeRange.length + -idx - 1 / 2)
                    idx = idx
                    continue 
                s = idx + (prizeRange.length + -idx - 1 / 2)
                idx = idx + (prizeRange.length + -idx - 1 / 2) + 1
                continue 
            s = 0
            t = idx
            while s < prizeIndex.length:
                require t < prizeIndex.length
                mem[0] = 11
                if not prizeIndex[t]:
                    if sub_7bb7db6c.length <= 0:
                        mem[ceil32(arg4.length) + 128] = arg1
                        mem[ceil32(arg4.length) + 160] = 0
                        emit 0xe439cabf: address(arg1), 0
                        if t + 1 != prizeIndex.length:
                            s = s + 1
                            t = t + 1
                            continue 
                        s = s + 1
                        t = 0
                        continue 
                    require sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    require ext_code.size(stor3)
                    call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                         gas gas_remaining wei
                        args sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length], address(arg1), 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require sub_7bb7db6c.length - 1 < sub_7bb7db6c.length
                    require ext_call.return_data[0] % sub_7bb7db6c.length < sub_7bb7db6c.length
                    sub_7bb7db6c[ext_call.return_data[0] % sub_7bb7db6c.length] = sub_7bb7db6c[sub_7bb7db6c.length]
                    sub_7bb7db6c.length--
                    if sub_7bb7db6c.length > sub_7bb7db6c.length - 1:
                        idx = sha3(13) + sub_7bb7db6c.length - 1
                        while sha3(13) + sub_7bb7db6c.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                else:
                    require t < prizeIndex.length
                    mem[0] = 11
                    if prizeIndex[t] == 1:
                        if sub_ba7cae0f.length <= 0:
                            mem[ceil32(arg4.length) + 128] = arg1
                            mem[ceil32(arg4.length) + 160] = 1
                            emit 0xe439cabf: address(arg1), 1
                            if t + 1 != prizeIndex.length:
                                s = s + 1
                                t = t + 1
                                continue 
                            s = s + 1
                            t = 0
                            continue 
                        require sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        require ext_code.size(stor3)
                        call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                             gas gas_remaining wei
                            args sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length], address(arg1), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require sub_ba7cae0f.length - 1 < sub_ba7cae0f.length
                        require ext_call.return_data[0] % sub_ba7cae0f.length < sub_ba7cae0f.length
                        sub_ba7cae0f[ext_call.return_data[0] % sub_ba7cae0f.length] = sub_ba7cae0f[sub_ba7cae0f.length]
                        sub_ba7cae0f.length--
                        if sub_ba7cae0f.length > sub_ba7cae0f.length - 1:
                            idx = sha3(14) + sub_ba7cae0f.length - 1
                            while sha3(14) + sub_ba7cae0f.length > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                    else:
                        require t < prizeIndex.length
                        mem[0] = 11
                        if prizeIndex[t] == 2:
                            if sub_b377c114.length <= 0:
                                mem[ceil32(arg4.length) + 128] = arg1
                                mem[ceil32(arg4.length) + 160] = 2
                                emit 0xe439cabf: address(arg1), 2
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            require sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_b377c114[ext_call.return_data[0] % sub_b377c114.length], address(arg1), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_b377c114.length - 1 < sub_b377c114.length
                            require ext_call.return_data[0] % sub_b377c114.length < sub_b377c114.length
                            sub_b377c114[ext_call.return_data[0] % sub_b377c114.length] = sub_b377c114[sub_b377c114.length]
                            sub_b377c114.length--
                            if sub_b377c114.length > sub_b377c114.length - 1:
                                idx = sha3(15) + sub_b377c114.length - 1
                                while sha3(15) + sub_b377c114.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                        else:
                            require t < prizeIndex.length
                            mem[0] = 11
                            if prizeIndex[t] != 3:
                                require t < prizeIndex.length
                                mem[0] = 11
                                mem[ceil32(arg4.length) + 132] = arg1
                                mem[ceil32(arg4.length) + 164] = prizeIndex[t] - 10
                                require ext_code.size(prizePoolAddress)
                                call prizePoolAddress.sendPrize(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg1), prizeIndex[t] - 10
                                mem[ceil32(arg4.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0]:
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            if sub_25b6a1f9.length <= 0:
                                mem[ceil32(arg4.length) + 128] = arg1
                                mem[ceil32(arg4.length) + 160] = 3
                                emit 0xe439cabf: address(arg1), 3
                                if t + 1 != prizeIndex.length:
                                    s = s + 1
                                    t = t + 1
                                    continue 
                                s = s + 1
                                t = 0
                                continue 
                            require sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            require ext_code.size(stor3)
                            call stor3.createGirl(uint256 arg1, address arg2, uint16 arg3) with:
                                 gas gas_remaining wei
                                args sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length], address(arg1), 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require sub_25b6a1f9.length - 1 < sub_25b6a1f9.length
                            require ext_call.return_data[0] % sub_25b6a1f9.length < sub_25b6a1f9.length
                            sub_25b6a1f9[ext_call.return_data[0] % sub_25b6a1f9.length] = sub_25b6a1f9[sub_25b6a1f9.length]
                            sub_25b6a1f9.length--
                            if sub_25b6a1f9.length > sub_25b6a1f9.length - 1:
                                idx = sha3(16) + sub_25b6a1f9.length - 1
                                while sha3(16) + sub_25b6a1f9.length > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
}



}
