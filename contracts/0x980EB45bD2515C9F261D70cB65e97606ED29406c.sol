contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[5482 len 20]
    return code.data[188 len 5282]
}



// =====================  Runtime code  =====================


address owner;
uint256 transferAmount;
address stor2;

function transferAmount() {
    return transferAmount
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_51f11eac(?) {
    require msg.sender == owner
    stor2 = arg1
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

function sub_9c4fb2af(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 1
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_15f1b44e(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 2
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 2:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 2)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_d8bd3261(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 3
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 3:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 3)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_46a4e51b(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 4
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 4:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 4)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_05a3e2a0(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg6
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 5
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 5:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 5)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_779efa1b(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg6
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg7
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 6
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 6:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 6)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_d9d95ef4(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg6
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg7
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg8
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 7
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 7:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 7)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_3db68f02(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg6
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg7
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg8
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg9
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 8
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 8:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 8)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}

function sub_7e6e4be0(?) {
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg2
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg3
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg4
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg5
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg6
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg7
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg8
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg9
    call 0x06012c8cf97bead5deae237070f9587f8e7a266d.giveBirth(uint256 rg1) with:
         gas 250000 wei
        args arg10
    require ext_code.size(stor2)
    if eth.balance(this.address) <= 0:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args 9
        require ext_call.success
    else:
        call stor2.0x3d27388f with:
             gas gas_remaining - 710 wei
            args (eth.balance(this.address) / 8 * 10^15 * arg1)
        require ext_call.success
        if eth.balance(this.address) / 8 * 10^15 >= 9:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.0x3d27388f with:
                 gas gas_remaining - 710 wei
                args (-(eth.balance(this.address) / 8 * 10^15) + 9)
            require ext_call.success
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
}



}
