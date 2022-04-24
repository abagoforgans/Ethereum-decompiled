contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor2 = 7
    return code.data[193 len 1819]
}



// =====================  Runtime code  =====================


address owner;
address sub_aa2feddeAddress;
uint256 sub_85a977f4;

function sub_85a977f4(?) {
    return sub_85a977f4
}

function owner() {
    return owner
}

function sub_aa2fedde(?) {
    return sub_aa2feddeAddress
}

function _fallback() payable {
  stop
}

function sub_09f80abd(?) {
    require msg.sender == owner
    sub_85a977f4 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_b20e06e0(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        if s >= sub_85a977f4:
            if s >= 3:
                call msg.sender with:
                   value 15 * 10^18 * s / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _21
        require ext_code.size(sub_aa2feddeAddress)
        call sub_aa2feddeAddress.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _21
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            idx = idx + 1
            s = s
            continue 
        require idx < arg1.length
        _30 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _30
        require ext_code.size(sub_aa2feddeAddress)
        call sub_aa2feddeAddress.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _30
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0] > 0
        idx = idx + 1
        s = s + 1
        continue 
    if s >= 3:
        call msg.sender with:
           value 15 * 10^18 * s / 1000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
