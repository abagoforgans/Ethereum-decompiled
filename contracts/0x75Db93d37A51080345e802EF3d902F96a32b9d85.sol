contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2;

function _fallback() payable {
    stor2 = 0
    stor0 = code.data[5651 len 32]
    return code.data[117 len 5534]
}



// =====================  Runtime code  =====================


address sub_42fceaa3Address;
uint256 sub_372647e6;
uint8 stor2;
mapping of uint256 sub_c24c47be;
mapping of struct sub_604883a6;
mapping of address sub_32c6be56;

function sub_32c6be56(?) {
    return address(sub_32c6be56[arg1])
}

function sub_372647e6(?) {
    return sub_372647e6
}

function sub_42fceaa3(?) {
    return sub_42fceaa3Address
}

function sub_604883a6(?) {
    return sub_604883a6[arg1][0 len sub_604883a6[arg1].length].field_0
}

function sub_c24c47be(?) {
    return sub_c24c47be[arg1]
}

function sub_d82cb695(?) {
    return bool(stor2)
}

function _fallback() payable {
    revert 
}

function sub_4db8a676(?) {
    require sub_c24c47be[address(msg.sender)] >= arg2
    require sub_c24c47be[address(arg1)] + arg2 >= sub_c24c47be[address(arg1)]
    sub_c24c47be[address(msg.sender)] -= arg2
    sub_c24c47be[address(arg1)] += arg2
}

function donate(address arg1) payable {
    require not stor2
    require Mask(255, 1, (256 * not sub_604883a6[address(arg1)].field_0) - 1 and sub_604883a6[address(arg1)].field_0)
    sub_372647e6 += msg.value
    sub_c24c47be[address(arg1)] += msg.value
    require ext_code.size(address(sub_32c6be56[address(arg1)]))
    call address(sub_32c6be56[address(arg1)]).0xa9059cbb with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value
    require ext_call.success
    call sub_42fceaa3Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit Donate(msg.sender, msg.value);
}

function sub_42d7cbca(?) {
    if Mask(255, 1, (256 * not sub_604883a6[address(msg.sender)].field_0) - 1 and sub_604883a6[address(msg.sender)].field_0):
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = sub_604883a6[address(msg.sender)].field_0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + sub_604883a6[address(msg.sender)].length + 256 > idx + 32:
            mem[idx + 32] = sub_604883a6[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0xf72886fe: msg.sender, Array(len=sub_604883a6[address(msg.sender)].length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len sub_604883a6[address(msg.sender)].length + (floor32(sub_604883a6[address(msg.sender)].length - 1) + -sub_604883a6[address(msg.sender)].length + 32 % 32)])
    else:
        sub_604883a6[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg1.length] = arg1[all]
        emit 0xf72886fe: msg.sender, Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 2817 len arg2.length] = arg2[all]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[2941 len 2593], 32, arg2.length, arg2[all]
        else:
            mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2817] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2849 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[2941 len 2593], 32, arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 2817 len -(arg2.length % 32) + 32]
        require create.new_address
        uint256(sub_32c6be56[address(msg.sender)]) = create.new_address or Mask(96, 160, uint256(sub_32c6be56[address(msg.sender)]))
}



}
