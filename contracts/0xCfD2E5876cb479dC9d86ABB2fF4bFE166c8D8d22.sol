contract main {




// =====================  Runtime code  =====================


#
#  - sub_8ce2d507(?)
#
mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_7f613f78(?) {
    mem[220] = Mask(192, 0, arg1), Mask(32, 224, '\x19Ethereum Signed Message:\n32') >> 224 or Mask(32, 224, mem[220])
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), mem[220 len 28])
}

function retrieve(bytes32 arg1) {
    mem[128] = stor0[arg1][3].field_0
    idx = 128
    s = 0
    while stor0[arg1][3].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           Array(len=stor0[arg1][3].length, data=mem[128 len stor0[arg1][3].length])
}

function register(bytes32 arg1, string arg2) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 != msg.sender:
            revert with 0, 'only owner can change his registration'
        stor0[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        emit RegistrationUpdated(stor0[arg1].field_512, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
    else:
        stor0[arg1].field_0 = msg.sender
        stor0[arg1].field_256 = arg1
        stor0[arg1].field_512 = block.number
        stor0[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        emit RegistrationCreated(block.number, Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
}

function sub_d6544b4d(?) {
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 164] = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 196] = 64
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 228] = arg2.length
    require ext_code.size(this.address)
    call this.address.0x8ce2d507 with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4.length != 65:
        revert with 0, 'wrong signature'
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27) != 28:
            revert with 0, 'wrong signature'
    signer = erecover(ext_call.return_data[0], (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 224, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), 32))), 0) - 256) + 27 << 248, mem[ceil32(arg2.length) + 160], mem[ceil32(arg2.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'wrong signature'
    if address(signer) != arg3:
        revert with 0, 'wrong signer'
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 != address(signer):
            revert with 0, 'only owner can change his registration'
        stor0[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        emit RegistrationUpdated(stor0[arg1].field_512, Array(len=arg2.length, data=arg2[all]), address(signer), arg1);
    else:
        stor0[arg1].field_0 = address(signer)
        stor0[arg1].field_256 = arg1
        stor0[arg1].field_512 = block.number
        stor0[arg1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        emit RegistrationCreated(block.number, Array(len=arg2.length, data=arg2[all]), address(signer), arg1);
}



}
