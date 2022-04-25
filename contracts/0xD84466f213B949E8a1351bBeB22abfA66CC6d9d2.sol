contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[5079 len 20]
    return code.data[188 len 4879]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
mapping of struct stor2;
array of struct stor3;

function owner() {
    return owner
}

function sub_e2048503(?) {
    return address(stor1.length)
}

function _fallback() payable {
    revert
}

function sub_17f85f85(?) {
    require msg.sender == owner
    address(stor1.length) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8fc5dad8(?) {
    require msg.sender == address(stor1.length)
    require uint8(stor2[arg1[all]].field_768)
    Mask(248, 0, stor2[arg1[all]].field_776) = 0
}

function sub_75d0884d(?) {
    require msg.sender == address(stor1.length)
    stor2[arg1[all]][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor2[arg1[all]].field_256 = 0
    stor2[arg1[all]].field_512 = 0
    uint8(stor2[arg1[all]].field_768) = 1
    Mask(248, 0, stor2[arg1[all]].field_776) = 1
}

function getVote(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    _22 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 2
    return stor[_22 + 4][address(msg.sender)], 
           stor2[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0
}

function vote(string arg1) {
    require ext_code.size(address(stor3.length))
    call address(stor3.length).0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    if not uint8(stor2[arg1[all]].field_768):
        stor2[arg1[all]][].field_0 = Array(len=arg1.length, data=arg1[all])
        stor2[arg1[all]].field_256 = 0
        stor2[arg1[all]].field_512 = 0
        uint8(stor2[arg1[all]].field_768) = 1
        Mask(248, 0, stor2[arg1[all]].field_776) = 1
    require uint8(stor2[arg1[all]].field_776)
    if not stor2[arg1[all]][4][address(msg.sender)].field_0:
        require ext_code.size(address(stor3.length))
        call address(stor3.length).0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require stor2[arg1[all]].field_256 + ext_call.return_data[0] >= stor2[arg1[all]].field_256
        stor2[arg1[all]].field_256 += ext_call.return_data[0]
        require ext_code.size(address(stor3.length))
        call address(stor3.length).0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        stor2[arg1[all]][4][address(msg.sender)].field_0 = ext_call.return_data[0]
        require ext_code.size(address(stor3.length))
        call address(stor3.length).0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor2[arg1[all]].field_512 = ext_call.return_data[0]
}

function sub_f8722b47(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _57 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _106 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _148 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    _183 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 192] = stor[sha3(_57)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_57].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_57) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[_57].length, data=mem[ceil32(arg1.length) + 192 len stor[_57].length]), 
           stor2[_106].field_0,
           uint256(stor1[_148]),
           bool(uint8(stor3[_183].field_8))
}



}
