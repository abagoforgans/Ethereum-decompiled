contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xed9c3aead241f6fd8e6b6951e29c3dcb5b3662c1
    return code.data[74 len 762]
}



// =====================  Runtime code  =====================


const getAttachesto(uint8 arg1) = mem[960 len 768]

const getOccupies(uint8 arg1) = mem[960 len 768]


address stor0;
address stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_c8a009ea(?) payable {
    mem[64] = 960
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 864
    if var6002 - 1:
        mem[64] = 1056
        var5001 = 960
        var5002 = 3
        continue 
    call stor1.0x1bcf5758 with:
         gas gas_remaining - 25050 wei
        args arg1
    mem[960 len 768] = ext_call.return_data[0 len 768]
    require ext_call.success
    mem[64] = 1216
    s = 1216
    idx = 0
    while idx < 8:
        mem[s len 96] = mem[mem[(32 * idx) + 960] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from 1216
       len 768
}

function sub_c193f670(?) payable {
    mem[64] = 960
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 864
    if var6002 - 1:
        mem[64] = 1056
        var5001 = 960
        var5002 = 3
        continue 
    mem[64] = 1824
    mem[var11001] = 0
    if var11002 - 1:
        var11001 = var11001 + 32
        var11002 = var11002 - 1
        continue 
    mem[var12001] = 1728
    if var12002 - 1:
        mem[64] = 1920
        var11001 = 1824
        var11002 = 3
        continue 
    call stor1.0x1bcf5758 with:
         gas gas_remaining - 25050 wei
        args arg1
    mem[1824 len 768] = ext_call.return_data[0 len 768]
    require ext_call.success
    mem[64] = 2080
    s = 2080
    idx = 0
    while idx < 8:
        mem[s len 96] = mem[mem[(32 * idx) + 1824] len 96]
        s = s + 96
        idx = idx + 1
        continue 
    return memory
      from 2080
       len 768
}



}
