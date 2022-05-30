contract main {




// =====================  Runtime code  =====================


#
#  - pickWinner(uint256 arg1, bool arg2, bool arg3, bool arg4, bool arg5, bool arg6, bool arg7)
#  - pickFood(uint256 arg1, string arg2, string arg3, uint256 arg4)
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
    _63 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]))
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    _114 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _162 = sha3(address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg3]), _114)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    _198 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    _231 = sha3(address(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][arg3]), _198)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 2
    _252 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 1
    require arg3 < uint256(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    return address(stor[_63 + arg3]), 
           uint256(stor1[_162].field_0),
           stor3[_231],
           uint256(reffName[('map', ('type', 160, ('stor', ('array', ('param', 'arg3'), ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))))), ('var', '_252'))].field_0)
}



}
