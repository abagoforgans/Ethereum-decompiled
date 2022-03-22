contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[1321 len 32]
    return code.data[92 len 1229]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;

function _fallback() payable {
  stop
}

function getPrevHash(int256 arg1) payable {
    if stor1[arg1]:
        return stor1[arg1], 0
    call stor0.getFeeAmount(int256 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] > eth.balance(this.address):
        return 0
    call stor0.getBlockHeader(int256 rg1) with:
       value ext_call.return_data[0] wei
         gas gas_remaining - 34050 wei
        args arg1
    require ext_call.success
    idx = 0
    while idx < 32:
        require idx < 32
        idx = idx + 1
        continue 
    stor1[arg1] = 0
    return 0, ext_call.return_data[0]
}

function getBlockHash(int256 arg1) payable {
    mem[64] = 96
    call stor0.getLastBlockHeight() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call stor0.getBlockchainHead() with:
         gas gas_remaining - 25050 wei
    mem[96] = ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        return 0
    idx = 0
    s = mem[mem[64]]
    while idx < ext_call.return_data[0] - arg1:
        if not s:
            return 0
        mem[0] = s
        mem[32] = 1
        if stor1[s]:
            mem[0] = s
            mem[32] = 1
            idx = idx + 1
            s = stor1[s]
            continue 
        mem[mem[64] + 4] = s
        call stor0.getFeeAmount(int256 rg1) with:
             gas gas_remaining - 25050 wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] <= eth.balance(this.address):
            call stor0.getBlockHeader(int256 rg1) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 34050 wei
                args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            require ext_call.success
            _39 = mem[64]
            mem[64] = mem[64] + 96
            mem[mem[64]] = mem[_39 + 64]
            t = 0
            while t < 32:
                require t < 32
                t = t + 1
                continue 
            mem[0] = s
            mem[32] = 1
            stor1[s] = 0
        idx = idx + 1
        s = 0
        continue 
    return s, 0
}



}
