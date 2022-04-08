contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
address stor3;

function _fallback() payable {
    mem[128 len 1508] = code.data[3919 len 1508]
    stor0.length = 3017
    s = 0
    idx = 128
    while 1636 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 48
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor1 = 0x314159265dd8dbb310642f98f50c066173c1259b
    require not msg.value
    stor3 = msg.sender
    return code.data[400 len 3519]
}



// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
mapping of address addr;
address stor3;

function addr(bytes32 arg1) {
    return addr[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require stor3 == msg.sender
    stor3 = arg1
}

function setAddr(bytes32 arg1, address arg2) {
    require ext_code.size(stor1)
    call stor1.owner(bytes32 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[12 len 20] != msg.sender:
        require stor3 == msg.sender
    addr[arg1] = arg2
    emit AddrChanged(arg2, arg1);
}

function setSubnodeOwner(bytes22 arg1, address arg2) {
    require stor3 == msg.sender
    require ext_code.size(stor1)
    call stor1.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0x637f12e7cd6bed65eeceee34d35868279778fc56c3e5e951f46b801fb78a2d26, Mask(176, 80, arg1), arg2
    require ext_call.success
}

function supportsInterface(bytes4 arg1) {
    if Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x2203ab5600000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function ABI(bytes32 arg1, uint256 arg2) {
    if bool(arg2) != 1:
        return 0, 64, 0
    mem[160] = uint256(stor0.field_0)
    idx = 160
    s = 0
    while stor0.length + 128 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0.length) + 160] = 1
    mem[ceil32(stor0.length) + 192] = 64
    mem[ceil32(stor0.length) + 224] = stor0.length
    if stor0.length:
        mem[ceil32(stor0.length) + 256] = mem[160]
        mem[ceil32(stor0.length) + 288 len floor32(stor0.length - 1)] = mem[192 len floor32(stor0.length - 1)]
    return 1, Array(len=stor0.length, data=mem[ceil32(stor0.length) + 256 len stor0.length])
}

function newToken(string arg1, address arg2) {
    mem[128 len arg1.length] = arg1[all]
    require stor3 == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require ext_code.size(stor1)
    call stor1.setSubnodeOwner(bytes32 rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args 0x637f12e7cd6bed65eeceee34d35868279778fc56c3e5e951f46b801fb78a2d26, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.setResolver(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args sha3(0x637f12e7cd6bed65eeceee34d35868279778fc56c3e5e951f46b801fb78a2d26, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])), this.address
    require ext_call.success
    addr[0x637f12e7cd6bed65eeceee34d35868279778fc56c3e5e951f46b801fb78a2d26][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))] = arg2
    emit AddrChanged(arg2, sha3(0x637f12e7cd6bed65eeceee34d35868279778fc56c3e5e951f46b801fb78a2d26, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])));
}



}
