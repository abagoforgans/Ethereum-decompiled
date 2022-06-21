contract main {




// =====================  Runtime code  =====================


mapping of struct sub_7ca3e53e;
address stor1;

function sub_7ca3e53e(?) {
    require calldata.size - 4 >= 32
    return sub_7ca3e53e[address(arg1)].field_256
}

function sub_a864dce2(?) {
    require calldata.size - 4 >= 32
    return sub_7ca3e53e[address(arg1)].field_0
}

function sub_cbd58c86(?) {
    require calldata.size - 4 >= 32
    return sub_7ca3e53e[address(arg1)].field_512
}

function _fallback() payable {
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < 100:
        mem[100] = idx
        require ext_code.size(stor1)
        staticcall stor1.0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 0
        if sub_7ca3e53e[address(ext_call.return_data[0])].field_0 >= block.timestamp:
            if t < 100:
                idx = idx + 1
                s = s
                t = t
                u = ext_call.return_data[0]
                continue 
        else:
            mem[100] = address(ext_call.return_data[0])
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                call address(ext_call.return_data[0]) with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_7ca3e53e[address(ext_call.return_data[0])].field_0 = block.timestamp
                sub_7ca3e53e[address(ext_call.return_data[0])].field_256 = 0
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 0
            else:
                require ext_call.return_data[0]
                require ext_call.return_data[0] * msg.value / 100 / ext_call.return_data[0] == msg.value / 100
                call address(ext_call.return_data[0]) with:
                   value ext_call.return_data[0] * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                sub_7ca3e53e[address(ext_call.return_data[0])].field_0 = block.timestamp
                sub_7ca3e53e[address(ext_call.return_data[0])].field_256 = ext_call.return_data[0] * msg.value / 100
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 0
                sub_7ca3e53e[address(ext_call.return_data[0])].field_512 += ext_call.return_data[0] * msg.value / 100
            if t + ext_call.return_data[0] < 100:
                idx = idx + 1
                s = ext_call.return_data[0]
                t = t + ext_call.return_data[0]
                u = ext_call.return_data[0]
                continue 
}



}
