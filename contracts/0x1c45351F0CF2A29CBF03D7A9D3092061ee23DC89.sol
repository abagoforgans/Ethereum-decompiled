contract main {




// =====================  Runtime code  =====================


#
#  - releaseAdaption(address arg1, uint256 arg2)
#
address stor0;
mapping of uint256 stor1;
mapping of struct adaptionValues;
mapping of uint256 stor99;

function getAdaptionValues(address arg1, uint256 arg2) {
    return adaptionValues[address(arg1)][arg2].field_256, 
           adaptionValues[address(arg1)][arg2].field_512,
           adaptionValues[address(arg1)][arg2].field_768,
           adaptionValues[address(arg1)][arg2].field_1024
}

function _fallback() payable {
    revert with 0, 'not allowed function'
}

function getTotalBalance(address arg1) {
    return (stor1[address(arg1)][4411220] + stor1[address(arg1)]['PCT'] + stor1[address(arg1)][5522260] + stor1[address(arg1)][4801364])
}

function createAdaptionRequest(address arg1, address arg2, int256 arg3, uint256 arg4) {
    if stor0 != msg.sender:
        revert with 0, 'only System can invoke'
    address(adaptionValues[address(arg1)][arg4].field_0) = arg2
    adaptionValues[address(arg1)][arg4].field_256 = arg3
    emit 0x5b6cf020: arg3, arg1, arg4
}

function confirmAdaptionRequest(address arg1, int256 arg2, int256 arg3, int256 arg4, uint256 arg5) {
    if stor0 != msg.sender:
        revert with 0, 'only System can invoke'
    if not address(adaptionValues[address(arg1)][arg5].field_0):
        revert with 0, 'there is no Adaption'
    adaptionValues[address(arg1)][arg5].field_512 = arg2
    adaptionValues[address(arg1)][arg5].field_768 = arg3
    adaptionValues[address(arg1)][arg5].field_1024 = arg4
}

function changeAdaptionRequest(address arg1, address arg2, int256 arg3, uint256 arg4, uint256 arg5) {
    if stor0 != msg.sender:
        revert with 0, 'only System can invoke'
    address(adaptionValues[address(arg1)][arg5].field_0) = 0
    adaptionValues[address(arg1)][arg5].field_256 = 0
    adaptionValues[address(arg1)][arg5].field_512 = 0
    adaptionValues[address(arg1)][arg5].field_768 = 0
    adaptionValues[address(arg1)][arg5].field_1024 = 0
    address(adaptionValues[address(arg1)][arg4].field_0) = arg2
    adaptionValues[address(arg1)][arg4].field_256 = arg3
    emit 0x5b6cf020: arg3, arg1, arg4
}

function balanceOf(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = sha3(address(arg1), 1)
    mem[ceil32(arg2.length) + 128] = stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function interchange(address arg1, address arg2, int256 arg3, int256 arg4) {
    if stor0 != msg.sender:
        revert with 0, 'only System can invoke'
    if arg3 < 0:
        revert with 0, 'TCT can only be reduced'
    if arg3 > stor1[address(arg1)][0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the TCT value is bigger than the current Balance'
    if arg4 < 0:
        if arg3 < -arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'the increased ICT value is bigger than the given TCT'
    stor1[address(arg1)][0] -= arg3
    stor1[address(arg1)][0] -= arg4
    stor1[address(arg1)][0] = stor1[address(arg1)][0] + arg3 + arg4
    stor1[address(arg2)][0] += arg3
    stor1[address(arg2)][0] += arg4
    stor1[address(arg2)][0] = stor1[address(arg2)][0] - arg3 - arg4
    emit 0xfded0e77: arg3, arg4, stor1[address(arg1)][0], stor1[address(arg1)][0], stor1[address(arg1)][0], arg1
}

function transfer(address arg1, address arg2, string arg3, int256 arg4) {
    mem[128 len arg3.length] = arg3[all]
    if stor0 != msg.sender:
        revert with 0, 'only System can invoke'
    if arg4 < 0:
        revert with 0, 'Negative amount'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    if not arg4:
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        mem[arg3.length + ceil32(arg3.length) + 128] = sha3(address(arg1), 1)
        _70 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32])
        emit 0xe638a3e8: Array(len=arg3.length, data=arg3[all]), arg4, stor[_70], arg1, arg2
    else:
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg2), 1)
        _78 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32])
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg2), 1)
        stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]] = stor[_78] + arg4
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg1), 1)
        _161 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32])
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + 128] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg3.length) + floor32(arg3.length) + 128] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[arg3.length + 128 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        mem[ceil32(arg3.length) + arg3.length + 128] = sha3(address(arg1), 1)
        stor[mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32]][call.data[arg3 + 36 len floor32(arg3.length)]] = stor[_161] - arg4
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        mem[arg3.length + ceil32(arg3.length) + 128] = sha3(address(arg1), 1)
        _208 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len (arg3.length % 32) + 32])
        mem[ceil32(arg3.length) + 160] = arg4
        mem[ceil32(arg3.length) + 192] = stor[_208]
        mem[ceil32(arg3.length) + 128] = 96
        mem[ceil32(arg3.length) + 224] = arg3.length
        mem[ceil32(arg3.length) + 256 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit 0xe638a3e8: 96, mem[ceil32(arg3.length) + 160 len arg3.length], 0, mem[ceil32(arg3.length) + arg3.length + 160 len 96], arg1, arg2
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 256] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 288 len arg3.length % 32]
            emit 0xe638a3e8: 96, mem[ceil32(arg3.length) + 160 len arg3.length], 0, mem[ceil32(arg3.length) + arg3.length + 160 len -(arg3.length % 32) + 128], arg1, arg2
}



}
