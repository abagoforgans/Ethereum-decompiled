contract main {




// =====================  Runtime code  =====================


#
#  - pickWinner(uint256 arg1, bool arg2, bool arg3, bool arg4, bool arg5, bool arg6, bool arg7)
#  - enter(string arg1, address arg2)
#
address managerAddress;
array of struct stor1;
array of uint256 stor2;
array of uint256 stor3;
array of struct reffName;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;

function manager() {
    return managerAddress
}

function getReffName(address arg1) {
    return uint256(reffName[address(arg1)][1][0 len reffName[address(arg1)][1].length].field_0)
}

function idxRadd(address arg1) {
    mem[128] = uint256(reffName[arg1][1].field_0)
    idx = 128
    s = 0
    while reffName[arg1][1].length + 96 > idx:
        mem[idx + 32] = uint256(reffName[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(reffName[arg1].field_0)), Array(len=reffName[arg1][1].length, data=mem[128 len reffName[arg1][1].length])
}

function _fallback() payable {
    revert
}

function sendFood(address arg1, uint256 arg2) {
    if managerAddress != msg.sender:
        revert with 0, 'Only manager is allowed'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendFoods(address[500] arg1, uint256[500] arg2) {
    mem[96 len 16000] = call.data[4 len 16000]
    mem[16096 len 16000] = call.data[16004 len 16000]
    if managerAddress != msg.sender:
        revert with 0, 'Only manager is allowed'
    idx = 0
    while idx < 500:
        if not mem[(32 * idx) + 16096]:
        require idx < 500
        call mem[(32 * idx) + 108 len 20] with:
           value mem[(32 * idx) + 16096] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sendDv(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if managerAddress != msg.sender:
        revert with 0, 'Only manager is allowed'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = 0
}

function getLast(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor8[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getLastPlayer(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    mem[ceil32(arg1.length) + 128] = address(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0)
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getReffAdd(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    if uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) != 1:
        revert with 0, 'Not found!'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sendItDv(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if managerAddress != msg.sender:
        revert with 0, 'Only manager is allowed'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    call msg.sender with:
       value stor3[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1.length < 32:
        mem[ceil32(arg1.length) + 128] = 256^(-arg1.length + 32) - 1 and mem[ceil32(arg1.length) + 128] or mem[128] and !(256^(-arg1.length + 32) - 1)
    else:
        mem[ceil32(arg1.length) + 128] = mem[128]
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length - 32)] = mem[160 len floor32(arg1.length - 32)]
        mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] = 256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] or mem[floor32(arg1.length - 32) + 160] and !(256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    stor3[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])] = 0
}

function joinboard(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.value < 10^16:
        revert with 0, '0 ether is not allowed'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    if uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0):
        revert with 0, 'Name is not unique'
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 192] = 3
    address(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]) = msg.sender
    uint256(stor1[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))].field_0) = 1
    uint256(stor1[0].field_768) += msg.value
    uint256(reffName[msg.sender][1][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint8(reffName[msg.sender].field_0) = 1
}

function getPotCnt(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    _53 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    _99 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 1
    _139 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _173 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _201 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    _222 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    return uint256(stor[_53]), 
           stor2[_99],
           stor3[_139],
           uint256(reffName[_173].field_0),
           stor6[_201],
           stor7[_222],
           stor5[('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))]
}

function getIdx(string arg1, string arg2, uint256 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _80 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    _148 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _213 = sha3(address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg3]), _148)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    _266 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _316 = sha3(address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg3]), _266)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    _354 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _389 = sha3(address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg3]), _354)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 2
    _411 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return address(stor[_80 + arg3]), 
           uint256(stor[_213]),
           uint256(stor1[_316].field_0),
           stor3[_389],
           uint256(reffName[('map', ('type', 160, ('stor', ('array', ('param', 'arg3'), ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))))), ('var', '_411'))].field_0)
}

function pickFood(uint256 arg1, string arg2, string arg3, uint256 arg4, uint256 arg5) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if managerAddress != msg.sender:
        revert with 0, 'Only manager is allowed'
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = 1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    if uint256(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) <= 0:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = 1
        stor8[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = 1
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 1
        if stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] >= arg4:
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = 1
            stor8[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = 1
        else:
            if var17003 >= 32:
                mem[var17002] = mem[var17001]
                var17001 = var17001 + 32
                var17002 = var17002 + 32
                var17003 = var17003 - 32
                continue 
            mem[var17002] = 256^(-var17003 + 32) - 1 and mem[var17002] or mem[var17001] and !(256^(-var17003 + 32) - 1)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 160] = 1
            _277 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = block.difficulty
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 288] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 320] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 384] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 416] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 256
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len 256] = block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)
            require uint256(stor[_277])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 448] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 448] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 448] = 2
            _635 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 448 len (arg3.length % 32) + 32])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 448] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 448] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 448] = 1
            require sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277]) < uint256(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 448 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
            _800 = sha3(address(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 448 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])]), _635)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 480] = block.difficulty
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 512] = (sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])) + arg1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 544] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 576] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 608] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 640] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 672] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 704] = uint256(stor1[0].field_768)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 448] = 256
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 736
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len 256] = block.difficulty, (sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])) + arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)
            require uint256(stor[_800])
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 768 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = 1
            if stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] + (sha3(block.difficulty, (sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])) + arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_800])) > arg4:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len -(arg2.length % 32) + 32], mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
                _1220 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len (arg2.length % 32) + 32])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 736] = 2
                _1337 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736 len (arg3.length % 32) + 32])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
                require sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277]) < uint256(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
                uint256(stor1[('map', ('type', 160, ('stor', ('array', ('mod', ('sha3', 'difficulty', ('param', 'arg1'), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1)))))), ('type', 256, ('stor', ('var', '_277')))), ('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))))), ('var', '_1337'))].field_0) = arg4 - stor5[_1220] + uint256(stor1[('map', ('type', 160, ('stor', ('array', ('mod', ('sha3', 'difficulty', ('param', 'arg1'), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1)))))), ('type', 256, ('stor', ('var', '_277')))), ('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))))), ('var', '_1337'))].field_0)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
                stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = arg4
            else:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 736] = 2
                _1214 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 736 len (arg3.length % 32) + 32])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len -(arg2.length % 32) + 32], mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
                require sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277]) < uint256(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]])
                mem[0] = address(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])])
                mem[32] = _1214
                uint256(stor1[('map', ('type', 160, ('stor', ('array', ('mod', ('sha3', 'difficulty', ('param', 'arg1'), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1))))), ('type', 256, ('field', 768, ('stor', ('map', 0, ('name', 'stor1', 1)))))), ('type', 256, ('stor', ('var', '_277')))), ('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))))), ('var', '_1214'))].field_0) += sha3(block.difficulty, (sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])) + arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_800])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
                stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] += sha3(block.difficulty, (sha3(block.difficulty, arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_277])) + arg1, uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768), uint256(stor1[0].field_768)) % uint256(stor[_800])
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 768 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = 1
                if stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] != arg4:
                    if 1 < arg5:
                        var17001 = 128
                        var17002 = ceil32(arg2.length) + ceil32(arg3.length) + 736
                        var17003 = arg2.length
                        continue 
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + -(arg2.length % 32) + 768 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 736] = 1
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 736 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 736 len -(arg2.length % 32) + 32], mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + ceil32(arg3.length) + arg2.length + 736] = 1
            if stor5[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] == arg4:
                stor8[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = 1
            else:
                stor8[('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 736, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2'))))))))] = 0
}



}
