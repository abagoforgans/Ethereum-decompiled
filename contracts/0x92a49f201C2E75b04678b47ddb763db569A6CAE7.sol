contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
uint256 sub_c89421ad;
mapping of uint256 sub_f51efd7a;
mapping of uint256 sub_585c5b83;
address sub_ba9f7776Address;
array of struct stor5;
uint256 sub_6c965e00;
uint256 sub_b833e318;

function sub_585c5b83(?) {
    return sub_585c5b83[arg1]
}

function sub_6c965e00(?) {
    return sub_6c965e00
}

function owner() {
    return owner
}

function sub_b833e318(?) {
    return sub_b833e318
}

function sub_ba9f7776(?) {
    return sub_ba9f7776Address
}

function sub_c89421ad(?) {
    return sub_c89421ad
}

function sub_f51efd7a(?) {
    return sub_f51efd7a[arg1]
}

function _fallback() payable {
    revert
}

function sub_6e5de674(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    owner = arg1
}

function sub_1b71d0f2(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    sub_f51efd7a[address(arg1)] = arg2
}

function setFeeProxy(address arg1) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(88, 0, mem[192 len 11], 0)]:
        revert with 0, 'permission deny'
    sub_ba9f7776Address = arg1
}

function sub_3b894f57(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[uint128(mem[192 len 16], 0)]:
        revert with 0, 'permission deny'
    sub_6c965e00 = arg1
    sub_b833e318 = arg2
}

function sub_a7964edc(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(104, 0, mem[192 len 13], 0)]:
        revert with 0, 'permission deny'
    if arg1 > sub_c89421ad:
        revert with 0, 'amount excceed balance'
    sub_c89421ad -= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(uint256 arg1) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[mem[192 len 6], 0 % 281474976710656]:
        revert with 0, 'permission deny'
    require arg1 < stor5.length
    if stor5[arg1].field_0 != 1:
        revert with 0, 'order is not making'
    stor5[arg1].field_0 = 2
    if sub_c89421ad < stor5[arg1].field_1024:
        revert with 0, 'ownerIncome less than sellerFee'
    sub_c89421ad -= stor5[arg1].field_1024
    call stor5[arg1].field_256 with:
       value stor5[arg1].field_1024 + stor5[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3291fa5f(?) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    sub_585c5b83[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]] = arg2
}

function sub_8dbc5813(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160] or mem[ceil32(arg1.length) + floor32(arg1.length) + 160] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[arg1.length + ceil32(arg1.length) + 160] = sub_585c5b83[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function sub_843cba13(?) {
    require arg1 < stor5.length
    if stor5[arg1].field_0 != 1:
        revert with 0, 'order is not making or not yours'
    if stor5[arg1].field_256 != msg.sender:
        revert with 0, 'order is not making or not yours'
    stor5[arg1].field_0 = 3
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0x18644a86 with:
         gas gas_remaining wei
        args stor5[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0x18644a86 with:
         gas gas_remaining wei
        args stor5[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c89421ad += ext_call.return_data[0]
    call stor5[arg1].field_8 with:
       value stor5[arg1].field_512 - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ebb07d1e(?) payable {
    if arg1 < sub_6c965e00:
        revert with 0, 'single excceed limited'
    if arg1 > sub_b833e318:
        revert with 0, 'single excceed limited'
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0xa6c9a839 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0xa6c9a839 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_c89421ad += ext_call.return_data[0]
    if arg1 + ext_call.return_data[0] != msg.value:
        revert with 0, 'Wrong amount of deposite'
    emit 0xc7b832aa: 0, arg1, arg2, arg3, msg.sender
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0xa6c9a839 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor5.length++
    stor5[stor5.length].field_0 = 1
    stor5[stor5.length].field_8 = arg3
    stor5[stor5.length].field_256 = msg.sender
    stor5[stor5.length].field_512 = arg1
    stor5[stor5.length].field_768 = arg2
    stor5[stor5.length].field_1024 = ext_call.return_data[0]
    return (stor5.length + 1)
}



}
