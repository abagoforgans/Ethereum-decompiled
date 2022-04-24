contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor2 = 8
    stor3 = 2 * 10^17
    return code.data[208 len 2104]
}



// =====================  Runtime code  =====================


address owner;
address sub_aa2feddeAddress;
uint256 sub_85a977f4;
uint256 transferAmount;

function transferAmount() {
    return transferAmount
}

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

function sub_14950718(?) {
    require msg.sender == owner
    transferAmount = arg1
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
            if eth.balance(this.address) >= transferAmount:
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        require idx + 1 < arg1.length
        if mem[(32 * idx + 1) + 128] > block.number:
            idx = idx + 2
            s = s
            continue 
        require idx < arg1.length
        _31 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _31
        require ext_code.size(sub_aa2feddeAddress)
        call sub_aa2feddeAddress.isPregnant(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _31
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if not ext_call.return_data[0]:
            idx = idx + 2
            s = s
            continue 
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = _38
        require ext_code.size(sub_aa2feddeAddress)
        call sub_aa2feddeAddress.giveBirth(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args _38
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 2
        s = s + 1
        continue 
    if eth.balance(this.address) >= transferAmount:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
