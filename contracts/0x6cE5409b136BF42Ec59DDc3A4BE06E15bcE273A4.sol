contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint128 stor4; offset 160
address stor4;
array of struct stor5;
mapping of uint256 stor259;
uint256 stor270;
uint256 stor271;
uint256 stor272;
uint256 stor273;
uint256 stor274;
uint256 stor275;

function _fallback() payable {
    mem[96 len -7295] = code.data[7706 len -7295]
    mem[64] = -7199
    stor2 = mem[mem[96] + 96] + 1
    address(stor4.field_0) = msg.sender
    Mask(96, 0, stor4.field_160) = 0
    mem[0] = msg.sender
    mem[32] = 259
    stor259[address(msg.sender)] = 1
    idx = 0
    while idx < mem[mem[96] + 96]:
        require idx < mem[mem[96] + 96]
        require idx + 2 < 256
        stor5[idx].field_0 = mem[(32 * idx) + mem[96] + 140 len 20]
        stor5[idx].field_160 = 0
        require idx < mem[mem[96] + 96]
        mem[0] = mem[(32 * idx) + mem[96] + 140 len 20]
        mem[32] = 259
        stor259[mem[(32 * idx) + mem[96] + 140 len 20]] = idx + 2
        idx = idx + 1
        continue 
    stor0 = mem[128]
    stor1 = mem[160]
    stor270 = mem[192]
    stor271 = mem[224]
    stor272 = mem[256]
    stor273 = mem[288]
    stor274 = mem[320]
    stor275 = mem[352]
    return code.data[411 len 7295]
}



// =====================  Runtime code  =====================


const sub_06c3a2fc(?) = 11

const sub_0d4a4723(?) = 9

const sub_6448f6e1(?) = 3

const sub_692a365d(?) = 1

const sub_95a19df5(?) = 14

const sub_97b7b03d(?) = 5

const sub_ac5d4234(?) = 7

const sub_c2b4748c(?) = 8

const sub_c75155fd(?) = 12

const sub_d2d209d9(?) = 2

const sub_e2ee74b9(?) = 10

const sub_e40e6294(?) = 13

const sub_eb5f9bb4(?) = 6

const sub_f5d2ad53(?) = 4


uint256 sub_5e59b39d;
uint256 sub_6c1a5f85;
uint256 m_numOwners;
array of struct stor3;
array of struct stor4;
mapping of uint256 stor259;
mapping of struct stor260;
array of uint256 stor261;
uint8 locked; offset 160
address operatorAddress;
uint256 stor262;
mapping of uint256 get;
uint256 totalBalance;
uint256 totalFee;
uint8 sub_d4c57b85;
uint256 stor266;
uint256 feeAmount;
uint256 feeNumerator;
mapping of struct sub_333bc79c;
address coldWalletAddress;
uint256 stor270;
uint256 sub_abd7e80b;
uint256 sub_172be614;
uint256 sub_4999ec14;
uint256 sub_886da5e5;
uint256 sub_9d5e8956;
array of uint256 stor101764004545410537355992076401828343611731608233110052773570809165368196171379;

function sub_172be614(?) payable {
    return sub_172be614
}

function sub_1db77128(?) payable {
    return uint8(sub_333bc79c[arg1].field_0), sub_333bc79c[arg1].field_256, sub_333bc79c[arg1].field_512
}

function totalFee() payable {
    return totalFee
}

function sub_333bc79c(?) payable {
    return uint8(sub_333bc79c[arg1].field_0), sub_333bc79c[arg1].field_256, sub_333bc79c[arg1].field_512
}

function m_numOwners() payable {
    return m_numOwners
}

function balances(uint256 arg1) payable {
    return get[arg1]
}

function sub_4999ec14(?) payable {
    return sub_4999ec14
}

function operator() payable {
    return operatorAddress
}

function sub_5e59b39d(?) payable {
    return sub_5e59b39d
}

function feeAmount() payable {
    return feeAmount
}

function coldWallet() payable {
    return address(coldWalletAddress)
}

function sub_6c1a5f85(?) payable {
    return sub_6c1a5f85
}

function sub_886da5e5(?) payable {
    return sub_886da5e5
}

function get(uint256 arg1) payable {
    return get[arg1]
}

function sub_9d5e8956(?) payable {
    return sub_9d5e8956
}

function sub_abd7e80b(?) payable {
    return sub_abd7e80b
}

function totalBalance() payable {
    return totalBalance
}

function locked() payable {
    return locked
}

function sub_d4c57b85(?) payable {
    return uint8(sub_d4c57b85)
}

function feeNumerator() payable {
    return feeNumerator
}

function _fallback() payable {
    emit 0x4e5da9bb: msg.sender, msg.value
}

function isOwner(address arg1) payable {
    return (stor259[address(arg1)] > 0)
}

function lock() payable {
    if stor259[address(msg.sender)] > 0:
        locked = 1
        emit 0x6d8db0d9: 1
}

function hasConfirmed(bytes32 arg1, address arg2) payable {
    if stor259[address(arg2)] != 0:
        return 2^stor259[address(arg2)] and stor260[arg1].field_256 != 0
    else:
        return 0
}

function sub_70de1c2c(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    get[arg1] += arg2
    totalBalance += arg2
    totalFee += arg3
    return 1
}

function checkWithdraw(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    if arg2 <= 0:
        return 0
    if arg3 < 0:
        return 0
    if arg2 + arg3 > get[arg1]:
        return 0
    return 1
}

function sub_81a9c410(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    call arg1.0xc4363f00 with:
         gas gas_remaining - 25050 wei
        args arg3, arg4, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function revoke(bytes32 arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if 2^stor259[address(msg.sender)] and stor260[arg1].field_256 > 0:
            stor260[arg1].field_0++
            stor260[arg1].field_256 -= 2^stor259[address(msg.sender)]
            emit Revoke(msg.sender, arg1);
}

function sub_e654015c(?) payable {
    require msg.sender == operatorAddress
    if arg1 <= eth.balance(this.address):
        call address(coldWalletAddress) with:
           value arg1 wei
             gas gas_remaining - 34050 wei
        if ext_call.success:
            emit 0xcc22d006: address(coldWalletAddress), arg1
}

function sub_ea5cff53(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if arg2 <= 0:
        return 0
    if arg3 < 0:
        return 0
    if arg2 + arg3 > get[arg1]:
        return 0
    totalBalance = totalBalance - arg3 - arg2
    totalFee += arg3
    get[arg1] = get[arg1] - arg3 - arg2
    return 1
}

function sub_5c6a82a9(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    if 1 == arg2:
        if arg3 < 0:
            return 0
        if arg4 != 0:
            return 0
    else:
        if arg2 == 2:
            if arg3 <= 0:
                return 0
            if arg4 <= 0:
                return 0
            if arg3 > arg4:
                return 0
    require msg.sender == operatorAddress
    sub_333bc79c[arg1].field_0 = Mask(248, 0, sub_333bc79c[arg1].field_8)
    sub_333bc79c[arg1].field_256 = arg3
    sub_333bc79c[arg1].field_512 = arg4
    return 1
}

function sub_5b6fd279(?) payable {
    require msg.sender == operatorAddress
    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                call address(coldWalletAddress) with:
                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
}

function sub_83f6506d(?) payable {
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if arg2 > msg.value:
        return 0
    totalBalance = msg.value - arg2 + totalBalance
    totalFee += arg2
    get[arg1] = msg.value - arg2 + get[arg1]
    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                call address(coldWalletAddress) with:
                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
    return 1
}

function sub_753f4c37(?) payable {
    mem[128 len arg6.length] = arg6[all]
    if locked:
        emit 0x56c12d7b: 9
        return 0
    require msg.sender == operatorAddress
    if arg3 <= 0:
        return 0
    if arg4 < 0:
        return 0
    if arg3 + arg4 > get[arg1]:
        return 0
    mem[ceil32(arg6.length) + 128 len arg6.length] = arg6[all]
    if arg5 <= 0:
        if not arg6.length % 32:
            call arg2 with:
               value arg3 wei
                 gas gas_remaining - 34050 wei
                args arg6[all]
        else:
            mem[floor32(arg6.length) + ceil32(arg6.length) + 128] = mem[floor32(arg6.length) + ceil32(arg6.length) + -(arg6.length % 32) + 160 len arg6.length % 32]
            call arg2.mem[ceil32(arg6.length) + 128 len 4] with:
               value arg3 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg6.length) + 132 len floor32(arg6.length) + 28]
    else:
        if not arg6.length % 32:
            call arg2 with:
               value arg3 wei
                 gas arg5 wei
                args arg6[all]
        else:
            mem[floor32(arg6.length) + ceil32(arg6.length) + 128] = mem[floor32(arg6.length) + ceil32(arg6.length) + -(arg6.length % 32) + 160 len arg6.length % 32]
            call arg2.mem[ceil32(arg6.length) + 128 len 4] with:
               value arg3 wei
                 gas arg5 wei
                args mem[ceil32(arg6.length) + 132 len floor32(arg6.length) + 28]
    if not ext_call.success:
        return 0
    totalBalance = totalBalance - arg4 - arg3
    totalFee += arg4
    get[arg1] = get[arg1] - arg4 - arg3
    return 1
}

function unlock() payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                locked = 0
                emit 0x6d8db0d9: 0
}

function setOperator(address arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                stor262 = arg1 or Mask(96, 160, stor262)
                emit OperatorChanged(operatorAddress, arg1);
}

function setColdWallet(address arg1) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_5e59b39d
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                uint256(stor270) = arg1 or Mask(96, 160, uint256(stor270))
                emit ColdWalletChanged(address(coldWalletAddress), arg1);
}

function withdrawTo(address arg1, uint256 arg2) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_5e59b39d
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if arg2 <= eth.balance(this.address):
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                    if ext_call.success:
                        emit Withdraw(address(arg1), arg2);
}

function sub_16ce5d54(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if arg1 <= m_numOwners:
                    if arg2 <= arg1:
                        sub_5e59b39d = arg1
                        sub_6c1a5f85 = arg2
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if storE0FC[idx]:
                                require idx < stor261.length
                                mem[0] = storE0FC[idx]
                                mem[32] = 260
                                stor260[storE0FC[idx]].field_0 = 0
                                stor260[storE0FC[idx]].field_256 = 0
                                stor260[storE0FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        emit RequirementChanged(arg1, arg2);
}

function changeOwner(address arg1, address arg2) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                if stor259[address(arg2)] <= 0:
                    if stor259[address(arg1)]:
                        idx = 0
                        while idx < stor261.length:
                            mem[0] = 261
                            if storE0FC[idx]:
                                require idx < stor261.length
                                mem[0] = storE0FC[idx]
                                mem[32] = 260
                                stor260[storE0FC[idx]].field_0 = 0
                                stor260[storE0FC[idx]].field_256 = 0
                                stor260[storE0FC[idx]].field_512 = 0
                            idx = idx + 1
                            continue 
                        stor261.length = 0
                        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                        require stor259[address(arg1)] < 256
                        address(stor3[stor259[address(arg1)]].field_0) = arg2
                        Mask(96, 0, stor3[stor259[address(arg1)]].field_160) = 0
                        stor259[address(arg1)] = 0
                        stor259[arg2] = stor259[address(arg1)]
                        emit OwnerChanged(address(arg1), arg2);
}

function sub_a8efc2bc(?) payable {
    if stor259[address(msg.sender)] != 0:
        if not stor260[call.data[0 len calldata.size]].field_0:
            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor261.length++
            if not stor261.length <= stor261.length + 1:
                idx = stor261.length + 1
                while stor261.length > idx:
                    stor261[idx] = 0
                    idx = idx + 1
                    continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            else:
                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                stor260[call.data[0 len calldata.size]].field_0 = 0
                stor260[call.data[0 len calldata.size]].field_256 = 0
                stor260[call.data[0 len calldata.size]].field_512 = 0
                idx = 0
                while idx < stor261.length:
                    mem[0] = 261
                    if storE0FC[idx]:
                        require idx < stor261.length
                        mem[0] = storE0FC[idx]
                        mem[32] = 260
                        stor260[storE0FC[idx]].field_0 = 0
                        stor260[storE0FC[idx]].field_256 = 0
                        stor260[storE0FC[idx]].field_512 = 0
                    idx = idx + 1
                    continue 
                stor261.length = 0
                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                if arg1 >= 0:
                    if arg2 >= 0:
                        if arg3 > 0:
                            if arg4 >= 0:
                                if arg5 > 0:
                                    if arg2 <= arg3:
                                        if arg4 <= arg5:
                                            sub_abd7e80b = arg1
                                            sub_172be614 = arg2
                                            sub_4999ec14 = arg3
                                            sub_886da5e5 = arg4
                                            sub_9d5e8956 = arg5
                                            emit 0x213b20ca: arg1, arg2, arg3, arg4, arg5
}

function removeOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if not stor259[address(arg1)]:
        if sub_5e59b39d > m_numOwners - 1:
        require stor259[address(arg1)] < 256
        stor3[stor259[address(arg1)]].field_0 = 0
        stor259[address(arg1)] = 0
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if storE0FC[idx]:
                require idx < stor261.length
                mem[0] = storE0FC[idx]
                mem[32] = 260
                stor260[storE0FC[idx]].field_0 = 0
                stor260[storE0FC[idx]].field_256 = 0
                stor260[storE0FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        # nil
    else:
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            # nil
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if not stor259[address(arg1)]:
            if sub_5e59b39d > m_numOwners - 1:
            require stor259[address(arg1)] < 256
            stor3[stor259[address(arg1)]].field_0 = 0
            stor259[address(arg1)] = 0
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if 1 < m_numOwners:
                # nil
            else:
                emit OwnerRemoved(arg1);
}

function addOwner(address arg1) payable {
    if 0 == stor259[address(msg.sender)]:
    if stor260[call.data[0 len calldata.size]].field_0:
        if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
        if stor260[call.data[0 len calldata.size]].field_0 > 1:
            stor260[call.data[0 len calldata.size]].field_0--
            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
        storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
        stor260[call.data[0 len calldata.size]].field_0 = 0
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor260[call.data[0 len calldata.size]].field_512 = 0
        if stor259[address(arg1)] > 0:
        idx = 0
        while idx < stor261.length:
            mem[0] = 261
            if storE0FC[idx]:
                require idx < stor261.length
                mem[0] = storE0FC[idx]
                mem[32] = 260
                stor260[storE0FC[idx]].field_0 = 0
                stor260[storE0FC[idx]].field_256 = 0
                stor260[storE0FC[idx]].field_512 = 0
            idx = idx + 1
            continue 
        stor261.length = 0
        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        if m_numOwners >= 250:
            # nil
        else:
            m_numOwners++
            require m_numOwners + 1 < 256
            address(stor4[stor2].field_0) = arg1
            Mask(96, 0, stor4[stor2].field_160) = 0
            stor259[address(arg1)] = m_numOwners
            emit OwnerAdded(arg1);
    else:
        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
        stor260[call.data[0 len calldata.size]].field_256 = 0
        stor261.length++
        if not stor261.length > stor261.length + 1:
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners >= 250:
                # nil
            else:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
        else:
            idx = stor261.length + 1
            while stor261.length > idx:
                stor261[idx] = 0
                idx = idx + 1
                continue 
            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
            require stor261.length < stor261.length
            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
            if 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256 != 0:
            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                stor260[call.data[0 len calldata.size]].field_0--
                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
            stor260[call.data[0 len calldata.size]].field_0 = 0
            stor260[call.data[0 len calldata.size]].field_256 = 0
            stor260[call.data[0 len calldata.size]].field_512 = 0
            if stor259[address(arg1)] > 0:
            idx = 0
            while idx < stor261.length:
                mem[0] = 261
                if storE0FC[idx]:
                    require idx < stor261.length
                    mem[0] = storE0FC[idx]
                    mem[32] = 260
                    stor260[storE0FC[idx]].field_0 = 0
                    stor260[storE0FC[idx]].field_256 = 0
                    stor260[storE0FC[idx]].field_512 = 0
                idx = idx + 1
                continue 
            stor261.length = 0
            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            if m_numOwners < 250:
                m_numOwners++
                require m_numOwners + 1 < 256
                address(stor4[stor2].field_0) = arg1
                Mask(96, 0, stor4[stor2].field_160) = 0
                stor259[address(arg1)] = m_numOwners
                emit OwnerAdded(arg1);
            if 1 < m_numOwners:
                # nil
            else:
                if m_numOwners < 250:
                    m_numOwners++
                    require m_numOwners + 1 < 256
                    address(stor4[stor2].field_0) = arg1
                    Mask(96, 0, stor4[stor2].field_160) = 0
                    stor259[address(arg1)] = m_numOwners
                    emit OwnerAdded(arg1);
}

function sub_4f35c3af(?) payable {
    if locked:
        emit 0x56c12d7b: 9
    else:
        if 1 == arg1:
            if arg2 >= 0:
                if 0 == arg3:
                    if stor259[address(msg.sender)] != 0:
                        if not stor260[call.data[0 len calldata.size]].field_0:
                            stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
                            stor260[call.data[0 len calldata.size]].field_256 = 0
                            stor261.length++
                            if not stor261.length <= stor261.length + 1:
                                idx = stor261.length + 1
                                while stor261.length > idx:
                                    stor261[idx] = 0
                                    idx = idx + 1
                                    continue 
                            stor260[call.data[0 len calldata.size]].field_512 = stor261.length
                            require stor261.length < stor261.length
                            storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
                        if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
                            emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                            if stor260[call.data[0 len calldata.size]].field_0 > 1:
                                stor260[call.data[0 len calldata.size]].field_0--
                                stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
                            else:
                                require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                                storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                                stor260[call.data[0 len calldata.size]].field_0 = 0
                                stor260[call.data[0 len calldata.size]].field_256 = 0
                                stor260[call.data[0 len calldata.size]].field_512 = 0
                                idx = 0
                                while idx < stor261.length:
                                    mem[0] = 261
                                    if storE0FC[idx]:
                                        require idx < stor261.length
                                        mem[0] = storE0FC[idx]
                                        mem[32] = 260
                                        stor260[storE0FC[idx]].field_0 = 0
                                        stor260[storE0FC[idx]].field_256 = 0
                                        stor260[storE0FC[idx]].field_512 = 0
                                    idx = idx + 1
                                    continue 
                                stor261.length = 0
                                idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                                while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                                    stor[idx] = 0
                                    idx = idx + 1
                                    continue 
                                uint256(stor266) = arg1 or Mask(248, 8, uint256(stor266))
                                feeAmount = arg2
                                feeNumerator = arg3
                                emit 0x7461fa97: arg1, arg2, arg3
        else:
            if arg1 != 2:
                if stor259[address(msg.sender)] != 0:
                    if not stor260[call.data[0 len calldata.size]].field_0:
                        stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
                        stor260[call.data[0 len calldata.size]].field_256 = 0
                        stor261.length++
                        if not stor261.length <= stor261.length + 1:
                            idx = stor261.length + 1
                            while stor261.length > idx:
                                stor261[idx] = 0
                                idx = idx + 1
                                continue 
                        stor260[call.data[0 len calldata.size]].field_512 = stor261.length
                        require stor261.length < stor261.length
                        storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
                    if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
                        emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                        if stor260[call.data[0 len calldata.size]].field_0 > 1:
                            stor260[call.data[0 len calldata.size]].field_0--
                            stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
                        else:
                            require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                            storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                            stor260[call.data[0 len calldata.size]].field_0 = 0
                            stor260[call.data[0 len calldata.size]].field_256 = 0
                            stor260[call.data[0 len calldata.size]].field_512 = 0
                            idx = 0
                            while idx < stor261.length:
                                mem[0] = 261
                                if storE0FC[idx]:
                                    require idx < stor261.length
                                    mem[0] = storE0FC[idx]
                                    mem[32] = 260
                                    stor260[storE0FC[idx]].field_0 = 0
                                    stor260[storE0FC[idx]].field_256 = 0
                                    stor260[storE0FC[idx]].field_512 = 0
                                idx = idx + 1
                                continue 
                            stor261.length = 0
                            idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                            while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                                stor[idx] = 0
                                idx = idx + 1
                                continue 
                            uint256(stor266) = arg1 or Mask(248, 8, uint256(stor266))
                            feeAmount = arg2
                            feeNumerator = arg3
                            emit 0x7461fa97: arg1, arg2, arg3
            else:
                if arg2 > 0:
                    if arg3 > 0:
                        if arg2 <= arg3:
                            if stor259[address(msg.sender)] != 0:
                                if not stor260[call.data[0 len calldata.size]].field_0:
                                    stor260[call.data[0 len calldata.size]].field_0 = sub_6c1a5f85
                                    stor260[call.data[0 len calldata.size]].field_256 = 0
                                    stor261.length++
                                    if not stor261.length <= stor261.length + 1:
                                        idx = stor261.length + 1
                                        while stor261.length > idx:
                                            stor261[idx] = 0
                                            idx = idx + 1
                                            continue 
                                    stor260[call.data[0 len calldata.size]].field_512 = stor261.length
                                    require stor261.length < stor261.length
                                    storE0FC[stor261.length] = sha3(call.data[0 len calldata.size])
                                if 0 == 2^stor259[address(msg.sender)] and stor260[call.data[0 len calldata.size]].field_256:
                                    emit Confirmation(msg.sender, sha3(call.data[0 len calldata.size]));
                                    if stor260[call.data[0 len calldata.size]].field_0 > 1:
                                        stor260[call.data[0 len calldata.size]].field_0--
                                        stor260[call.data[0 len calldata.size]].field_256 = 2^stor259[address(msg.sender)] or stor260[call.data[0 len calldata.size]].field_256
                                    else:
                                        require stor260[call.data[0 len calldata.size]].field_512 < stor261.length
                                        storE0FC[stor260[call.data[0 len calldata.size]].field_512] = 0
                                        stor260[call.data[0 len calldata.size]].field_0 = 0
                                        stor260[call.data[0 len calldata.size]].field_256 = 0
                                        stor260[call.data[0 len calldata.size]].field_512 = 0
                                        idx = 0
                                        while idx < stor261.length:
                                            mem[0] = 261
                                            if storE0FC[idx]:
                                                require idx < stor261.length
                                                mem[0] = storE0FC[idx]
                                                mem[32] = 260
                                                stor260[storE0FC[idx]].field_0 = 0
                                                stor260[storE0FC[idx]].field_256 = 0
                                                stor260[storE0FC[idx]].field_512 = 0
                                            idx = idx + 1
                                            continue 
                                        stor261.length = 0
                                        idx = 0xe0fc62abc8c0fc47c2d92f5aec99bf8b60f375828e14394d89345cae11a98673
                                        while stor261.length - 0x1f039d54373f03b83d26d0a5136640749f0c8a7d71ebc6b276cba351ee56798d > idx:
                                            stor[idx] = 0
                                            idx = idx + 1
                                            continue 
                                        uint256(stor266) = arg1 or Mask(248, 8, uint256(stor266))
                                        feeAmount = arg2
                                        feeNumerator = arg3
                                        emit 0x7461fa97: arg1, arg2, arg3
}

function deposit(uint256 arg1) payable {
    if 0 == arg1:
        return 0
    if uint8(sub_333bc79c[arg1].field_0):
        if uint8(sub_333bc79c[arg1].field_0) == 1:
            if sub_333bc79c[arg1].field_256 >= msg.value:
                totalFee += msg.value
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, tx.origin, 0, msg.value);
            else:
                totalBalance = msg.value - sub_333bc79c[arg1].field_256 + totalBalance
                totalFee += sub_333bc79c[arg1].field_256
                get[arg1] = msg.value - sub_333bc79c[arg1].field_256 + get[arg1]
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, tx.origin, msg.value - sub_333bc79c[arg1].field_256, sub_333bc79c[arg1].field_256);
        else:
            if uint8(sub_333bc79c[arg1].field_0) != 2:
                if 0 >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, 0, msg.value);
                else:
                    totalBalance += msg.value
                    get[arg1] += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, msg.value, 0);
            else:
                if msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512 >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, 0, msg.value);
                else:
                    totalBalance = msg.value - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) + totalBalance
                    totalFee += msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512
                    get[arg1] = msg.value - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) + get[arg1]
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, msg.value - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512), msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512);
    else:
        if 0 == uint8(sub_d4c57b85):
            if 0 >= msg.value:
                totalFee += msg.value
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, tx.origin, 0, msg.value);
            else:
                totalBalance += msg.value
                get[arg1] += msg.value
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, tx.origin, msg.value, 0);
        else:
            if uint8(sub_d4c57b85) == 1:
                if feeAmount >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, 0, msg.value);
                else:
                    totalBalance = msg.value - feeAmount + totalBalance
                    totalFee += feeAmount
                    get[arg1] = msg.value - feeAmount + get[arg1]
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, tx.origin, msg.value - feeAmount, feeAmount);
            else:
                if uint8(sub_d4c57b85) != 2:
                    if 0 >= msg.value:
                        totalFee += msg.value
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, tx.origin, 0, msg.value);
                    else:
                        totalBalance += msg.value
                        get[arg1] += msg.value
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, tx.origin, msg.value, 0);
                else:
                    if msg.value * feeAmount / feeNumerator >= msg.value:
                        totalFee += msg.value
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, tx.origin, 0, msg.value);
                    else:
                        totalBalance = msg.value - (msg.value * feeAmount / feeNumerator) + totalBalance
                        totalFee += msg.value * feeAmount / feeNumerator
                        get[arg1] = msg.value - (msg.value * feeAmount / feeNumerator) + get[arg1]
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, tx.origin, msg.value - (msg.value * feeAmount / feeNumerator), msg.value * feeAmount / feeNumerator);
    return 1
}

function sub_a70c1697(?) payable {
    if arg2 < 0:
        return 0
    if 0 == arg1:
        return 0
    if uint8(sub_333bc79c[arg1].field_0):
        if uint8(sub_333bc79c[arg1].field_0) == 1:
            if arg2 + sub_333bc79c[arg1].field_256 >= msg.value:
                totalFee += msg.value
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, address(arg3), 0, msg.value);
            else:
                totalBalance = msg.value - arg2 - sub_333bc79c[arg1].field_256 + totalBalance
                totalFee = arg2 + sub_333bc79c[arg1].field_256 + totalFee
                get[arg1] = msg.value - arg2 - sub_333bc79c[arg1].field_256 + get[arg1]
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, address(arg3), msg.value - arg2 - sub_333bc79c[arg1].field_256, arg2 + sub_333bc79c[arg1].field_256);
        else:
            if uint8(sub_333bc79c[arg1].field_0) != 2:
                if arg2 >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), 0, msg.value);
                else:
                    totalBalance = msg.value - arg2 + totalBalance
                    totalFee += arg2
                    get[arg1] = msg.value - arg2 + get[arg1]
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), msg.value - arg2, arg2);
            else:
                if arg2 + (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), 0, msg.value);
                else:
                    totalBalance = msg.value - arg2 - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) + totalBalance
                    totalFee = arg2 + (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) + totalFee
                    get[arg1] = msg.value - arg2 - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512) + get[arg1]
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), msg.value - arg2 - (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512), arg2 + (msg.value * sub_333bc79c[arg1].field_256 / sub_333bc79c[arg1].field_512));
    else:
        if 0 == uint8(sub_d4c57b85):
            if arg2 >= msg.value:
                totalFee += msg.value
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, address(arg3), 0, msg.value);
            else:
                totalBalance = msg.value - arg2 + totalBalance
                totalFee += arg2
                get[arg1] = msg.value - arg2 + get[arg1]
                if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                    if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                        if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                            call address(coldWalletAddress) with:
                               value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                 gas gas_remaining - 34050 wei
                            if ext_call.success:
                                emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                emit Receive(arg1, address(arg3), msg.value - arg2, arg2);
        else:
            if uint8(sub_d4c57b85) == 1:
                if arg2 + feeAmount >= msg.value:
                    totalFee += msg.value
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), 0, msg.value);
                else:
                    totalBalance = msg.value - arg2 - feeAmount + totalBalance
                    totalFee = arg2 + feeAmount + totalFee
                    get[arg1] = msg.value - arg2 - feeAmount + get[arg1]
                    if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                        if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                            if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                call address(coldWalletAddress) with:
                                   value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                     gas gas_remaining - 34050 wei
                                if ext_call.success:
                                    emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                    emit Receive(arg1, address(arg3), msg.value - arg2 - feeAmount, arg2 + feeAmount);
            else:
                if uint8(sub_d4c57b85) != 2:
                    if arg2 >= msg.value:
                        totalFee += msg.value
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, address(arg3), 0, msg.value);
                    else:
                        totalBalance = msg.value - arg2 + totalBalance
                        totalFee += arg2
                        get[arg1] = msg.value - arg2 + get[arg1]
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, address(arg3), msg.value - arg2, arg2);
                else:
                    if arg2 + (msg.value * feeAmount / feeNumerator) >= msg.value:
                        totalFee += msg.value
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, address(arg3), 0, msg.value);
                    else:
                        totalBalance = msg.value - arg2 - (msg.value * feeAmount / feeNumerator) + totalBalance
                        totalFee = arg2 + (msg.value * feeAmount / feeNumerator) + totalFee
                        get[arg1] = msg.value - arg2 - (msg.value * feeAmount / feeNumerator) + get[arg1]
                        if eth.balance(this.address) > sub_886da5e5 * totalBalance / sub_9d5e8956:
                            if eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) > 0:
                                if totalBalance * sub_172be614 / sub_4999ec14 >= sub_abd7e80b:
                                    call address(coldWalletAddress) with:
                                       value eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14) wei
                                         gas gas_remaining - 34050 wei
                                    if ext_call.success:
                                        emit 0xcc22d006: address(coldWalletAddress), eth.balance(this.address) - (totalBalance * sub_172be614 / sub_4999ec14)
                        emit Receive(arg1, address(arg3), msg.value - arg2 - (msg.value * feeAmount / feeNumerator), arg2 + (msg.value * feeAmount / feeNumerator));
    return 1
}



}
