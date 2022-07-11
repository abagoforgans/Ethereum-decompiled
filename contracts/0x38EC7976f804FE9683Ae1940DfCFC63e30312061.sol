contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
uint256 sub_c89421ad;
mapping of uint256 sub_f51efd7a;
mapping of uint256 sub_585c5b83;
uint256 sub_11505b18;
uint256 sub_3e5565a7;

function sub_11505b18(?) {
    return sub_11505b18
}

function sub_3e5565a7(?) {
    return sub_3e5565a7
}

function sub_585c5b83(?) {
    return sub_585c5b83[arg1]
}

function owner() {
    return owner
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

function sub_18644a86(?) {
    return (arg1 * sub_3e5565a7 / 10000)
}

function sub_a6c9a839(?) {
    return (arg1 * sub_11505b18 / 10000)
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

function sub_aaf8d690(?) {
    mem[192 len 0] = None
    if sub_f51efd7a[msg.sender] < sub_585c5b83[Mask(88, 0, mem[192 len 11], 0)]:
        revert with 0, 'permission deny'
    sub_11505b18 = arg1
    sub_3e5565a7 = arg2
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
