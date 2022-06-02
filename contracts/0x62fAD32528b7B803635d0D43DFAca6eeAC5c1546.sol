contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_de197a7cAddress;
address sub_935eeb9cAddress;
address sub_ff4baefcAddress;
uint256 sub_7cfc5e6d;
uint256 airdropCount;
uint256 stor6;

function sub_7cfc5e6d(?) {
    return sub_7cfc5e6d
}

function sub_935eeb9c(?) {
    return sub_935eeb9cAddress
}

function sub_de197a7c(?) {
    return sub_de197a7cAddress
}

function airdropCount() {
    return airdropCount
}

function sub_ff4baefc(?) {
    return sub_ff4baefcAddress
}

function killContract() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function sub_5e572df6(?) {
    require msg.sender == stor0
    airdropCount = arg1
}

function sub_cae539ce(?) {
    require msg.sender == stor0
    sub_7cfc5e6d = arg1
}

function sub_193b135b(?) {
    require msg.sender == stor0
    sub_935eeb9cAddress = arg1
}

function sub_bd814b78(?) {
    require msg.sender == stor0
    sub_de197a7cAddress = arg1
}

function sub_cab5fe54(?) {
    require msg.sender == stor0
    sub_ff4baefcAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokens() payable {
    if msg.value >= stor6:
        call sub_ff4baefcAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 0
        idx = 0
        while idx < airdropCount:
            mem[96 len 416] = code.data[1856 len 416]
            mem[512] = msg.sender
            mem[544] = sub_935eeb9cAddress
            mem[576] = sub_de197a7cAddress
            create contract with 0 wei
                            code: code.data[1856 len 416], msg.sender, sub_935eeb9cAddress, sub_de197a7cAddress
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            s = create.new_address
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < sub_7cfc5e6d:
            mem[96 len 408] = code.data[2272 len 408]
            mem[504] = sub_935eeb9cAddress
            mem[536] = sub_de197a7cAddress
            create contract with 0 wei
                            code: code.data[2272 len 408], sub_935eeb9cAddress, sub_de197a7cAddress
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            s = create.new_address
            idx = idx + 1
            continue 
}

function _fallback() payable {
    if msg.value >= stor6:
        call sub_ff4baefcAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 0
        idx = 0
        while idx < airdropCount:
            mem[96 len 416] = code.data[1856 len 416]
            mem[512] = msg.sender
            mem[544] = sub_935eeb9cAddress
            mem[576] = sub_de197a7cAddress
            create contract with 0 wei
                            code: code.data[1856 len 416], msg.sender, sub_935eeb9cAddress, sub_de197a7cAddress
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            s = create.new_address
            idx = idx + 1
            continue 
        s = 0
        idx = 0
        while idx < sub_7cfc5e6d:
            mem[96 len 408] = code.data[2272 len 408]
            mem[504] = sub_935eeb9cAddress
            mem[536] = sub_de197a7cAddress
            create contract with 0 wei
                            code: code.data[2272 len 408], sub_935eeb9cAddress, sub_de197a7cAddress
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            s = create.new_address
            idx = idx + 1
            continue 
}



}
