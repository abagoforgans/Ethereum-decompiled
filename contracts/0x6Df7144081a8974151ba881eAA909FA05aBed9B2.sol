contract main {




// =====================  Runtime code  =====================


address mainAddress;
address platformAddress;
uint256 sub_8ecd2e9e;
mapping of address sub_5c227c36;
mapping of uint256 sub_bad03c29;
mapping of address sub_233baab3;

function mainAddress() {
    return mainAddress
}

function sub_233baab3(?) {
    return sub_233baab3[arg1]
}

function sub_5c227c36(?) {
    return sub_5c227c36[address(arg1)][arg2]
}

function sub_8229a57c(?) {
    return sub_8ecd2e9e
}

function sub_8ecd2e9e(?) {
    return sub_8ecd2e9e
}

function sub_bad03c29(?) {
    return sub_bad03c29[address(arg1)]
}

function platformAddress() {
    return platformAddress
}

function _fallback() payable {
    revert
}

function sub_23e6da00(?) {
    require ext_code.size(sub_233baab3[arg1])
    call sub_233baab3[arg1].0x1865c57d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 5:
        return 0
    return sub_233baab3[arg1]
}

function sub_ce8aff00(?) payable {
    create contract with 0 wei
                    code: code.data[1238 len 10864], address(msg.sender)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_5c227c36[msg.sender][stor4[msg.sender]] = address(create.new_address)
    sub_bad03c29[msg.sender]++
    sub_233baab3[stor2] = address(create.new_address)
    sub_8ecd2e9e++
    emit 0x60f72453: msg.sender, address(create.new_address)
    return address(create.new_address)
}

function sub_d54772bc(?) {
    s = 0
    idx = 0
    s = 0
    while idx < sub_8ecd2e9e:
        mem[0] = idx
        mem[32] = 5
        require ext_code.size(sub_233baab3[idx])
        call sub_233baab3[idx].0x1865c57d with:
             gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] != 5:
            s = sub_233baab3[idx]
            idx = idx + 1
            s = s
            continue 
        s = sub_233baab3[idx]
        idx = idx + 1
        s = s + 1
        continue 
    return s
}



}
