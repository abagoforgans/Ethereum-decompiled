contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() {
    mem[96 len -3209] = code.data[3679 len -3209]
    mem[64] = -3113
    stor4 = msg.sender
    stor1 = mem[224]
    stor2 = mem[256]
    stor3 = mem[288]
    mem[-892] = mem[160]
    mem[-860] = mem[223 len 1]
    mem[-828] = mem[mem[96] + 96]
    _11 = mem[mem[96] + 96]
    mem[-796 len ceil32(mem[mem[96] + 96])] = mem[mem[96] + 128 len ceil32(mem[mem[96] + 96])]
    if not _11 % 32:
        mem[_11 - 796] = mem[mem[128] + 96]
        _28 = mem[mem[128] + 96]
        mem[_11 - 764 len ceil32(mem[mem[128] + 96])] = mem[mem[128] + 128 len ceil32(mem[mem[128] + 96])]
        if not _28 % 32:
            create contract with 0 wei
                            code: code.data[1522 len 2157], 128, _11 + 160, mem[-892 len _28 + _11 + 128]
        else:
            mem[floor32(_28) + _11 - 764] = mem[floor32(_28) + _11 + -(_28 % 32) - 732 len _28 % 32]
            create contract with 0 wei
                            code: code.data[1522 len 2157], 128, _11 + 160, mem[-892 len floor32(_28) + _11 + 160]
    else:
        mem[floor32(_11) - 796] = mem[floor32(_11) + -(_11 % 32) - 764 len _11 % 32]
        mem[floor32(_11) - 764] = mem[mem[128] + 96]
        _31 = mem[mem[128] + 96]
        mem[floor32(_11) - 732 len ceil32(mem[mem[128] + 96])] = mem[mem[128] + 128 len ceil32(mem[mem[128] + 96])]
        if not _31 % 32:
            create contract with 0 wei
                            code: code.data[1522 len 2157], 128, floor32(_11) + 192, mem[-892 len _31 + floor32(_11) + 160]
        else:
            mem[floor32(_31) + floor32(_11) - 732] = mem[floor32(_31) + floor32(_11) + -(_31 % 32) - 700 len _31 % 32]
            create contract with 0 wei
                            code: code.data[1522 len 2157], 128, floor32(_11) + 192, mem[-892 len floor32(_31) + floor32(_11) + 192]
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[470 len 1052]
}



// =====================  Runtime code  =====================


address tokenContractAddress;
uint256 sub_d98af7f7;
uint256 token_price;
uint256 sub_ee8a5a35;
address masterAddress;

function tokenContract() {
    return tokenContractAddress
}

function token_price() {
    return token_price
}

function sub_d98af7f7(?) {
    return sub_d98af7f7
}

function sub_ee8a5a35(?) {
    return sub_ee8a5a35
}

function master() {
    return masterAddress
}

function masterWithdraw(uint256 arg1) {
    require masterAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args masterAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    if block.timestamp > sub_ee8a5a35:
        require msg.value >= token_price
        require token_price
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / token_price
        require ext_call.success
        if msg.value - (msg.value / token_price * token_price) <= 0:
            call masterAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
        else:
            call msg.sender with:
               value msg.value - (msg.value / token_price * token_price) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            call masterAddress with:
               value msg.value / token_price * token_price wei
                 gas gas_remaining - 34710 wei
    else:
        require msg.value >= sub_d98af7f7
        require sub_d98af7f7
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value / sub_d98af7f7
        require ext_call.success
        if msg.value - (msg.value / sub_d98af7f7 * sub_d98af7f7) <= 0:
            call masterAddress with:
               value msg.value wei
                 gas gas_remaining - 34710 wei
        else:
            call msg.sender with:
               value msg.value - (msg.value / sub_d98af7f7 * sub_d98af7f7) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
            call masterAddress with:
               value msg.value / sub_d98af7f7 * sub_d98af7f7 wei
                 gas gas_remaining - 34710 wei
    require ext_call.success
}



}
