contract main {




// =====================  Runtime code  =====================


const name = 'TSX'

const decimals = 9

const symbol = 'TSX'

const TOKEN_UNIT = 10^9

const MAX_BATCH_SIZE = 400

const MAX_TOKEN_SUPPLY = 10 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address stor3;
address lockerAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
array of struct recordInfo;
mapping of uint256 sub_781e37aa;
mapping of uint256 sub_cf7a91d2;

function totalSupply() {
    return totalSupply
}

function isLocked(address arg1) {
    return bool(stor5[address(arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_73cf3134(?) {
    require arg2 < recordInfo[arg1].field_0
    return recordInfo[arg1][arg2].field_0, 
           recordInfo[arg1][arg2].field_256,
           recordInfo[arg1][arg2].field_512,
           recordInfo[arg1][arg2].field_768
}

function sub_781e37aa(?) {
    return sub_781e37aa[arg1]
}

function getRecordInfo(address arg1, uint256 arg2) {
    require msg.sender == stor3
    require arg2 < recordInfo[address(arg1)].field_0
    return recordInfo[address(arg1)][arg2].field_0, 
           recordInfo[address(arg1)][arg2].field_768,
           recordInfo[address(arg1)][arg2].field_512,
           recordInfo[address(arg1)][arg2].field_256
}

function locked(address arg1) {
    return bool(stor5[arg1])
}

function sub_cf7a91d2(?) {
    return sub_cf7a91d2[arg1]
}

function locker() {
    return lockerAddress
}

function sub_d8220ebe(?) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_f60b798a(?) {
    require msg.sender == stor3
    return recordInfo[address(arg1)].field_0
}

function kill() {
    require msg.sender == stor3
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor3)
}

function sub_9006aed1(?) {
    return (msg.sender == lockerAddress)
}

function sub_ac8f440a(?) {
    require msg.sender == lockerAddress
    stor6[address(arg1)] = uint8(arg2)
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == stor3
    require arg1
    emit OwnershipTransferred(stor3, arg1);
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferLocker(address arg1) {
    require msg.sender == stor3
    require arg1
    emit LockerTransferred(lockerAddress, arg1);
    lockerAddress = arg1
    return 1
}

function lockAddress(address arg1) {
    require msg.sender == lockerAddress
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit Lock(arg1);
    return 1
}

function unlockAddress(address arg1) {
    require msg.sender == lockerAddress
    require stor5[address(arg1)]
    stor5[address(arg1)] = 0
    emit Unlock(arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_2e0bcf85(?) {
    require msg.sender == lockerAddress
    require ('cd', 4).length > 0
    require ('cd', 4).length <= 400
    idx = 0
    while idx < ('cd', 4).length:
        require msg.sender == lockerAddress
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        stor6[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
    return 1
}

function unlockInBatches(address[] arg1) {
    require msg.sender == lockerAddress
    require arg1.length > 0
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require msg.sender == lockerAddress
        require stor5[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 0
        emit Unlock(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function lockInBatches(address[] arg1) {
    require msg.sender == lockerAddress
    require arg1.length > 0
    require arg1.length <= 400
    idx = 0
    while idx < arg1.length:
        require msg.sender == lockerAddress
        require not stor5[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        stor5[address(cd[((32 * idx) + arg1 + 36)])] = 1
        emit Lock(address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
    return 1
}

function sub_4f7a5ac5(?) {
    require msg.sender == stor3
    require arg2 < recordInfo[address(arg1)].field_0
    require arg2 < recordInfo[address(arg1)].field_0
    if arg2 == sub_781e37aa[address(arg1)]:
        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)][arg2].field_512
    else:
        if arg2 == sub_cf7a91d2[address(arg1)]:
            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)][arg2].field_768
        else:
            require recordInfo[address(arg1)][arg2].field_768 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][recordInfo[address(arg1)][arg2].field_768].field_512 = recordInfo[address(arg1)][arg2].field_512
            require recordInfo[address(arg1)][arg2].field_512 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][recordInfo[address(arg1)][arg2].field_512].field_768 = recordInfo[address(arg1)][arg2].field_768
    require arg2 < recordInfo[address(arg1)].field_0
    recordInfo[address(arg1)][arg2].field_0 = 0
    recordInfo[address(arg1)][arg2].field_256 = 0
    recordInfo[address(arg1)][arg2].field_512 = 0
    recordInfo[address(arg1)][arg2].field_768 = 0
    require recordInfo[address(arg1)][arg2].field_0 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= recordInfo[address(arg1)][arg2].field_0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5[address(msg.sender)]
    require not stor5[address(arg1)]
    require arg2
    require arg1 != arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
    mem[64] = 352
    mem[224] = recordInfo[address(arg1)][stor9[address(arg1)]].field_0
    mem[256] = recordInfo[address(arg1)][stor9[address(arg1)]].field_256
    mem[288] = recordInfo[address(arg1)][stor9[address(arg1)]].field_512
    mem[320] = recordInfo[address(arg1)][stor9[address(arg1)]].field_768
    s = sub_cf7a91d2[address(arg1)]
    t = 96
    t = arg3
    while block.timestamp >= recordInfo[address(arg1)][stor9[address(arg1)]].field_256:
        if mem[224] > t:
            require t <= mem[224]
            require s < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][s].field_0 = mem[224] - t
            require arg3 <= balanceOf[address(arg1)]
            mem[0] = arg1
            mem[32] = 0
            balanceOf[address(arg1)] -= arg3
            _406 = mem[64]
            mem[64] = mem[64] + 128
            mem[_406] = 0
            mem[_406 + 32] = 0
            mem[_406 + 64] = 0
            mem[_406 + 96] = 0
            if recordInfo[address(arg2)].field_0 < 1:
                require block.timestamp >= block.timestamp
                recordInfo[address(arg2)].field_0++
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
                sub_781e37aa[address(arg2)] = 0
                sub_cf7a91d2[address(arg2)] = 0
            else:
                mem[32] = 7
                require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                mem[0] = sha3(address(arg2), 7)
                if recordInfo[address(arg2)][stor9[address(arg2)]].field_256 < block.timestamp:
                    require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                    require recordInfo[address(arg2)][stor9[address(arg2)]].field_0 + arg3 >= recordInfo[address(arg2)][stor9[address(arg2)]].field_0
                    require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                    recordInfo[address(arg2)][stor9[address(arg2)]].field_0 += arg3
                else:
                    _444 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_444] = arg3
                    require block.timestamp >= block.timestamp
                    mem[_444 + 32] = block.timestamp
                    mem[_444 + 64] = 0
                    mem[_444 + 96] = 0
                    require var57001 < recordInfo[address(arg2)].field_0
                    if block.timestamp >= recordInfo[address(arg2)][var57001].field_256:
                        if var57001 != sub_781e37aa[address(arg2)]:
                            if var57001 == sub_cf7a91d2[address(arg2)]:
                                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                return 1
                            require var57001 < recordInfo[address(arg2)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(arg1)][s].field_0
                            mem[256] = recordInfo[address(arg1)][s].field_256
                            mem[288] = recordInfo[address(arg1)][s].field_512
                            mem[320] = recordInfo[address(arg1)][s].field_768
                            var57001 = recordInfo[address(arg2)][var57001].field_512
                            continue 
                        recordInfo[address(arg2)].field_0++
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = var57001
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
                        require var57001 < recordInfo[address(arg2)].field_0
                        recordInfo[address(arg2)][var57001].field_768 = recordInfo[address(arg2)].field_0 - 1
                        sub_781e37aa[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
                    else:
                        if var57001 == sub_cf7a91d2[address(arg2)]:
                            recordInfo[address(arg2)].field_0++
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var57001
                            require var57001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][var57001].field_512 = recordInfo[address(arg2)].field_0 - 1
                            sub_cf7a91d2[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
                        else:
                            require var57001 < recordInfo[address(arg2)].field_0
                            require recordInfo[address(arg2)][var57001].field_512 < recordInfo[address(arg2)].field_0
                            if block.timestamp < recordInfo[address(arg2)][recordInfo[address(arg2)][var57001].field_512].field_256:
                                if var57001 == sub_cf7a91d2[address(arg2)]:
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                                require var57001 < recordInfo[address(arg2)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(arg1)][s].field_0
                                mem[256] = recordInfo[address(arg1)][s].field_256
                                mem[288] = recordInfo[address(arg1)][s].field_512
                                mem[320] = recordInfo[address(arg1)][s].field_768
                                var57001 = recordInfo[address(arg2)][var57001].field_512
                                continue 
                            require var57001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)].field_0++
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = recordInfo[address(arg2)][var57001].field_512
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var57001
                            require var57001 < recordInfo[address(arg2)].field_0
                            require recordInfo[address(arg2)][var57001].field_512 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][recordInfo[address(arg2)][var57001].field_512].field_768 = recordInfo[address(arg2)].field_0 - 1
                            require var57001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][var57001].field_512 = recordInfo[address(arg2)].field_0 - 1
        else:
            sub_cf7a91d2[address(arg1)] = mem[320]
            require s < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][s].field_0 = 0
            recordInfo[address(arg1)][s].field_256 = 0
            recordInfo[address(arg1)][s].field_512 = 0
            recordInfo[address(arg1)][s].field_768 = 0
            _388 = mem[224]
            require mem[224] <= t
            if s != sub_781e37aa[address(arg1)]:
                _394 = mem[320]
                mem[32] = 7
                require mem[320] < recordInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                mem[64] = mem[64] + 128
                mem[224] = recordInfo[address(arg1)][mem[320]].field_0
                mem[256] = recordInfo[address(arg1)][mem[320]].field_256
                mem[288] = recordInfo[address(arg1)][mem[320]].field_512
                mem[320] = recordInfo[address(arg1)][mem[320]].field_768
                s = _394
                t = 224
                t = t - _388
                continue 
            require not t - mem[224]
            require arg3 <= balanceOf[address(arg1)]
            mem[0] = arg1
            mem[32] = 0
            balanceOf[address(arg1)] -= arg3
            _422 = mem[64]
            mem[64] = mem[64] + 128
            mem[_422] = 0
            mem[_422 + 32] = 0
            mem[_422 + 64] = 0
            mem[_422 + 96] = 0
            if recordInfo[address(arg2)].field_0 < 1:
                require block.timestamp >= block.timestamp
                recordInfo[address(arg2)].field_0++
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
                recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
                sub_781e37aa[address(arg2)] = 0
                sub_cf7a91d2[address(arg2)] = 0
            else:
                mem[32] = 7
                require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                mem[0] = sha3(address(arg2), 7)
                if recordInfo[address(arg2)][stor9[address(arg2)]].field_256 < block.timestamp:
                    require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                    require recordInfo[address(arg2)][stor9[address(arg2)]].field_0 + arg3 >= recordInfo[address(arg2)][stor9[address(arg2)]].field_0
                    require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
                    recordInfo[address(arg2)][stor9[address(arg2)]].field_0 += arg3
                else:
                    _462 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_462] = arg3
                    require block.timestamp >= block.timestamp
                    mem[_462 + 32] = block.timestamp
                    mem[_462 + 64] = 0
                    mem[_462 + 96] = 0
                    require var59001 < recordInfo[address(arg2)].field_0
                    if block.timestamp >= recordInfo[address(arg2)][var59001].field_256:
                        if var59001 != sub_781e37aa[address(arg2)]:
                            if var59001 == sub_cf7a91d2[address(arg2)]:
                                require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                return 1
                            require var59001 < recordInfo[address(arg2)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(arg1)][s].field_0
                            mem[256] = recordInfo[address(arg1)][s].field_256
                            mem[288] = recordInfo[address(arg1)][s].field_512
                            mem[320] = recordInfo[address(arg1)][s].field_768
                            var59001 = recordInfo[address(arg2)][var59001].field_512
                            continue 
                        recordInfo[address(arg2)].field_0++
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = var59001
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
                        require var59001 < recordInfo[address(arg2)].field_0
                        recordInfo[address(arg2)][var59001].field_768 = recordInfo[address(arg2)].field_0 - 1
                        sub_781e37aa[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
                    else:
                        if var59001 == sub_cf7a91d2[address(arg2)]:
                            recordInfo[address(arg2)].field_0++
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var59001
                            require var59001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][var59001].field_512 = recordInfo[address(arg2)].field_0 - 1
                            sub_cf7a91d2[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
                        else:
                            require var59001 < recordInfo[address(arg2)].field_0
                            require recordInfo[address(arg2)][var59001].field_512 < recordInfo[address(arg2)].field_0
                            if block.timestamp < recordInfo[address(arg2)][recordInfo[address(arg2)][var59001].field_512].field_256:
                                if var59001 == sub_cf7a91d2[address(arg2)]:
                                    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    return 1
                                require var59001 < recordInfo[address(arg2)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(arg1)][s].field_0
                                mem[256] = recordInfo[address(arg1)][s].field_256
                                mem[288] = recordInfo[address(arg1)][s].field_512
                                mem[320] = recordInfo[address(arg1)][s].field_768
                                var59001 = recordInfo[address(arg2)][var59001].field_512
                                continue 
                            require var59001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)].field_0++
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = recordInfo[address(arg2)][var59001].field_512
                            recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var59001
                            require var59001 < recordInfo[address(arg2)].field_0
                            require recordInfo[address(arg2)][var59001].field_512 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][recordInfo[address(arg2)][var59001].field_512].field_768 = recordInfo[address(arg2)].field_0 - 1
                            require var59001 < recordInfo[address(arg2)].field_0
                            recordInfo[address(arg2)][var59001].field_512 = recordInfo[address(arg2)].field_0 - 1
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
        return 1
    require not t
    require arg3 <= balanceOf[address(arg1)]
    mem[0] = arg1
    mem[32] = 0
    balanceOf[address(arg1)] -= arg3
    _396 = mem[64]
    mem[64] = mem[64] + 128
    mem[_396] = 0
    mem[_396 + 32] = 0
    mem[_396 + 64] = 0
    mem[_396 + 96] = 0
    if recordInfo[address(arg2)].field_0 < 1:
        require block.timestamp >= block.timestamp
        recordInfo[address(arg2)].field_0++
        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
        sub_781e37aa[address(arg2)] = 0
        sub_cf7a91d2[address(arg2)] = 0
    else:
        mem[32] = 7
        require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
        mem[0] = sha3(address(arg2), 7)
        if recordInfo[address(arg2)][stor9[address(arg2)]].field_256 < block.timestamp:
            require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
            require recordInfo[address(arg2)][stor9[address(arg2)]].field_0 + arg3 >= recordInfo[address(arg2)][stor9[address(arg2)]].field_0
            require sub_cf7a91d2[address(arg2)] < recordInfo[address(arg2)].field_0
            recordInfo[address(arg2)][stor9[address(arg2)]].field_0 += arg3
        else:
            _416 = mem[64]
            mem[64] = mem[64] + 128
            mem[_416] = arg3
            require block.timestamp >= block.timestamp
            mem[_416 + 32] = block.timestamp
            mem[_416 + 64] = 0
            mem[_416 + 96] = 0
            require var52001 < recordInfo[address(arg2)].field_0
            if block.timestamp >= recordInfo[address(arg2)][var52001].field_256:
                if var52001 != sub_781e37aa[address(arg2)]:
                    if var52001 != sub_cf7a91d2[address(arg2)]:
                        mem[32] = 7
                        require var52001 < recordInfo[address(arg2)].field_0
                        mem[0] = sha3(address(arg2), 7)
                        var52001 = recordInfo[address(arg2)][var52001].field_512
                        continue 
                else:
                    recordInfo[address(arg2)].field_0++
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = var52001
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = 0
                    require var52001 < recordInfo[address(arg2)].field_0
                    recordInfo[address(arg2)][var52001].field_768 = recordInfo[address(arg2)].field_0 - 1
                    sub_781e37aa[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
            else:
                if var52001 == sub_cf7a91d2[address(arg2)]:
                    recordInfo[address(arg2)].field_0++
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = 0
                    recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var52001
                    require var52001 < recordInfo[address(arg2)].field_0
                    recordInfo[address(arg2)][var52001].field_512 = recordInfo[address(arg2)].field_0 - 1
                    sub_cf7a91d2[address(arg2)] = recordInfo[address(arg2)].field_0 - 1
                else:
                    require var52001 < recordInfo[address(arg2)].field_0
                    require recordInfo[address(arg2)][var52001].field_512 < recordInfo[address(arg2)].field_0
                    if block.timestamp < recordInfo[address(arg2)][recordInfo[address(arg2)][var52001].field_512].field_256:
                        if var52001 != sub_cf7a91d2[address(arg2)]:
                            mem[32] = 7
                            require var52001 < recordInfo[address(arg2)].field_0
                            mem[0] = sha3(address(arg2), 7)
                            var52001 = recordInfo[address(arg2)][var52001].field_512
                            continue 
                    else:
                        require var52001 < recordInfo[address(arg2)].field_0
                        recordInfo[address(arg2)].field_0++
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_0 = arg3
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_512 = recordInfo[address(arg2)][var52001].field_512
                        recordInfo[address(arg2)][recordInfo[address(arg2)].field_0].field_768 = var52001
                        require var52001 < recordInfo[address(arg2)].field_0
                        require recordInfo[address(arg2)][var52001].field_512 < recordInfo[address(arg2)].field_0
                        recordInfo[address(arg2)][recordInfo[address(arg2)][var52001].field_512].field_768 = recordInfo[address(arg2)].field_0 - 1
                        require var52001 < recordInfo[address(arg2)].field_0
                        recordInfo[address(arg2)][var52001].field_512 = recordInfo[address(arg2)].field_0 - 1
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor5[address(msg.sender)]
    require arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require sub_cf7a91d2[address(msg.sender)] < recordInfo[address(msg.sender)].field_0
    mem[64] = 352
    mem[224] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_0
    mem[256] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_256
    mem[288] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_512
    mem[320] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_768
    s = sub_cf7a91d2[address(msg.sender)]
    t = 96
    t = arg2
    while block.timestamp >= recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_256:
        if mem[224] > t:
            require t <= mem[224]
            require s < recordInfo[address(msg.sender)].field_0
            recordInfo[address(msg.sender)][s].field_0 = mem[224] - t
            require arg2 <= balanceOf[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg2
            _398 = mem[64]
            mem[64] = mem[64] + 128
            mem[_398] = 0
            mem[_398 + 32] = 0
            mem[_398 + 64] = 0
            mem[_398 + 96] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                mem[32] = 7
                require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
                else:
                    _436 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_436] = arg2
                    require block.timestamp >= block.timestamp
                    mem[_436 + 32] = block.timestamp
                    mem[_436 + 64] = 0
                    mem[_436 + 96] = 0
                    require var48001 < recordInfo[address(arg1)].field_0
                    if block.timestamp >= recordInfo[address(arg1)][var48001].field_256:
                        if var48001 != sub_781e37aa[address(arg1)]:
                            if var48001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            require var48001 < recordInfo[address(arg1)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(msg.sender)][s].field_0
                            mem[256] = recordInfo[address(msg.sender)][s].field_256
                            mem[288] = recordInfo[address(msg.sender)][s].field_512
                            mem[320] = recordInfo[address(msg.sender)][s].field_768
                            var48001 = recordInfo[address(arg1)][var48001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var48001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var48001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var48001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var48001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var48001
                            require var48001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var48001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var48001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var48001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp < recordInfo[address(arg1)][recordInfo[address(arg1)][var48001].field_512].field_256:
                                if var48001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var48001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var48001 = recordInfo[address(arg1)][var48001].field_512
                                continue 
                            require var48001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var48001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var48001
                            require var48001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var48001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var48001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var48001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var48001].field_512 = recordInfo[address(arg1)].field_0 - 1
        else:
            sub_cf7a91d2[address(msg.sender)] = mem[320]
            require s < recordInfo[address(msg.sender)].field_0
            recordInfo[address(msg.sender)][s].field_0 = 0
            recordInfo[address(msg.sender)][s].field_256 = 0
            recordInfo[address(msg.sender)][s].field_512 = 0
            recordInfo[address(msg.sender)][s].field_768 = 0
            _380 = mem[224]
            require mem[224] <= t
            if s != sub_781e37aa[address(msg.sender)]:
                _386 = mem[320]
                mem[32] = 7
                require mem[320] < recordInfo[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 7)
                mem[64] = mem[64] + 128
                mem[224] = recordInfo[address(msg.sender)][mem[320]].field_0
                mem[256] = recordInfo[address(msg.sender)][mem[320]].field_256
                mem[288] = recordInfo[address(msg.sender)][mem[320]].field_512
                mem[320] = recordInfo[address(msg.sender)][mem[320]].field_768
                s = _386
                t = 224
                t = t - _380
                continue 
            require not t - mem[224]
            require arg2 <= balanceOf[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg2
            _414 = mem[64]
            mem[64] = mem[64] + 128
            mem[_414] = 0
            mem[_414 + 32] = 0
            mem[_414 + 64] = 0
            mem[_414 + 96] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                mem[32] = 7
                require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
                else:
                    _454 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_454] = arg2
                    require block.timestamp >= block.timestamp
                    mem[_454 + 32] = block.timestamp
                    mem[_454 + 64] = 0
                    mem[_454 + 96] = 0
                    require var50001 < recordInfo[address(arg1)].field_0
                    if block.timestamp >= recordInfo[address(arg1)][var50001].field_256:
                        if var50001 != sub_781e37aa[address(arg1)]:
                            if var50001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            require var50001 < recordInfo[address(arg1)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(msg.sender)][s].field_0
                            mem[256] = recordInfo[address(msg.sender)][s].field_256
                            mem[288] = recordInfo[address(msg.sender)][s].field_512
                            mem[320] = recordInfo[address(msg.sender)][s].field_768
                            var50001 = recordInfo[address(arg1)][var50001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var50001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var50001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var50001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var50001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var50001
                            require var50001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var50001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var50001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var50001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp < recordInfo[address(arg1)][recordInfo[address(arg1)][var50001].field_512].field_256:
                                if var50001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var50001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var50001 = recordInfo[address(arg1)][var50001].field_512
                                continue 
                            require var50001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var50001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var50001
                            require var50001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var50001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var50001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var50001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var50001].field_512 = recordInfo[address(arg1)].field_0 - 1
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require not t
    require arg2 <= balanceOf[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] -= arg2
    _388 = mem[64]
    mem[64] = mem[64] + 128
    mem[_388] = 0
    mem[_388 + 32] = 0
    mem[_388 + 64] = 0
    mem[_388 + 96] = 0
    if recordInfo[address(arg1)].field_0 < 1:
        require block.timestamp >= block.timestamp
        recordInfo[address(arg1)].field_0++
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
        sub_781e37aa[address(arg1)] = 0
        sub_cf7a91d2[address(arg1)] = 0
    else:
        mem[32] = 7
        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 7)
        if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
            require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
            require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
            require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
        else:
            _408 = mem[64]
            mem[64] = mem[64] + 128
            mem[_408] = arg2
            require block.timestamp >= block.timestamp
            mem[_408 + 32] = block.timestamp
            mem[_408 + 64] = 0
            mem[_408 + 96] = 0
            require var43001 < recordInfo[address(arg1)].field_0
            if block.timestamp >= recordInfo[address(arg1)][var43001].field_256:
                if var43001 != sub_781e37aa[address(arg1)]:
                    if var43001 != sub_cf7a91d2[address(arg1)]:
                        mem[32] = 7
                        require var43001 < recordInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        var43001 = recordInfo[address(arg1)][var43001].field_512
                        continue 
                else:
                    recordInfo[address(arg1)].field_0++
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var43001
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                    require var43001 < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][var43001].field_768 = recordInfo[address(arg1)].field_0 - 1
                    sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
            else:
                if var43001 == sub_cf7a91d2[address(arg1)]:
                    recordInfo[address(arg1)].field_0++
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var43001
                    require var43001 < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][var43001].field_512 = recordInfo[address(arg1)].field_0 - 1
                    sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                else:
                    require var43001 < recordInfo[address(arg1)].field_0
                    require recordInfo[address(arg1)][var43001].field_512 < recordInfo[address(arg1)].field_0
                    if block.timestamp < recordInfo[address(arg1)][recordInfo[address(arg1)][var43001].field_512].field_256:
                        if var43001 != sub_cf7a91d2[address(arg1)]:
                            mem[32] = 7
                            require var43001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var43001 = recordInfo[address(arg1)][var43001].field_512
                            continue 
                    else:
                        require var43001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var43001].field_512
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var43001
                        require var43001 < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][var43001].field_512 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)][var43001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                        require var43001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var43001].field_512 = recordInfo[address(arg1)].field_0 - 1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_13c27b36(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require msg.sender == stor3
    require arg2 < recordInfo[address(arg1)].field_0
    require arg2 < recordInfo[address(arg1)].field_0
    mem[224] = recordInfo[address(arg1)][arg2].field_0
    mem[256] = recordInfo[address(arg1)][arg2].field_256
    mem[288] = recordInfo[address(arg1)][arg2].field_512
    mem[320] = recordInfo[address(arg1)][arg2].field_768
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    require msg.sender == stor3
    require arg2 < recordInfo[address(arg1)].field_0
    require arg2 < recordInfo[address(arg1)].field_0
    mem[480] = recordInfo[address(arg1)][arg2].field_0
    mem[512] = recordInfo[address(arg1)][arg2].field_256
    mem[544] = recordInfo[address(arg1)][arg2].field_512
    mem[576] = recordInfo[address(arg1)][arg2].field_768
    if arg2 == sub_781e37aa[address(arg1)]:
        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)][arg2].field_512
        require arg2 < recordInfo[address(arg1)].field_0
        recordInfo[address(arg1)][arg2].field_0 = 0
        recordInfo[address(arg1)][arg2].field_256 = 0
        recordInfo[address(arg1)][arg2].field_512 = 0
        recordInfo[address(arg1)][arg2].field_768 = 0
        require recordInfo[address(arg1)][arg2].field_0 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= recordInfo[address(arg1)][arg2].field_0
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        if recordInfo[address(arg1)].field_0 < 1:
            require block.timestamp + arg3 >= block.timestamp
            recordInfo[address(arg1)].field_0++
            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
            sub_781e37aa[address(arg1)] = 0
            sub_cf7a91d2[address(arg1)] = 0
        else:
            if arg3:
                mem[64] = 864
                mem[736] = recordInfo[address(arg1)][arg2].field_0
                require block.timestamp + arg3 >= block.timestamp
                mem[768] = block.timestamp + arg3
                mem[800] = 0
                mem[832] = 0
                require var42001 < recordInfo[address(arg1)].field_0
                if block.timestamp + arg3 >= recordInfo[address(arg1)][var42001].field_256:
                    if var42001 != sub_781e37aa[address(arg1)]:
                        if var42001 == sub_cf7a91d2[address(arg1)]:
                            require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                            return 1
                        mem[32] = 7
                        require var42001 < recordInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        var42001 = recordInfo[address(arg1)][var42001].field_512
                        continue 
                    recordInfo[address(arg1)].field_0++
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var42001
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                    require var42001 < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][var42001].field_768 = recordInfo[address(arg1)].field_0 - 1
                    sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                else:
                    if var42001 == sub_cf7a91d2[address(arg1)]:
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var42001
                        require var42001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var42001].field_512 = recordInfo[address(arg1)].field_0 - 1
                        sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        require var42001 < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][var42001].field_512 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var42001].field_512].field_256:
                            if var42001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                return 1
                            mem[32] = 7
                            require var42001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var42001 = recordInfo[address(arg1)][var42001].field_512
                            continue 
                        require var42001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var42001].field_512
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var42001
                        require var42001 < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][var42001].field_512 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)][var42001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                        require var42001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var42001].field_512 = recordInfo[address(arg1)].field_0 - 1
            else:
                require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + recordInfo[address(arg1)][arg2].field_0 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += recordInfo[address(arg1)][arg2].field_0
                else:
                    mem[64] = 864
                    mem[736] = recordInfo[address(arg1)][arg2].field_0
                    require block.timestamp + arg3 >= block.timestamp
                    mem[768] = block.timestamp + arg3
                    mem[800] = 0
                    mem[832] = 0
                    require var44001 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 >= recordInfo[address(arg1)][var44001].field_256:
                        if var44001 != sub_781e37aa[address(arg1)]:
                            if var44001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                return 1
                            mem[32] = 7
                            require var44001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var44001 = recordInfo[address(arg1)][var44001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var44001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var44001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var44001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var44001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var44001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_256:
                                if var44001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                    return 1
                                mem[32] = 7
                                require var44001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var44001 = recordInfo[address(arg1)][var44001].field_512
                                continue 
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var44001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                            require var44001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
    else:
        if arg2 == sub_cf7a91d2[address(arg1)]:
            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)][arg2].field_768
            require arg2 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][arg2].field_0 = 0
            recordInfo[address(arg1)][arg2].field_256 = 0
            recordInfo[address(arg1)][arg2].field_512 = 0
            recordInfo[address(arg1)][arg2].field_768 = 0
            require recordInfo[address(arg1)][arg2].field_0 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= recordInfo[address(arg1)][arg2].field_0
            mem[608] = 0
            mem[640] = 0
            mem[672] = 0
            mem[704] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp + arg3 >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                if arg3:
                    mem[64] = 864
                    mem[736] = recordInfo[address(arg1)][arg2].field_0
                    require block.timestamp + arg3 >= block.timestamp
                    mem[768] = block.timestamp + arg3
                    mem[800] = 0
                    mem[832] = 0
                    require var44001 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 >= recordInfo[address(arg1)][var44001].field_256:
                        if var44001 != sub_781e37aa[address(arg1)]:
                            if var44001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                return 1
                            mem[32] = 7
                            require var44001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var44001 = recordInfo[address(arg1)][var44001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var44001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var44001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var44001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var44001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var44001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_256:
                                if var44001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                    return 1
                                mem[32] = 7
                                require var44001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var44001 = recordInfo[address(arg1)][var44001].field_512
                                continue 
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var44001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                            require var44001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
                else:
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + recordInfo[address(arg1)][arg2].field_0 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += recordInfo[address(arg1)][arg2].field_0
                    else:
                        mem[64] = 864
                        mem[736] = recordInfo[address(arg1)][arg2].field_0
                        require block.timestamp + arg3 >= block.timestamp
                        mem[768] = block.timestamp + arg3
                        mem[800] = 0
                        mem[832] = 0
                        require var46001 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 >= recordInfo[address(arg1)][var46001].field_256:
                            if var46001 != sub_781e37aa[address(arg1)]:
                                if var46001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                    return 1
                                mem[32] = 7
                                require var46001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var46001 = recordInfo[address(arg1)][var46001].field_512
                                continue 
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var46001
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                            require var46001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var46001].field_768 = recordInfo[address(arg1)].field_0 - 1
                            sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            if var46001 == sub_cf7a91d2[address(arg1)]:
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var46001
                                require var46001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var46001].field_512 = recordInfo[address(arg1)].field_0 - 1
                                sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                            else:
                                require var46001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var46001].field_512 < recordInfo[address(arg1)].field_0
                                if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var46001].field_512].field_256:
                                    if var46001 == sub_cf7a91d2[address(arg1)]:
                                        require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                        return 1
                                    mem[32] = 7
                                    require var46001 < recordInfo[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    var46001 = recordInfo[address(arg1)][var46001].field_512
                                    continue 
                                require var46001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var46001].field_512
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var46001
                                require var46001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var46001].field_512 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)][var46001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                                require var46001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var46001].field_512 = recordInfo[address(arg1)].field_0 - 1
        else:
            require recordInfo[address(arg1)][arg2].field_768 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][recordInfo[address(arg1)][arg2].field_768].field_512 = recordInfo[address(arg1)][arg2].field_512
            require recordInfo[address(arg1)][arg2].field_512 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][recordInfo[address(arg1)][arg2].field_512].field_768 = recordInfo[address(arg1)][arg2].field_768
            require arg2 < recordInfo[address(arg1)].field_0
            recordInfo[address(arg1)][arg2].field_0 = 0
            recordInfo[address(arg1)][arg2].field_256 = 0
            recordInfo[address(arg1)][arg2].field_512 = 0
            recordInfo[address(arg1)][arg2].field_768 = 0
            require recordInfo[address(arg1)][arg2].field_0 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= recordInfo[address(arg1)][arg2].field_0
            mem[608] = 0
            mem[640] = 0
            mem[672] = 0
            mem[704] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp + arg3 >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                if arg3:
                    mem[64] = 864
                    mem[736] = recordInfo[address(arg1)][arg2].field_0
                    require block.timestamp + arg3 >= block.timestamp
                    mem[768] = block.timestamp + arg3
                    mem[800] = 0
                    mem[832] = 0
                    require var46001 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 >= recordInfo[address(arg1)][var46001].field_256:
                        if var46001 != sub_781e37aa[address(arg1)]:
                            if var46001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                return 1
                            mem[32] = 7
                            require var46001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var46001 = recordInfo[address(arg1)][var46001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var46001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var46001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var46001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var46001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var46001
                            require var46001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var46001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var46001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var46001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var46001].field_512].field_256:
                                if var46001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                    return 1
                                mem[32] = 7
                                require var46001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var46001 = recordInfo[address(arg1)][var46001].field_512
                                continue 
                            require var46001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var46001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var46001
                            require var46001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var46001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var46001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var46001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var46001].field_512 = recordInfo[address(arg1)].field_0 - 1
                else:
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + recordInfo[address(arg1)][arg2].field_0 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += recordInfo[address(arg1)][arg2].field_0
                    else:
                        mem[64] = 864
                        mem[736] = recordInfo[address(arg1)][arg2].field_0
                        require block.timestamp + arg3 >= block.timestamp
                        mem[768] = block.timestamp + arg3
                        mem[800] = 0
                        mem[832] = 0
                        require var48001 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 >= recordInfo[address(arg1)][var48001].field_256:
                            if var48001 != sub_781e37aa[address(arg1)]:
                                if var48001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                    return 1
                                mem[32] = 7
                                require var48001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var48001 = recordInfo[address(arg1)][var48001].field_512
                                continue 
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var48001
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                            require var48001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var48001].field_768 = recordInfo[address(arg1)].field_0 - 1
                            sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            if var48001 == sub_cf7a91d2[address(arg1)]:
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var48001
                                require var48001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var48001].field_512 = recordInfo[address(arg1)].field_0 - 1
                                sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                            else:
                                require var48001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var48001].field_512 < recordInfo[address(arg1)].field_0
                                if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var48001].field_512].field_256:
                                    if var48001 == sub_cf7a91d2[address(arg1)]:
                                        require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
                                        return 1
                                    mem[32] = 7
                                    require var48001 < recordInfo[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    var48001 = recordInfo[address(arg1)][var48001].field_512
                                    continue 
                                require var48001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = recordInfo[address(arg1)][arg2].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var48001].field_512
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var48001
                                require var48001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var48001].field_512 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)][var48001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                                require var48001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var48001].field_512 = recordInfo[address(arg1)].field_0 - 1
    require balanceOf[address(arg1)] + recordInfo[address(arg1)][arg2].field_0 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += recordInfo[address(arg1)][arg2].field_0
    return 1
}

function sub_4c68a070(?) {
    require stor6[address(msg.sender)]
    require not stor5[address(msg.sender)]
    require arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require sub_cf7a91d2[address(msg.sender)] < recordInfo[address(msg.sender)].field_0
    mem[64] = 352
    mem[224] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_0
    mem[256] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_256
    mem[288] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_512
    mem[320] = recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_768
    s = sub_cf7a91d2[address(msg.sender)]
    t = 96
    t = arg2
    while block.timestamp >= recordInfo[address(msg.sender)][stor9[address(msg.sender)]].field_256:
        if mem[224] > t:
            require t <= mem[224]
            require s < recordInfo[address(msg.sender)].field_0
            recordInfo[address(msg.sender)][s].field_0 = mem[224] - t
            require arg2 <= balanceOf[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg2
            _652 = mem[64]
            mem[64] = mem[64] + 128
            mem[_652] = 0
            mem[_652 + 32] = 0
            mem[_652 + 64] = 0
            mem[_652 + 96] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp + arg3 >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                mem[0] = arg1
                mem[32] = 9
                if arg3:
                    _673 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_673] = arg2
                    require block.timestamp + arg3 >= block.timestamp
                    mem[_673 + 32] = block.timestamp + arg3
                    mem[_673 + 64] = 0
                    mem[_673 + 96] = 0
                    require var47001 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 >= recordInfo[address(arg1)][var47001].field_256:
                        if var47001 != sub_781e37aa[address(arg1)]:
                            if var47001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            require var47001 < recordInfo[address(arg1)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(msg.sender)][s].field_0
                            mem[256] = recordInfo[address(msg.sender)][s].field_256
                            mem[288] = recordInfo[address(msg.sender)][s].field_512
                            mem[320] = recordInfo[address(msg.sender)][s].field_768
                            var47001 = recordInfo[address(arg1)][var47001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var47001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var47001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var47001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var47001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var47001
                            require var47001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var47001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var47001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var47001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var47001].field_512].field_256:
                                if var47001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var47001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var47001 = recordInfo[address(arg1)][var47001].field_512
                                continue 
                            require var47001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var47001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var47001
                            require var47001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var47001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var47001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var47001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var47001].field_512 = recordInfo[address(arg1)].field_0 - 1
                else:
                    mem[32] = 7
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
                    else:
                        _694 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_694] = arg2
                        require block.timestamp + arg3 >= block.timestamp
                        mem[_694 + 32] = block.timestamp + arg3
                        mem[_694 + 64] = 0
                        mem[_694 + 96] = 0
                        require var49001 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 >= recordInfo[address(arg1)][var49001].field_256:
                            if var49001 != sub_781e37aa[address(arg1)]:
                                if var49001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var49001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var49001 = recordInfo[address(arg1)][var49001].field_512
                                continue 
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var49001
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                            require var49001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var49001].field_768 = recordInfo[address(arg1)].field_0 - 1
                            sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            if var49001 == sub_cf7a91d2[address(arg1)]:
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var49001
                                require var49001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var49001].field_512 = recordInfo[address(arg1)].field_0 - 1
                                sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                            else:
                                require var49001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var49001].field_512 < recordInfo[address(arg1)].field_0
                                if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var49001].field_512].field_256:
                                    if var49001 == sub_cf7a91d2[address(arg1)]:
                                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    require var49001 < recordInfo[address(arg1)].field_0
                                    mem[32] = 7
                                    require s < recordInfo[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 7)
                                    mem[64] = mem[64] + 128
                                    mem[224] = recordInfo[address(msg.sender)][s].field_0
                                    mem[256] = recordInfo[address(msg.sender)][s].field_256
                                    mem[288] = recordInfo[address(msg.sender)][s].field_512
                                    mem[320] = recordInfo[address(msg.sender)][s].field_768
                                    var49001 = recordInfo[address(arg1)][var49001].field_512
                                    continue 
                                require var49001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var49001].field_512
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var49001
                                require var49001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var49001].field_512 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)][var49001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                                require var49001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var49001].field_512 = recordInfo[address(arg1)].field_0 - 1
        else:
            sub_cf7a91d2[address(msg.sender)] = mem[320]
            require s < recordInfo[address(msg.sender)].field_0
            recordInfo[address(msg.sender)][s].field_0 = 0
            recordInfo[address(msg.sender)][s].field_256 = 0
            recordInfo[address(msg.sender)][s].field_512 = 0
            recordInfo[address(msg.sender)][s].field_768 = 0
            _633 = mem[224]
            require mem[224] <= t
            if s != sub_781e37aa[address(msg.sender)]:
                _639 = mem[320]
                mem[32] = 7
                require mem[320] < recordInfo[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 7)
                mem[64] = mem[64] + 128
                mem[224] = recordInfo[address(msg.sender)][mem[320]].field_0
                mem[256] = recordInfo[address(msg.sender)][mem[320]].field_256
                mem[288] = recordInfo[address(msg.sender)][mem[320]].field_512
                mem[320] = recordInfo[address(msg.sender)][mem[320]].field_768
                s = _639
                t = 224
                t = t - _633
                continue 
            require not t - mem[224]
            require arg2 <= balanceOf[address(msg.sender)]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg2
            _668 = mem[64]
            mem[64] = mem[64] + 128
            mem[_668] = 0
            mem[_668 + 32] = 0
            mem[_668 + 64] = 0
            mem[_668 + 96] = 0
            if recordInfo[address(arg1)].field_0 < 1:
                require block.timestamp + arg3 >= block.timestamp
                recordInfo[address(arg1)].field_0++
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                sub_781e37aa[address(arg1)] = 0
                sub_cf7a91d2[address(arg1)] = 0
            else:
                mem[0] = arg1
                mem[32] = 9
                if arg3:
                    _696 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_696] = arg2
                    require block.timestamp + arg3 >= block.timestamp
                    mem[_696 + 32] = block.timestamp + arg3
                    mem[_696 + 64] = 0
                    mem[_696 + 96] = 0
                    require var49001 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 >= recordInfo[address(arg1)][var49001].field_256:
                        if var49001 != sub_781e37aa[address(arg1)]:
                            if var49001 == sub_cf7a91d2[address(arg1)]:
                                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                return 1
                            require var49001 < recordInfo[address(arg1)].field_0
                            mem[32] = 7
                            require s < recordInfo[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 7)
                            mem[64] = mem[64] + 128
                            mem[224] = recordInfo[address(msg.sender)][s].field_0
                            mem[256] = recordInfo[address(msg.sender)][s].field_256
                            mem[288] = recordInfo[address(msg.sender)][s].field_512
                            mem[320] = recordInfo[address(msg.sender)][s].field_768
                            var49001 = recordInfo[address(arg1)][var49001].field_512
                            continue 
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var49001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var49001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var49001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        if var49001 == sub_cf7a91d2[address(arg1)]:
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var49001
                            require var49001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var49001].field_512 = recordInfo[address(arg1)].field_0 - 1
                            sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            require var49001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var49001].field_512 < recordInfo[address(arg1)].field_0
                            if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var49001].field_512].field_256:
                                if var49001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var49001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var49001 = recordInfo[address(arg1)][var49001].field_512
                                continue 
                            require var49001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var49001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var49001
                            require var49001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var49001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var49001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var49001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var49001].field_512 = recordInfo[address(arg1)].field_0 - 1
                else:
                    mem[32] = 7
                    require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                        require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
                    else:
                        _732 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_732] = arg2
                        require block.timestamp + arg3 >= block.timestamp
                        mem[_732 + 32] = block.timestamp + arg3
                        mem[_732 + 64] = 0
                        mem[_732 + 96] = 0
                        require var51001 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 >= recordInfo[address(arg1)][var51001].field_256:
                            if var51001 != sub_781e37aa[address(arg1)]:
                                if var51001 == sub_cf7a91d2[address(arg1)]:
                                    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                require var51001 < recordInfo[address(arg1)].field_0
                                mem[32] = 7
                                require s < recordInfo[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                mem[64] = mem[64] + 128
                                mem[224] = recordInfo[address(msg.sender)][s].field_0
                                mem[256] = recordInfo[address(msg.sender)][s].field_256
                                mem[288] = recordInfo[address(msg.sender)][s].field_512
                                mem[320] = recordInfo[address(msg.sender)][s].field_768
                                var51001 = recordInfo[address(arg1)][var51001].field_512
                                continue 
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var51001
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                            require var51001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var51001].field_768 = recordInfo[address(arg1)].field_0 - 1
                            sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                        else:
                            if var51001 == sub_cf7a91d2[address(arg1)]:
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var51001
                                require var51001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var51001].field_512 = recordInfo[address(arg1)].field_0 - 1
                                sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                            else:
                                require var51001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var51001].field_512 < recordInfo[address(arg1)].field_0
                                if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var51001].field_512].field_256:
                                    if var51001 == sub_cf7a91d2[address(arg1)]:
                                        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    require var51001 < recordInfo[address(arg1)].field_0
                                    mem[32] = 7
                                    require s < recordInfo[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 7)
                                    mem[64] = mem[64] + 128
                                    mem[224] = recordInfo[address(msg.sender)][s].field_0
                                    mem[256] = recordInfo[address(msg.sender)][s].field_256
                                    mem[288] = recordInfo[address(msg.sender)][s].field_512
                                    mem[320] = recordInfo[address(msg.sender)][s].field_768
                                    var51001 = recordInfo[address(arg1)][var51001].field_512
                                    continue 
                                require var51001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)].field_0++
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var51001].field_512
                                recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var51001
                                require var51001 < recordInfo[address(arg1)].field_0
                                require recordInfo[address(arg1)][var51001].field_512 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][recordInfo[address(arg1)][var51001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                                require var51001 < recordInfo[address(arg1)].field_0
                                recordInfo[address(arg1)][var51001].field_512 = recordInfo[address(arg1)].field_0 - 1
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    require not t
    require arg2 <= balanceOf[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] -= arg2
    _641 = mem[64]
    mem[64] = mem[64] + 128
    mem[_641] = 0
    mem[_641 + 32] = 0
    mem[_641 + 64] = 0
    mem[_641 + 96] = 0
    if recordInfo[address(arg1)].field_0 < 1:
        require block.timestamp + arg3 >= block.timestamp
        recordInfo[address(arg1)].field_0++
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
        sub_781e37aa[address(arg1)] = 0
        sub_cf7a91d2[address(arg1)] = 0
    else:
        mem[0] = arg1
        mem[32] = 9
        if arg3:
            _650 = mem[64]
            mem[64] = mem[64] + 128
            mem[_650] = arg2
            require block.timestamp + arg3 >= block.timestamp
            mem[_650 + 32] = block.timestamp + arg3
            mem[_650 + 64] = 0
            mem[_650 + 96] = 0
            require var42001 < recordInfo[address(arg1)].field_0
            if block.timestamp + arg3 >= recordInfo[address(arg1)][var42001].field_256:
                if var42001 != sub_781e37aa[address(arg1)]:
                    if var42001 != sub_cf7a91d2[address(arg1)]:
                        mem[32] = 7
                        require var42001 < recordInfo[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        var42001 = recordInfo[address(arg1)][var42001].field_512
                        continue 
                else:
                    recordInfo[address(arg1)].field_0++
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var42001
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                    require var42001 < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][var42001].field_768 = recordInfo[address(arg1)].field_0 - 1
                    sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
            else:
                if var42001 == sub_cf7a91d2[address(arg1)]:
                    recordInfo[address(arg1)].field_0++
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                    recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var42001
                    require var42001 < recordInfo[address(arg1)].field_0
                    recordInfo[address(arg1)][var42001].field_512 = recordInfo[address(arg1)].field_0 - 1
                    sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                else:
                    require var42001 < recordInfo[address(arg1)].field_0
                    require recordInfo[address(arg1)][var42001].field_512 < recordInfo[address(arg1)].field_0
                    if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var42001].field_512].field_256:
                        if var42001 != sub_cf7a91d2[address(arg1)]:
                            mem[32] = 7
                            require var42001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var42001 = recordInfo[address(arg1)][var42001].field_512
                            continue 
                    else:
                        require var42001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var42001].field_512
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var42001
                        require var42001 < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][var42001].field_512 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][recordInfo[address(arg1)][var42001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                        require var42001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var42001].field_512 = recordInfo[address(arg1)].field_0 - 1
        else:
            mem[32] = 7
            require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 7)
            if recordInfo[address(arg1)][stor9[address(arg1)]].field_256 < block.timestamp:
                require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                require recordInfo[address(arg1)][stor9[address(arg1)]].field_0 + arg2 >= recordInfo[address(arg1)][stor9[address(arg1)]].field_0
                require sub_cf7a91d2[address(arg1)] < recordInfo[address(arg1)].field_0
                recordInfo[address(arg1)][stor9[address(arg1)]].field_0 += arg2
            else:
                _662 = mem[64]
                mem[64] = mem[64] + 128
                mem[_662] = arg2
                require block.timestamp + arg3 >= block.timestamp
                mem[_662 + 32] = block.timestamp + arg3
                mem[_662 + 64] = 0
                mem[_662 + 96] = 0
                require var44001 < recordInfo[address(arg1)].field_0
                if block.timestamp + arg3 >= recordInfo[address(arg1)][var44001].field_256:
                    if var44001 != sub_781e37aa[address(arg1)]:
                        if var44001 != sub_cf7a91d2[address(arg1)]:
                            mem[32] = 7
                            require var44001 < recordInfo[address(arg1)].field_0
                            mem[0] = sha3(address(arg1), 7)
                            var44001 = recordInfo[address(arg1)][var44001].field_512
                            continue 
                    else:
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = var44001
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = 0
                        require var44001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var44001].field_768 = recordInfo[address(arg1)].field_0 - 1
                        sub_781e37aa[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                else:
                    if var44001 == sub_cf7a91d2[address(arg1)]:
                        recordInfo[address(arg1)].field_0++
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = 0
                        recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                        require var44001 < recordInfo[address(arg1)].field_0
                        recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
                        sub_cf7a91d2[address(arg1)] = recordInfo[address(arg1)].field_0 - 1
                    else:
                        require var44001 < recordInfo[address(arg1)].field_0
                        require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                        if block.timestamp + arg3 < recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_256:
                            if var44001 != sub_cf7a91d2[address(arg1)]:
                                mem[32] = 7
                                require var44001 < recordInfo[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                var44001 = recordInfo[address(arg1)][var44001].field_512
                                continue 
                        else:
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)].field_0++
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_0 = arg2
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_256 = block.timestamp + arg3
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_512 = recordInfo[address(arg1)][var44001].field_512
                            recordInfo[address(arg1)][recordInfo[address(arg1)].field_0].field_768 = var44001
                            require var44001 < recordInfo[address(arg1)].field_0
                            require recordInfo[address(arg1)][var44001].field_512 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][recordInfo[address(arg1)][var44001].field_512].field_768 = recordInfo[address(arg1)].field_0 - 1
                            require var44001 < recordInfo[address(arg1)].field_0
                            recordInfo[address(arg1)][var44001].field_512 = recordInfo[address(arg1)].field_0 - 1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
