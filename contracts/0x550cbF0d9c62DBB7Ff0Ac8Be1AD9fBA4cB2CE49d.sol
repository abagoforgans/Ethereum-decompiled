contract main {




// =====================  Runtime code  =====================


#
#  - sub_17ede8b3(?)
#
function sub_117d2205(?) {
    return ('storage', 160, 0, 2)
}

function sub_1d3df0d3(?) {
    return ('storage', 256, 0, 6)
}

function sub_63718475(?) {
    return ('storage', 256, 0, 7)
}

function minimumQuorum() {
    return ('storage', 256, 0, 5)
}

function owner() {
    return ('storage', 160, 0, 0)
}

function newOwner() {
    return ('storage', 160, 0, 1)
}

function _fallback() payable {
    emit Payment(msg.value, msg.sender);
}

function sub_fbee4621(?) {
    require msg.sender == ('storage', 160, 0, 0)
    require arg1 > 0
    uint256(stor[3].field_0) = arg1
}

function setMinBalance(uint256 arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    require arg1 > 0
    uint256(stor[4].field_0) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    require arg1
    address(stor[1].field_0) = arg1
}

function acceptOwnership() {
    if msg.sender == ('storage', 160, 0, 1):
        emit OwnershipTransferred(('storage', 160, 0, 0), ('storage', 160, 0, 1));
        address(stor[0].field_0) = ('storage', 160, 0, 1)
}

function changeVotingRules(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == ('storage', 160, 0, 0)
    uint256(stor[5].field_0) = arg1
    uint256(stor[6].field_0) = arg2
    uint256(stor[7].field_0) = arg3
    emit 0xe7a31acb: arg1, arg2, arg3
}

function acceptOwnership(address arg1) {
    require msg.sender == ('storage', 160, 0, 0)
    require ext_code.size(arg1)
    call arg1.0x79ba5097 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6f48794(?) {
    require msg.sender == ('storage', 160, 0, 0)
    require ext_code.size(arg1)
    call arg1.0x257d88ca with:
         gas gas_remaining wei
        args address(arg2), arg3 << 224, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1, address arg2) {
    require msg.sender == ('storage', 160, 0, 0)
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ce4c69bd(?) {
    require msg.sender == ('storage', 160, 0, 0)
    require ext_code.size(arg1)
    call arg1.updateAgent(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function vote(uint256 arg1, bool arg2, string arg3) {
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0xf8b2cb4f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require arg1 < ('storage', 256, 0, 8)
    require block.timestamp <= ('storage', 256, 0, ('add', ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0xf8b2cb4f with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).0x30a89710 with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).vote(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg1, msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Voted(arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all]));
    return ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
}

function checkProposalCode(uint256 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require arg1 < ('storage', 256, 0, 8)
    require ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) == arg2
    require arg1 < ('storage', 256, 0, 8)
    require ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) == arg3
    mem[ceil32(arg4.length) + 160] = address(arg2)
    mem[ceil32(arg4.length) + 180] = arg3
    mem[ceil32(arg4.length) + 212 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 244 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 52) + 212] = mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 52) + 212] and 256^(-(arg4.length + 52 % 32) + 32) - 1 or mem[ceil32(arg4.length) + floor32(arg4.length + 52) + 160 len arg4.length + -floor32(arg4.length + 52) + 52], Mask(8 * floor32(arg4.length + 52) + -arg4.length - 20, -(8 * floor32(arg4.length + 52) + -arg4.length - 20) + 160, arg2) >> -(8 * floor32(arg4.length + 52) + -arg4.length - 20) + 160 and !(256^(-(arg4.length + 52 % 32) + 32) - 1)
    require arg1 < ('storage', 256, 0, 8)
    return (('storage', 256, 0, ('add', 7, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) == sha3(Mask(8 * floor32(arg4.length + 52), -(8 * floor32(arg4.length + 52)) + 256, arg2, mem[ceil32(arg4.length) + 180 len floor32(arg4.length + 52) - 20]) << (8 * floor32(arg4.length + 52)) - 256, mem[arg4.length + ceil32(arg4.length) + floor32(arg4.length + 52) + 212 len arg4.length + -floor32(arg4.length + 52) + 52]))
}

function executeProposal(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    require arg1 < ('storage', 256, 0, 8)
    require block.timestamp > ('storage', 256, 0, ('add', ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    require not ('storage', 8, 0, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(arg2.length) + 160] = ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(arg2.length) + 180] = ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(arg2.length) + 212 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 244 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length + 52
    mem[arg2.length + ceil32(arg2.length) + 212 len floor32(arg2.length + 52)] = ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))), mem[ceil32(arg2.length) + 180 len floor32(arg2.length + 52) - 20]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 52) + 212] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 52) + 212] and 256^(-(arg2.length + 52 % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length + 52) + 160 len arg2.length + -floor32(arg2.length + 52) + 52], ('storage', ('mask_shl', 253, 0, 3, ('add', -20, ('mask_shl', 251, 5, 0, ('add', 52, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2')))))), ('add', 64, ('mul', -1, ('mask_shl', 253, 0, 3, ('add', -20, ('mask_shl', 251, 5, 0, ('add', 52, ('cd', ('add', 4, ('param', 'arg2'))))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) and !(256^(-(arg2.length + 52 % 32) + 32) - 1)
    require ('storage', 256, 0, ('add', 7, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) == sha3(('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))), mem[ceil32(arg2.length) + 180 len floor32(arg2.length + 52) - 20], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length + 52) + 212 len arg2.length + -floor32(arg2.length + 52) + 52])
    require ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) >= ('storage', 256, 0, 5)
    if ('storage', 256, 0, ('add', 3, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) <= ('storage', 256, 0, 7):
        uint8(stor[(10 * arg1) + sha3(8) + 1].field_8) = 0
    else:
        mem[arg2.length + ceil32(arg2.length) + 212 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            call ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))).mem[arg2.length + ceil32(arg2.length) + 212 len 4] with:
               value ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) wei
                 gas gas_remaining wei
                args mem[arg2.length + ceil32(arg2.length) + 216 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + arg2.length + ceil32(arg2.length) + 212] = mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 244 len arg2.length % 32]
            call ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))).mem[arg2.length + ceil32(arg2.length) + 212 len 4] with:
               value ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8))) wei
                 gas gas_remaining wei
                args mem[arg2.length + ceil32(arg2.length) + 216 len floor32(arg2.length) + 28]
        require ext_call.success
        uint8(stor[(10 * arg1) + sha3(8) + 1].field_8) = 1
    require ext_code.size(('storage', 160, 0, 2))
    call ('storage', 160, 0, 2).delProposal(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint8(stor[(10 * arg1) + sha3(8) + 1].field_0) = 1
    emit ProposalTallied(arg1, ('storage', 256, 0, ('add', 3, ('mul', 10, ('param', 'arg1')), ('sha3', 8))), ('storage', 256, 0, ('add', 4, ('mul', 10, ('param', 'arg1')), ('sha3', 8))), ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8))), bool(0 or ('storage', 8, 8, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))));
}

function Proposals(uint256 arg1) {
    require arg1 < ('storage', 256, 0, 8)
    mem[96] = ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[128] = ('storage', 256, 0, ('sha3', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    idx = 128
    s = 0
    while ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 96 > idx:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 160
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 128] = ('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[0] = (10 * arg1) + sha3(8) + 9
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 160] = ('storage', 256, 0, ('sha3', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    idx = ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 160
    s = 0
    while ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 128 > idx:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 160] = ('storage', 256, 0, ('add', ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 192] = bool(('storage', 8, 0, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 224] = bool(('storage', 8, 8, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 256] = ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 288] = ('storage', 256, 0, ('add', 3, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 320] = ('storage', 256, 0, ('add', 4, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 352] = ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 384] = ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 416] = ('storage', 256, 0, ('add', 7, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 448] = 352
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 512] = ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 544 len ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))] = mem[128 len ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))]
    mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 480] = ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 384
    mem[('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 544] = ('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))
    mem[('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 576 len ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))] = mem[ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 160 len ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))]
    if not ('storage', 5, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))):
        return ('storage', 256, 0, ('add', ('mul', 10, ('param', 'arg1')), ('sha3', 8))), 
               bool(('storage', 8, 0, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))),
               bool(('storage', 8, 8, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))),
               ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               ('storage', 256, 0, ('add', 3, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               ('storage', 256, 0, ('add', 4, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               ('storage', 256, 0, ('add', 7, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
               Array(len=('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))), data=mem[128 len ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))], mem[(2 * ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 544 len ('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + -ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 32]),
               ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 384
    mem[floor32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 576] = mem[floor32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + -('storage', 5, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 608 len ('storage', 5, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))]
    return ('storage', 256, 0, ('add', ('mul', 10, ('param', 'arg1')), ('sha3', 8))), 
           bool(('storage', 8, 0, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))),
           bool(('storage', 8, 8, ('add', 1, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))),
           ('storage', 256, 0, ('add', 2, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           ('storage', 256, 0, ('add', 3, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           ('storage', 256, 0, ('add', 4, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           ('storage', 160, 0, ('add', 5, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           ('storage', 256, 0, ('add', 6, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           ('storage', 256, 0, ('add', 7, ('mul', 10, ('param', 'arg1')), ('sha3', 8))),
           Array(len=('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))), data=mem[128 len ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))], mem[(2 * ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))))) + ceil32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 544 len floor32(('storage', 256, 0, ('length', ('add', 9, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + -ceil32(('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8))))) + 64]),
           ('storage', 256, 0, ('length', ('add', 8, ('mul', 10, ('param', 'arg1')), ('sha3', 8)))) + 384
}



}
