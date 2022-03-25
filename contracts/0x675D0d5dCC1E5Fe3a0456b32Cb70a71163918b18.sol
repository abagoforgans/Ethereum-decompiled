contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3687]




// =====================  Runtime code  =====================


mapping of address sub_743424cc;

function sub_743424cc(?) payable {
    return address(sub_743424cc[arg1])
}

function _fallback() payable {
  stop
}

function sub_82ee64b1(?) payable {
    mem[ceil32(arg3.length) + 2414 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[1497 len 2190], arg2, 64, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 2414] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 2446 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[1497 len 2190], arg2, 64, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 2414 len -(arg3.length % 32) + 32]
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    create contract with 0 wei
                    code: code.data[709 len 788]
    uint256(sub_743424cc[address(create.new_address)]) = create.new_address or Mask(96, 160, uint256(sub_743424cc[address(create.new_address)]))
    emit 0x215eed88: msg.sender, arg2, arg1, address(create.new_address), address(create.new_address)
    return address(create.new_address)
}

function sub_fa1736da(?) payable {
    mem[ceil32(arg2.length) + 2414 len arg2.length] = arg2[all]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[1497 len 2190], arg1, 64, arg2.length, arg2[all]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 2414] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2446 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[1497 len 2190], arg1, 64, arg2.length, arg2[all], mem[ceil32(arg2.length) + arg2.length + 2414 len -(arg2.length % 32) + 32]
    call address(create.new_address).transfer(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    create contract with 0 wei
                    code: code.data[709 len 788]
    uint256(sub_743424cc[address(create.new_address)]) = create.new_address or Mask(96, 160, uint256(sub_743424cc[address(create.new_address)]))
    emit 0x215eed88: msg.sender, arg1, msg.sender, address(create.new_address), address(create.new_address)
    return address(create.new_address)
}



}
