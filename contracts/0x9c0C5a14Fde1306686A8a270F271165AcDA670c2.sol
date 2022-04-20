contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 3375]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalContribution;
mapping of uint256 users;
array of uint256 stor3;
array of uint256 stor4;
array of address stor5;
address stor32;

function totalContribution() {
    return totalContribution
}

function owner() {
    return owner
}

function users(address arg1) {
    return users[arg1]
}

function _fallback() payable {
    revert
}

function richDatabase(uint256 arg1) {
    require arg1 < 10
    return stor3[arg1], stor4[arg1], stor5[arg1]
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require arg2 <= totalContribution
    totalContribution -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyerHistory() {
    mem[640] = 10
    mem[672] = 10
    idx = 0
    while idx < 10:
        require idx < 10
        mem[(32 * idx) + 320] = stor5[idx]
        require idx < 10
        require idx < mem[640]
        mem[(32 * idx) + 672] = stor3[idx]
        require idx < 10
        require idx < mem[672]
        mem[(32 * idx) + 704] = stor4[idx]
        idx = idx + 1
        continue 
    mem[1024] = 96
    mem[1120] = 10
    mem[1152 len 0] = None
    mem[1056] = 448
    mem[1472] = mem[640]
    mem[1504 len floor32(mem[640])] = mem[672 len floor32(mem[640])]
    mem[1088] = (32 * mem[640]) + 480
    mem[(32 * mem[640]) + 1504] = mem[672]
    mem[(32 * mem[640]) + 1536 len floor32(mem[672])] = mem[704 len floor32(mem[672])]
    return 96, 448, (32 * mem[640]) + 480, 10, mem[1152 len 320], mem[640], mem[1504 len (32 * mem[672]) + (32 * mem[640]) + 32]
}

function takeMyMoney(bytes32 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    users[address(msg.sender)] += msg.value
    totalContribution += msg.value
    mem[0] = msg.sender
    mem[32] = 2
    if users[address(msg.sender)] < users[stor32]:
        return 0
    mem[224] = 10
    mem[64] = 672
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[var16001] = 576
    s = var16001
    idx = var16002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[576] = 0
        mem[608] = 0
        mem[640] = 0
        mem[s + 32] = 576
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < 10:
        if s == 10:
            idx = 0
            while idx < 10:
                require idx < mem[224]
                require idx < 10
                stor3[idx] = mem[mem[(32 * idx) + 256]]
                stor4[idx] = mem[mem[(32 * idx) + 256] + 32]
                stor5[idx] = mem[mem[(32 * idx) + 256] + 76 len 20]
                idx = idx + 1
                continue 
            return bool(t)
        require idx < 10
        if t:
            if stor5[idx] == msg.sender:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < 10
            _73 = mem[64]
            mem[64] = mem[64] + 96
            mem[_73] = stor3[idx]
            mem[_73 + 32] = stor4[idx]
            mem[_73 + 64] = stor5[idx]
            require s < mem[224]
            mem[(32 * s) + 256] = _73
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        mem[0] = msg.sender
        mem[32] = 2
        if users[address(msg.sender)] <= stor3[idx]:
            require idx < 10
            if stor5[idx] == msg.sender:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < 10
            _77 = mem[64]
            mem[64] = mem[64] + 96
            mem[_77] = stor3[idx]
            mem[_77 + 32] = stor4[idx]
            mem[_77 + 64] = stor5[idx]
            require s < mem[224]
            mem[(32 * s) + 256] = _77
            idx = idx + 1
            s = s + 1
            t = t
            continue 
        mem[0] = msg.sender
        mem[32] = 2
        mem[128] = users[address(msg.sender)]
        mem[160] = arg1
        mem[192] = msg.sender
        require s < mem[224]
        mem[(32 * s) + 256] = 128
        require idx < 10
        if stor5[idx] == msg.sender:
            idx = idx + 1
            s = s + 1
            t = 1
            continue 
        require idx < 10
        _81 = mem[64]
        mem[64] = mem[64] + 96
        mem[_81] = stor3[idx]
        mem[_81 + 32] = stor4[idx]
        mem[_81 + 64] = stor5[idx]
        require s + 1 < mem[224]
        mem[(32 * s + 1) + 256] = _81
        idx = idx + 1
        s = s + 2
        t = 1
        continue 
    idx = 0
    while idx < 10:
        require idx < mem[224]
        require idx < 10
        stor3[idx] = mem[mem[(32 * idx) + 256]]
        stor4[idx] = mem[mem[(32 * idx) + 256] + 32]
        stor5[idx] = mem[mem[(32 * idx) + 256] + 76 len 20]
        idx = idx + 1
        continue 
    return bool(t)
}



}
