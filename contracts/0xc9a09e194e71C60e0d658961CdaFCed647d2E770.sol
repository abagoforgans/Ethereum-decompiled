contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2364]




// =====================  Runtime code  =====================


uint256 count;
mapping of struct stor1;

function count() {
    return count
}

function checkExists(bytes20 arg1) {
    return bool(stor1[Mask(160, 96, arg1)].field_256)
}

function _fallback() payable {
    revert
}

function getDoc(bytes20 arg1) {
    if not stor1[Mask(160, 96, arg1)].field_256:
        return 'No a valid key', 0, 0
    return stor1[Mask(160, 96, arg1)].field_0, stor1[Mask(160, 96, arg1)].field_256, stor1[Mask(160, 96, arg1)].field_512
}

function newDoc(bytes32 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.checkOwner(address rg1) with:
         gas 800 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    count++
    hash = ripemd160hash(arg2, count + 1) 
    require ripemd160hash.result
    require not stor1[address(hash)].field_256
    stor1[address(hash)].field_256 = arg2
    stor1[address(hash)].field_0 = arg1
    emit DocCreated(address(hash));
    return address(hash)
}

function signDoc(bytes20 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.checkOwner(address rg1) with:
         gas 800 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require not stor1[Mask(160, 96, arg1)][3][address(arg2)].field_0
    stor1[Mask(160, 96, arg1)][3][address(arg2)].field_0 = 1
    stor1[Mask(160, 96, arg1)][4][stor1[Mask(160, 96, arg1)].field_512].field_0 = arg2
    stor1[Mask(160, 96, arg1)].field_512++
    emit DocSigned(Mask(160, 96, arg1), arg2);
}

function newSignedDoc(bytes32 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.checkOwner(address rg1) with:
         gas 800 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    count++
    hash = ripemd160hash(arg2, count + 1) 
    require ripemd160hash.result
    require not stor1[address(hash)].field_256
    stor1[address(hash)].field_256 = arg2
    stor1[address(hash)].field_0 = arg1
    emit DocCreated(address(hash));
    require not stor1[address(hash)][3][address(arg2)].field_0
    stor1[address(hash)][3][address(arg2)].field_0 = 1
    stor1[address(hash)][4][stor1[address(hash)].field_512].field_0 = arg2
    stor1[address(hash)].field_512++
    emit DocSigned(address(hash), arg2);
    return address(hash)
}

function getSignatory(bytes20 arg1, uint256 arg2) {
    if not stor1[Mask(160, 96, arg1)].field_256:
        return 0, 64, 0
    require arg2 < stor1[Mask(160, 96, arg1)].field_512
    require ext_code.size(stor1[Mask(160, 96, arg1)][4][arg2].field_0)
    call stor1[Mask(160, 96, arg1)][4][arg2].field_0.getIdentityName() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    idx = 0
    while idx < 32:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0) - 8 != 0:
            require idx < 32
            require idx < 32
            mem[idx + 224 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('ext_call.return_data', 0, 32)), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return stor1[Mask(160, 96, arg1)][4][arg2].field_0, 64, 32, mem[224]
}



}
