contract main {




// =====================  Runtime code  =====================


#
#  - sub_0955acd4(?)
#  - sub_69f81776(?)
#  - sub_a1e1fe93(?)
#  - sub_b04993ef(?)
#
const NAME = '', 0

const VERSION = '', 0


address hubAddress;
uint256 challengePeriod;
address sub_bab46259Address;
uint256 sub_009e8690;
uint256 sub_32b573e1;
mapping of struct sub_7dce34f7;
mapping of struct sub_5f2f3dfd;
uint8 stor7;

function sub_009e8690(?) {
    return sub_009e8690
}

function sub_32b573e1(?) {
    return sub_32b573e1
}

function hub() {
    return hubAddress
}

function sub_5f2f3dfd(?) {
    require calldata.size - 4 >= 96
    return sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_0, 
           sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_256,
           sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_512,
           sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_768,
           sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_1024,
           sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_1280,
           bool(sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_1536),
           bool(sub_5f2f3dfd[address(arg1)][address(arg2)][arg3].field_1544)
}

function sub_7dce34f7(?) {
    require calldata.size - 4 >= 32
    require sub_7dce34f7[arg1].field_3072 < 3
    return sub_7dce34f7[arg1].field_2048, 
           sub_7dce34f7[arg1].field_2304,
           sub_7dce34f7[arg1].field_2560,
           sub_7dce34f7[arg1].field_2816,
           sub_7dce34f7[arg1].field_3072
}

function sub_bab46259(?) {
    return sub_bab46259Address
}

function challengePeriod() {
    return challengePeriod
}

function _fallback() payable {
  stop
}

function sub_ad872d03(?) {
    require sub_009e8690 <= eth.balance(this.address)
    return (eth.balance(this.address) - sub_009e8690)
}

function sub_9bcf63cd(?) {
    require ext_code.size(sub_bab46259Address)
    call sub_bab46259Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_32b573e1 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - sub_32b573e1)
}

function sub_45a92009(?) {
    require calldata.size - 4 >= 32
    idx = 1024
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1120
    s = 3
    while 1216 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1216
    s = 6
    while 1280 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_7dce34f7[address(arg1)].field_3072 <= 2:
        return sub_7dce34f7[address(arg1)].field_0, mem[1056], mem[1088], sub_7dce34f7[address(arg1)].field_768, mem[1152], mem[1184]
    revert
}

function sub_74c25c20(?) {
    require calldata.size - 4 >= 32
    idx = 1024
    s = 0
    while 1120 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1120
    s = 3
    while 1216 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1216
    s = 6
    while 1280 > idx + 32:
        mem[idx + 32] = sub_7dce34f7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sub_7dce34f7[address(arg1)].field_3072 <= 2:
        if sub_7dce34f7[address(arg1)].field_3072 < 3:
            return sub_7dce34f7[address(arg1)].field_1536, 
                   mem[1248],
                   sub_7dce34f7[address(arg1)].field_2048,
                   sub_7dce34f7[address(arg1)].field_2304,
                   sub_7dce34f7[address(arg1)].field_2560,
                   sub_7dce34f7[address(arg1)].field_2816,
                   sub_7dce34f7[address(arg1)].field_3072
    revert
}

function sub_01dd7da9(?) {
    require calldata.size - 4 >= 64
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    require hubAddress == msg.sender
    require sub_009e8690 <= eth.balance(this.address)
    if eth.balance(this.address) - sub_009e8690 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'hubContractWithdraw: Contract wei funds not sufficient to withdraw'
    require ext_code.size(sub_bab46259Address)
    call sub_bab46259Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_32b573e1 <= ext_call.return_data[0]
    if ext_call.return_data[0] - sub_32b573e1 < arg2:
        revert with 0, 'hubContractWithdraw: Contract token funds not sufficient to withdraw'
    call hubAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_bab46259Address)
    call sub_bab46259Address.0xa9059cbb with:
         gas gas_remaining wei
        args hubAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'hubContractWithdraw: Token transfer failure'
    emit 0x60a3ff34: arg1, arg2
    stor7 = 0
}

function sub_72cc174c(?) {
    require calldata.size - 4 >= 32
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    if hubAddress == arg1:
        revert with 0, 'user can not be hub'
    if this.address == arg1:
        revert with 0, 'user can not be channel manager'
    require sub_7dce34f7[address(arg1)].field_3072 <= 2
    if sub_7dce34f7[address(arg1)].field_3072:
        revert with 0, 'channel must be open'
    if hubAddress != msg.sender:
        if arg1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'exit initiator must be user or hub'
    sub_7dce34f7[address(arg1)].field_2560 = msg.sender or Mask(96, 160, sub_7dce34f7[address(arg1)].field_2560)
    require challengePeriod + block.timestamp >= block.timestamp
    sub_7dce34f7[address(arg1)].field_2816 = challengePeriod + block.timestamp
    sub_7dce34f7[address(arg1)].field_3072 = 1
    idx = 0
    s = 6
    t = 384
    while idx < 2:
        mem[t] = sub_7dce34f7[address(arg1)][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    if hubAddress == msg.sender:
        emit 0x746e6511: 0, sub_7dce34f7[address(arg1)].field_256, sub_7dce34f7[address(arg1)].field_1024, mem[384 len 64], sub_7dce34f7[address(arg1)].field_2048, sub_7dce34f7[address(arg1)].field_2304, arg1
    else:
        emit 0x746e6511: 1, sub_7dce34f7[address(arg1)].field_256, sub_7dce34f7[address(arg1)].field_1024, mem[384 len 64], sub_7dce34f7[address(arg1)].field_2048, sub_7dce34f7[address(arg1)].field_2304, arg1
    stor7 = 0
}

function sub_7651a86b(?) {
    require calldata.size - 4 >= 32
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    if hubAddress == arg1:
        revert with 0, 'user can not be hub'
    if this.address == arg1:
        revert with 0, 'user can not be channel manager'
    require sub_7dce34f7[address(arg1)].field_3072 <= 2
    if sub_7dce34f7[address(arg1)].field_3072 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'channel must be in thread dispue'
    if not challengePeriod:
        require sub_7dce34f7[address(arg1)].field_2816 >= sub_7dce34f7[address(arg1)].field_2816
        if sub_7dce34f7[address(arg1)].field_2816 >= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        61,
                        0x1c6368616e6e656c20636c6f73696e672074696d65206d757374206861766520,
                        'assed by 10 challenge periods'
    else:
        require 10 * challengePeriod / challengePeriod == 10
        require (10 * challengePeriod) + sub_7dce34f7[address(arg1)].field_2816 >= sub_7dce34f7[address(arg1)].field_2816
        if (10 * challengePeriod) + sub_7dce34f7[address(arg1)].field_2816 >= block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        61,
                        0x1c6368616e6e656c20636c6f73696e672074696d65206d757374206861766520,
                        'assed by 10 challenge periods'
    require sub_7dce34f7[address(arg1)].field_512 <= sub_009e8690
    sub_009e8690 -= sub_7dce34f7[address(arg1)].field_512
    call arg1 with:
       value sub_7dce34f7[address(arg1)].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7dce34f7[address(arg1)].field_512 = 0
    require sub_7dce34f7[address(arg1)].field_1280 <= sub_32b573e1
    sub_32b573e1 -= sub_7dce34f7[address(arg1)].field_1280
    require ext_code.size(sub_bab46259Address)
    call sub_bab46259Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_7dce34f7[address(arg1)].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'user token withdrawal transfer failed'
    sub_7dce34f7[address(arg1)].field_1280 = 0
    sub_7dce34f7[address(arg1)].field_2304 = 0
    sub_7dce34f7[address(arg1)].field_2048 = 0
    sub_7dce34f7[address(arg1)].field_2816 = 0
    sub_7dce34f7[address(arg1)].field_3072 = 0
    idx = 0
    s = 6
    t = ceil32(return_data.size) + 448
    while idx < 2:
        mem[t] = sub_7dce34f7[address(arg1)][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x2d2d0f26: msg.sender, sub_7dce34f7[address(arg1)].field_512, sub_7dce34f7[address(arg1)].field_1280, sub_7dce34f7[address(arg1)].field_256, sub_7dce34f7[address(arg1)].field_1024, mem[ceil32(return_data.size) + 448 len 64], 0, 0, arg1
    stor7 = 0
}

function sub_4e2a5c5a(?) {
    require calldata.size - 4 >= 32
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    if hubAddress == arg1:
        revert with 0, 'user can not be hub'
    if this.address == arg1:
        revert with 0, 'user can not be channel manager'
    require sub_7dce34f7[address(arg1)].field_3072 <= 2
    if sub_7dce34f7[address(arg1)].field_3072 != 1:
        revert with 0, 'channel must be in dispute'
    if sub_7dce34f7[address(arg1)].field_2816 >= block.timestamp:
        if msg.sender == sub_7dce34f7[address(arg1)].field_2560:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        85,
                        0x1c6368616e6e656c20636c6f73696e672074696d65206d757374206861766520,
                        'assed or msg.sender must be non-',
                        'exit-initiating party' << 88
        if hubAddress != msg.sender:
            if arg1 != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            85,
                            0x1c6368616e6e656c20636c6f73696e672074696d65206d757374206861766520,
                            'assed or msg.sender must be non-',
                            'exit-initiating party' << 88
    require sub_7dce34f7[address(arg1)].field_0 <= sub_7dce34f7[address(arg1)].field_512
    require sub_7dce34f7[address(arg1)].field_256 <= sub_7dce34f7[address(arg1)].field_512 - sub_7dce34f7[address(arg1)].field_0
    sub_7dce34f7[address(arg1)].field_512 = sub_7dce34f7[address(arg1)].field_512 - sub_7dce34f7[address(arg1)].field_0 - sub_7dce34f7[address(arg1)].field_256
    require sub_7dce34f7[address(arg1)].field_768 <= sub_7dce34f7[address(arg1)].field_1280
    require sub_7dce34f7[address(arg1)].field_1024 <= sub_7dce34f7[address(arg1)].field_1280 - sub_7dce34f7[address(arg1)].field_768
    sub_7dce34f7[address(arg1)].field_1280 = sub_7dce34f7[address(arg1)].field_1280 - sub_7dce34f7[address(arg1)].field_768 - sub_7dce34f7[address(arg1)].field_1024
    require sub_7dce34f7[address(arg1)].field_0 <= sub_009e8690
    require sub_7dce34f7[address(arg1)].field_256 <= sub_009e8690 - sub_7dce34f7[address(arg1)].field_0
    sub_009e8690 = sub_009e8690 - sub_7dce34f7[address(arg1)].field_0 - sub_7dce34f7[address(arg1)].field_256
    call arg1 with:
       value sub_7dce34f7[address(arg1)].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7dce34f7[address(arg1)].field_0 = 0
    sub_7dce34f7[address(arg1)].field_256 = 0
    require sub_7dce34f7[address(arg1)].field_768 <= sub_32b573e1
    require sub_7dce34f7[address(arg1)].field_1024 <= sub_32b573e1 - sub_7dce34f7[address(arg1)].field_768
    sub_32b573e1 = sub_32b573e1 - sub_7dce34f7[address(arg1)].field_768 - sub_7dce34f7[address(arg1)].field_1024
    require ext_code.size(sub_bab46259Address)
    call sub_bab46259Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_7dce34f7[address(arg1)].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'user token withdrawal transfer failed'
    sub_7dce34f7[address(arg1)].field_768 = 0
    sub_7dce34f7[address(arg1)].field_1024 = 0
    if sub_7dce34f7[address(arg1)].field_2304 > 0:
        sub_7dce34f7[address(arg1)].field_3072 = 2
    else:
        sub_7dce34f7[address(arg1)].field_2816 = 0
        sub_7dce34f7[address(arg1)].field_3072 = 0
    sub_7dce34f7[address(arg1)].field_2560 = 0
    idx = 0
    s = 6
    t = ceil32(return_data.size) + 384
    while idx < 2:
        mem[t] = sub_7dce34f7[address(arg1)][s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    if msg.sender == hubAddress:
        emit 0x70ff678d: 0, sub_7dce34f7[address(arg1)].field_256, sub_7dce34f7[address(arg1)].field_1024, mem[ceil32(return_data.size) + 384 len 64], sub_7dce34f7[address(arg1)].field_2048, sub_7dce34f7[address(arg1)].field_2304, arg1
    else:
        emit 0x70ff678d: 1, sub_7dce34f7[address(arg1)].field_256, sub_7dce34f7[address(arg1)].field_1024, mem[ceil32(return_data.size) + 384 len 64], sub_7dce34f7[address(arg1)].field_2048, sub_7dce34f7[address(arg1)].field_2304, arg1
    stor7 = 0
}

function sub_25c29be0(?) {
    require calldata.size - 4 >= 288
    require calldata.size > 131
    require 164 <= calldata.size
    idx = 0
    s = 100
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 195
    require 228 <= calldata.size
    idx = 0
    s = 164
    t = 160
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[260] <= test266151307()
    require calldata.size > cd[260] + 35
    require ('cd', 260).length <= test266151307()
    require ceil32(('cd', 260).length) + 256 >= 224 and ceil32(('cd', 260).length) + 256 <= test266151307()
    mem[224] = ('cd', 260).length
    require cd[260] + ('cd', 260).length + 36 <= calldata.size
    mem[256 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
    mem[('cd', 260).length + 256] = 0
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    if hubAddress == msg.sender:
        mem[0] = cd[68]
        mem[32] = sha3(address(cd[36]), sha3(address(cd[4]), 6))
        if block.timestamp >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1280:
            revert with 0, 'thread closing time must not have passed'
        if cd[228] <= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024:
            revert with 0, 'thread txCount must be higher than the current thread txCount'
        require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0
        require mem[128] + mem[96] >= mem[96]
        if mem[128] + mem[96] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0:
            revert with 0, 'updated wei balances must match sum of thread wei balances'
        require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512
        require mem[192] + mem[160] >= mem[160]
        if mem[192] + mem[160] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512:
            revert with 0, 'updated token balances must match sum of thread token balances'
        if mem[128] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256:
            revert with 0, 'receiver balances may never decrease'
        if mem[192] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768:
            revert with 0, 'receiver balances may never decrease'
        mem[ceil32(('cd', 260).length) + 256] = 0
        if address(cd[36]) == address(cd[4]):
            revert with 0, 'sender can not be receiver'
        if hubAddress == address(cd[4]):
            revert with 0, 'hub can not be sender or receiver'
        if hubAddress == address(cd[36]):
            revert with 0, 'hub can not be sender or receiver'
        if this.address == address(cd[4]):
            revert with 0, 'channel manager can not be sender or receiver'
        if this.address == address(cd[36]):
            revert with 0, 'channel manager can not be sender or receiver'
        mem[ceil32(('cd', 260).length) + 320] = address(this.address)
        mem[ceil32(('cd', 260).length) + 340] = address(cd[4])
        mem[ceil32(('cd', 260).length) + 360] = address(cd[36])
        mem[ceil32(('cd', 260).length) + 380] = cd[68]
        mem[ceil32(('cd', 260).length) + 412 len 64] = mem[96 len 64]
        mem[ceil32(('cd', 260).length) + 476 len 64] = mem[160 len 64]
        mem[ceil32(('cd', 260).length) + 540] = cd[228]
        mem[ceil32(('cd', 260).length) + 288] = 252
        mem[ceil32(('cd', 260).length) + 572 len 224] = this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228])
        mem[ceil32(('cd', 260).length) + 796 len 28] = Mask(224, 0, cd[228])
        mem[ceil32(('cd', 260).length) + 576] = sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
        mem[ceil32(('cd', 260).length) + 608] = 96
        mem[ceil32(('cd', 260).length) + 672] = ('cd', 260).length
        mem[ceil32(('cd', 260).length) + 704 len ceil32(('cd', 260).length)] = call.data[cd[260] + 36 len ('cd', 260).length], mem[('cd', 260).length + 256 len ceil32(('cd', 260).length) - ('cd', 260).length]
        if ceil32(('cd', 260).length) <= ('cd', 260).length:
            mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
            require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
            delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                 gas gas_remaining wei
                args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
            mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
            require return_data.size >= 32
            if not delegate.return_data[0]:
                revert with 0, 'signature invalid'
            if cd[228]:
                s = 0
                idx = 96
                while 160 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                s = 2
                idx = 160
                while 224 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 4
                while 4 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                idx = 0
                s = 0
                t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                idx = 0
                s = 2
                t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
            else:
                idx = 64
                s = 0
                t = 0
                while idx <= 0:
                    _738 = mem[idx + ceil32(('cd', 260).length) + 256]
                    if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                        _749 = mem[64]
                        mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                        mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        _750 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _751 = mem[_750]
                        t = _750 + 32
                        v = _749 + 96
                        u = mem[_750]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_749 + floor32(mem[_750]) + 96] = mem[_750 + floor32(mem[_750]) + -(mem[_750] % 32) + 64 len mem[_750] % 32] or Mask(8 * -(mem[_750] % 32) + 32, -(8 * -(mem[_750] % 32) + 32) + 256, mem[_749 + floor32(mem[_750]) + 96])
                        t = t + 32
                        v = _738
                        u = sha3(mem[mem[64] len _751 + _749 + -mem[64] + 96])
                        continue 
                    _752 = mem[64]
                    mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                    mem[mem[64] + 64] = _738
                    _753 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _754 = mem[_753]
                    t = _753 + 32
                    v = _752 + 96
                    u = mem[_753]
                    while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        u = u - 32
                        continue 
                    mem[_752 + floor32(mem[_753]) + 96] = mem[_753 + floor32(mem[_753]) + -(mem[_753] % 32) + 64 len mem[_753] % 32] or Mask(8 * -(mem[_753] % 32) + 32, -(8 * -(mem[_753] % 32) + 32) + 256, mem[_752 + floor32(mem[_753]) + 96])
                    t = t + 32
                    v = _738
                    u = sha3(mem[mem[64] len _754 + _752 + -mem[64] + 96])
                    continue 
                if t:
                    revert with 0, 'initial thread state is not contained in threadRoot'
                s = 0
                idx = 96
                while 160 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                s = 2
                idx = 160
                while 224 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 4
                while 4 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                _1019 = mem[64]
                mem[mem[64]] = cd[68]
                mem[mem[64] + 32] = msg.sender
                idx = 0
                s = 0
                t = mem[64] + 64
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                idx = 0
                s = 2
                t = _1019 + 128
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[_1019 + 192] = cd[228]
                emit 0x738f3bb8: mem[mem[64] len _1019 + -mem[64] + 224], address(cd[4]), address(cd[36])
        else:
            mem[ceil32(('cd', 260).length) + ('cd', 260).length + 704] = 0
            mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
            require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
            delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                 gas gas_remaining wei
                args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
            mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
            require return_data.size >= 32
            if not delegate.return_data[0]:
                revert with 0, 'signature invalid'
            if cd[228]:
                s = 0
                idx = 96
                while 160 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                s = 2
                idx = 160
                while 224 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 4
                while 4 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                idx = 0
                s = 0
                t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                idx = 0
                s = 2
                t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
            else:
                idx = 64
                s = 0
                t = 0
                while idx <= 0:
                    _740 = mem[idx + ceil32(('cd', 260).length) + 256]
                    if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                        _755 = mem[64]
                        mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                        mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        _756 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _757 = mem[_756]
                        t = _756 + 32
                        v = _755 + 96
                        u = mem[_756]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_755 + floor32(mem[_756]) + 96] = mem[_756 + floor32(mem[_756]) + -(mem[_756] % 32) + 64 len mem[_756] % 32] or Mask(8 * -(mem[_756] % 32) + 32, -(8 * -(mem[_756] % 32) + 32) + 256, mem[_755 + floor32(mem[_756]) + 96])
                        t = t + 32
                        v = _740
                        u = sha3(mem[mem[64] len _757 + _755 + -mem[64] + 96])
                        continue 
                    _758 = mem[64]
                    mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                    mem[mem[64] + 64] = _740
                    _759 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    _760 = mem[_759]
                    t = _759 + 32
                    v = _758 + 96
                    u = mem[_759]
                    while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        u = u - 32
                        continue 
                    mem[_758 + floor32(mem[_759]) + 96] = mem[_759 + floor32(mem[_759]) + -(mem[_759] % 32) + 64 len mem[_759] % 32] or Mask(8 * -(mem[_759] % 32) + 32, -(8 * -(mem[_759] % 32) + 32) + 256, mem[_758 + floor32(mem[_759]) + 96])
                    t = t + 32
                    v = _740
                    u = sha3(mem[mem[64] len _760 + _758 + -mem[64] + 96])
                    continue 
                if t:
                    revert with 0, 'initial thread state is not contained in threadRoot'
                s = 0
                idx = 96
                while 160 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 2
                while 2 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                s = 2
                idx = 160
                while 224 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = 4
                while 4 > idx:
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                _1020 = mem[64]
                mem[mem[64]] = cd[68]
                mem[mem[64] + 32] = msg.sender
                idx = 0
                s = 0
                t = mem[64] + 64
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                idx = 0
                s = 2
                t = _1020 + 128
                while idx < 2:
                    mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                    idx = idx + 1
                    s = s + 1
                    t = t + 32
                    continue 
                mem[_1020 + 192] = cd[228]
                emit 0x738f3bb8: mem[mem[64] len _1020 + -mem[64] + 224], address(cd[4]), address(cd[36])
    else:
        if address(cd[4]) == msg.sender:
            mem[0] = cd[68]
            mem[32] = sha3(address(cd[36]), sha3(address(cd[4]), 6))
            if block.timestamp >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1280:
                revert with 0, 'thread closing time must not have passed'
            if cd[228] <= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024:
                revert with 0, 'thread txCount must be higher than the current thread txCount'
            require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0
            require mem[128] + mem[96] >= mem[96]
            if mem[128] + mem[96] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0:
                revert with 0, 'updated wei balances must match sum of thread wei balances'
            require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512
            require mem[192] + mem[160] >= mem[160]
            if mem[192] + mem[160] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512:
                revert with 0, 'updated token balances must match sum of thread token balances'
            if mem[128] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256:
                revert with 0, 'receiver balances may never decrease'
            if mem[192] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768:
                revert with 0, 'receiver balances may never decrease'
            mem[ceil32(('cd', 260).length) + 256] = 0
            if address(cd[36]) == address(cd[4]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[4]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[4]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + 340] = address(cd[4])
            mem[ceil32(('cd', 260).length) + 360] = address(cd[36])
            mem[ceil32(('cd', 260).length) + 380] = cd[68]
            mem[ceil32(('cd', 260).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + 540] = cd[228]
            mem[ceil32(('cd', 260).length) + 288] = 252
            mem[ceil32(('cd', 260).length) + 572 len 224] = this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228])
            mem[ceil32(('cd', 260).length) + 796 len 28] = Mask(224, 0, cd[228])
            mem[ceil32(('cd', 260).length) + 576] = sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
            mem[ceil32(('cd', 260).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + 672] = ('cd', 260).length
            mem[ceil32(('cd', 260).length) + 704 len ceil32(('cd', 260).length)] = call.data[cd[260] + 36 len ('cd', 260).length], mem[('cd', 260).length + 256 len ceil32(('cd', 260).length) - ('cd', 260).length]
            if ceil32(('cd', 260).length) <= ('cd', 260).length:
                mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
                mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if cd[228]:
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    idx = 0
                    s = 0
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
                else:
                    idx = 64
                    s = 0
                    t = 0
                    while idx <= 0:
                        _742 = mem[idx + ceil32(('cd', 260).length) + 256]
                        if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                            _761 = mem[64]
                            mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                            mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                            _762 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _763 = mem[_762]
                            t = _762 + 32
                            v = _761 + 96
                            u = mem[_762]
                            while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_761 + floor32(mem[_762]) + 96] = mem[_762 + floor32(mem[_762]) + -(mem[_762] % 32) + 64 len mem[_762] % 32] or Mask(8 * -(mem[_762] % 32) + 32, -(8 * -(mem[_762] % 32) + 32) + 256, mem[_761 + floor32(mem[_762]) + 96])
                            t = t + 32
                            v = _742
                            u = sha3(mem[mem[64] len _763 + _761 + -mem[64] + 96])
                            continue 
                        _764 = mem[64]
                        mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        mem[mem[64] + 64] = _742
                        _765 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _766 = mem[_765]
                        t = _765 + 32
                        v = _764 + 96
                        u = mem[_765]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_764 + floor32(mem[_765]) + 96] = mem[_765 + floor32(mem[_765]) + -(mem[_765] % 32) + 64 len mem[_765] % 32] or Mask(8 * -(mem[_765] % 32) + 32, -(8 * -(mem[_765] % 32) + 32) + 256, mem[_764 + floor32(mem[_765]) + 96])
                        t = t + 32
                        v = _742
                        u = sha3(mem[mem[64] len _766 + _764 + -mem[64] + 96])
                        continue 
                    if t:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    _1021 = mem[64]
                    mem[mem[64]] = cd[68]
                    mem[mem[64] + 32] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 64
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _1021 + 128
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_1021 + 192] = cd[228]
                    emit 0x738f3bb8: mem[mem[64] len _1021 + -mem[64] + 224], address(cd[4]), address(cd[36])
            else:
                mem[ceil32(('cd', 260).length) + ('cd', 260).length + 704] = 0
                mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
                mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if cd[228]:
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    idx = 0
                    s = 0
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
                else:
                    idx = 64
                    s = 0
                    t = 0
                    while idx <= 0:
                        _744 = mem[idx + ceil32(('cd', 260).length) + 256]
                        if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                            _767 = mem[64]
                            mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                            mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                            _768 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _769 = mem[_768]
                            t = _768 + 32
                            v = _767 + 96
                            u = mem[_768]
                            while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_767 + floor32(mem[_768]) + 96] = mem[_768 + floor32(mem[_768]) + -(mem[_768] % 32) + 64 len mem[_768] % 32] or Mask(8 * -(mem[_768] % 32) + 32, -(8 * -(mem[_768] % 32) + 32) + 256, mem[_767 + floor32(mem[_768]) + 96])
                            t = t + 32
                            v = _744
                            u = sha3(mem[mem[64] len _769 + _767 + -mem[64] + 96])
                            continue 
                        _770 = mem[64]
                        mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        mem[mem[64] + 64] = _744
                        _771 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _772 = mem[_771]
                        t = _771 + 32
                        v = _770 + 96
                        u = mem[_771]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_770 + floor32(mem[_771]) + 96] = mem[_771 + floor32(mem[_771]) + -(mem[_771] % 32) + 64 len mem[_771] % 32] or Mask(8 * -(mem[_771] % 32) + 32, -(8 * -(mem[_771] % 32) + 32) + 256, mem[_770 + floor32(mem[_771]) + 96])
                        t = t + 32
                        v = _744
                        u = sha3(mem[mem[64] len _772 + _770 + -mem[64] + 96])
                        continue 
                    if t:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    _1022 = mem[64]
                    mem[mem[64]] = cd[68]
                    mem[mem[64] + 32] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 64
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _1022 + 128
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_1022 + 192] = cd[228]
                    emit 0x738f3bb8: mem[mem[64] len _1022 + -mem[64] + 224], address(cd[4]), address(cd[36])
        else:
            if address(cd[36]) != msg.sender:
                revert with 0, 'only hub, sender, or receiver can call this function'
            mem[0] = cd[68]
            mem[32] = sha3(address(cd[36]), sha3(address(cd[4]), 6))
            if block.timestamp >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1280:
                revert with 0, 'thread closing time must not have passed'
            if cd[228] <= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024:
                revert with 0, 'thread txCount must be higher than the current thread txCount'
            require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0
            require mem[128] + mem[96] >= mem[96]
            if mem[128] + mem[96] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_0:
                revert with 0, 'updated wei balances must match sum of thread wei balances'
            require sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512 >= sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512
            require mem[192] + mem[160] >= mem[160]
            if mem[192] + mem[160] != sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768 + sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_512:
                revert with 0, 'updated token balances must match sum of thread token balances'
            if mem[128] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_256:
                revert with 0, 'receiver balances may never decrease'
            if mem[192] < sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_768:
                revert with 0, 'receiver balances may never decrease'
            mem[ceil32(('cd', 260).length) + 256] = 0
            if address(cd[36]) == address(cd[4]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[4]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[4]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + 340] = address(cd[4])
            mem[ceil32(('cd', 260).length) + 360] = address(cd[36])
            mem[ceil32(('cd', 260).length) + 380] = cd[68]
            mem[ceil32(('cd', 260).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + 540] = cd[228]
            mem[ceil32(('cd', 260).length) + 288] = 252
            mem[ceil32(('cd', 260).length) + 572 len 224] = this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228])
            mem[ceil32(('cd', 260).length) + 796 len 28] = Mask(224, 0, cd[228])
            mem[ceil32(('cd', 260).length) + 576] = sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
            mem[ceil32(('cd', 260).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + 672] = ('cd', 260).length
            mem[ceil32(('cd', 260).length) + 704 len ceil32(('cd', 260).length)] = call.data[cd[260] + 36 len ('cd', 260).length], mem[('cd', 260).length + 256 len ceil32(('cd', 260).length) - ('cd', 260).length]
            if ceil32(('cd', 260).length) <= ('cd', 260).length:
                mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
                mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if cd[228]:
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    idx = 0
                    s = 0
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
                else:
                    idx = 64
                    s = 0
                    t = 0
                    while idx <= 0:
                        _746 = mem[idx + ceil32(('cd', 260).length) + 256]
                        if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                            _773 = mem[64]
                            mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                            mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                            _774 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _775 = mem[_774]
                            t = _774 + 32
                            v = _773 + 96
                            u = mem[_774]
                            while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_773 + floor32(mem[_774]) + 96] = mem[_774 + floor32(mem[_774]) + -(mem[_774] % 32) + 64 len mem[_774] % 32] or Mask(8 * -(mem[_774] % 32) + 32, -(8 * -(mem[_774] % 32) + 32) + 256, mem[_773 + floor32(mem[_774]) + 96])
                            t = t + 32
                            v = _746
                            u = sha3(mem[mem[64] len _775 + _773 + -mem[64] + 96])
                            continue 
                        _776 = mem[64]
                        mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        mem[mem[64] + 64] = _746
                        _777 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _778 = mem[_777]
                        t = _777 + 32
                        v = _776 + 96
                        u = mem[_777]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_776 + floor32(mem[_777]) + 96] = mem[_777 + floor32(mem[_777]) + -(mem[_777] % 32) + 64 len mem[_777] % 32] or Mask(8 * -(mem[_777] % 32) + 32, -(8 * -(mem[_777] % 32) + 32) + 256, mem[_776 + floor32(mem[_777]) + 96])
                        t = t + 32
                        v = _746
                        u = sha3(mem[mem[64] len _778 + _776 + -mem[64] + 96])
                        continue 
                    if t:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    _1023 = mem[64]
                    mem[mem[64]] = cd[68]
                    mem[mem[64] + 32] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 64
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _1023 + 128
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_1023 + 192] = cd[228]
                    emit 0x738f3bb8: mem[mem[64] len _1023 + -mem[64] + 224], address(cd[4]), address(cd[36])
            else:
                mem[ceil32(('cd', 260).length) + ('cd', 260).length + 704] = 0
                mem[ceil32(('cd', 260).length) + 640] = address(cd[4])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])), Array(len=('cd', 260).length, data=call.data[cd[260] + 36 len ('cd', 260).length]), address(cd[4])
                mem[ceil32(('cd', 260).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if cd[228]:
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    idx = 0
                    s = 0
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 636
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = ceil32(('cd', 260).length) + ceil32(return_data.size) + 700
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    emit 0x738f3bb8: cd[68], msg.sender, mem[ceil32(('cd', 260).length) + ceil32(return_data.size) + 636 len 128], cd[228], address(cd[4]), address(cd[36])
                else:
                    idx = 64
                    s = 0
                    t = 0
                    while idx <= 0:
                        _748 = mem[idx + ceil32(('cd', 260).length) + 256]
                        if t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= mem[idx + ceil32(('cd', 260).length) + 256]:
                            _779 = mem[64]
                            mem[mem[64] + 32] = mem[idx + ceil32(('cd', 260).length) + 256]
                            mem[mem[64] + 64] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                            _780 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _781 = mem[_780]
                            t = _780 + 32
                            v = _779 + 96
                            u = mem[_780]
                            while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_779 + floor32(mem[_780]) + 96] = mem[_780 + floor32(mem[_780]) + -(mem[_780] % 32) + 64 len mem[_780] % 32] or Mask(8 * -(mem[_780] % 32) + 32, -(8 * -(mem[_780] % 32) + 32) + 256, mem[_779 + floor32(mem[_780]) + 96])
                            t = t + 32
                            v = _748
                            u = sha3(mem[mem[64] len _781 + _779 + -mem[64] + 96])
                            continue 
                        _782 = mem[64]
                        mem[mem[64] + 32] = t + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228]))
                        mem[mem[64] + 64] = _748
                        _783 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _784 = mem[_783]
                        t = _783 + 32
                        v = _782 + 96
                        u = mem[_783]
                        while u + sha3(this.address, address(cd[4]), address(cd[36]), cd[68], mem[96 len 64], mem[160 len 64], uint32(cd[228]), Mask(224, 0, cd[228])) >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_782 + floor32(mem[_783]) + 96] = mem[_783 + floor32(mem[_783]) + -(mem[_783] % 32) + 64 len mem[_783] % 32] or Mask(8 * -(mem[_783] % 32) + 32, -(8 * -(mem[_783] % 32) + 32) + 256, mem[_782 + floor32(mem[_783]) + 96])
                        t = t + 32
                        v = _748
                        u = sha3(mem[mem[64] len _784 + _782 + -mem[64] + 96])
                        continue 
                    if t:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]].field_1024 = cd[228]
                    _1024 = mem[64]
                    mem[mem[64]] = cd[68]
                    mem[mem[64] + 32] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 64
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _1024 + 128
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[4])][address(cd[36])][cd[68]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_1024 + 192] = cd[228]
                    emit 0x738f3bb8: mem[mem[64] len _1024 + -mem[64] + 224], address(cd[4]), address(cd[36])
    stor7 = 0
}

function sub_c8b2f7d6(?) {
    require calldata.size - 4 >= 320
    require calldata.size > 163
    require 196 <= calldata.size
    idx = 0
    s = 132
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 227
    require 260 <= calldata.size
    idx = 0
    s = 196
    t = 160
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[260] <= test266151307()
    require calldata.size > cd[260] + 35
    require ('cd', 260).length <= test266151307()
    require ceil32(('cd', 260).length) + 256 >= 224 and ceil32(('cd', 260).length) + 256 <= test266151307()
    mem[224] = ('cd', 260).length
    require cd[260] + ('cd', 260).length + 36 <= calldata.size
    mem[256 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
    mem[('cd', 260).length + 256] = 0
    require cd[292] <= test266151307()
    require calldata.size > cd[292] + 35
    require ('cd', 292).length <= test266151307()
    require ceil32(('cd', 292).length) + 288 >= 256 and ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 288 <= test266151307()
    mem[ceil32(('cd', 260).length) + 256] = ('cd', 292).length
    require cd[292] + ('cd', 292).length + 36 <= calldata.size
    mem[ceil32(('cd', 260).length) + 288 len ('cd', 292).length] = call.data[cd[292] + 36 len ('cd', 292).length]
    mem[('cd', 292).length + ceil32(('cd', 260).length) + 288] = 0
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    require sub_7dce34f7[address(cd[4])].field_3072 <= 2
    if sub_7dce34f7[address(cd[4])].field_3072 != 2:
        revert with 0, 'channel must be in thread dispue phase'
    if msg.sender == hubAddress:
        if address(cd[4]) == address(cd[36]):
            if mem[128]:
                revert with 0, 'initial receiver balances must be zero'
            if mem[192]:
                revert with 0, 'initial receiver balances must be zero'
            mem[0] = cd[100]
            mem[32] = sha3(address(cd[68]), sha3(address(cd[36]), 6))
            if sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280:
                revert with 0, 'thread closing time must be zero'
            if address(cd[68]) == address(cd[36]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[68]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[68]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 340] = address(cd[36])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 360] = address(cd[68])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 380] = cd[100]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 540] = 0
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 288] = 252
            mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] and 256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1 or mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 320] and !(256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1)
            _605 = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 576] = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 672] = ('cd', 292).length
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 704 len ceil32(('cd', 292).length)] = call.data[cd[292] + 36 len ('cd', 292).length], mem[ceil32(('cd', 260).length) + ('cd', 292).length + 288 len ceil32(('cd', 292).length) - ('cd', 292).length]
            if ceil32(('cd', 292).length) <= ('cd', 292).length:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _605, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _605
                    while idx <= ('cd', 260).length:
                        _1530 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1546 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1547 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1548 = mem[_1547]
                            t = _1547 + 32
                            v = _1546 + 96
                            u = mem[_1547]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1546 + floor32(mem[_1547]) + 96] = mem[_1547 + floor32(mem[_1547]) + -(mem[_1547] % 32) + 64 len mem[_1547] % 32] or Mask(8 * -(mem[_1547] % 32) + 32, -(8 * -(mem[_1547] % 32) + 32) + 256, mem[_1546 + floor32(mem[_1547]) + 96])
                            t = t + 32
                            v = _1530
                            u = sha3(mem[mem[64] len _1548 + _1546 + -mem[64] + 96])
                            continue 
                        _1549 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1530
                        _1550 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1551 = mem[_1550]
                        t = _1550 + 32
                        v = _1549 + 96
                        u = mem[_1550]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1549 + floor32(mem[_1550]) + 96] = mem[_1550 + floor32(mem[_1550]) + -(mem[_1550] % 32) + 64 len mem[_1550] % 32] or Mask(8 * -(mem[_1550] % 32) + 32, -(8 * -(mem[_1550] % 32) + 32) + 256, mem[_1549 + floor32(mem[_1550]) + 96])
                        t = t + 32
                        v = _1530
                        u = sha3(mem[mem[64] len _1551 + _1549 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2282 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2282 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2282 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2282 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _605
                    while idx <= ('cd', 260).length:
                        _1531 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1552 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1553 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1554 = mem[_1553]
                            t = _1553 + 32
                            v = _1552 + 96
                            u = mem[_1553]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1552 + floor32(mem[_1553]) + 96] = mem[_1553 + floor32(mem[_1553]) + -(mem[_1553] % 32) + 64 len mem[_1553] % 32] or Mask(8 * -(mem[_1553] % 32) + 32, -(8 * -(mem[_1553] % 32) + 32) + 256, mem[_1552 + floor32(mem[_1553]) + 96])
                            t = t + 32
                            v = _1531
                            u = sha3(mem[mem[64] len _1554 + _1552 + -mem[64] + 96])
                            continue 
                        _1555 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1531
                        _1556 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1557 = mem[_1556]
                        t = _1556 + 32
                        v = _1555 + 96
                        u = mem[_1556]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1555 + floor32(mem[_1556]) + 96] = mem[_1556 + floor32(mem[_1556]) + -(mem[_1556] % 32) + 64 len mem[_1556] % 32] or Mask(8 * -(mem[_1556] % 32) + 32, -(8 * -(mem[_1556] % 32) + 32) + 256, mem[_1555 + floor32(mem[_1556]) + 96])
                        t = t + 32
                        v = _1531
                        u = sha3(mem[mem[64] len _1557 + _1555 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2285 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2285 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2285 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2285 + -mem[64] + 256], address(cd[36]), address(cd[68])
            else:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ('cd', 292).length + 704] = 0
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _605, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _605
                    while idx <= ('cd', 260).length:
                        _1532 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1558 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1559 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1560 = mem[_1559]
                            t = _1559 + 32
                            v = _1558 + 96
                            u = mem[_1559]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1558 + floor32(mem[_1559]) + 96] = mem[_1559 + floor32(mem[_1559]) + -(mem[_1559] % 32) + 64 len mem[_1559] % 32] or Mask(8 * -(mem[_1559] % 32) + 32, -(8 * -(mem[_1559] % 32) + 32) + 256, mem[_1558 + floor32(mem[_1559]) + 96])
                            t = t + 32
                            v = _1532
                            u = sha3(mem[mem[64] len _1560 + _1558 + -mem[64] + 96])
                            continue 
                        _1561 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1532
                        _1562 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1563 = mem[_1562]
                        t = _1562 + 32
                        v = _1561 + 96
                        u = mem[_1562]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1561 + floor32(mem[_1562]) + 96] = mem[_1562 + floor32(mem[_1562]) + -(mem[_1562] % 32) + 64 len mem[_1562] % 32] or Mask(8 * -(mem[_1562] % 32) + 32, -(8 * -(mem[_1562] % 32) + 32) + 256, mem[_1561 + floor32(mem[_1562]) + 96])
                        t = t + 32
                        v = _1532
                        u = sha3(mem[mem[64] len _1563 + _1561 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2288 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2288 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2288 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2288 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _605
                    while idx <= ('cd', 260).length:
                        _1533 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1564 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1565 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1566 = mem[_1565]
                            t = _1565 + 32
                            v = _1564 + 96
                            u = mem[_1565]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1564 + floor32(mem[_1565]) + 96] = mem[_1565 + floor32(mem[_1565]) + -(mem[_1565] % 32) + 64 len mem[_1565] % 32] or Mask(8 * -(mem[_1565] % 32) + 32, -(8 * -(mem[_1565] % 32) + 32) + 256, mem[_1564 + floor32(mem[_1565]) + 96])
                            t = t + 32
                            v = _1533
                            u = sha3(mem[mem[64] len _1566 + _1564 + -mem[64] + 96])
                            continue 
                        _1567 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1533
                        _1568 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1569 = mem[_1568]
                        t = _1568 + 32
                        v = _1567 + 96
                        u = mem[_1568]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1567 + floor32(mem[_1568]) + 96] = mem[_1568 + floor32(mem[_1568]) + -(mem[_1568] % 32) + 64 len mem[_1568] % 32] or Mask(8 * -(mem[_1568] % 32) + 32, -(8 * -(mem[_1568] % 32) + 32) + 256, mem[_1567 + floor32(mem[_1568]) + 96])
                        t = t + 32
                        v = _1533
                        u = sha3(mem[mem[64] len _1569 + _1567 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2291 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2291 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2291 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2291 + -mem[64] + 256], address(cd[36]), address(cd[68])
        else:
            if address(cd[4]) != address(cd[68]):
                revert with 0, 'user must be thread sender or receiver'
            if mem[128]:
                revert with 0, 'initial receiver balances must be zero'
            if mem[192]:
                revert with 0, 'initial receiver balances must be zero'
            mem[0] = cd[100]
            mem[32] = sha3(address(cd[68]), sha3(address(cd[36]), 6))
            if sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280:
                revert with 0, 'thread closing time must be zero'
            if address(cd[68]) == address(cd[36]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[68]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[68]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 340] = address(cd[36])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 360] = address(cd[68])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 380] = cd[100]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 540] = 0
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 288] = 252
            mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] and 256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1 or mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 320] and !(256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1)
            _610 = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 576] = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 672] = ('cd', 292).length
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 704 len ceil32(('cd', 292).length)] = call.data[cd[292] + 36 len ('cd', 292).length], mem[ceil32(('cd', 260).length) + ('cd', 292).length + 288 len ceil32(('cd', 292).length) - ('cd', 292).length]
            if ceil32(('cd', 292).length) <= ('cd', 292).length:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _610, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _610
                    while idx <= ('cd', 260).length:
                        _1534 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1570 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1571 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1572 = mem[_1571]
                            t = _1571 + 32
                            v = _1570 + 96
                            u = mem[_1571]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1570 + floor32(mem[_1571]) + 96] = mem[_1571 + floor32(mem[_1571]) + -(mem[_1571] % 32) + 64 len mem[_1571] % 32] or Mask(8 * -(mem[_1571] % 32) + 32, -(8 * -(mem[_1571] % 32) + 32) + 256, mem[_1570 + floor32(mem[_1571]) + 96])
                            t = t + 32
                            v = _1534
                            u = sha3(mem[mem[64] len _1572 + _1570 + -mem[64] + 96])
                            continue 
                        _1573 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1534
                        _1574 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1575 = mem[_1574]
                        t = _1574 + 32
                        v = _1573 + 96
                        u = mem[_1574]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1573 + floor32(mem[_1574]) + 96] = mem[_1574 + floor32(mem[_1574]) + -(mem[_1574] % 32) + 64 len mem[_1574] % 32] or Mask(8 * -(mem[_1574] % 32) + 32, -(8 * -(mem[_1574] % 32) + 32) + 256, mem[_1573 + floor32(mem[_1574]) + 96])
                        t = t + 32
                        v = _1534
                        u = sha3(mem[mem[64] len _1575 + _1573 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2294 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2294 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2294 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2294 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _610
                    while idx <= ('cd', 260).length:
                        _1535 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1576 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1577 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1578 = mem[_1577]
                            t = _1577 + 32
                            v = _1576 + 96
                            u = mem[_1577]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1576 + floor32(mem[_1577]) + 96] = mem[_1577 + floor32(mem[_1577]) + -(mem[_1577] % 32) + 64 len mem[_1577] % 32] or Mask(8 * -(mem[_1577] % 32) + 32, -(8 * -(mem[_1577] % 32) + 32) + 256, mem[_1576 + floor32(mem[_1577]) + 96])
                            t = t + 32
                            v = _1535
                            u = sha3(mem[mem[64] len _1578 + _1576 + -mem[64] + 96])
                            continue 
                        _1579 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1535
                        _1580 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1581 = mem[_1580]
                        t = _1580 + 32
                        v = _1579 + 96
                        u = mem[_1580]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1579 + floor32(mem[_1580]) + 96] = mem[_1580 + floor32(mem[_1580]) + -(mem[_1580] % 32) + 64 len mem[_1580] % 32] or Mask(8 * -(mem[_1580] % 32) + 32, -(8 * -(mem[_1580] % 32) + 32) + 256, mem[_1579 + floor32(mem[_1580]) + 96])
                        t = t + 32
                        v = _1535
                        u = sha3(mem[mem[64] len _1581 + _1579 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2297 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2297 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2297 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2297 + -mem[64] + 256], address(cd[36]), address(cd[68])
            else:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ('cd', 292).length + 704] = 0
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _610, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _610
                    while idx <= ('cd', 260).length:
                        _1536 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1582 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1583 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1584 = mem[_1583]
                            t = _1583 + 32
                            v = _1582 + 96
                            u = mem[_1583]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1582 + floor32(mem[_1583]) + 96] = mem[_1583 + floor32(mem[_1583]) + -(mem[_1583] % 32) + 64 len mem[_1583] % 32] or Mask(8 * -(mem[_1583] % 32) + 32, -(8 * -(mem[_1583] % 32) + 32) + 256, mem[_1582 + floor32(mem[_1583]) + 96])
                            t = t + 32
                            v = _1536
                            u = sha3(mem[mem[64] len _1584 + _1582 + -mem[64] + 96])
                            continue 
                        _1585 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1536
                        _1586 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1587 = mem[_1586]
                        t = _1586 + 32
                        v = _1585 + 96
                        u = mem[_1586]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1585 + floor32(mem[_1586]) + 96] = mem[_1586 + floor32(mem[_1586]) + -(mem[_1586] % 32) + 64 len mem[_1586] % 32] or Mask(8 * -(mem[_1586] % 32) + 32, -(8 * -(mem[_1586] % 32) + 32) + 256, mem[_1585 + floor32(mem[_1586]) + 96])
                        t = t + 32
                        v = _1536
                        u = sha3(mem[mem[64] len _1587 + _1585 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2300 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2300 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2300 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2300 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _610
                    while idx <= ('cd', 260).length:
                        _1537 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1588 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1589 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1590 = mem[_1589]
                            t = _1589 + 32
                            v = _1588 + 96
                            u = mem[_1589]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1588 + floor32(mem[_1589]) + 96] = mem[_1589 + floor32(mem[_1589]) + -(mem[_1589] % 32) + 64 len mem[_1589] % 32] or Mask(8 * -(mem[_1589] % 32) + 32, -(8 * -(mem[_1589] % 32) + 32) + 256, mem[_1588 + floor32(mem[_1589]) + 96])
                            t = t + 32
                            v = _1537
                            u = sha3(mem[mem[64] len _1590 + _1588 + -mem[64] + 96])
                            continue 
                        _1591 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1537
                        _1592 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1593 = mem[_1592]
                        t = _1592 + 32
                        v = _1591 + 96
                        u = mem[_1592]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1591 + floor32(mem[_1592]) + 96] = mem[_1592 + floor32(mem[_1592]) + -(mem[_1592] % 32) + 64 len mem[_1592] % 32] or Mask(8 * -(mem[_1592] % 32) + 32, -(8 * -(mem[_1592] % 32) + 32) + 256, mem[_1591 + floor32(mem[_1592]) + 96])
                        t = t + 32
                        v = _1537
                        u = sha3(mem[mem[64] len _1593 + _1591 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2303 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2303 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2303 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2303 + -mem[64] + 256], address(cd[36]), address(cd[68])
    else:
        if address(cd[4]) != msg.sender:
            revert with 0, 'thread exit initiator must be user or hub'
        if address(cd[4]) == address(cd[36]):
            if mem[128]:
                revert with 0, 'initial receiver balances must be zero'
            if mem[192]:
                revert with 0, 'initial receiver balances must be zero'
            mem[0] = cd[100]
            mem[32] = sha3(address(cd[68]), sha3(address(cd[36]), 6))
            if sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280:
                revert with 0, 'thread closing time must be zero'
            if address(cd[68]) == address(cd[36]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[68]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[68]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 340] = address(cd[36])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 360] = address(cd[68])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 380] = cd[100]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 540] = 0
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 288] = 252
            mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] and 256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1 or mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 320] and !(256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1)
            _615 = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 576] = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 672] = ('cd', 292).length
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 704 len ceil32(('cd', 292).length)] = call.data[cd[292] + 36 len ('cd', 292).length], mem[ceil32(('cd', 260).length) + ('cd', 292).length + 288 len ceil32(('cd', 292).length) - ('cd', 292).length]
            if ceil32(('cd', 292).length) <= ('cd', 292).length:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _615, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _615
                    while idx <= ('cd', 260).length:
                        _1538 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1594 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1595 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1596 = mem[_1595]
                            t = _1595 + 32
                            v = _1594 + 96
                            u = mem[_1595]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1594 + floor32(mem[_1595]) + 96] = mem[_1595 + floor32(mem[_1595]) + -(mem[_1595] % 32) + 64 len mem[_1595] % 32] or Mask(8 * -(mem[_1595] % 32) + 32, -(8 * -(mem[_1595] % 32) + 32) + 256, mem[_1594 + floor32(mem[_1595]) + 96])
                            t = t + 32
                            v = _1538
                            u = sha3(mem[mem[64] len _1596 + _1594 + -mem[64] + 96])
                            continue 
                        _1597 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1538
                        _1598 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1599 = mem[_1598]
                        t = _1598 + 32
                        v = _1597 + 96
                        u = mem[_1598]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1597 + floor32(mem[_1598]) + 96] = mem[_1598 + floor32(mem[_1598]) + -(mem[_1598] % 32) + 64 len mem[_1598] % 32] or Mask(8 * -(mem[_1598] % 32) + 32, -(8 * -(mem[_1598] % 32) + 32) + 256, mem[_1597 + floor32(mem[_1598]) + 96])
                        t = t + 32
                        v = _1538
                        u = sha3(mem[mem[64] len _1599 + _1597 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2306 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2306 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2306 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2306 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _615
                    while idx <= ('cd', 260).length:
                        _1539 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1600 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1601 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1602 = mem[_1601]
                            t = _1601 + 32
                            v = _1600 + 96
                            u = mem[_1601]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1600 + floor32(mem[_1601]) + 96] = mem[_1601 + floor32(mem[_1601]) + -(mem[_1601] % 32) + 64 len mem[_1601] % 32] or Mask(8 * -(mem[_1601] % 32) + 32, -(8 * -(mem[_1601] % 32) + 32) + 256, mem[_1600 + floor32(mem[_1601]) + 96])
                            t = t + 32
                            v = _1539
                            u = sha3(mem[mem[64] len _1602 + _1600 + -mem[64] + 96])
                            continue 
                        _1603 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1539
                        _1604 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1605 = mem[_1604]
                        t = _1604 + 32
                        v = _1603 + 96
                        u = mem[_1604]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1603 + floor32(mem[_1604]) + 96] = mem[_1604 + floor32(mem[_1604]) + -(mem[_1604] % 32) + 64 len mem[_1604] % 32] or Mask(8 * -(mem[_1604] % 32) + 32, -(8 * -(mem[_1604] % 32) + 32) + 256, mem[_1603 + floor32(mem[_1604]) + 96])
                        t = t + 32
                        v = _1539
                        u = sha3(mem[mem[64] len _1605 + _1603 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2309 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2309 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2309 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2309 + -mem[64] + 256], address(cd[36]), address(cd[68])
            else:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ('cd', 292).length + 704] = 0
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _615, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _615
                    while idx <= ('cd', 260).length:
                        _1540 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1606 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1607 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1608 = mem[_1607]
                            t = _1607 + 32
                            v = _1606 + 96
                            u = mem[_1607]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1606 + floor32(mem[_1607]) + 96] = mem[_1607 + floor32(mem[_1607]) + -(mem[_1607] % 32) + 64 len mem[_1607] % 32] or Mask(8 * -(mem[_1607] % 32) + 32, -(8 * -(mem[_1607] % 32) + 32) + 256, mem[_1606 + floor32(mem[_1607]) + 96])
                            t = t + 32
                            v = _1540
                            u = sha3(mem[mem[64] len _1608 + _1606 + -mem[64] + 96])
                            continue 
                        _1609 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1540
                        _1610 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1611 = mem[_1610]
                        t = _1610 + 32
                        v = _1609 + 96
                        u = mem[_1610]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1609 + floor32(mem[_1610]) + 96] = mem[_1610 + floor32(mem[_1610]) + -(mem[_1610] % 32) + 64 len mem[_1610] % 32] or Mask(8 * -(mem[_1610] % 32) + 32, -(8 * -(mem[_1610] % 32) + 32) + 256, mem[_1609 + floor32(mem[_1610]) + 96])
                        t = t + 32
                        v = _1540
                        u = sha3(mem[mem[64] len _1611 + _1609 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2312 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2312 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2312 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2312 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _615
                    while idx <= ('cd', 260).length:
                        _1541 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1612 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1613 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1614 = mem[_1613]
                            t = _1613 + 32
                            v = _1612 + 96
                            u = mem[_1613]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1612 + floor32(mem[_1613]) + 96] = mem[_1613 + floor32(mem[_1613]) + -(mem[_1613] % 32) + 64 len mem[_1613] % 32] or Mask(8 * -(mem[_1613] % 32) + 32, -(8 * -(mem[_1613] % 32) + 32) + 256, mem[_1612 + floor32(mem[_1613]) + 96])
                            t = t + 32
                            v = _1541
                            u = sha3(mem[mem[64] len _1614 + _1612 + -mem[64] + 96])
                            continue 
                        _1615 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1541
                        _1616 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1617 = mem[_1616]
                        t = _1616 + 32
                        v = _1615 + 96
                        u = mem[_1616]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1615 + floor32(mem[_1616]) + 96] = mem[_1616 + floor32(mem[_1616]) + -(mem[_1616] % 32) + 64 len mem[_1616] % 32] or Mask(8 * -(mem[_1616] % 32) + 32, -(8 * -(mem[_1616] % 32) + 32) + 256, mem[_1615 + floor32(mem[_1616]) + 96])
                        t = t + 32
                        v = _1541
                        u = sha3(mem[mem[64] len _1617 + _1615 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2315 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2315 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2315 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2315 + -mem[64] + 256], address(cd[36]), address(cd[68])
        else:
            if address(cd[4]) != address(cd[68]):
                revert with 0, 'user must be thread sender or receiver'
            if mem[128]:
                revert with 0, 'initial receiver balances must be zero'
            if mem[192]:
                revert with 0, 'initial receiver balances must be zero'
            mem[0] = cd[100]
            mem[32] = sha3(address(cd[68]), sha3(address(cd[36]), 6))
            if sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280:
                revert with 0, 'thread closing time must be zero'
            if address(cd[68]) == address(cd[36]):
                revert with 0, 'sender can not be receiver'
            if hubAddress == address(cd[36]):
                revert with 0, 'hub can not be sender or receiver'
            if hubAddress == address(cd[68]):
                revert with 0, 'hub can not be sender or receiver'
            if this.address == address(cd[36]):
                revert with 0, 'channel manager can not be sender or receiver'
            if this.address == address(cd[68]):
                revert with 0, 'channel manager can not be sender or receiver'
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320] = address(this.address)
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 340] = address(cd[36])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 360] = address(cd[68])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 380] = cd[100]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 412 len 64] = mem[96 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 476 len 64] = mem[160 len 64]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 540] = 0
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 288] = 252
            mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 320 len floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)])]
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] = mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 572] and 256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1 or mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + floor32(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]) + 320] and !(256^(-(Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)] % 32) + 32) - 1)
            _620 = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 576] = sha3(mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[ceil32(('cd', 260).length) + ('cd', 292).length + 320 len -('cd', 292).length + ceil32(('cd', 292).length)]])
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 608] = 96
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 672] = ('cd', 292).length
            mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 704 len ceil32(('cd', 292).length)] = call.data[cd[292] + 36 len ('cd', 292).length], mem[ceil32(('cd', 260).length) + ('cd', 292).length + 288 len ceil32(('cd', 292).length) - ('cd', 292).length]
            if ceil32(('cd', 292).length) <= ('cd', 292).length:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _620, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _620
                    while idx <= ('cd', 260).length:
                        _1542 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1618 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1619 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1620 = mem[_1619]
                            t = _1619 + 32
                            v = _1618 + 96
                            u = mem[_1619]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1618 + floor32(mem[_1619]) + 96] = mem[_1619 + floor32(mem[_1619]) + -(mem[_1619] % 32) + 64 len mem[_1619] % 32] or Mask(8 * -(mem[_1619] % 32) + 32, -(8 * -(mem[_1619] % 32) + 32) + 256, mem[_1618 + floor32(mem[_1619]) + 96])
                            t = t + 32
                            v = _1542
                            u = sha3(mem[mem[64] len _1620 + _1618 + -mem[64] + 96])
                            continue 
                        _1621 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1542
                        _1622 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1623 = mem[_1622]
                        t = _1622 + 32
                        v = _1621 + 96
                        u = mem[_1622]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1621 + floor32(mem[_1622]) + 96] = mem[_1622 + floor32(mem[_1622]) + -(mem[_1622] % 32) + 64 len mem[_1622] % 32] or Mask(8 * -(mem[_1622] % 32) + 32, -(8 * -(mem[_1622] % 32) + 32) + 256, mem[_1621 + floor32(mem[_1622]) + 96])
                        t = t + 32
                        v = _1542
                        u = sha3(mem[mem[64] len _1623 + _1621 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2318 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2318 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2318 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2318 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _620
                    while idx <= ('cd', 260).length:
                        _1543 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1624 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1625 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1626 = mem[_1625]
                            t = _1625 + 32
                            v = _1624 + 96
                            u = mem[_1625]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1624 + floor32(mem[_1625]) + 96] = mem[_1625 + floor32(mem[_1625]) + -(mem[_1625] % 32) + 64 len mem[_1625] % 32] or Mask(8 * -(mem[_1625] % 32) + 32, -(8 * -(mem[_1625] % 32) + 32) + 256, mem[_1624 + floor32(mem[_1625]) + 96])
                            t = t + 32
                            v = _1543
                            u = sha3(mem[mem[64] len _1626 + _1624 + -mem[64] + 96])
                            continue 
                        _1627 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1543
                        _1628 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1629 = mem[_1628]
                        t = _1628 + 32
                        v = _1627 + 96
                        u = mem[_1628]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1627 + floor32(mem[_1628]) + 96] = mem[_1628 + floor32(mem[_1628]) + -(mem[_1628] % 32) + 64 len mem[_1628] % 32] or Mask(8 * -(mem[_1628] % 32) + 32, -(8 * -(mem[_1628] % 32) + 32) + 256, mem[_1627 + floor32(mem[_1628]) + 96])
                        t = t + 32
                        v = _1543
                        u = sha3(mem[mem[64] len _1629 + _1627 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2321 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2321 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2321 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2321 + -mem[64] + 256], address(cd[36]), address(cd[68])
            else:
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ('cd', 292).length + 704] = 0
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 640] = address(cd[36])
                require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
                delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.isSignedBy(bytes32 arg1, string arg2, address arg3) with:
                     gas gas_remaining wei
                    args _620, Array(len=('cd', 292).length, data=call.data[cd[292] + 36 len ('cd', 292).length]), address(cd[36])
                mem[ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + 572] = delegate.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(('cd', 260).length) + ceil32(('cd', 292).length) + ceil32(return_data.size) + 572
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 'signature invalid'
                if sub_7dce34f7[address(cd[4])].field_2048:
                    idx = 64
                    s = 0
                    t = _620
                    while idx <= ('cd', 260).length:
                        _1544 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1630 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1631 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1632 = mem[_1631]
                            t = _1631 + 32
                            v = _1630 + 96
                            u = mem[_1631]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1630 + floor32(mem[_1631]) + 96] = mem[_1631 + floor32(mem[_1631]) + -(mem[_1631] % 32) + 64 len mem[_1631] % 32] or Mask(8 * -(mem[_1631] % 32) + 32, -(8 * -(mem[_1631] % 32) + 32) + 256, mem[_1630 + floor32(mem[_1631]) + 96])
                            t = t + 32
                            v = _1544
                            u = sha3(mem[mem[64] len _1632 + _1630 + -mem[64] + 96])
                            continue 
                        _1633 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1544
                        _1634 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1635 = mem[_1634]
                        t = _1634 + 32
                        v = _1633 + 96
                        u = mem[_1634]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1633 + floor32(mem[_1634]) + 96] = mem[_1634 + floor32(mem[_1634]) + -(mem[_1634] % 32) + 64 len mem[_1634] % 32] or Mask(8 * -(mem[_1634] % 32) + 32, -(8 * -(mem[_1634] % 32) + 32) + 256, mem[_1633 + floor32(mem[_1634]) + 96])
                        t = t + 32
                        v = _1544
                        u = sha3(mem[mem[64] len _1635 + _1633 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2324 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2324 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2324 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2324 + -mem[64] + 256], address(cd[36]), address(cd[68])
                else:
                    idx = 64
                    s = 0
                    t = _620
                    while idx <= ('cd', 260).length:
                        _1545 = mem[idx + 224]
                        if t >= mem[idx + 224]:
                            _1636 = mem[64]
                            mem[mem[64] + 32] = mem[idx + 224]
                            mem[mem[64] + 64] = t
                            _1637 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            _1638 = mem[_1637]
                            t = _1637 + 32
                            v = _1636 + 96
                            u = mem[_1637]
                            while u >= 32:
                                mem[v] = mem[t]
                                t = t + 32
                                v = v + 32
                                u = u - 32
                                continue 
                            mem[_1636 + floor32(mem[_1637]) + 96] = mem[_1637 + floor32(mem[_1637]) + -(mem[_1637] % 32) + 64 len mem[_1637] % 32] or Mask(8 * -(mem[_1637] % 32) + 32, -(8 * -(mem[_1637] % 32) + 32) + 256, mem[_1636 + floor32(mem[_1637]) + 96])
                            t = t + 32
                            v = _1545
                            u = sha3(mem[mem[64] len _1638 + _1636 + -mem[64] + 96])
                            continue 
                        _1639 = mem[64]
                        mem[mem[64] + 32] = t
                        mem[mem[64] + 64] = _1545
                        _1640 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        _1641 = mem[_1640]
                        t = _1640 + 32
                        v = _1639 + 96
                        u = mem[_1640]
                        while u >= 32:
                            mem[v] = mem[t]
                            t = t + 32
                            v = v + 32
                            u = u - 32
                            continue 
                        mem[_1639 + floor32(mem[_1640]) + 96] = mem[_1640 + floor32(mem[_1640]) + -(mem[_1640] % 32) + 64 len mem[_1640] % 32] or Mask(8 * -(mem[_1640] % 32) + 32, -(8 * -(mem[_1640] % 32) + 32) + 256, mem[_1639 + floor32(mem[_1640]) + 96])
                        t = t + 32
                        v = _1545
                        u = sha3(mem[mem[64] len _1641 + _1639 + -mem[64] + 96])
                        continue 
                    if t != sub_7dce34f7[address(cd[4])].field_2048:
                        revert with 0, 'initial thread state is not contained in threadRoot'
                    s = 0
                    idx = 96
                    while 160 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 2
                    while 2 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    s = 2
                    idx = 160
                    while 224 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 4
                    while 4 > idx:
                        sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require challengePeriod + block.timestamp >= block.timestamp
                    sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1280 = challengePeriod + block.timestamp
                    _2327 = mem[64]
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = cd[100]
                    mem[mem[64] + 64] = msg.sender
                    idx = 0
                    s = 0
                    t = mem[64] + 96
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    idx = 0
                    s = 2
                    t = _2327 + 160
                    while idx < 2:
                        mem[t] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]][s].field_0
                        idx = idx + 1
                        s = s + 1
                        t = t + 32
                        continue 
                    mem[_2327 + 224] = sub_5f2f3dfd[address(cd[36])][address(cd[68])][cd[100]].field_1024
                    emit 0xfadbf69f: mem[mem[64] len _2327 + -mem[64] + 256], address(cd[36]), address(cd[68])
    stor7 = 0
}

function sub_686bf460(?) {
    require calldata.size - 4 >= 640
    require calldata.size > 99
    require 132 <= calldata.size
    idx = 0
    s = 68
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 163
    require 196 <= calldata.size
    idx = 0
    s = 132
    t = 160
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 227
    require 324 <= calldata.size
    idx = 0
    s = 196
    t = 224
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 355
    require 452 <= calldata.size
    idx = 0
    s = 324
    t = 352
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 483
    require 516 <= calldata.size
    idx = 0
    s = 452
    t = 480
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[612] <= test266151307()
    require calldata.size > cd[612] + 35
    require ('cd', 612).length <= test266151307()
    require ceil32(('cd', 612).length) + 576 >= 544 and ceil32(('cd', 612).length) + 576 <= test266151307()
    mem[544] = ('cd', 612).length
    require cd[612] + ('cd', 612).length + 36 <= calldata.size
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    require hubAddress == msg.sender
    require sub_7dce34f7[address(cd[4])].field_3072 <= 2
    if sub_7dce34f7[address(cd[4])].field_3072:
        revert with 0, 'channel must be open'
    if not cd[580]:
        if mem[480] <= sub_7dce34f7[address(cd[4])].field_1536:
            revert with 0, 'global txCount must be higher than the current global txCount'
        if mem[512] < sub_7dce34f7[address(cd[4])].field_1792:
            revert with 0, 'onchain txCount must be higher or equal to the current onchain txCount'
        require mem[128] + mem[96] >= mem[96]
        if mem[128] + mem[96] > sub_7dce34f7[address(cd[4])].field_512:
            revert with 0, 'wei must be conserved'
        require mem[192] + mem[160] >= mem[160]
        if mem[192] + mem[160] > sub_7dce34f7[address(cd[4])].field_1280:
            revert with 0, 'tokens must be conserved'
        require sub_009e8690 <= eth.balance(this.address)
        require mem[288] + mem[224] >= mem[224]
        if mem[288] + mem[224] > eth.balance(this.address) - sub_009e8690:
            revert with 0, 'insufficient reserve wei for deposits'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_32b573e1 <= 0, ext_call.return_data[4 len 28]
        require mem[416] + mem[352] >= mem[352]
        if mem[416] + mem[352] > 0, ext_call.return_data[4 len 28] - sub_32b573e1:
            revert with 0, 'insufficient reserve tokens for deposits'
        require mem[128] + mem[96] >= mem[96]
        require mem[256] >= 0
        require mem[320] >= 0
        require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
        require mem[288] >= 0
        if mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 < mem[320] + mem[256] + mem[128] + mem[96]:
            revert with 0, 'insufficient wei'
        require mem[192] + mem[160] >= mem[160]
        require mem[384] >= 0
        require mem[448] >= 0
        require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
        require mem[416] >= 0
        if mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 < mem[448] + mem[384] + mem[192] + mem[160]:
            revert with 0, 'insufficient token'
        if hubAddress == address(cd[4]):
            revert with 0, 'user can not be hub'
        if this.address == address(cd[4]):
            revert with 0, 'user can not be channel manager'
        require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
        delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.recoverSigner(bytes32 arg1, string arg2) with:
             gas gas_remaining wei
            args sha3(this.address, address(cd[4]), address(cd[36]) >> 256, mem[96 len 64], mem[160 len 64], mem[224 len 128], mem[352 len 128], mem[480 len 64], cd[516], cd[548], cd[580]), Array(len=('cd', 612).length, data=call.data[cd[612] + 36 len ('cd', 612).length])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[12 len 20] != uint64(cd[4]) << 96:
            revert with 0, 'user signature invalid'
        if ceil32(('cd', 612).length) <= ('cd', 612).length:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(cd[4])].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var403002 = 160
                            var412002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var412002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var412002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var412002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(cd[4])].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var412002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
        else:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(cd[4])].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var404002 = 160
                            var413002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(cd[4])].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
    else:
        if block.timestamp >= cd[580]:
            revert with 0, 'the timeout must be zero or not have passed'
        if mem[480] <= sub_7dce34f7[address(cd[4])].field_1536:
            revert with 0, 'global txCount must be higher than the current global txCount'
        if mem[512] < sub_7dce34f7[address(cd[4])].field_1792:
            revert with 0, 'onchain txCount must be higher or equal to the current onchain txCount'
        require mem[128] + mem[96] >= mem[96]
        if mem[128] + mem[96] > sub_7dce34f7[address(cd[4])].field_512:
            revert with 0, 'wei must be conserved'
        require mem[192] + mem[160] >= mem[160]
        if mem[192] + mem[160] > sub_7dce34f7[address(cd[4])].field_1280:
            revert with 0, 'tokens must be conserved'
        require sub_009e8690 <= eth.balance(this.address)
        require mem[288] + mem[224] >= mem[224]
        if mem[288] + mem[224] > eth.balance(this.address) - sub_009e8690:
            revert with 0, 'insufficient reserve wei for deposits'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_32b573e1 <= 0, ext_call.return_data[4 len 28]
        require mem[416] + mem[352] >= mem[352]
        if mem[416] + mem[352] > 0, ext_call.return_data[4 len 28] - sub_32b573e1:
            revert with 0, 'insufficient reserve tokens for deposits'
        require mem[128] + mem[96] >= mem[96]
        require mem[256] >= 0
        require mem[320] >= 0
        require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
        require mem[288] >= 0
        if mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 < mem[320] + mem[256] + mem[128] + mem[96]:
            revert with 0, 'insufficient wei'
        require mem[192] + mem[160] >= mem[160]
        require mem[384] >= 0
        require mem[448] >= 0
        require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
        require mem[416] >= 0
        if mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 < mem[448] + mem[384] + mem[192] + mem[160]:
            revert with 0, 'insufficient token'
        if hubAddress == address(cd[4]):
            revert with 0, 'user can not be hub'
        if this.address == address(cd[4]):
            revert with 0, 'user can not be channel manager'
        require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
        delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.recoverSigner(bytes32 arg1, string arg2) with:
             gas gas_remaining wei
            args sha3(this.address, address(cd[4]), address(cd[36]) >> 256, mem[96 len 64], mem[160 len 64], mem[224 len 128], mem[352 len 128], mem[480 len 64], cd[516], cd[548], cd[580]), Array(len=('cd', 612).length, data=call.data[cd[612] + 36 len ('cd', 612).length])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[12 len 20] != uint64(cd[4]) << 96:
            revert with 0, 'user signature invalid'
        if ceil32(('cd', 612).length) <= ('cd', 612).length:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(cd[4])].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var404002 = 160
                            var413002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(cd[4])].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            var413002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
        else:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(cd[4])].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(cd[4])].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(cd[4])].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(cd[4])].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(cd[4])].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(cd[4])].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(cd[4])].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(cd[4])].field_512 >= sub_7dce34f7[address(cd[4])].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256]
                            sub_7dce34f7[address(cd[4])].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(cd[4])].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(cd[4])].field_1280 >= sub_7dce34f7[address(cd[4])].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384]
                            sub_7dce34f7[address(cd[4])].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(cd[4])].field_1280 - mem[384] - mem[448]
                            call address(cd[36]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(cd[4])][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(cd[4])][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(cd[4])].field_2048 = cd[516]
                            sub_7dce34f7[address(cd[4])].field_2304 = cd[548]
                            # nil
}

function sub_ea682e37(?) payable {
    require calldata.size - 4 >= 608
    require calldata.size > 67
    require 100 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 131
    require 164 <= calldata.size
    idx = 0
    s = 100
    t = 160
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 195
    require 292 <= calldata.size
    idx = 0
    s = 164
    t = 224
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 323
    require 420 <= calldata.size
    idx = 0
    s = 292
    t = 352
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size > 451
    require 484 <= calldata.size
    idx = 0
    s = 420
    t = 480
    while idx < 2:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[580] <= test266151307()
    require calldata.size > cd[580] + 35
    require ('cd', 580).length <= test266151307()
    require ceil32(('cd', 580).length) + 576 >= 544 and ceil32(('cd', 580).length) + 576 <= test266151307()
    mem[544] = ('cd', 580).length
    require cd[580] + ('cd', 580).length + 36 <= calldata.size
    if stor7:
        revert with 0, 'Reentrant call.'
    stor7 = 1
    if mem[288] != msg.value:
        revert with 0, 'msg.value is not equal to pending user deposit'
    require sub_7dce34f7[address(msg.sender)].field_3072 <= 2
    if sub_7dce34f7[address(msg.sender)].field_3072:
        revert with 0, 'channel must be open'
    if not cd[548]:
        if mem[480] <= sub_7dce34f7[address(msg.sender)].field_1536:
            revert with 0, 'global txCount must be higher than the current global txCount'
        if mem[512] < sub_7dce34f7[address(msg.sender)].field_1792:
            revert with 0, 'onchain txCount must be higher or equal to the current onchain txCount'
        require mem[128] + mem[96] >= mem[96]
        if mem[128] + mem[96] > sub_7dce34f7[address(msg.sender)].field_512:
            revert with 0, 'wei must be conserved'
        require mem[192] + mem[160] >= mem[160]
        if mem[192] + mem[160] > sub_7dce34f7[address(msg.sender)].field_1280:
            revert with 0, 'tokens must be conserved'
        require sub_009e8690 <= eth.balance(this.address)
        if mem[224] > eth.balance(this.address) - sub_009e8690:
            revert with 0, 'insufficient reserve wei for deposits'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_32b573e1 <= 0, ext_call.return_data[4 len 28]
        if mem[352] > 0, ext_call.return_data[4 len 28] - sub_32b573e1:
            revert with 0, 'insufficient reserve tokens for deposits'
        require mem[128] + mem[96] >= mem[96]
        require mem[256] >= 0
        require mem[320] >= 0
        require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
        require mem[288] >= 0
        if mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 < mem[320] + mem[256] + mem[128] + mem[96]:
            revert with 0, 'insufficient wei'
        require mem[192] + mem[160] >= mem[160]
        require mem[384] >= 0
        require mem[448] >= 0
        require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
        require mem[416] >= 0
        if mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 < mem[448] + mem[384] + mem[192] + mem[160]:
            revert with 0, 'insufficient token'
        if hubAddress == msg.sender:
            revert with 0, 'user can not be hub'
        if this.address == msg.sender:
            revert with 0, 'user can not be channel manager'
        require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
        delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.recoverSigner(bytes32 arg1, string arg2) with:
             gas gas_remaining wei
            args sha3(this.address, msg.sender, address(cd[4]) >> 256, mem[96 len 64], mem[160 len 64], mem[224 len 128], mem[352 len 128], mem[480 len 64], cd[484], cd[516], cd[548]), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[12 len 20] != hubAddress:
            revert with 0, 'hub signature invalid'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'user token deposit failed'
        if ceil32(('cd', 580).length) <= ('cd', 580).length:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(msg.sender)].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var411002 = 160
                            var420002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var420002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var420002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var420002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(msg.sender)].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var420002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
        else:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(msg.sender)].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var412002 = 160
                            var421002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(msg.sender)].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
    else:
        if block.timestamp >= cd[548]:
            revert with 0, 'the timeout must be zero or not have passed'
        if mem[480] <= sub_7dce34f7[address(msg.sender)].field_1536:
            revert with 0, 'global txCount must be higher than the current global txCount'
        if mem[512] < sub_7dce34f7[address(msg.sender)].field_1792:
            revert with 0, 'onchain txCount must be higher or equal to the current onchain txCount'
        require mem[128] + mem[96] >= mem[96]
        if mem[128] + mem[96] > sub_7dce34f7[address(msg.sender)].field_512:
            revert with 0, 'wei must be conserved'
        require mem[192] + mem[160] >= mem[160]
        if mem[192] + mem[160] > sub_7dce34f7[address(msg.sender)].field_1280:
            revert with 0, 'tokens must be conserved'
        require sub_009e8690 <= eth.balance(this.address)
        if mem[224] > eth.balance(this.address) - sub_009e8690:
            revert with 0, 'insufficient reserve wei for deposits'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x70a08231 with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_32b573e1 <= 0, ext_call.return_data[4 len 28]
        if mem[352] > 0, ext_call.return_data[4 len 28] - sub_32b573e1:
            revert with 0, 'insufficient reserve tokens for deposits'
        require mem[128] + mem[96] >= mem[96]
        require mem[256] >= 0
        require mem[320] >= 0
        require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
        require mem[288] >= 0
        if mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 < mem[320] + mem[256] + mem[128] + mem[96]:
            revert with 0, 'insufficient wei'
        require mem[192] + mem[160] >= mem[160]
        require mem[384] >= 0
        require mem[448] >= 0
        require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
        require mem[416] >= 0
        if mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 < mem[448] + mem[384] + mem[192] + mem[160]:
            revert with 0, 'insufficient token'
        if hubAddress == msg.sender:
            revert with 0, 'user can not be hub'
        if this.address == msg.sender:
            revert with 0, 'user can not be channel manager'
        require ext_code.size(0x94d397e39dcc523c8e7d86f127e81522d94f1f2b)
        delegate 0x94d397e39dcc523c8e7d86f127e81522d94f1f2b.recoverSigner(bytes32 arg1, string arg2) with:
             gas gas_remaining wei
            args sha3(this.address, msg.sender, address(cd[4]) >> 256, mem[96 len 64], mem[160 len 64], mem[224 len 128], mem[352 len 128], mem[480 len 64], cd[484], cd[516], cd[548]), Array(len=('cd', 580).length, data=call.data[cd[580] + 36 len ('cd', 580).length])
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[12 len 20] != hubAddress:
            revert with 0, 'hub signature invalid'
        require ext_code.size(sub_bab46259Address)
        call sub_bab46259Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), mem[416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'user token deposit failed'
        if ceil32(('cd', 580).length) <= ('cd', 580).length:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(msg.sender)].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var412002 = 160
                            var421002 = 224
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(msg.sender)].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            var421002 = 160
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
        else:
            if mem[224] <= mem[256]:
                sub_7dce34f7[address(msg.sender)].field_0 = mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
            else:
                require mem[256] <= mem[224]
                require mem[224] - mem[256] + mem[96] >= mem[96]
                sub_7dce34f7[address(msg.sender)].field_0 = mem[224] - mem[256] + mem[96]
                if mem[288] <= mem[320]:
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                else:
                    require mem[320] <= mem[288]
                    require mem[288] - mem[320] + mem[128] >= mem[128]
                    sub_7dce34f7[address(msg.sender)].field_256 = mem[288] - mem[320] + mem[128]
                    if mem[352] <= mem[384]:
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                    else:
                        require mem[384] <= mem[352]
                        require mem[352] - mem[384] + mem[160] >= mem[160]
                        sub_7dce34f7[address(msg.sender)].field_768 = mem[352] - mem[384] + mem[160]
                        if mem[416] <= mem[448]:
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
                        else:
                            require mem[448] <= mem[416]
                            require mem[416] - mem[448] + mem[192] >= mem[192]
                            sub_7dce34f7[address(msg.sender)].field_1024 = mem[416] - mem[448] + mem[192]
                            require mem[224] + sub_009e8690 >= sub_009e8690
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_009e8690
                            require mem[320] <= mem[288] + mem[224] + sub_009e8690 - mem[256]
                            sub_009e8690 = mem[288] + mem[224] + sub_009e8690 - mem[256] - mem[320]
                            require mem[352] + sub_32b573e1 >= sub_32b573e1
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_32b573e1
                            require mem[448] <= mem[416] + mem[352] + sub_32b573e1 - mem[384]
                            sub_32b573e1 = mem[416] + mem[352] + sub_32b573e1 - mem[384] - mem[448]
                            require mem[224] + sub_7dce34f7[address(msg.sender)].field_512 >= sub_7dce34f7[address(msg.sender)].field_512
                            require mem[288] >= 0
                            require mem[256] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512
                            require mem[320] <= mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256]
                            sub_7dce34f7[address(msg.sender)].field_512 = mem[288] + mem[224] + sub_7dce34f7[address(msg.sender)].field_512 - mem[256] - mem[320]
                            require mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 >= sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[416] >= 0
                            require mem[384] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280
                            require mem[448] <= mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384]
                            sub_7dce34f7[address(msg.sender)].field_1280 = mem[416] + mem[352] + sub_7dce34f7[address(msg.sender)].field_1280 - mem[384] - mem[448]
                            call address(cd[4]) with:
                               value mem[320] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_bab46259Address)
                            call sub_bab46259Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[4]), mem[448]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'user token withdrawal transfer failed'
                            s = 6
                            idx = 480
                            while 544 > idx:
                                sub_7dce34f7[address(msg.sender)][s].field_0 = mem[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = 8
                            while 8 > idx:
                                sub_7dce34f7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            sub_7dce34f7[address(msg.sender)].field_2048 = cd[484]
                            sub_7dce34f7[address(msg.sender)].field_2304 = cd[516]
                            # nil
}



}
