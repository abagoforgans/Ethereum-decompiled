contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
uint256 income;
mapping of uint256 sub_f51efd7a;
mapping of uint256 sub_585c5b83;
address sub_ba9f7776Address;
array of struct stor5;
uint256 sub_6c965e00;
uint256 sub_b833e318;
mapping of uint256 tradeVolume;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

function sub_585c5b83(?) {
    return sub_585c5b83[arg1]
}

function sub_6c965e00(?) {
    return sub_6c965e00
}

function tradeVolume(address arg1) {
    return tradeVolume[arg1]
}

function income() {
    return income
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

function sub_f51efd7a(?) {
    return sub_f51efd7a[arg1]
}

function sub_bea9a01e(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    if arg1 != 201901261442:
        revert with 0, 'password is not right'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
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

function sub_71018777(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(80, 0, mem[192 len 10], 0)]:
        revert with 0, 'permission deny'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_187ff3fa(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(96, 0, mem[192 len 12], 0)]:
        revert with 0, 'permission deny'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_5295bdf6(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[uint128(mem[192 len 16], 0)]:
        revert with 0, 'permission deny'
    require arg1 < stor5.length
    if stor5[arg1].field_0 != 1:
        revert with 0, 'order is not making'
    stor5[arg1].field_0 = 2
    if income < stor5[arg1].field_1024:
        revert with 0, 'ownerIncome less than sellerFee'
    income -= stor5[arg1].field_1024
    call stor5[arg1].field_256 with:
       value stor5[arg1].field_1024 + stor5[arg1].field_512 wei
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
    call sub_ba9f7776Address.'Hq
"' with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    income += ext_call.return_data[0]
    if ext_call.return_data[0] + arg1 != msg.value:
        revert with 0, 'Wrong amount of deposite'
    emit 0xc7b832aa: 0, arg1, arg2, arg3, msg.sender
    stor5.length++
    stor36B6[stor5.length].field_0 = 1
    stor36B6[stor5.length].field_8 = arg3
    stor36B6[stor5.length] = msg.sender
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = ext_call.return_data[0]
    return (stor5.length + 1)
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

function sub_17caf363(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(152, 0, mem[192 len 13], Mask(48, 104, 'forceTransETH2Buyer') >> 104, 0)]:
        revert with 0, 'permission deny'
    require arg1 < stor5.length
    if stor5[arg1].field_0 != 1:
        revert with 0, 'order is not making'
    stor5[arg1].field_0 = 3
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0xe884313a with:
         gas gas_remaining wei
        args 0, stor5[arg1].field_8, stor5[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    income += ext_call.return_data[0]
    call stor5[arg1].field_8 with:
       value stor5[arg1].field_512 - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    tradeVolume[stor5[arg1].field_0] = stor5[arg1].field_512 - ext_call.return_data[0] + tradeVolume[stor5[arg1].field_0]
}

function sub_5cb8793d(?) {
    require arg1 < stor5.length
    if stor5[arg1].field_0 != 1:
        revert with 0, 'order is not making or not yours'
    if stor5[arg1].field_256 != msg.sender:
        revert with 0, 'order is not making or not yours'
    stor5[arg1].field_0 = 3
    require ext_code.size(sub_ba9f7776Address)
    call sub_ba9f7776Address.0xe884313a with:
         gas gas_remaining wei
        args 0, stor5[arg1].field_8, stor5[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    income += ext_call.return_data[0]
    call stor5[arg1].field_8 with:
       value stor5[arg1].field_512 - ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    tradeVolume[stor5[arg1].field_256] = stor5[arg1].field_512 - ext_call.return_data[0] + tradeVolume[stor5[arg1].field_256]
    tradeVolume[stor5[arg1].field_8] = stor5[arg1].field_512 - ext_call.return_data[0] + tradeVolume[stor5[arg1].field_8]
}



}
