contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    return code.data[33 len 4971]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct link;
uint256 ID;

function link(address arg1) {
    return link[arg1].field_0, link[arg1].field_256
}

function ID() {
    return ID
}

function _fallback() payable {
    revert
}

function table(uint256 arg1) {
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768, bool(stor0[arg1].field_1024)
}

function sub_51c2535b(?) {
    if link[address(arg1)].field_0:
        return 0
    link[address(arg1)].field_256 = block.timestamp
    link[address(arg1)].field_0 = msg.sender
    return 1
}

function sub_6857f141(?) {
    if not arg1:
        return '0'
    s = 0
    idx = arg1
    while idx > 0:
        s = s / 256 or (idx % 10) + 48 << 248
        idx = idx / 10
        continue 
    return s
}

function sub_901113e8(?) {
    if link[address(arg2)].field_0 != msg.sender:
        return 0
    if not link[address(arg2)].field_0:
        return 0
    stor0[stor2].field_0 = msg.sender
    stor0[stor2].field_256 = arg1
    stor0[stor2].field_512 = arg2
    stor0[stor2].field_768 = arg3
    ID++
    return 1
}

function sub_0737a29a(?) {
    idx = 0
    while idx < ID:
        mem[0] = idx
        mem[32] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 0
        if arg1 != stor0[idx].field_512:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 0
        if stor0[idx].field_1024:
            idx = idx + 1
            continue 
        stor0[idx].field_0 = 0
        stor0[idx].field_256 = 0
        stor0[idx].field_512 = 0
        stor0[idx].field_768 = 0
        stor0[idx].field_1024 = 0
        return 'Greetings! Proposal Canceled'
    return 'Sorry, Unable to Rollback'
}

function sub_5df0f9cb(?) {
    idx = 0
    while idx < ID:
        mem[0] = idx
        mem[32] = 0
        if stor0[idx].field_0 != arg2:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 0
        if stor0[idx].field_512 != arg1:
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = 0
        if stor0[idx].field_256 != msg.sender:
            idx = idx + 1
            continue 
        if not stor0[idx].field_768:
            return '0'
        t = 0
        s = stor0[idx].field_768
        while s > 0:
            t = t / 256 or (s % 10) + 48 << 248
            s = s / 10
            continue 
        return t
    return 'Proposal Not Found'
}

function sub_a413b8c7(?) payable {
    idx = 0
    while idx < ID:
        mem[0] = idx
        mem[32] = 0
        if msg.sender == stor0[idx].field_256:
            mem[0] = idx
            mem[32] = 0
            if arg2 == stor0[idx].field_512:
                mem[0] = idx
                mem[32] = 0
                if arg1 == stor0[idx].field_0:
                    if not stor0[idx].field_768:
                        link[stor0[idx].field_512].field_256 = block.timestamp
                        link[stor0[idx].field_512].field_0 = msg.sender
                        stor0[idx].field_1024 = 1
                    mem[0] = idx
                    mem[32] = 0
                    if stor0[idx].field_768 > 0:
                        mem[0] = idx
                        mem[32] = 0
                        if stor0[idx].field_768 != msg.value:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call stor0[idx].field_0 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            link[stor0[idx].field_512].field_256 = block.timestamp
                            link[stor0[idx].field_512].field_0 = msg.sender
                            mem[0] = idx
                            mem[32] = 0
                            stor0[idx].field_1024 = 1
        idx = idx + 1
        continue 
}



}
