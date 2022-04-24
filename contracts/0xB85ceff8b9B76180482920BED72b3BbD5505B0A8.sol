contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor1 = stor0
    stor2 = 0xecc996953e976a305ee585a9c7bbbcc85d1c467b
    require not msg.value
    return code.data[297 len 1331]
}



// =====================  Runtime code  =====================


address sub_92eb9934Address;
address stor1;
address developerAddress;

function sub_92eb9934(?) {
    return sub_92eb9934Address
}

function developer() {
    return developerAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    call developerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function check(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.getKitty(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[128]:
        return not not ext_call.return_data[128]
    return ext_call.return_data[96] <= uint64(block.number)
}

function breed(uint256 arg1) {
    require ext_code.size(stor1)
    call stor1.getKitty(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[128]:
        if ext_call.return_data[96] <= uint64(block.number):
            require ext_code.size(stor1)
            call stor1.giveBirth(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
}

function sub_67216ea3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg2:
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 448] = 0
        require ext_code.size(stor1)
        call stor1.getKitty(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _24
        mem[(32 * arg1.length) + 128 len 320] = ext_call.return_data[0 len 320]
        require ext_call.success
        if ext_call.return_data[128]:
            if ext_call.return_data[96] <= uint64(block.number):
                mem[(32 * arg1.length) + 160] = 0
                mem[(32 * arg1.length) + 132] = _24
                require ext_code.size(stor1)
                call stor1.giveBirth(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args _24
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
        idx = idx + 1
        continue 
}



}
