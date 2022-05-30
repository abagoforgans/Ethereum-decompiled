contract main {




// =====================  Runtime code  =====================


address owner;
address bootyTokenAddress;
mapping of struct recipients;
array of address sub_9baa2bdd;
array of uint256 sub_9fe47fa1;
address stor7;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function bootyToken() {
    return bootyTokenAddress
}

function owner() {
    return owner
}

function sub_9baa2bdd(?) {
    require arg1 < sub_9baa2bdd.length
    return sub_9baa2bdd[arg1]
}

function sub_9fe47fa1(?) {
    require arg1 < sub_9fe47fa1.length
    return sub_9fe47fa1[arg1]
}

function recipients(address arg1) {
    return bool(recipients[arg1].field_0), recipients[arg1].field_256
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_05a79336(?) {
    require msg.sender == owner
    require ext_code.size(bootyTokenAddress)
    call bootyTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(bootyTokenAddress)
    call bootyTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_2a570950(?) {
    require msg.sender == owner
    s = 0
    s = 0
    idx = arg1
    while idx < arg2:
        require idx < sub_9baa2bdd.length
        mem[32] = 4
        require not recipients[stor5[idx]].field_0
        recipients[stor5[idx]].field_0 = 1
        require idx < sub_9fe47fa1.length
        mem[0] = 6
        mem[100] = stor7
        mem[132] = sub_9baa2bdd[idx]
        mem[164] = sub_9fe47fa1[idx]
        require ext_code.size(bootyTokenAddress)
        call bootyTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args stor7, sub_9baa2bdd[idx], sub_9fe47fa1[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = sha3(sub_9baa2bdd[idx], 4)
        s = sub_9baa2bdd[idx]
        idx = idx + 1
        continue 
}

function addRecipients(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _18 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        require not recipients[mem[(32 * idx) + 140 len 20]].field_256
        _20 = mem[64]
        mem[64] = mem[64] + 64
        mem[_20] = 0
        require idx < mem[(32 * arg1.length) + 128]
        mem[_20 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[32] = 4
        recipients[address(_18)].field_0 = 0
        recipients[address(_18)].field_256 = mem[_20 + 32]
        sub_9baa2bdd.length++
        stor36B6[stor5.length] = address(_18)
        require idx < mem[(32 * arg1.length) + 128]
        sub_9fe47fa1.length++
        mem[0] = 6
        sub_9fe47fa1[sub_9fe47fa1.length] = mem[(32 * arg1.length) + (32 * idx) + 160]
        s = _18
        idx = idx + 1
        continue 
}



}
