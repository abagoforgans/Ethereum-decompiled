contract main {




// =====================  Runtime code  =====================


array of struct sub_de4d82a4;
mapping of uint8 stor1;
uint256 sub_abfdfa19;

function sub_8c9d105d(?) {
    return bool(stor1[arg1])
}

function sub_abfdfa19(?) {
    return sub_abfdfa19
}

function sub_de4d82a4(?) {
    require arg1 < sub_de4d82a4.length
    return sub_de4d82a4[arg1].field_0
}

function _fallback() payable {
    revert
}

function addAdmin(address arg1) {
    if not stor1[msg.sender]:
        revert with 0, 32, 11, code.data[4390 len 32]
    if stor1[address(arg1)]:
        revert with 0, 'admin exist'
    stor1[address(arg1)] = 1
}

function withdraw() {
    if not stor1[msg.sender]:
        revert with 0, 32, 11, code.data[4390 len 32]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d8bf7d3(?) {
    if not stor1[msg.sender]:
        revert with 0, 32, 11, code.data[4390 len 32]
    idx = 0
    while idx < arg1:
        mem[96 len 2737] = code.data[1653 len 2737]
        create contract with 0 wei
                        code: code.data[1653 len 2737]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        sub_de4d82a4.length++
        mem[0] = 0
        sub_de4d82a4[sub_de4d82a4.length].field_0 = address(create.new_address)
        idx = idx + 1
        continue 
    sub_abfdfa19 += arg1
}

function sub_e88c25e7(?) payable {
    if not stor1[msg.sender]:
        revert with 0, 32, 11, code.data[4390 len 32]
    if msg.value < 10^17:
        revert with 0, 'eth not enough'
    require ext_code.size(arg1)
    call arg1.airDropTracker_() with:
         gas gas_remaining wei
    if ext_call.success:
        require return_data.size >= 32
        require 0 < sub_abfdfa19
        require 0 < sub_de4d82a4.length
        require ext_code.size(address(sub_de4d82a4.field_0))
        call address(sub_de4d82a4.field_0).check(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[96] = ext_call.return_data[0]
        s = 0
        s = 0
        while ext_call.success:
            require return_data.size >= 32
            if mem[96]:
                require ext_code.size(sub_de4d82a4[s].field_0)
                call sub_de4d82a4[s].field_0.attack(address arg1) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require s + 1 < sub_abfdfa19
            require s + 1 < sub_de4d82a4.length
            mem[0] = 0
            mem[100] = ext_call.return_data[0]
            require ext_code.size(sub_de4d82a4[s].field_256)
            call sub_de4d82a4[s].field_256.check(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            mem[96] = ext_call.return_data[0]
            s = sub_de4d82a4[s].field_0
            s = s + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
