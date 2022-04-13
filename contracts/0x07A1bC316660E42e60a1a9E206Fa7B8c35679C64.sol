contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
mapping of uint8 stor2;

function _fallback() {
    stor1[code.data[3381 len 20]] = 1
    stor2[address(code.data[3401 len 32])] = 1
    return code.data[124 len 3245]
}



// =====================  Runtime code  =====================


uint8 checkStatus;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of struct amount;

function checkStatus() {
    require checkStatus <= 2
    return checkStatus
}

function getAmount(uint256 arg1, address arg2) {
    return uint256(amount[arg1][1][address(arg2)].field_0)
}

function isOperator(address arg1) {
    return bool(stor2[arg1])
}

function sub_a27c9351(?) {
    return amount[arg1][arg2].field_0
}

function data(uint256 arg1) {
    return uint256(amount[arg1].field_512)
}

function isManager(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_47e229f8(?) {
    require checkStatus <= 2
    return (checkStatus == 2)
}

function sub_9178f351(?) {
    require stor1[address(msg.sender)]
    require arg1 <= 2
    checkStatus = arg1
    emit 0x876ac1a0: arg1
}

function addManager(address arg1) {
    require stor1[address(msg.sender)]
    if stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 1
    emit 0xe859541e: arg1
    return 1
}

function addOperator(address arg1) {
    require stor1[address(msg.sender)]
    if stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 1
    emit 0x16dbc48b: arg1
    return 1
}

function removeManager(address arg1) {
    require stor1[address(msg.sender)]
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    emit 0x65aaff93: arg1
    return 1
}

function removeOperator(address arg1) {
    require stor1[address(msg.sender)]
    if not stor2[address(arg1)]:
        return 0
    stor2[address(arg1)] = 0
    emit 0x846b5e32: arg1
    return 1
}

function sub_c9493b98(?) {
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor2[address(msg.sender)]
    require checkStatus <= 2
    require not checkStatus
    mem[0] = arg1
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] < uint256(amount[arg1].field_512):
            require idx < mem[96]
            _32 = sha3(mem[(32 * idx) + 128], sha3(arg1, 3))
            require idx < mem[96]
            if mem[(32 * idx) + 128] == uint256(amount[arg1].field_512) - 1:
                mem[0] = uint256(amount[arg1].field_512) - 1
                mem[32] = sha3(arg1, 3)
                require idx < mem[96]
                _39 = mem[(32 * idx) + 128]
                mem[mem[64]] = amount[arg1][mem[(32 * idx) + 128]].field_0
                mem[mem[64] + 32] = amount[arg1][uint256(amount[arg1].field_512) - 1].field_0
                mem[mem[64] + 64] = _39
                emit 0x8fe0eb6a: mem[mem[64]], amount[arg1][uint256(amount[arg1].field_512) - 1].field_0, _39, arg1
            else:
                require idx < mem[96]
                amount[arg1][mem[(32 * idx) + 128]].field_0 = amount[arg1][uint256(amount[arg1].field_512) - 1].field_0
                mem[0] = uint256(amount[arg1].field_512) - 1
                mem[32] = sha3(arg1, 3)
                require idx < mem[96]
                _47 = mem[(32 * idx) + 128]
                mem[mem[64]] = amount[arg1][mem[(32 * idx) + 128]].field_0
                mem[mem[64] + 32] = amount[arg1][uint256(amount[arg1].field_512) - 1].field_0
                mem[mem[64] + 64] = _47
                emit 0x8fe0eb6a: mem[mem[64]], amount[arg1][uint256(amount[arg1].field_512) - 1].field_0, _47, arg1
            mem[0] = stor[_32]
            mem[32] = sha3(arg1, 3) + 1
            uint256(amount[arg1][1][stor[_32]].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_0faeeed4(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require stor2[address(msg.sender)]
    require checkStatus <= 2
    require not checkStatus
    mem[0] = arg1
    idx = 0
    while idx < arg2.length:
        require idx < mem[(32 * arg2.length) + 128]
        if mem[(32 * idx) + (32 * arg2.length) + 160] != 0:
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            require idx < mem[96]
            if uint256(amount[arg1][1][mem[(32 * idx) + 140 len 20]].field_0) > 0:
                require idx < mem[(32 * arg2.length) + 128]
                _50 = mem[(32 * arg2.length) + (32 * idx) + 160]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = _50
                emit 0x57c28fd2: mem[mem[64]], _50, arg1
            else:
                mem[0] = uint256(amount[arg1].field_512)
                mem[32] = sha3(arg1, 3)
                amount[arg1][uint256(amount[arg1].field_512)].field_0 = mem[(32 * idx) + 140 len 20]
                require idx < mem[96]
                require idx < mem[(32 * arg2.length) + 128]
                _53 = mem[(32 * idx) + (32 * arg2.length) + 160]
                mem[mem[64]] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 32] = uint256(amount[arg1].field_512)
                mem[mem[64] + 64] = _53
                emit 0xbbae1603: mem[mem[64]], uint256(amount[arg1].field_512), _53, arg1
            require idx < mem[(32 * arg2.length) + 128]
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg1, 3) + 1
            uint256(amount[arg1][1][mem[(32 * idx) + 140 len 20]].field_0) = mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
}



}
