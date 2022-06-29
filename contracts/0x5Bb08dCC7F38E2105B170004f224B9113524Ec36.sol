contract main {




// =====================  Runtime code  =====================


#
#  - sub_25b07a43(?)
#  - poke(address arg1)
#
const sub_07a139be(?) = 10^16

const sub_262de7bc(?) = (3 * 3600)

const sub_588fcfd8(?) = 15

const sub_5de357a2(?) = (720 * 24 * 3600)

const sub_b7087451(?) = 10^16

const sub_fe131778(?) = 210

const ETHER = 0

const CHECKPOINT_REWARD = 10^18


address uniswapAddress;
mapping of struct accounts;
mapping of address sub_879747d2;
mapping of struct stor3;

function uniswap() {
    return uniswapAddress
}

function sub_879747d2(?) {
    require calldata.size - 4 >= 32
    return sub_879747d2[arg1]
}

function accounts(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return accounts[arg1][arg2].field_0, accounts[arg1][arg2].field_256
}

function getAccount(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return accounts[address(arg1)][address(arg2)].field_0, accounts[address(arg1)][address(arg2)].field_256
}

function _fallback() payable {
    revert
}

function sub_a67986a2(?) {
    require calldata.size - 4 >= 64
    if 0 == accounts[address(arg1)][address(arg2)].field_256:
        return 0
    if accounts[address(arg1)][address(arg2)].field_256 > block.timestamp:
        revert with 0, 'SafeMath#sub: Integer underflow'
    if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][address(arg2)].field_256:
        revert with 0, 'SafeMath#mul: Integer overflow'
    return ((10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600)
}

function collect(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if accounts[address(arg1)][address(arg2)].field_0:
        if 0 == accounts[address(arg1)][address(arg2)].field_256:
            if 0 < accounts[address(arg1)][address(arg2)].field_0:
                call sub_879747d2[address(arg1)] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > accounts[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][address(arg2)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][address(arg2)].field_0 = 0
        else:
            if accounts[address(arg1)][address(arg2)].field_256 > block.timestamp:
                revert with 0, 'SafeMath#sub: Integer underflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][address(arg2)].field_256:
                revert with 0, 'SafeMath#mul: Integer overflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600 >= accounts[address(arg1)][address(arg2)].field_0:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][address(arg2)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][address(arg2)].field_0 = 0
            else:
                call sub_879747d2[address(arg1)] with:
                   value (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600 > accounts[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
                accounts[address(arg1)][address(arg2)].field_0 -= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600
    accounts[address(arg1)][address(arg2)].field_256 = block.timestamp
}

function subscribe(address arg1) payable {
    require calldata.size - 4 >= 32
    if accounts[address(arg1)][msg.sender].field_0:
        if 0 == accounts[address(arg1)][msg.sender].field_256:
            if 0 < accounts[address(arg1)][msg.sender].field_0:
                call sub_879747d2[address(arg1)] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
        else:
            if accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath#sub: Integer underflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                revert with 0, 'SafeMath#mul: Integer overflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 >= accounts[address(arg1)][msg.sender].field_0:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
            else:
                call sub_879747d2[address(arg1)] with:
                   value (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
                accounts[address(arg1)][msg.sender].field_0 -= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600
    accounts[address(arg1)][msg.sender].field_256 = block.timestamp
    if msg.value + accounts[address(arg1)][msg.sender].field_0 < accounts[address(arg1)][msg.sender].field_0:
        revert with 0, 'SafeMath#add: Integer overflow'
    accounts[address(arg1)][msg.sender].field_0 += msg.value
    if 10^16 > msg.value + accounts[address(arg1)][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'UniswapPriceOracle::subscribe: Account balance is below the minimum'
    emit 0x93837e03: msg.value, arg1, msg.sender
}

function unsubscribe(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if accounts[address(arg1)][msg.sender].field_0:
        if 0 == accounts[address(arg1)][msg.sender].field_256:
            if 0 < accounts[address(arg1)][msg.sender].field_0:
                call sub_879747d2[address(arg1)] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
        else:
            if accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath#sub: Integer underflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                revert with 0, 'SafeMath#mul: Integer overflow'
            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 >= accounts[address(arg1)][msg.sender].field_0:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
            else:
                call sub_879747d2[address(arg1)] with:
                   value (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'SafeMath#sub: Integer underflow'
                accounts[address(arg1)][msg.sender].field_0 -= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600
    accounts[address(arg1)][msg.sender].field_256 = block.timestamp
    if 10^16 > accounts[address(arg1)][msg.sender].field_0:
        revert with 0, 'SafeMath#sub: Integer underflow'
    if arg2 < accounts[address(arg1)][msg.sender].field_0 - 10^16:
        if arg2 > accounts[address(arg1)][msg.sender].field_0:
            revert with 0, 'SafeMath#sub: Integer underflow'
        accounts[address(arg1)][msg.sender].field_0 -= arg2
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7a11eec6: arg2, arg1, msg.sender
    else:
        if accounts[address(arg1)][msg.sender].field_0 - 10^16 > accounts[address(arg1)][msg.sender].field_0:
            revert with 0, 'SafeMath#sub: Integer underflow'
        accounts[address(arg1)][msg.sender].field_0 = 10^16
        call msg.sender with:
           value accounts[address(arg1)][msg.sender].field_0 - 10^16 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7a11eec6: (accounts[address(arg1)][msg.sender].field_0 - 10^16), arg1, msg.sender
    return 0
}

function sub_ef9152d1(?) {
    require calldata.size - 4 >= 96
    if msg.sender != tx.origin:
        if arg1:
            if 0 == accounts[address(arg1)][msg.sender].field_256:
                if accounts[address(arg1)][msg.sender].field_0 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
            else:
                if accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                    revert with 0, 'SafeMath#sub: Integer underflow'
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                    revert with 0, 'SafeMath#mul: Integer overflow'
                if accounts[address(arg1)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
        if arg2:
            if 0 == accounts[address(arg2)][msg.sender].field_256:
                if accounts[address(arg2)][msg.sender].field_0 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
            else:
                if accounts[address(arg2)][msg.sender].field_256 > block.timestamp:
                    revert with 0, 'SafeMath#sub: Integer underflow'
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 10^16 != block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                    revert with 0, 'SafeMath#mul: Integer overflow'
                if accounts[address(arg2)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 720 * 24 * 3600:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
    if arg1 == arg2:
        return arg3
    if not arg1:
        if arg3 + stor3[address(arg2)].field_1280 < stor3[address(arg2)].field_1280:
            revert with 0, 'SafeMath#add: Integer overflow'
        if not arg3:
            if arg3 + stor3[address(arg2)].field_1280 <= 0:
                revert with 0, 'SafeMath#div: Invalid divisor zero'
            if arg3 + stor3[address(arg2)].field_1280:
                return (0 / arg3 + stor3[address(arg2)].field_1280)
        else:
            if stor3[address(arg2)].field_1536 * arg3 / arg3 != stor3[address(arg2)].field_1536:
                revert with 0, 'SafeMath#mul: Integer overflow'
            if arg3 + stor3[address(arg2)].field_1280 <= 0:
                revert with 0, 'SafeMath#div: Invalid divisor zero'
            if arg3 + stor3[address(arg2)].field_1280:
                return (stor3[address(arg2)].field_1536 * arg3 / arg3 + stor3[address(arg2)].field_1280)
        ('iszero', ('add', ('param', 'arg3'), ('field', 1280, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))))
    else:
        if arg3 + stor3[address(arg1)].field_1536 < stor3[address(arg1)].field_1536:
            revert with 0, 'SafeMath#add: Integer overflow'
        if not arg2:
            if not arg3:
                if arg3 + stor3[address(arg1)].field_1536 <= 0:
                    revert with 0, 'SafeMath#div: Invalid divisor zero'
                if arg3 + stor3[address(arg1)].field_1536:
                    return (0 / arg3 + stor3[address(arg1)].field_1536)
            else:
                if stor3[address(arg1)].field_1280 * arg3 / arg3 != stor3[address(arg1)].field_1280:
                    revert with 0, 'SafeMath#mul: Integer overflow'
                if arg3 + stor3[address(arg1)].field_1536 <= 0:
                    revert with 0, 'SafeMath#div: Invalid divisor zero'
                if arg3 + stor3[address(arg1)].field_1536:
                    return (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536)
            ('iszero', ('add', ('param', 'arg3'), ('field', 1536, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))))))
        else:
            if not arg3:
                if arg3 + stor3[address(arg1)].field_1536 <= 0:
                    revert with 0, 'SafeMath#div: Invalid divisor zero'
                if arg3 + stor3[address(arg1)].field_1536:
                    if (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 < stor3[address(arg2)].field_1536:
                        revert with 0, 'SafeMath#add: Integer overflow'
                    if not 0 / arg3 + stor3[address(arg1)].field_1536:
                        if (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 <= 0:
                            revert with 0, 'SafeMath#div: Invalid divisor zero'
                        if (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536:
                            return (0 / (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536)
                    else:
                        if stor3[address(arg2)].field_1280 * 0 / arg3 + stor3[address(arg1)].field_1536 / 0 / arg3 + stor3[address(arg1)].field_1536 != stor3[address(arg2)].field_1280:
                            revert with 0, 'SafeMath#mul: Integer overflow'
                        if (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 <= 0:
                            revert with 0, 'SafeMath#div: Invalid divisor zero'
                        if (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536:
                            return (stor3[address(arg2)].field_1280 * 0 / arg3 + stor3[address(arg1)].field_1536 / (0 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536)
                    ('iszero', ('add', ('div', 0, ('add', ('param', 'arg3'), ('field', 1536, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))))), ('field', 1536, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))))
            else:
                if stor3[address(arg1)].field_1280 * arg3 / arg3 != stor3[address(arg1)].field_1280:
                    revert with 0, 'SafeMath#mul: Integer overflow'
                if arg3 + stor3[address(arg1)].field_1536 <= 0:
                    revert with 0, 'SafeMath#div: Invalid divisor zero'
                if arg3 + stor3[address(arg1)].field_1536:
                    if (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 < stor3[address(arg2)].field_1536:
                        revert with 0, 'SafeMath#add: Integer overflow'
                    if not stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536:
                        if (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 <= 0:
                            revert with 0, 'SafeMath#div: Invalid divisor zero'
                        if (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536:
                            return (0 / (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536)
                    else:
                        if stor3[address(arg2)].field_1280 * stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536 / stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536 != stor3[address(arg2)].field_1280:
                            revert with 0, 'SafeMath#mul: Integer overflow'
                        if (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536 <= 0:
                            revert with 0, 'SafeMath#div: Invalid divisor zero'
                        if (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536:
                            return (stor3[address(arg2)].field_1280 * stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536 / (stor3[address(arg1)].field_1280 * arg3 / arg3 + stor3[address(arg1)].field_1536) + stor3[address(arg2)].field_1536)
                    ('iszero', ('add', ('div', ('mul', ('field', 1280, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))), ('param', 'arg3')), ('add', ('param', 'arg3'), ('field', 1536, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))))), ('field', 1536, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))))
    revert
}

function sub_3cf244a9(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[320] = 0
    mem[352] = 0
    mem[256] = 320
    if 0 == accounts[address(arg1)][msg.sender].field_256:
        if accounts[address(arg1)][msg.sender].field_0 > 0:
            mem[0] = arg1
            mem[32] = 3
            mem[384] = stor3[address(arg1)].field_0
            mem[416] = stor3[address(arg1)].field_256
            mem[448] = stor3[address(arg1)].field_512
            mem[64] = (32 * stor3[address(arg1)].field_768) + 608
            mem[576] = stor3[address(arg1)].field_768
            s = 608
            idx = 0
            while idx < stor3[address(arg1)].field_768:
                mem[0] = sha3(address(arg1), 3) + 3
                _129 = mem[64]
                mem[64] = mem[64] + 64
                mem[_129] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_129 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _129
                s = s + 32
                idx = idx + 1
                continue 
            mem[480] = 576
            _127 = mem[64]
            mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
            mem[_127] = stor3[address(arg1)].field_1024
            s = _127 + 32
            idx = 0
            while idx < stor3[address(arg1)].field_1024:
                mem[0] = sha3(address(arg1), 3) + 4
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_225 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _225
                s = s + 32
                idx = idx + 1
                continue 
            mem[512] = _127
            _223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_223] = stor3[address(arg1)].field_1280
            mem[_223 + 32] = stor3[address(arg1)].field_1536
            mem[544] = _223
            _231 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[415 len 1]
            mem[mem[64] + 64] = mem[416]
            mem[mem[64] + 96] = mem[448]
            _247 = mem[480]
            mem[mem[64] + 128] = 224
            _251 = mem[_247]
            mem[mem[64] + 256] = mem[_247]
            idx = 0
            s = _247 + 32
            t = mem[64] + 288
            while idx < _251:
                _303 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_303 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _309 = mem[512]
            mem[_231 + 160] = (64 * _251) + 256
            _315 = mem[_309]
            mem[_231 + (64 * _251) + 288] = mem[_309]
            idx = 0
            s = _309 + 32
            t = _231 + (64 * _251) + 320
            while idx < _315:
                _351 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_351 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _357 = mem[544]
            mem[_231 + 192] = mem[mem[544]]
            mem[_231 + 224] = mem[_357 + 32]
            return memory
              from mem[64]
               len _231 + (64 * _251) + (64 * _315) + -mem[64] + 320
        if msg.sender != tx.origin:
            revert with 0, 'UniswapPriceOracle::getMedianizer: Not subscribed'
        mem[0] = arg1
        mem[32] = 3
        mem[384] = stor3[address(arg1)].field_0
        mem[416] = stor3[address(arg1)].field_256
        mem[448] = stor3[address(arg1)].field_512
        mem[64] = (32 * stor3[address(arg1)].field_768) + 608
        mem[576] = stor3[address(arg1)].field_768
        s = 608
        idx = 0
        while idx < stor3[address(arg1)].field_768:
            mem[0] = sha3(address(arg1), 3) + 3
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_132 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _132
            s = s + 32
            idx = idx + 1
            continue 
        mem[480] = 576
        _130 = mem[64]
        mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
        mem[_130] = stor3[address(arg1)].field_1024
        s = _130 + 32
        idx = 0
        while idx < stor3[address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), 3) + 4
            _228 = mem[64]
            mem[64] = mem[64] + 64
            mem[_228] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_228 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _228
            s = s + 32
            idx = idx + 1
            continue 
        mem[512] = _130
        _226 = mem[64]
        mem[64] = mem[64] + 64
        mem[_226] = stor3[address(arg1)].field_1280
        mem[_226 + 32] = stor3[address(arg1)].field_1536
        mem[544] = _226
        _232 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[415 len 1]
        mem[mem[64] + 64] = mem[416]
        mem[mem[64] + 96] = mem[448]
        _248 = mem[480]
        mem[mem[64] + 128] = 224
        _252 = mem[_248]
        mem[mem[64] + 256] = mem[_248]
        idx = 0
        s = _248 + 32
        t = mem[64] + 288
        while idx < _252:
            _304 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_304 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _311 = mem[512]
        mem[_232 + 160] = (64 * _252) + 256
        _316 = mem[_311]
        mem[_232 + (64 * _252) + 288] = mem[_311]
        idx = 0
        s = _311 + 32
        t = _232 + (64 * _252) + 320
        while idx < _316:
            _352 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_352 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _359 = mem[544]
        mem[_232 + 192] = mem[mem[544]]
        mem[_232 + 224] = mem[_359 + 32]
        return memory
          from mem[64]
           len _232 + (64 * _252) + (64 * _316) + -mem[64] + 320
    if accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
        revert with 0, 'SafeMath#sub: Integer underflow'
    if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 10^16 != block.timestamp - accounts[address(arg1)][msg.sender].field_256:
        revert with 0, 'SafeMath#mul: Integer overflow'
    if accounts[address(arg1)][msg.sender].field_0 > (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600:
        mem[0] = arg1
        mem[32] = 3
        mem[384] = stor3[address(arg1)].field_0
        mem[416] = stor3[address(arg1)].field_256
        mem[448] = stor3[address(arg1)].field_512
        mem[64] = (32 * stor3[address(arg1)].field_768) + 608
        mem[576] = stor3[address(arg1)].field_768
        s = 608
        idx = 0
        while idx < stor3[address(arg1)].field_768:
            mem[0] = sha3(address(arg1), 3) + 3
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_123 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _123
            s = s + 32
            idx = idx + 1
            continue 
        mem[480] = 576
        _121 = mem[64]
        mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
        mem[_121] = stor3[address(arg1)].field_1024
        s = _121 + 32
        idx = 0
        while idx < stor3[address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), 3) + 4
            _219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_219] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_219 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _219
            s = s + 32
            idx = idx + 1
            continue 
        mem[512] = _121
        _217 = mem[64]
        mem[64] = mem[64] + 64
        mem[_217] = stor3[address(arg1)].field_1280
        mem[_217 + 32] = stor3[address(arg1)].field_1536
        mem[544] = _217
        _229 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[415 len 1]
        mem[mem[64] + 64] = mem[416]
        mem[mem[64] + 96] = mem[448]
        _245 = mem[480]
        mem[mem[64] + 128] = 224
        _249 = mem[_245]
        mem[mem[64] + 256] = mem[_245]
        idx = 0
        s = _245 + 32
        t = mem[64] + 288
        while idx < _249:
            _301 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_301 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _305 = mem[512]
        mem[_229 + 160] = (64 * _249) + 256
        _313 = mem[_305]
        mem[_229 + (64 * _249) + 288] = mem[_305]
        idx = 0
        s = _305 + 32
        t = _229 + (64 * _249) + 320
        while idx < _313:
            _349 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_349 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _353 = mem[544]
        mem[_229 + 192] = mem[mem[544]]
        mem[_229 + 224] = mem[_353 + 32]
        return memory
          from mem[64]
           len _229 + (64 * _249) + (64 * _313) + -mem[64] + 320
    if msg.sender != tx.origin:
        revert with 0, 'UniswapPriceOracle::getMedianizer: Not subscribed'
    mem[0] = arg1
    mem[32] = 3
    mem[384] = stor3[address(arg1)].field_0
    mem[416] = stor3[address(arg1)].field_256
    mem[448] = stor3[address(arg1)].field_512
    mem[64] = (32 * stor3[address(arg1)].field_768) + 608
    mem[576] = stor3[address(arg1)].field_768
    s = 608
    idx = 0
    while idx < stor3[address(arg1)].field_768:
        mem[0] = sha3(address(arg1), 3) + 3
        _126 = mem[64]
        mem[64] = mem[64] + 64
        mem[_126] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_126 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _126
        s = s + 32
        idx = idx + 1
        continue 
    mem[480] = 576
    _124 = mem[64]
    mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
    mem[_124] = stor3[address(arg1)].field_1024
    s = _124 + 32
    idx = 0
    while idx < stor3[address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), 3) + 4
        _222 = mem[64]
        mem[64] = mem[64] + 64
        mem[_222] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_222 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _222
        s = s + 32
        idx = idx + 1
        continue 
    mem[512] = _124
    _220 = mem[64]
    mem[64] = mem[64] + 64
    mem[_220] = stor3[address(arg1)].field_1280
    mem[_220 + 32] = stor3[address(arg1)].field_1536
    mem[544] = _220
    _230 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[415 len 1]
    mem[mem[64] + 64] = mem[416]
    mem[mem[64] + 96] = mem[448]
    _246 = mem[480]
    mem[mem[64] + 128] = 224
    _250 = mem[_246]
    mem[mem[64] + 256] = mem[_246]
    idx = 0
    s = _246 + 32
    t = mem[64] + 288
    while idx < _250:
        _302 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_302 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _307 = mem[512]
    mem[_230 + 160] = (64 * _250) + 256
    _314 = mem[_307]
    mem[_230 + (64 * _250) + 288] = mem[_307]
    idx = 0
    s = _307 + 32
    t = _230 + (64 * _250) + 320
    while idx < _314:
        _350 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_350 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _355 = mem[544]
    mem[_230 + 192] = mem[mem[544]]
    mem[_230 + 224] = mem[_355 + 32]
    return memory
      from mem[64]
       len _230 + (64 * _250) + (64 * _314) + -mem[64] + 320
}



}
