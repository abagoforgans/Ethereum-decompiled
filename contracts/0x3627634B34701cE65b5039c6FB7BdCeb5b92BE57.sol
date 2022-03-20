contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1239]




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 sub_8b69450d;
uint256 totalValue;

function sub_8b69450d(?) payable {
    return sub_8b69450d
}

function totalValue() payable {
    return totalValue
}

function kill() payable {
    if msg.sender != 0x82ab1649f370ccf9f2a5006130c4fca28db2587e:
    selfdestruct(0x82ab1649f370ccf9f2a5006130c4fca28db2587e)
}

function _fallback() payable {
  stop
}

function sub_7cf3a433(?) payable {
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_256,
           ('signextend', 0, ('signextend', 0, ('field', 424, ('stor', ('map', ('param', 'arg1'), ('name', 'stor0', 0))))))
}

function holdCoin(address arg1, address arg2) payable {
    sub_8b69450d++
    totalValue += msg.value
    stor0[stor1 + 1].field_0 = msg.value
    stor0[stor1 + 1].field_256 = arg1
    stor0[stor1 + 1].field_416 = 1
    stor0[stor1 + 1].field_424 = 2
    stor0[stor1 + 1].field_432 = Mask(80, 176, arg1) >> 176
    stor0[stor1 + 1].field_512 = 0
    stor0[stor1][2][1].field_0 = msg.sender
    stor0[stor1][2][1].field_160 = 0
    stor0[stor1][2][1].field_168 = Mask(88, 168, msg.sender) >> 168
    stor0[stor1][2][2].field_0 = arg2
    stor0[stor1][2][2].field_160 = 0
    stor0[stor1][2][2].field_168 = Mask(88, 168, arg2) >> 168
    return sub_8b69450d
}

function sub_cf8c8ed6(?) payable {
    idx = 0
    while idx <= ('signextend', 0, ('signextend', 0, ('field', 424, ('stor', ('map', ('param', 'arg1'), ('name', 'stor0', 0)))))):
        if stor0[arg1][2][idx].field_0 == msg.sender:
            stor0[arg1][2][idx].field_160 = 1
        mem[0] = arg1
        mem[32] = 0
        idx = idx + 1
        continue 
    idx = 1
    s = 1
    while idx <= ('signextend', 0, ('signextend', 0, ('field', 424, ('stor', ('map', ('param', 'arg1'), ('name', 'stor0', 0)))))):
        mem[0] = arg1
        mem[32] = 0
        if stor0[arg1][2][idx].field_160:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        call stor0[arg1].field_256 with:
           value stor0[arg1].field_0 wei
             gas 0 wei
        totalValue -= stor0[arg1].field_0
        stor0[arg1].field_0 = 0
        stor0[arg1].field_416 = 0
    return 1
}



}
