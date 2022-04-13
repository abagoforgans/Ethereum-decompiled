contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
mapping of uint8 stor2;

function _fallback() {
    stor1[code.data[3214 len 20]] = 1
    stor2[address(code.data[3234 len 32])] = 1
    return code.data[124 len 3078]
}



// =====================  Runtime code  =====================


uint8 checkStatus;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of address affiliates;
mapping of uint256 amount;
uint256 sub_6c3916dd;

function affiliates(uint256 arg1) {
    return affiliates[arg1]
}

function checkStatus() {
    require checkStatus <= 2
    return checkStatus
}

function sub_6c3916dd(?) {
    return sub_6c3916dd
}

function isOperator(address arg1) {
    return bool(stor2[arg1])
}

function amount(address arg1) {
    return amount[arg1]
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

function sub_bbcb3d40(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor2[address(msg.sender)]
    require checkStatus <= 2
    require not checkStatus
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 128] < sub_6c3916dd:
            require idx < arg1.length
            _31 = sha3(mem[(32 * idx) + 128], 3)
            require idx < arg1.length
            require idx < arg1.length
            if mem[(32 * idx) + 128] != sub_6c3916dd - 1:
                affiliates[mem[(32 * idx) + 128]] = affiliates[stor5 - 1]
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 128]
            emit 0x835fe68c: mem[(32 * arg1.length) + 128], stor[_31], affiliates[stor5 - 1]
            mem[0] = stor[_31]
            mem[32] = 4
            amount[stor[_31]] = 0
        idx = idx + 1
        continue 
}

function sub_61019788(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor2[address(msg.sender)]
    require checkStatus <= 2
    require not checkStatus
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] != 0:
            require idx < arg1.length
            require idx < arg1.length
            if amount[mem[(32 * idx) + 140 len 20]] > 0:
                _45 = mem[(32 * idx) + 128]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit 0x6c9952ad: mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_45)
            else:
                affiliates[stor5] = mem[(32 * idx) + 140 len 20]
                require idx < arg1.length
                _47 = mem[(32 * idx) + 128]
                require idx < arg2.length
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit 0xc9c91aa3: mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_47), sub_6c3916dd
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            amount[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
