contract main {




// =====================  Runtime code  =====================


mapping of struct checkSecretKey;
mapping of uint8 stor1;

function checkSecretKey(bytes32 arg1) {
    return checkSecretKey[arg1][6][0 len checkSecretKey[arg1][6].length].field_0
}

function _fallback() payable {
    revert
}

function check(bytes32 arg1) {
    idx = 576
    s = 0
    while checkSecretKey[arg1][6].length + 544 > idx:
        mem[idx + 32] = checkSecretKey[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return checkSecretKey[arg1].field_0, 
           checkSecretKey[arg1].field_256,
           checkSecretKey[arg1].field_768,
           checkSecretKey[arg1].field_1024,
           checkSecretKey[arg1].field_1280
}

function expire(bytes32 arg1) {
    require stor1[arg1] <= 3
    require stor1[arg1] == 1
    require block.timestamp >= checkSecretKey[arg1].field_0
    idx = 576
    s = 0
    while checkSecretKey[arg1][6].length + 544 > idx:
        mem[idx + 32] = checkSecretKey[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor1[arg1] = 3
    require ext_code.size(checkSecretKey[arg1].field_768)
    call checkSecretKey[arg1].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args checkSecretKey[arg1].field_512, checkSecretKey[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Expire(arg1);
}

function open(bytes32 arg1, uint256 arg2, address arg3, address arg4, bytes32 arg5, uint256 arg6) {
    require stor1[arg1] <= 3
    require not stor1[arg1]
    require stor1[arg1] <= 3
    require not stor1[arg1]
    require ext_code.size(arg3)
    call arg3.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    checkSecretKey[arg1].field_0 = arg6
    checkSecretKey[arg1].field_256 = arg2
    checkSecretKey[arg1].field_512 = msg.sender
    checkSecretKey[arg1].field_768 = arg3
    checkSecretKey[arg1].field_1024 = arg4
    checkSecretKey[arg1].field_1280 = arg5
    checkSecretKey[arg1].field_1536 = 0
    checkSecretKey[arg1].field_1537 = 0
    checkSecretKey[arg1].field_1544 = mem[576 len 31]
    idx = 0
    while checkSecretKey[arg1][6].length + 31 / 32 > idx:
        checkSecretKey[arg1][idx + 6].field_0 = 0
        idx = idx + 1
        continue 
    stor1[arg1] = 1
    emit Open(arg1, address(arg4), arg5);
}

function close(bytes32 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    require stor1[arg1] <= 3
    require stor1[arg1] == 1
    mem[ceil32(arg2.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 352] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 352] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 352 len arg2.length % 32]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require checkSecretKey[arg1].field_1280 == hash
    idx = ceil32(arg2.length) + 608
    s = 0
    while ceil32(arg2.length) + checkSecretKey[arg1][6].length + 576 > idx:
        mem[idx + 32] = checkSecretKey[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    checkSecretKey[arg1][6][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[arg1] = 2
    require ext_code.size(checkSecretKey[arg1].field_768)
    call checkSecretKey[arg1].field_768.0xa9059cbb with:
         gas gas_remaining wei
        args checkSecretKey[arg1].field_1024, checkSecretKey[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Close(arg1, Array(len=arg2.length, data=arg2[all]));
}



}
