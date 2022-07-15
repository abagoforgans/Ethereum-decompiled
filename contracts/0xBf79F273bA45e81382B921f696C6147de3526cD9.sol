contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct stor1;
mapping of uint256 sub_43d233aa;

function sub_43d233aa(?) {
    return sub_43d233aa[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_e8fee1de(?) {
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    create contract with 0 wei
                    code: code.data[2593 len 16521], stor0, address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1.length++
    stor1[stor1.length].field_0 = address(create.new_address)
    sub_43d233aa[address(create.new_address)] = stor1.length
    emit 0x71fb1870: address(create.new_address)
}

function sub_a18723c5(?) {
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 192 len floor32(stor1.length)] = mem[128 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[128 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 192 len (32 * stor1.length) - floor32(stor1.length)]), 
}

function sub_edeb9c69(?) {
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized'
    require ext_code.size(arg1)
    call arg1.setEnabled(bool arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 == 1:
        if not sub_43d233aa[address(arg1)]:
            stor1.length++
            stor1[stor1.length].field_0 = arg1
            sub_43d233aa[address(arg1)] = stor1.length
    else:
        mem[0] = arg1
        if sub_43d233aa[address(arg1)] - 1 < stor1.length:
            if sub_43d233aa[address(arg1)] - 1 >= 0:
                idx = sub_43d233aa[mem[0]] - 1
                while idx < stor1.length - 1:
                    require idx + 1 < stor1.length
                    require idx < stor1.length
                    mem[0] = 1
                    stor1[idx].field_0 = stor1[idx].field_256
                    idx = idx + 1
                    continue 
                stor1.length--
                if stor1.length > stor1.length - 1:
                    idx = stor1.length - 1
                    while stor1.length > idx:
                        stor1[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                sub_43d233aa[address(arg1)] = 0
}



}
