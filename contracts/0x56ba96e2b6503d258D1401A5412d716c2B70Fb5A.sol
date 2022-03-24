contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3702]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;

function tokens(uint256 arg1) payable {
    require arg1 < stor1.length
    return stor[code.data[3670 len 32] + arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function getTokens(uint256 arg1, uint256 arg2) payable {
    idx = 0
    s = 0
    while uint8(idx) < stor1.length:
        require idx < stor1.length
        mem[0] = 1
        call stor[code.data[3670 len 32] + idx].0x8fc40bfd with:
             gas gas_remaining - 25050 wei
        mem[3392] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] < arg1:
            idx = idx + 1
            s = s
            continue 
        require idx < stor1.length
        mem[0] = 1
        call stor[code.data[3670 len 32] + idx].0x9384b246 with:
             gas gas_remaining - 25050 wei
        mem[3392] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] > arg2:
            idx = idx + 1
            s = s
            continue 
        require idx < stor1.length
        mem[0] = 1
        require s < 100
        mem[(32 * s) + 192] = stor[code.data[3670 len 32] + idx]
        idx = idx + 1
        s = s + 1
        continue 
    if uint8(s) != 0:
        return Array(len=100, data=mem[192 len 3200]), s << 248
    create contract with 0 wei
                    code: code.data[895 len 2775], arg1, arg2
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = create.new_address or Mask(96, 160, stor1[stor1.length])
    require s < 100
    mem[(32 * s) + 192] = address(create.new_address)
    return Array(len=100, data=mem[192 len 3200]), s + 1 << 248
}



}
