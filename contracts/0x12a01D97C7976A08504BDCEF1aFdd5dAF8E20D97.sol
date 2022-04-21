contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2472]




// =====================  Runtime code  =====================


const contract_version = '0.2._'


array of struct findEndpointBy;
mapping of address stor99;

function findEndpointByAddress(address arg1) {
    return uint256(findEndpointBy[address(arg1)][0 len findEndpointBy[address(arg1)].length].field_0)
}

function _fallback() payable {
    revert
}

function findAddressByEndpoint(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function registerEndpoint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len 0] = None
    mem[ceil32(arg1.length) + 160] = None or mem[ceil32(arg1.length) + 160]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]) != sha3(None)
    mem[32] = 0
    mem[64] = ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + 192
    mem[ceil32(arg1.length) + 160] = findEndpointBy[address(msg.sender)].length
    mem[0] = sha3(address(msg.sender), 0)
    mem[ceil32(arg1.length) + 192] = uint256(findEndpointBy[address(msg.sender)].field_0)
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + findEndpointBy[address(msg.sender)].length + 160 > idx:
        mem[idx + 32] = uint256(findEndpointBy[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _2788 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + floor32(arg1.length) + 192 len arg1.length % 32])
    mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + 192 len floor32(findEndpointBy[address(msg.sender)].length)] = mem[ceil32(arg1.length) + 192 len floor32(findEndpointBy[address(msg.sender)].length)]
    mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + floor32(findEndpointBy[address(msg.sender)].length) + 192] = mem[ceil32(arg1.length) + floor32(findEndpointBy[address(msg.sender)].length) + -findEndpointBy[address(msg.sender)].length % 32 + 224 len findEndpointBy[address(msg.sender)].length % 32] or Mask(8 * -findEndpointBy[address(msg.sender)].length % 32 + 32, -(8 * -findEndpointBy[address(msg.sender)].length % 32 + 32) + 256, mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + floor32(findEndpointBy[address(msg.sender)].length) + 192])
    if sha3(mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + 192 len findEndpointBy[address(msg.sender)].length]) != _2788:
        mem[0] = sha3(address(msg.sender), 0)
        mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + 192] = uint256(findEndpointBy[address(msg.sender)].field_0)
        idx = mem[64]
        s = 0
        while ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + findEndpointBy[address(msg.sender)].length + 192 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(findEndpointBy[address(msg.sender)].length) + findEndpointBy[address(msg.sender)].length + 192] = 1
        address(stor[sha3(mem[mem[64] len ceil32(arg1.length) + ceil32(stor0[address(msg.sender)].length) + stor0[address(msg.sender)].length + -mem[64] + 224])]) = 0
        mem[32] = 0
        mem[0] = sha3(address(msg.sender), 0)
        uint256(findEndpointBy[address(msg.sender)][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        _5706 = mem[64]
        _5707 = mem[96]
        mem[mem[64] len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 32 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        mem[_5707 + _5706] = 1
        address(stor[sha3(mem[mem[64] len _5707 + _5706 + -mem[64] + 32])]) = msg.sender
        _5760 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _5762 = mem[96]
        mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if not mem[96] % 32:
            emit AddressRegistered(address rg1, string rg2):
                                   32,
                                   mem[mem[64] + 32 len mem[96] + 32],
                                   msg.sender,
        else:
            mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
            emit AddressRegistered(mem[mem[64] len floor32(_5762) + _5760 + -mem[64] + 96], msg.sender);
}



}
