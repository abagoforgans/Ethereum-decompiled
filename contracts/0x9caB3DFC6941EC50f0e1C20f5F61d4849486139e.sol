contract main {


// =======================  Init code  ======================


array of address stor0;
address stor7;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor7 = msg.sender
    return code.data[291 len 10596]
}



// =====================  Runtime code  =====================


#
#  - sub_02f38797(?)
#  - setPrices(uint256 arg1, uint256 arg2)
#  - sub_079d0629(?)
#  - sub_167c45ef(?)
#  - getRevenue(uint256 arg1)
#  - addCaller(address arg1)
#  - buy(uint256 arg1, address arg2)
#  - sub_8013db74(?)
#  - setFechaTax(uint256 arg1)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
address sub_1c8fde63Address;
address stor2;
address stor4;
address stor7;
uint256 fechaTax;

function sub_1c8fde63(?) {
    return sub_1c8fde63Address
}

function getFechaTax() {
    return fechaTax
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function _fallback() payable {
    revert
}

function getBalance(address arg1) {
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function _transfer(address arg1, address arg2, uint256 arg3) {
    require arg2
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg3
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg3 >= arg3
    require ext_call.return_data[0] + arg3 > ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - arg3
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg3 >= arg3
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0] + arg3
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 >= arg2
    require ext_call.return_data[0] + arg2 > ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 >= arg2
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] + arg2
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.incluirUsuario(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_493693b5(?) payable {
    mem[64] = 96
    require not msg.value
    mem[128] = 0
    mem[96] = 0xd489b68f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor4)
    call stor4.mem[var21003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var21003 + 4 len var21004 - 4]
    mem[var21005] = ext_call.return_data[0]
    require ext_call.success
    if var23005 >= 0xd489b68f00000000000000000000000000000000000000000000000000000000:
        return var23006
    mem[128] = 0
    mem[96] = 0xd819c42600000000000000000000000000000000000000000000000000000000
    mem[100] = var25002
    require ext_code.size(stor4)
    call stor4.mem[var27003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var27003 + 4 len var27004 - 4]
    mem[var27005] = ext_call.return_data[0]
    require ext_call.success
    mem[128] = 0
    mem[96] = 0xf8b2cb4f00000000000000000000000000000000000000000000000000000000
    mem[100] = 0
    require ext_code.size(stor2)
    call stor2.mem[var31003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var31003 + 4 len var31004 - 4]
    require ext_call.success
    require var37002 + 1 >= var37002
    require var40001
    require ext_code.size(stor4)
    call stor4.0xd489b68f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = var37002 + 1 >= var37002
    idx = var37002 + 1
    s = var37002
    s = var37004
    s = var37005
    s = var37006
    while idx + 1 < ext_call.return_data[0]:
        require ext_code.size(stor4)
        call stor4.0xd819c426 with:
             gas gas_remaining - 710 wei
            args (idx + 1)
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            require var40001
            mem[128] = 0
            require ext_code.size(stor4)
            call stor4.0xd489b68f with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require var40002 + 1 >= var40002
        require var40001
        mem[128] = 0
        require ext_code.size(stor4)
        call stor4.0xd489b68f with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = var40002 + 1 >= var40002
        idx = var40002 + 1
        s = var40002
        s = ext_call.return_data[0]
        s = idx + 1
        s = var40002
        continue 
    return var40002
}

function sell(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require stor7
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 >= arg2
    require ext_call.return_data[0] + arg2 > ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0] - arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0xf8b2cb4f with:
         gas gas_remaining - 710 wei
        args stor7
    require ext_call.success
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_call.return_data[0] + arg2 >= arg2
    require ext_code.size(stor2)
    call stor2.0xe30443bc with:
         gas gas_remaining - 710 wei
        args stor7, ext_call.return_data[0] + arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x43d32e9c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if arg2:
        require arg2
        require arg2 * ext_call.return_data[0] / arg2 == ext_call.return_data[0]
    call arg1 with:
       value arg2 * ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        require arg1
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args stor7
        require ext_call.success
        require ext_call.return_data[0] >= arg2
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
        require ext_call.return_data[0] + arg2 >= arg2
        require ext_call.return_data[0] + arg2 > ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args stor7
        require ext_call.success
        require arg2 <= ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.0xe30443bc with:
             gas gas_remaining - 710 wei
            args stor7, ext_call.return_data[0] - arg2
        require ext_call.success
        require ext_code.size(stor2)
        call stor2.0xf8b2cb4f with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
        require ext_call.return_data[0] + arg2 >= arg2
        require ext_code.size(stor2)
        call stor2.0xe30443bc with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0] + arg2
        require ext_call.success
}



}
