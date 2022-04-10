contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -2134] = code.data[2616 len -2134]
    mem[64] = -2038
    stor1 = mem[108 len 20]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[482 len 2134]
}



// =====================  Runtime code  =====================


array of uint256 name;
address owner;
array of uint256 recipients;
mapping of uint256 sub_c69507dd;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function sub_c69507dd(?) {
    return sub_c69507dd[arg1]
}

function recipients(uint256 arg1) {
    require arg1 < recipients.length
    return recipients[arg1]
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function withdraw(bytes32 arg1, address arg2) {
    require msg.sender == owner
    hash = sha256hash(arg1) 
    require sha256hash.result
    require sub_c69507dd[hash] > 0
    emit Withdraw(hash, sub_c69507dd[hash]);
    sub_c69507dd[hash] = 0
    call arg2 with:
       value sub_c69507dd[hash] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function fund() payable {
    require recipients.length
    mem[128] = recipients.length - 1
    mem[64] = (32 * recipients.length - 1) + 160
    idx = 0
    while idx < recipients.length - 1:
        require idx < recipients.length
        mem[0] = 2
        mem[mem[64] + 32] = idx
        mem[mem[64] + 64] = block.hash(block.number - 1)
        hash = sha256hash(recipients[idx], idx, block.hash(block.number - 1)) 
        mem[mem[64]] = hash
        require sha256hash.result
        require msg.value + (-1 * msg.value / recipients.length / 4 * recipients.length) + 2
        require idx < mem[128]
        mem[(32 * idx) + 160] = hash % msg.value + (-1 * msg.value / recipients.length / 4 * recipients.length) + 2
        idx = idx + 1
        continue 
    _98 = mem[128]
    s = 0
    s = 0
    idx = 1
    while idx < _98:
        require idx < mem[128]
        _102 = mem[(32 * idx) + 160]
        if var25003 <= 0:
            require var25003 < mem[128]
            mem[(32 * var25003) + 160] = mem[(32 * idx) + 160]
            _98 = mem[128]
            s = var25003
            s = _102
            idx = idx + 1
            continue 
        require var27004 - 1 < mem[128]
        if not var31001:
            require var31004 < mem[128]
            mem[(32 * var31004) + 160] = mem[(32 * idx) + 160]
            _98 = mem[128]
            s = var31004
            s = _102
            idx = idx + 1
            continue 
        require var33003 - 1 < mem[128]
        require var35005 < mem[128]
        mem[(32 * var37001) + 160] = var37003
        s = var37006
        while s - 1 > 0:
            require s - 2 < mem[128]
            if mem[(32 * s - 2) + 160] <= _102:
                require s - 1 < mem[128]
                mem[(32 * s - 1) + 160] = _102
                _98 = mem[128]
                s = s - 1
                s = _102
                idx = idx + 1
                continue 
            require s - 2 < mem[128]
            require s - 1 < mem[128]
            mem[(32 * s - 1) + 160] = mem[(32 * s - 2) + 160]
            _98 = mem[128]
            s = s - 1
            continue 
        require s - 1 < mem[128]
        mem[(32 * s - 1) + 160] = _102
        _98 = mem[128]
        s = s - 1
        s = _102
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    while idx < recipients.length:
        if idx == recipients.length - 1:
            require idx < recipients.length
            mem[0] = recipients[idx]
            mem[32] = 3
            sub_c69507dd[stor2[idx]] = sub_c69507dd[stor2[idx]] + (msg.value / recipients.length / 4) + msg.value + (-1 * msg.value / recipients.length / 4 * recipients.length) + -s + 1
            s = msg.value + (-1 * msg.value / recipients.length / 4 * recipients.length) + 1
            s = msg.value + (-1 * msg.value / recipients.length / 4 * recipients.length) + 1
            idx = idx + 1
            continue 
        require idx < mem[128]
        require idx < recipients.length
        mem[0] = recipients[idx]
        mem[32] = 3
        sub_c69507dd[stor2[idx]] = sub_c69507dd[stor2[idx]] + (msg.value / recipients.length / 4) + mem[(32 * idx) + 160] - s
        s = mem[(32 * idx) + 160]
        s = mem[(32 * idx) + 160]
        idx = idx + 1
        continue 
}



}
