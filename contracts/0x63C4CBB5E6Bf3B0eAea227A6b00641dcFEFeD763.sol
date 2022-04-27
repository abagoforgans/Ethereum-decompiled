contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1[stor0] = 1
    return code.data[214 len 2560]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function isCaller(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        stor1[stor0] = 0
        owner = arg1
        stor1[stor0] = 1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_fbe9e751(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_5e42f10e(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
    stor1[stor0] = 1
}

function breed(uint256 arg1) {
    require stor1[address(msg.sender)]
    s = 0
    s = 0
    s = 0
    s = 0
    idx = arg1
    while idx:
        mem[416] = 0
        require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args uint32(idx)
        mem[96 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        if not ext_call.return_data[0]:
            s = uint32(idx)
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            s = s
            idx = Mask(224, 32, idx) >> 32
            continue 
        if not ext_call.return_data[32]:
            s = uint32(idx)
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            s = s
            idx = Mask(224, 32, idx) >> 32
            continue 
        mem[128] = 0
        mem[100] = uint32(idx)
        require ext_code.size(0x6012c8cf97bead5deae237070f9587f8e7a266d)
        call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args uint32(idx)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = uint32(idx)
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        s = 1
        idx = Mask(224, 32, idx) >> 32
        continue 
    if s:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
