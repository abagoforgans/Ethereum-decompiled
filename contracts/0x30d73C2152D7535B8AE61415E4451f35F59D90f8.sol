contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor0 = '	' or Mask(88, 168, stor0) or msg.sender
    require not msg.value
    stor1[address(msg.sender)] = 1
    return code.data[128 len 2824]
}



// =====================  Runtime code  =====================


uint8 decimals; offset 160
address owner;
mapping of uint8 stor1;
mapping of struct sub_8a2b2d77;
mapping of struct sub_7c0e4048;

function decimals() {
    return decimals
}

function sub_6cc0565a(?) {
    return sub_8a2b2d77[arg1].field_0, sub_8a2b2d77[arg1].field_256
}

function sub_76e13ac2(?) {
    return bool(stor1[arg1])
}

function sub_7c0e4048(?) {
    return sub_7c0e4048[arg1][0 len sub_7c0e4048[arg1].length].field_0
}

function sub_8a2b2d77(?) {
    return sub_8a2b2d77[arg1].field_0, sub_8a2b2d77[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_73dfc1e9(?) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    return 1
}

function sub_79c07142(?) {
    require stor1[address(msg.sender)]
    require arg3 > sub_8a2b2d77[arg1].field_256
    sub_8a2b2d77[arg1].field_0 = arg2
    sub_8a2b2d77[arg1].field_256 = arg3
    emit 0x96fd4aec: arg1, arg2, arg3
    return 1
}

function sub_4176c47b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_f32a1e64(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 128] = sub_8a2b2d77[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    return mem[ceil32(arg1.length) + 128], sub_8a2b2d77[mem[0]].field_256
}

function sub_a2d357f9(?) {
    mem[96 len 320] = call.data[4 len 320]
    mem[416 len 320] = call.data[324 len 320]
    mem[736 len 320] = call.data[644 len 320]
    require stor1[address(msg.sender)]
    s = 0
    s = 0
    idx = 0
    while idx < 10:
        if not mem[(32 * idx) + 416]:
            return 1
        require idx < 10
        mem[0] = mem[(32 * idx) + 96]
        mem[32] = 2
        require mem[(32 * idx) + 736] > sub_8a2b2d77[mem[(32 * idx) + 96]].field_256
        sub_8a2b2d77[mem[(32 * idx) + 96]].field_0 = mem[(32 * idx) + 416]
        require idx < 10
        sub_8a2b2d77[mem[(32 * idx) + 96]].field_256 = mem[(32 * idx) + 736]
        emit 0x96fd4aec: mem[(32 * idx) + 96], sub_8a2b2d77[mem[(32 * idx) + 96]].field_0, mem[(32 * idx) + 736]
        s = sha3(mem[(32 * idx) + 96], 2)
        s = mem[(32 * idx) + 416]
        idx = idx + 1
        continue 
    return 1
}

function sub_cc7110ef(?) {
    mem[128 len arg1.length] = arg1[all]
    require stor1[address(msg.sender)]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _90 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    if not arg2:
        sub_7c0e4048[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        sub_7c0e4048[_90].field_0 = 0
        sub_7c0e4048[_90].field_1 = 0
        sub_7c0e4048[_90].field_8 = mem[ceil32(arg1.length) + 160 len 31]
        idx = 0
        while sub_7c0e4048[_90].length + 31 / 32 > idx:
            sub_7c0e4048[_90][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xf028dcbd: Array(len=arg1.length, data=arg1[all]), _90, arg2
    return 1
}



}
