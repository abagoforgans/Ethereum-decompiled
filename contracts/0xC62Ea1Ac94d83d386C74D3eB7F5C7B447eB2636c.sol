contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
uint256 stor1;

function _fallback() payable {
    uint8(stor1.field_160) = 3
    mem[96 len 288] = code.data[1051 len 288]
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor1.field_0) = msg.sender or Mask(96, 160, uint256(stor1.field_0))
    s = 0
    idx = 0
    s = 0
    while uint8(idx) < uint8(stor1.field_160):
        t = 0
        u = s
        while uint8(t) < uint8(stor1.field_160):
            require u < 9
            require t < 3
            require idx < 3
            stor[idx + (3 * t) + 2] = mem[(32 * u) + code.data[1051 len 32] + 96]
            t = t + 1
            u = u + 1
            continue 
        s = None
        idx = idx + 1
        s = s + None
        continue 
    return code.data[361 len 690]
}



// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function getElevations() payable {
    mem[64] = 480
    mem[var6001] = 0
    if var6002 - 1:
        var6001 = var6001 + 32
        var6002 = var6002 - 1
        continue 
    mem[var7001] = 384
    if var7002 - 1:
        mem[64] = 576
        var6001 = 480
        var6002 = 3
        continue 
    mem[64] = 864
    mem[var12001] = 0
    if var12002 - 1:
        var12001 = var12001 + 32
        var12002 = var12002 - 1
        continue 
    mem[var13001] = 768
    if var13002 - 1:
        mem[64] = 960
        var12001 = 864
        var12002 = 3
        continue 
    s = 0
    idx = 0
    while uint8(idx) < stor1:
        s = 0
        while uint8(s) < stor1:
            require s < 3
            require idx < 3
            require s < 3
            require idx < 3
            mem[(32 * idx) + mem[(32 * s) + 480]] = stor[idx + (3 * s) + 2]
            s = s + 1
            continue 
        s = None
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 3:
        mem[s len 96] = mem[mem[(32 * idx) + 480] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 288
}



}
