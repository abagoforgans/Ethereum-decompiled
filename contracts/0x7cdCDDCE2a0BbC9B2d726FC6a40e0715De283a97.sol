contract main {




// =====================  Runtime code  =====================


address coordinatorAddress;
mapping of struct ownerStatus;
mapping of address pendingTransaction;

function coordinator() {
    return coordinatorAddress
}

function ownerStatus(address arg1) {
    require ownerStatus[arg1].field_256 <= 2
    return ownerStatus[arg1].field_0, ownerStatus[arg1].field_256
}

function pendingTransaction(uint256 arg1) {
    return pendingTransaction[arg1]
}

function _fallback() payable {
    revert
}

function setCoordinator(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    coordinatorAddress = arg1
}

function sub_a22918b9(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ownerStatus[stor2[arg1]].field_256 <= 2
    require ownerStatus[stor2[arg1]].field_256 == 1
    ownerStatus[stor2[arg1]].field_256 = 2
    pendingTransaction[arg1] = 0
}

function sub_27024bc6(?) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ownerStatus[address(arg1)].field_256 <= 2
    require ownerStatus[address(arg1)].field_256 == 2
    ownerStatus[address(arg1)].field_256 = 1
    pendingTransaction[arg2] = arg1
}

function removeOwner(address arg1) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require ownerStatus[address(arg1)].field_256 <= 2
    require ownerStatus[address(arg1)].field_256 == 1
    ownerStatus[address(arg1)].field_0 = 0
    ownerStatus[address(arg1)].field_256 = 0
}

function addOwner(address arg1, uint256 arg2) {
    require ext_code.size(coordinatorAddress)
    call coordinatorAddress.0x21f8a721 with:
         gas gas_remaining wei
        args (0x7c8a2733ab0992182f18612e00000000000000000000000000000000000 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    require ownerStatus[address(arg1)].field_256 <= 2
    require not ownerStatus[address(arg1)].field_256
    ownerStatus[address(arg1)].field_256 = 2
    ownerStatus[address(arg1)].field_0 = arg2
}

function distributeFunds(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require _28 * arg2.length <= msg.value
    s = msg.value
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        require ownerStatus[mem[(32 * idx) + 140 len 20]].field_256 <= 2
        if ownerStatus[mem[(32 * idx) + 140 len 20]].field_256 != 2:
            s = s
            idx = idx + 1
            continue 
        require idx < arg2.length
        _53 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * idx) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        require idx < arg2.length
        _62 = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 192] = _62
        emit 0xd2acacf8: mem[(32 * arg2.length) + (32 * arg1.length) + 160], _62
        s = s - _53
        idx = idx + 1
        continue 
    call msg.sender with:
       value s wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
