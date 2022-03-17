contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x63989aaec3c6ae6d29c9673cea430322a8ac2cfa
    return code.data[74 len 332]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_ccd302f4(?) payable {
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
    call stor1.0xd504ea1d with:
         gas gas_remaining - 25050 wei
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



}
