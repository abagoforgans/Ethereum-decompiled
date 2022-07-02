contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_0a39ce02;

function sub_0a39ce02(?) {
    require arg1 < sub_0a39ce02.length
    return sub_0a39ce02[arg1].field_0, sub_0a39ce02[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_25a525fb(?) {
    sub_0a39ce02.length++
    sub_0a39ce02[sub_0a39ce02.length].field_0 = arg1
    sub_0a39ce02[sub_0a39ce02.length].field_256 = arg2
}

function sub_b8893539(?) {
    require msg.sender == owner
    idx = 0
    while idx < sub_0a39ce02.length:
        mem[0] = 1
        mem[100] = arg2
        mem[132] = sub_0a39ce02[idx].field_0
        mem[164] = sub_0a39ce02[idx].field_256
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), sub_0a39ce02[idx].field_0, sub_0a39ce02[idx].field_256
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
