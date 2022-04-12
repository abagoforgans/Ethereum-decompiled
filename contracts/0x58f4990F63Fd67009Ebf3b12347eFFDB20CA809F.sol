contract main {


// =======================  Init code  ======================


address stor6;
array of address stor7;
mapping of uint256 stor261;
address stor264;

function _fallback() {
    mem[96 len -11268] = code.data[11799 len -11268]
    mem[64] = -11172
    stor6 = msg.sender
    mem[0] = msg.sender
    mem[32] = 261
    stor261[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor7[idx] = mem[(32 * idx) + mem[96] + 140 len 20]
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 261
        stor261[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor264 = mem[140 len 20]
    return code.data[531 len 11268]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - assignDispute(string arg1, address arg2, string arg3, address arg4)
#  - assignDispute(string arg1, address arg2, string arg3)
#
array of address stor1;
array of address owner;
mapping of address stor99;
mapping of uint256 stor261;
mapping of struct sub_33c15f38;
address stor264;

function sub_33c15f38(?) {
    mem[192] = uint256(sub_33c15f38[arg1][1].field_0)
    idx = 192
    s = 0
    while sub_33c15f38[arg1][1].length + 192 > idx + 32:
        mem[idx + 32] = uint256(sub_33c15f38[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return sub_33c15f38[arg1].field_0, 
           Array(len=sub_33c15f38[arg1][1].length, data=mem[192 len sub_33c15f38[arg1][1].length + (floor32(sub_33c15f38[arg1][1].length - 1) + -sub_33c15f38[arg1][1].length + 32 % 32)])
}

function getOwner(uint256 arg1) {
    require arg1 + 1 < 256
    return owner[arg1]
}

function _fallback() payable {
  stop
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function isOwner(address arg1) {
    return (stor261[address(arg1)] > 0)
}

function resolveDisputeBuyer(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == msg.sender
    require stor261[address(msg.sender)] > 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    _97 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128] = 0xbf05033400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = stor1[_97]
    mem[ceil32(arg1.length) + 132] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(stor264)
    call stor264.0xbf050334 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length]), stor1[_97]
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    mem[ceil32(arg1.length) + 128] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 160] = 128
    mem[ceil32(arg1.length) + 256] = arg1.length
    if not arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 288] = 5
        emit DisputeResolved(mem[ceil32(arg1.length) + 128], Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length + 32], 'buyer'), arg1.length + 160, msg.sender);
    else:
        mem[ceil32(arg1.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[arg1.length + ceil32(arg1.length) + 288] = 5
        mem[arg1.length + ceil32(arg1.length) + 320] = 'buyer'
        emit DisputeResolved(mem[ceil32(arg1.length) + 128], Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + 320 len arg1.length + 32]), arg1.length + 160, msg.sender);
}

function resolveDisputeSeller(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    require stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == msg.sender
    require stor261[address(msg.sender)] > 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    _97 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128] = 0xe57ac74800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = stor1[_97]
    mem[ceil32(arg1.length) + 132] = 64
    mem[ceil32(arg1.length) + 196] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 228] = mem[128]
        mem[ceil32(arg1.length) + 260 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    require ext_code.size(stor264)
    call stor264.0xe57ac748 with:
         gas gas_remaining - 710 wei
        args Array(len=arg1.length, data=mem[ceil32(arg1.length) + 228 len arg1.length]), stor1[_97]
    require ext_call.success
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 262
    mem[ceil32(arg1.length) + 128] = stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    mem[ceil32(arg1.length) + 224] = msg.sender
    mem[ceil32(arg1.length) + 160] = 128
    mem[ceil32(arg1.length) + 256] = arg1.length
    if not arg1.length:
        mem[arg1.length + ceil32(arg1.length) + 288] = 6
        emit DisputeResolved(mem[ceil32(arg1.length) + 128], Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length + 32], 'seller'), arg1.length + 160, msg.sender);
    else:
        mem[ceil32(arg1.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[arg1.length + ceil32(arg1.length) + 288] = 6
        mem[arg1.length + ceil32(arg1.length) + 320] = 'seller'
        emit DisputeResolved(mem[ceil32(arg1.length) + 128], Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + 320 len arg1.length + 32]), arg1.length + 160, msg.sender);
}



}
