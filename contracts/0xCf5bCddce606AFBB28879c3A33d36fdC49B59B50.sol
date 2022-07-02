contract main {




// =====================  Runtime code  =====================


address sub_c3d95684Address;

function sub_c3d95684(?) {
    return sub_c3d95684Address
}

function _fallback() payable {
    revert
}

function sub_a1c29ff5(?) {
    mem[128 len arg2.length] = arg2[all]
    require 0 < arg2.length
    if arg2.length < 33:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    if arg2.length < 65:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    signer = erecover(arg1, Mask(8, 248, mem[128]), mem[129], mem[161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_ff772b95(?) {
    mem[128 len arg2.length] = arg2[all]
    require 0 < arg2.length
    if arg2.length < 33:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    if arg2.length < 65:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1, Mask(224, 0, arg1)), Mask(8, 248, mem[128]), mem[129], mem[161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function isValidSignature(bytes32 arg1, bytes arg2) {
    mem[100] = tx.origin
    require ext_code.size(sub_c3d95684Address)
    staticcall sub_c3d95684Address.0x485ff697 with:
            gas gas_remaining wei
           args tx.origin
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'ORIGIN_NOT_WHITELISTED'
    mem[128 len arg2.length] = arg2[all]
    require 0 < arg2.length
    if arg2.length < 33:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    if arg2.length < 65:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    _15 = mem[161]
    mem[ceil32(arg2.length) + 192] = mem[128 len 1]
    mem[ceil32(arg2.length) + 224] = mem[129]
    mem[ceil32(arg2.length) + 256] = _15
    signer = erecover(arg1, Mask(8, 248, mem[128]), mem[129], _15) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + 192 len arg2.length] = arg2[all]
    require 0 < arg2.length
    if arg2.length < 33:
        mem[(2 * ceil32(arg2.length)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + 196] = 32
        mem[(2 * ceil32(arg2.length)) + 228] = 38
        mem[(2 * ceil32(arg2.length)) + 260] = 'GREATER_OR_EQUAL_TO_32_LENGTH_RE'
        mem[(2 * ceil32(arg2.length)) + 292] = 'QUIRED'
        revert with memory
          from (2 * ceil32(arg2.length)) + 192
           len ceil32(arg2.length) + 132
    if arg2.length < 65:
        mem[(2 * ceil32(arg2.length)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg2.length)) + 196] = 32
        mem[(2 * ceil32(arg2.length)) + 228] = 38
        mem[(2 * ceil32(arg2.length)) + 260] = 'GREATER_OR_EQUAL_TO_32_LENGTH_RE'
        mem[(2 * ceil32(arg2.length)) + 292] = 'QUIRED'
        revert with memory
          from (2 * ceil32(arg2.length)) + 192
           len ceil32(arg2.length) + 132
    mem[(2 * ceil32(arg2.length)) + 252] = arg1
    mem[(2 * ceil32(arg2.length)) + 284 len floor32(ceil32(arg2.length) + 60)] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, mem[(2 * ceil32(arg2.length)) + 252 len floor32(ceil32(arg2.length) + 60) - 28]
    mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 60) + 284] = 256^(-(ceil32(arg2.length) + 60 % 32) + 32) - 1 and mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 60) + 284] or mem[(2 * ceil32(arg2.length)) + floor32(ceil32(arg2.length) + 60) + 224] and !(256^(-(ceil32(arg2.length) + 60 % 32) + 32) - 1)
    signer = erecover(sha3(mem[(2 * ceil32(arg2.length)) + 284 len ceil32(arg2.length) + 60]), Mask(8, 248, mem[ceil32(arg2.length) + 192]), mem[ceil32(arg2.length) + 193 len 31], mem[129 len 1], mem[130 len 31], Mask(8, 248, _15) >> 248) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        if not address(signer):
            revert with 0, 'SIGNATURE_INVALID2'
    require ext_code.size(msg.sender)
    staticcall msg.sender.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == address(signer))
}



}
