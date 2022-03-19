contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() payable {
    stor0[address(msg.sender)] = 20000
    return code.data[47 len 1219]
}



// =====================  Runtime code  =====================


mapping of uint256 coinBalanceOf;
mapping of struct stor1;
uint256 stor2;

function coinBalanceOf(address arg1) payable {
    return coinBalanceOf[arg1]
}

function _fallback() payable {
  stop
}

function sendCoin(address arg1, uint256 arg2) payable {
    if coinBalanceOf[address(msg.sender)] < arg2:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg2
    coinBalanceOf[arg1] += arg2
    emit CoinTransfer(address(msg.sender), address(arg1), arg2);
    return 1
}

function sub_8f486210(?) payable {
    if coinBalanceOf[address(msg.sender)] < arg3:
        return 0
    coinBalanceOf[address(msg.sender)] -= arg3
    stor2++
    stor1[stor2 + 1].field_0 = arg3
    stor1[stor2 + 1].field_256 = arg1
    stor1[stor2 + 1].field_416 = 1
    stor1[stor2 + 1].field_424 = 2
    stor1[stor2 + 1].field_432 = Mask(80, 176, arg1) >> 176
    stor1[stor2 + 1].field_512 = 0
    stor1[stor2][2][1].field_0 = msg.sender
    stor1[stor2][2][1].field_160 = 0
    stor1[stor2][2][1].field_168 = Mask(88, 168, msg.sender) >> 168
    stor1[stor2][2][2].field_0 = arg2
    stor1[stor2][2][2].field_160 = 0
    stor1[stor2][2][2].field_168 = Mask(88, 168, arg2) >> 168
    return stor2
}

function sub_cf8c8ed6(?) payable {
    idx = 0
    while idx <= ('signextend', 0, ('signextend', 0, ('field', 424, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))):
        if stor1[arg1][2][idx].field_0 == msg.sender:
            stor1[arg1][2][idx].field_160 = 1
        mem[0] = arg1
        mem[32] = 1
        idx = idx + 1
        continue 
    idx = 1
    s = 1
    while idx <= ('signextend', 0, ('signextend', 0, ('field', 424, ('stor', ('map', ('param', 'arg1'), ('name', 'stor1', 1)))))):
        mem[0] = arg1
        mem[32] = 1
        if stor1[arg1][2][idx].field_160:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        coinBalanceOf[stor1[arg1].field_256] += stor1[arg1].field_0
        stor1[arg1].field_0 = 0
        stor1[arg1].field_416 = 0
    return 1
}



}
