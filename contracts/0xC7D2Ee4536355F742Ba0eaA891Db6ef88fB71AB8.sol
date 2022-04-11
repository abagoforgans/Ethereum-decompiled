contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1510 len 20]
    return code.data[191 len 1307]
}



// =====================  Runtime code  =====================


address owner;
address collectorAddress;

function owner() {
    return owner
}

function collector() {
    return collectorAddress
}

function _fallback() payable {
  stop
}

function changeCollector(address arg1) {
    require msg.sender == owner
    collectorAddress = arg1
}

function collect(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = collectorAddress
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_21))
        call address(_21).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args collectorAddress, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = _21
        idx = idx + 1
        continue 
    call collectorAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
