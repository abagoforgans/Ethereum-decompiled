contract main {




// =====================  Runtime code  =====================


array of uint256 VERSION;
mapping of struct auditSecret;
mapping of uint8 stor2;
mapping of uint256 sub_e1ec380c;
mapping of uint256 redeemedAt;

function auditSecret(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require stor2[arg1] <= 3
    if stor2[arg1] != 2:
        revert with 0, 'swap not redeemed'
    return auditSecret[arg1].field_1024
}

function redeemedAt(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return redeemedAt[arg1]
}

function audit(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return auditSecret[arg1].field_0, 
           auditSecret[arg1].field_256,
           auditSecret[arg1].field_1536,
           auditSecret[arg1].field_512,
           auditSecret[arg1].field_1792,
           auditSecret[arg1].field_1280,
           auditSecret[arg1].field_768
}

function sub_e1ec380c(?) {
    require calldata.size - 4 >= 32
    return sub_e1ec380c[address(arg1)]
}

function VERSION() {
    return VERSION[0 len VERSION.length]
}

function _fallback() payable {
    revert
}

function swapID(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function initiatable(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require stor2[arg1] <= 3
    return not stor2[arg1]
}

function redeemable(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require stor2[arg1] <= 3
    return (stor2[arg1] == 1)
}

function refundable(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < auditSecret[arg1].field_0:
        return block.timestamp >= auditSecret[arg1].field_0
    require stor2[arg1] <= 3
    return (stor2[arg1] == 1)
}

function sub_4c6d37ff(?) {
    require calldata.size - 4 >= 32
    if arg1 > sub_e1ec380c[msg.sender]:
        revert with 0, 'insufficient withdrawable fees'
    sub_e1ec380c[msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require stor2[arg1] <= 3
    if stor2[arg1] != 1:
        revert with 0, 'swap not open'
    if block.timestamp < auditSecret[arg1].field_0:
        revert with 0, 'swap not expirable'
    stor2[arg1] = 3
    emit LogExpire(arg1);
    call auditSecret[arg1].field_1280 with:
       value auditSecret[arg1].field_256 + auditSecret[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_027a2577(?) payable {
    require calldata.size - 4 >= 160
    if arg5 != msg.value:
        revert with 0, 'eth amount must match value'
    if not arg2:
        revert with 0, 'spender must not be zero'
    require stor2[arg1] <= 3
    if stor2[arg1]:
        revert with 0, 'swap opened previously'
    auditSecret[arg1].field_0 = arg4
    auditSecret[arg1].field_256 = arg5
    auditSecret[arg1].field_512 = 0
    auditSecret[arg1].field_768 = arg3
    auditSecret[arg1].field_1024 = 0
    auditSecret[arg1].field_1280 = msg.sender
    auditSecret[arg1].field_1536 = arg2
    auditSecret[arg1].field_1792 = 0
    auditSecret[arg1].field_2048 = 0
    stor2[arg1] = 1
    emit LogOpen(arg1, address(arg2), arg3);
}

function sub_b8688e3f(?) payable {
    require calldata.size - 4 >= 224
    if arg7 != msg.value:
        revert with 0, 'eth amount must match value'
    if not arg2:
        revert with 0, 'spender must not be zero'
    require stor2[arg1] <= 3
    if stor2[arg1]:
        revert with 0, 'swap opened previously'
    if arg7 < arg4:
        revert with 0, 'fee must be less than value'
    auditSecret[arg1].field_0 = arg6
    auditSecret[arg1].field_256 = arg7 - arg4
    auditSecret[arg1].field_512 = arg4
    auditSecret[arg1].field_768 = arg5
    auditSecret[arg1].field_1024 = 0
    auditSecret[arg1].field_1280 = msg.sender
    auditSecret[arg1].field_1536 = arg2
    auditSecret[arg1].field_1792 = arg3
    stor2[arg1] = 1
    emit LogOpen(arg1, address(arg2), arg5);
}

function sub_d68db544(?) {
    require calldata.size - 4 >= 64
    require stor2[arg1] <= 3
    if stor2[arg1] != 1:
        revert with 0, 'swap not open'
    hash = sha256hash(arg2) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if auditSecret[arg1].field_768 != hash:
        revert with 0, 'invalid secret'
    auditSecret[arg1].field_1024 = arg2
    stor2[arg1] = 2
    redeemedAt[arg1] = block.timestamp
    sub_e1ec380c[stor1[arg1].field_1792] += auditSecret[arg1].field_512
    emit LogClose(arg1, arg2);
    call auditSecret[arg1].field_1536 with:
       value auditSecret[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c23b1a85(?) {
    require calldata.size - 4 >= 96
    require stor2[arg1] <= 3
    if stor2[arg1] != 1:
        revert with 0, 'swap not open'
    hash = sha256hash(arg3) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if auditSecret[arg1].field_768 != hash:
        revert with 0, 'invalid secret'
    if auditSecret[arg1].field_1536 != msg.sender:
        revert with 0, 'unauthorized spender'
    if not arg2:
        revert with 0, 'invalid receiver'
    auditSecret[arg1].field_1024 = arg3
    stor2[arg1] = 2
    redeemedAt[arg1] = block.timestamp
    sub_e1ec380c[stor1[arg1].field_1792] += auditSecret[arg1].field_512
    emit LogClose(arg1, arg3);
    call arg2 with:
       value auditSecret[arg1].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
