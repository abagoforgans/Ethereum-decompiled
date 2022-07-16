contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
uint256 sub_c89421ad;
mapping of uint256 sub_f51efd7a;
mapping of uint256 sub_585c5b83;
mapping of uint8 stor4;
mapping of uint256 sub_392a8dd0;
mapping of uint256 sub_e10ca2b9;
uint256 sub_7b9c074c;
uint256 sub_bc06c4cc;
uint256 sub_07174279;
address sub_34dccc87Address;

function sub_07174279(?) {
    return sub_07174279
}

function sub_34dccc87(?) {
    return sub_34dccc87Address
}

function sub_392a8dd0(?) {
    return sub_392a8dd0[arg1]
}

function sub_585c5b83(?) {
    return sub_585c5b83[arg1]
}

function sub_7b9c074c(?) {
    return sub_7b9c074c
}

function owner() {
    return owner
}

function sub_bc06c4cc(?) {
    return sub_bc06c4cc
}

function sub_c89421ad(?) {
    return sub_c89421ad
}

function sub_cca5f8c0(?) {
    return bool(stor4[arg1])
}

function sub_e10ca2b9(?) {
    return sub_e10ca2b9[arg1]
}

function sub_f51efd7a(?) {
    return sub_f51efd7a[arg1]
}

function _fallback() payable {
  stop
}

function sub_337ea0ea(?) {
    return bool(stor4[msg.sender]), sub_392a8dd0[msg.sender], sub_e10ca2b9[msg.sender]
}

function sub_6e5de674(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    owner = arg1
}

function activePool() payable {
    if stor4[msg.sender]:
        revert with 0, 'already active'
    stor4[msg.sender] = 1
}

function sub_1b71d0f2(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    sub_f51efd7a[address(arg1)] = arg2
}

function sub_5d779722(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(80, 0, mem[192 len 10], 0)]:
        revert with 0, 'permission deny'
    sub_7b9c074c = arg1
}

function sub_6b5116f2(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(96, 0, mem[192 len 12], 0)]:
        revert with 0, 'permission deny'
    sub_07174279 = arg1
}

function sub_f5a9d5bb(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(120, 0, mem[192 len 15], 0)]:
        revert with 0, 'permission deny'
    sub_bc06c4cc = arg1
}

function sub_246b600f(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[uint128(mem[192 len 16], 0)]:
        revert with 0, 'permission deny'
    sub_34dccc87Address = arg1
}

function sub_598e3324(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(96, 0, mem[192 len 12], 0)]:
        revert with 0, 'permission deny'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_a33c290f(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(104, 0, mem[192 len 13], 0)]:
        revert with 0, 'permission deny'
    require ext_code.size(0xa923e6992ffe1323cbfcc5903482a271741f09ff)
    call 0xa923e6992ffe1323cbfcc5903482a271741f09ff.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3756c011(?) {
    if arg3 != sha3(msg.sender, sub_392a8dd0[msg.sender], arg1, arg2):
        revert with 0, 'token error'
    if bool(stor4[msg.sender]) != 1:
        revert with 0, 'pool not active'
    if block.timestamp - sub_392a8dd0[msg.sender] < 3600 * sub_bc06c4cc:
        revert with 0, 'can not less than 24 hours'
    if arg1 > sub_7b9c074c:
        revert with 0, 'exceed max'
    sub_e10ca2b9[msg.sender] += arg1
    sub_392a8dd0[msg.sender] = block.timestamp
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6ea07f1c: arg1, block.timestamp, msg.sender
}

function sub_05452325(?) payable {
    if arg4 != sha3(msg.sender, arg1, arg3):
        revert with 0, 'token error'
    if arg1 <= 0:
        revert with 0, 'value is not right'
    require ext_code.size(sub_34dccc87Address)
    call sub_34dccc87Address.0x2336dbe4 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 * sub_07174279 * ext_call.return_data[0] / 10000 != msg.value:
        revert with 0, 'value is not right'
    require ext_code.size(0xa923e6992ffe1323cbfcc5903482a271741f09ff)
    call 0xa923e6992ffe1323cbfcc5903482a271741f09ff.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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



}
