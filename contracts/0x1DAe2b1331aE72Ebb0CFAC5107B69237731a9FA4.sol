contract main {


// =======================  Init code  ======================


uint16 stor0;
uint16 stor0; offset 16
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    uint16(stor0.field_0) = 9763
    uint16(stor0.field_16) = 0
    stor2 = 0
    require not msg.value
    stor1 = block.timestamp + (24 * 3600)
    return code.data[62 len 1884]
}



// =====================  Runtime code  =====================


const ROUND_LENGTH = (24 * 3600)


uint32 symbol;
uint256 sub_87293960;
uint256 sub_d32a27d5;
array of struct entries;

function sub_87293960(?) {
    return sub_87293960
}

function symbol() {
    return symbol
}

function entries(uint256 arg1) {
    require arg1 < entries.length
    return entries[arg1].field_0, entries[arg1].field_160
}

function sub_d32a27d5(?) {
    return sub_d32a27d5
}

function _fallback() payable {
    revert
}

function hasRoundEnded() {
    return (block.timestamp > sub_87293960)
}

function finalizeRound() {
    if block.timestamp > sub_87293960:
        if sub_d32a27d5 > 0:
            require sub_d32a27d5
            require block.hash(block.number - 1) % sub_d32a27d5 < entries.length
            symbol = entries[block.hash(block.number - 1) % stor2].field_160
            sub_d32a27d5 = 0
            emit SymbolChanged(entries[block.hash(block.number - 1) % stor2].field_0, entries[block.hash(block.number - 1) % stor2].field_0);
}

function enterLottery(uint32 arg1) {
    if block.timestamp > sub_87293960:
        if sub_d32a27d5 > 0:
            require sub_d32a27d5
            require block.hash(block.number - 1) % sub_d32a27d5 < entries.length
            symbol = entries[block.hash(block.number - 1) % stor2].field_160
            sub_d32a27d5 = 0
            emit SymbolChanged(entries[block.hash(block.number - 1) % stor2].field_0, entries[block.hash(block.number - 1) % stor2].field_0);
        sub_87293960 = block.timestamp + (24 * 3600)
    if sub_d32a27d5 == entries.length:
        entries.length++
        if not entries.length <= entries.length + 1:
            idx = entries.length + 1
            while entries.length > idx:
                entries[idx].field_0 = 0
                idx = idx + 1
                continue 
    require sub_d32a27d5 < entries.length
    entries[stor2].field_0 = msg.sender
    entries[stor2].field_160 = arg1
    sub_d32a27d5++
    emit NewEntry(msg.sender, arg1 << 224, sub_87293960);
}

function getEntries() {
    if sub_d32a27d5 <= 0:
        return 64, 96, 0, 0
    if 256 < (32 * sub_d32a27d5) + 256:
        mem[(32 * sub_d32a27d5) + 256] = sub_d32a27d5
        idx = 0
        while idx < sub_d32a27d5:
            require idx < entries.length
            require idx < sub_d32a27d5
            mem[(32 * idx) + 256] = entries[idx].field_0
            require idx < entries.length
            mem[0] = 3
            require idx < mem[(32 * sub_d32a27d5) + 256]
            mem[(32 * sub_d32a27d5) + (32 * idx) + 288] = entries[idx].field_160
            idx = idx + 1
            continue 
        mem[(64 * sub_d32a27d5) + 288] = 64
        mem[(64 * sub_d32a27d5) + 352] = sub_d32a27d5
        s = 0
        while sub_d32a27d5 < 32 * sub_d32a27d5:
            mem[(66 * sub_d32a27d5) + 384] = mem[sub_d32a27d5 + 256]
            s = sub_d32a27d5 + 32
            continue 
        mem[(64 * sub_d32a27d5) + 320] = (32 * sub_d32a27d5) + 96
        mem[(98 * sub_d32a27d5) + 384] = mem[(32 * sub_d32a27d5) + 256]
        mem[(98 * sub_d32a27d5) + 416 len floor32(mem[(32 * sub_d32a27d5) + 256])] = mem[(32 * sub_d32a27d5) + 288 len floor32(mem[(32 * sub_d32a27d5) + 256])]
        return memory
          from (64 * sub_d32a27d5) + 288
           len (32 * mem[(32 * sub_d32a27d5) + 256]) + (161 * sub_d32a27d5) + 128
    mem[256] = sub_d32a27d5
    idx = 0
    while idx < sub_d32a27d5:
        require idx < entries.length
        require idx < sub_d32a27d5
        mem[(32 * idx) + 256] = entries[idx].field_0
        require idx < entries.length
        mem[0] = 3
        require idx < mem[256]
        mem[(32 * idx) + 288] = entries[idx].field_160
        idx = idx + 1
        continue 
    mem[(32 * sub_d32a27d5) + 288] = 64
    mem[(32 * sub_d32a27d5) + 352] = sub_d32a27d5
    s = 0
    while sub_d32a27d5 < 32 * sub_d32a27d5:
        mem[(34 * sub_d32a27d5) + 384] = mem[sub_d32a27d5 + 256]
        s = sub_d32a27d5 + 32
        continue 
    mem[(32 * sub_d32a27d5) + 320] = (32 * sub_d32a27d5) + 96
    mem[(64 * sub_d32a27d5) + 384] = mem[256]
    mem[(64 * sub_d32a27d5) + 416 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    return Array(len=sub_d32a27d5, data=mem[(32 * sub_d32a27d5) + 384 len (32 * sub_d32a27d5) + (32 * mem[256]) + 32]), 
           (32 * sub_d32a27d5) + 96
}



}
