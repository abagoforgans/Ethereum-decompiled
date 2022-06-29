contract main {




// =====================  Runtime code  =====================


#
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
    if block.timestamp - accounts[address(arg1)][address(arg2)].field_256 > block.timestamp:
        revert with 0, 'DSMath::sub: Integer underflow'
    if not block.timestamp - accounts[address(arg1)][address(arg2)].field_256:
        return 0
    require block.timestamp - accounts[address(arg1)][address(arg2)].field_256
    if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / block.timestamp - accounts[address(arg1)][address(arg2)].field_256 != 10^16:
        revert with 0, 'DSMath::mul: Integer overflow'
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
                if accounts[address(arg1)][address(arg2)].field_0 > accounts[address(arg1)][address(arg2)].field_0:
                    revert with 0, 'DSMath::sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][address(arg2)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][address(arg2)].field_0 = 0
        else:
            if block.timestamp - accounts[address(arg1)][address(arg2)].field_256 > block.timestamp:
                revert with 0, 'DSMath::sub: Integer underflow'
            if not block.timestamp - accounts[address(arg1)][address(arg2)].field_256:
                if 0 < accounts[address(arg1)][address(arg2)].field_0:
                    call sub_879747d2[address(arg1)] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if accounts[address(arg1)][address(arg2)].field_0 > accounts[address(arg1)][address(arg2)].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
                else:
                    call sub_879747d2[address(arg1)] with:
                       value accounts[address(arg1)][address(arg2)].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    accounts[address(arg1)][address(arg2)].field_0 = 0
            else:
                require block.timestamp - accounts[address(arg1)][address(arg2)].field_256
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / block.timestamp - accounts[address(arg1)][address(arg2)].field_256 != 10^16:
                    revert with 0, 'DSMath::mul: Integer overflow'
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
                    if accounts[address(arg1)][address(arg2)].field_0 - ((10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][address(arg2)].field_256) / 720 * 24 * 3600) > accounts[address(arg1)][address(arg2)].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
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
                if accounts[address(arg1)][msg.sender].field_0 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'DSMath::sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
        else:
            if block.timestamp - accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                revert with 0, 'DSMath::sub: Integer underflow'
            if not block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                if 0 < accounts[address(arg1)][msg.sender].field_0:
                    call sub_879747d2[address(arg1)] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if accounts[address(arg1)][msg.sender].field_0 > accounts[address(arg1)][msg.sender].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
                else:
                    call sub_879747d2[address(arg1)] with:
                       value accounts[address(arg1)][msg.sender].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    accounts[address(arg1)][msg.sender].field_0 = 0
            else:
                require block.timestamp - accounts[address(arg1)][msg.sender].field_256
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / block.timestamp - accounts[address(arg1)][msg.sender].field_256 != 10^16:
                    revert with 0, 'DSMath::mul: Integer overflow'
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
                    if accounts[address(arg1)][msg.sender].field_0 - ((10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600) > accounts[address(arg1)][msg.sender].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
                    accounts[address(arg1)][msg.sender].field_0 -= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600
    accounts[address(arg1)][msg.sender].field_256 = block.timestamp
    if accounts[address(arg1)][msg.sender].field_0 + msg.value < accounts[address(arg1)][msg.sender].field_0:
        revert with 0, 'DSMath::add: Integer overflow'
    accounts[address(arg1)][msg.sender].field_0 += msg.value
    if 10^16 > accounts[address(arg1)][msg.sender].field_0 + msg.value:
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
                if accounts[address(arg1)][msg.sender].field_0 > accounts[address(arg1)][msg.sender].field_0:
                    revert with 0, 'DSMath::sub: Integer underflow'
            else:
                call sub_879747d2[address(arg1)] with:
                   value accounts[address(arg1)][msg.sender].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                accounts[address(arg1)][msg.sender].field_0 = 0
        else:
            if block.timestamp - accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                revert with 0, 'DSMath::sub: Integer underflow'
            if not block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                if 0 < accounts[address(arg1)][msg.sender].field_0:
                    call sub_879747d2[address(arg1)] with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if accounts[address(arg1)][msg.sender].field_0 > accounts[address(arg1)][msg.sender].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
                else:
                    call sub_879747d2[address(arg1)] with:
                       value accounts[address(arg1)][msg.sender].field_0 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    accounts[address(arg1)][msg.sender].field_0 = 0
            else:
                require block.timestamp - accounts[address(arg1)][msg.sender].field_256
                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / block.timestamp - accounts[address(arg1)][msg.sender].field_256 != 10^16:
                    revert with 0, 'DSMath::mul: Integer overflow'
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
                    if accounts[address(arg1)][msg.sender].field_0 - ((10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600) > accounts[address(arg1)][msg.sender].field_0:
                        revert with 0, 'DSMath::sub: Integer underflow'
                    accounts[address(arg1)][msg.sender].field_0 -= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600
    accounts[address(arg1)][msg.sender].field_256 = block.timestamp
    if accounts[address(arg1)][msg.sender].field_0 - 10^16 > accounts[address(arg1)][msg.sender].field_0:
        revert with 0, 'DSMath::sub: Integer underflow'
    if arg2 <= accounts[address(arg1)][msg.sender].field_0 - 10^16:
        if accounts[address(arg1)][msg.sender].field_0 - arg2 > accounts[address(arg1)][msg.sender].field_0:
            revert with 0, 'DSMath::sub: Integer underflow'
        accounts[address(arg1)][msg.sender].field_0 -= arg2
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7a11eec6: arg2, arg1, msg.sender
    else:
        if 10^16 > accounts[address(arg1)][msg.sender].field_0:
            revert with 0, 'DSMath::sub: Integer underflow'
        accounts[address(arg1)][msg.sender].field_0 = 10^16
        call msg.sender with:
           value accounts[address(arg1)][msg.sender].field_0 - 10^16 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7a11eec6: (accounts[address(arg1)][msg.sender].field_0 - 10^16), arg1, msg.sender
    return 0
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
                _191 = mem[64]
                mem[64] = mem[64] + 64
                mem[_191] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_191 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _191
                s = s + 32
                idx = idx + 1
                continue 
            mem[480] = 576
            _189 = mem[64]
            mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
            mem[_189] = stor3[address(arg1)].field_1024
            s = _189 + 32
            idx = 0
            while idx < stor3[address(arg1)].field_1024:
                mem[0] = sha3(address(arg1), 3) + 4
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_335 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _335
                s = s + 32
                idx = idx + 1
                continue 
            mem[512] = _189
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = stor3[address(arg1)].field_1280
            mem[_333 + 32] = stor3[address(arg1)].field_1536
            mem[544] = _333
            _343 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[415 len 1]
            mem[mem[64] + 64] = mem[416]
            mem[mem[64] + 96] = mem[448]
            _367 = mem[480]
            mem[mem[64] + 128] = 224
            _373 = mem[_367]
            mem[mem[64] + 256] = mem[_367]
            idx = 0
            s = _367 + 32
            t = mem[64] + 288
            while idx < _373:
                _451 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_451 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _461 = mem[512]
            mem[_343 + 160] = (64 * _373) + 256
            _469 = mem[_461]
            mem[_343 + (64 * _373) + 288] = mem[_461]
            idx = 0
            s = _461 + 32
            t = _343 + (64 * _373) + 320
            while idx < _469:
                _523 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_523 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _533 = mem[544]
            mem[_343 + 192] = mem[mem[544]]
            mem[_343 + 224] = mem[_533 + 32]
            return memory
              from mem[64]
               len _343 + (64 * _373) + (64 * _469) + -mem[64] + 320
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
            _194 = mem[64]
            mem[64] = mem[64] + 64
            mem[_194] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_194 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _194
            s = s + 32
            idx = idx + 1
            continue 
        mem[480] = 576
        _192 = mem[64]
        mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
        mem[_192] = stor3[address(arg1)].field_1024
        s = _192 + 32
        idx = 0
        while idx < stor3[address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), 3) + 4
            _338 = mem[64]
            mem[64] = mem[64] + 64
            mem[_338] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_338 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _338
            s = s + 32
            idx = idx + 1
            continue 
        mem[512] = _192
        _336 = mem[64]
        mem[64] = mem[64] + 64
        mem[_336] = stor3[address(arg1)].field_1280
        mem[_336 + 32] = stor3[address(arg1)].field_1536
        mem[544] = _336
        _344 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[415 len 1]
        mem[mem[64] + 64] = mem[416]
        mem[mem[64] + 96] = mem[448]
        _368 = mem[480]
        mem[mem[64] + 128] = 224
        _374 = mem[_368]
        mem[mem[64] + 256] = mem[_368]
        idx = 0
        s = _368 + 32
        t = mem[64] + 288
        while idx < _374:
            _452 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_452 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _463 = mem[512]
        mem[_344 + 160] = (64 * _374) + 256
        _470 = mem[_463]
        mem[_344 + (64 * _374) + 288] = mem[_463]
        idx = 0
        s = _463 + 32
        t = _344 + (64 * _374) + 320
        while idx < _470:
            _524 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_524 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _535 = mem[544]
        mem[_344 + 192] = mem[mem[544]]
        mem[_344 + 224] = mem[_535 + 32]
        return memory
          from mem[64]
           len _344 + (64 * _374) + (64 * _470) + -mem[64] + 320
    if block.timestamp - accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
        revert with 0, 'DSMath::sub: Integer underflow'
    if not block.timestamp - accounts[address(arg1)][msg.sender].field_256:
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
                _179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_179] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_179 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _179
                s = s + 32
                idx = idx + 1
                continue 
            mem[480] = 576
            _177 = mem[64]
            mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
            mem[_177] = stor3[address(arg1)].field_1024
            s = _177 + 32
            idx = 0
            while idx < stor3[address(arg1)].field_1024:
                mem[0] = sha3(address(arg1), 3) + 4
                _323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_323] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
                mem[_323 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
                mem[s] = _323
                s = s + 32
                idx = idx + 1
                continue 
            mem[512] = _177
            _321 = mem[64]
            mem[64] = mem[64] + 64
            mem[_321] = stor3[address(arg1)].field_1280
            mem[_321 + 32] = stor3[address(arg1)].field_1536
            mem[544] = _321
            _339 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[415 len 1]
            mem[mem[64] + 64] = mem[416]
            mem[mem[64] + 96] = mem[448]
            _363 = mem[480]
            mem[mem[64] + 128] = 224
            _369 = mem[_363]
            mem[mem[64] + 256] = mem[_363]
            idx = 0
            s = _363 + 32
            t = mem[64] + 288
            while idx < _369:
                _447 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_447 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _453 = mem[512]
            mem[_339 + 160] = (64 * _369) + 256
            _465 = mem[_453]
            mem[_339 + (64 * _369) + 288] = mem[_453]
            idx = 0
            s = _453 + 32
            t = _339 + (64 * _369) + 320
            while idx < _465:
                _519 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_519 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            _525 = mem[544]
            mem[_339 + 192] = mem[mem[544]]
            mem[_339 + 224] = mem[_525 + 32]
            return memory
              from mem[64]
               len _339 + (64 * _369) + (64 * _465) + -mem[64] + 320
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
            _182 = mem[64]
            mem[64] = mem[64] + 64
            mem[_182] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_182 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _182
            s = s + 32
            idx = idx + 1
            continue 
        mem[480] = 576
        _180 = mem[64]
        mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
        mem[_180] = stor3[address(arg1)].field_1024
        s = _180 + 32
        idx = 0
        while idx < stor3[address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), 3) + 4
            _326 = mem[64]
            mem[64] = mem[64] + 64
            mem[_326] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_326 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _326
            s = s + 32
            idx = idx + 1
            continue 
        mem[512] = _180
        _324 = mem[64]
        mem[64] = mem[64] + 64
        mem[_324] = stor3[address(arg1)].field_1280
        mem[_324 + 32] = stor3[address(arg1)].field_1536
        mem[544] = _324
        _340 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[415 len 1]
        mem[mem[64] + 64] = mem[416]
        mem[mem[64] + 96] = mem[448]
        _364 = mem[480]
        mem[mem[64] + 128] = 224
        _370 = mem[_364]
        mem[mem[64] + 256] = mem[_364]
        idx = 0
        s = _364 + 32
        t = mem[64] + 288
        while idx < _370:
            _448 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_448 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _455 = mem[512]
        mem[_340 + 160] = (64 * _370) + 256
        _466 = mem[_455]
        mem[_340 + (64 * _370) + 288] = mem[_455]
        idx = 0
        s = _455 + 32
        t = _340 + (64 * _370) + 320
        while idx < _466:
            _520 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_520 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _527 = mem[544]
        mem[_340 + 192] = mem[mem[544]]
        mem[_340 + 224] = mem[_527 + 32]
        return memory
          from mem[64]
           len _340 + (64 * _370) + (64 * _466) + -mem[64] + 320
    require block.timestamp - accounts[address(arg1)][msg.sender].field_256
    if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / block.timestamp - accounts[address(arg1)][msg.sender].field_256 != 10^16:
        revert with 0, 'DSMath::mul: Integer overflow'
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
            _185 = mem[64]
            mem[64] = mem[64] + 64
            mem[_185] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_185 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _185
            s = s + 32
            idx = idx + 1
            continue 
        mem[480] = 576
        _183 = mem[64]
        mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
        mem[_183] = stor3[address(arg1)].field_1024
        s = _183 + 32
        idx = 0
        while idx < stor3[address(arg1)].field_1024:
            mem[0] = sha3(address(arg1), 3) + 4
            _329 = mem[64]
            mem[64] = mem[64] + 64
            mem[_329] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
            mem[_329 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
            mem[s] = _329
            s = s + 32
            idx = idx + 1
            continue 
        mem[512] = _183
        _327 = mem[64]
        mem[64] = mem[64] + 64
        mem[_327] = stor3[address(arg1)].field_1280
        mem[_327 + 32] = stor3[address(arg1)].field_1536
        mem[544] = _327
        _341 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[415 len 1]
        mem[mem[64] + 64] = mem[416]
        mem[mem[64] + 96] = mem[448]
        _365 = mem[480]
        mem[mem[64] + 128] = 224
        _371 = mem[_365]
        mem[mem[64] + 256] = mem[_365]
        idx = 0
        s = _365 + 32
        t = mem[64] + 288
        while idx < _371:
            _449 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_449 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _457 = mem[512]
        mem[_341 + 160] = (64 * _371) + 256
        _467 = mem[_457]
        mem[_341 + (64 * _371) + 288] = mem[_457]
        idx = 0
        s = _457 + 32
        t = _341 + (64 * _371) + 320
        while idx < _467:
            _521 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_521 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        _529 = mem[544]
        mem[_341 + 192] = mem[mem[544]]
        mem[_341 + 224] = mem[_529 + 32]
        return memory
          from mem[64]
           len _341 + (64 * _371) + (64 * _467) + -mem[64] + 320
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
        _188 = mem[64]
        mem[64] = mem[64] + 64
        mem[_188] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_188 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _188
        s = s + 32
        idx = idx + 1
        continue 
    mem[480] = 576
    _186 = mem[64]
    mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
    mem[_186] = stor3[address(arg1)].field_1024
    s = _186 + 32
    idx = 0
    while idx < stor3[address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), 3) + 4
        _332 = mem[64]
        mem[64] = mem[64] + 64
        mem[_332] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_332 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _332
        s = s + 32
        idx = idx + 1
        continue 
    mem[512] = _186
    _330 = mem[64]
    mem[64] = mem[64] + 64
    mem[_330] = stor3[address(arg1)].field_1280
    mem[_330 + 32] = stor3[address(arg1)].field_1536
    mem[544] = _330
    _342 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[415 len 1]
    mem[mem[64] + 64] = mem[416]
    mem[mem[64] + 96] = mem[448]
    _366 = mem[480]
    mem[mem[64] + 128] = 224
    _372 = mem[_366]
    mem[mem[64] + 256] = mem[_366]
    idx = 0
    s = _366 + 32
    t = mem[64] + 288
    while idx < _372:
        _450 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_450 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _459 = mem[512]
    mem[_342 + 160] = (64 * _372) + 256
    _468 = mem[_459]
    mem[_342 + (64 * _372) + 288] = mem[_459]
    idx = 0
    s = _459 + 32
    t = _342 + (64 * _372) + 320
    while idx < _468:
        _522 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_522 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    _531 = mem[544]
    mem[_342 + 192] = mem[mem[544]]
    mem[_342 + 224] = mem[_531 + 32]
    return memory
      from mem[64]
       len _342 + (64 * _372) + (64 * _468) + -mem[64] + 320
}

function sub_ef9152d1(?) {
    require calldata.size - 4 >= 96
    if tx.origin == msg.sender:
        if arg1 == arg2:
            return arg3
        if not arg1:
            if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                revert with 0, 'DSMath::add: Integer overflow'
            if not stor3[address(arg2)].field_1536:
                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                    revert with 0, 'DSMath::div: Invalid divisor zero'
                if stor3[address(arg2)].field_1280 + arg3:
                    return (0 / stor3[address(arg2)].field_1280 + arg3)
            else:
                if stor3[address(arg2)].field_1536:
                    if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                        revert with 0, 'DSMath::mul: Integer overflow'
                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                        revert with 0, 'DSMath::div: Invalid divisor zero'
                    if stor3[address(arg2)].field_1280 + arg3:
                        return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
        else:
            if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                revert with 0, 'DSMath::add: Integer overflow'
            if not arg2:
                if not stor3[address(arg1)].field_1280:
                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                        revert with 0, 'DSMath::div: Invalid divisor zero'
                    if stor3[address(arg1)].field_1536 + arg3:
                        return (0 / stor3[address(arg1)].field_1536 + arg3)
                else:
                    if stor3[address(arg1)].field_1280:
                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                            revert with 0, 'DSMath::div: Invalid divisor zero'
                        if stor3[address(arg1)].field_1536 + arg3:
                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
            else:
                if not stor3[address(arg1)].field_1280:
                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                        revert with 0, 'DSMath::div: Invalid divisor zero'
                    if stor3[address(arg1)].field_1536 + arg3:
                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                            revert with 0, 'DSMath::add: Integer overflow'
                        if not stor3[address(arg2)].field_1280:
                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                        else:
                            if stor3[address(arg2)].field_1280:
                                if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                    return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                else:
                    if stor3[address(arg1)].field_1280:
                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                            revert with 0, 'DSMath::div: Invalid divisor zero'
                        if stor3[address(arg1)].field_1536 + arg3:
                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not stor3[address(arg2)].field_1280:
                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                    return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                            else:
                                if stor3[address(arg2)].field_1280:
                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
    else:
        if not arg1:
            if not arg2:
                if arg1 == arg2:
                    return arg3
                if not arg1:
                    if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                        revert with 0, 'DSMath::add: Integer overflow'
                    if not stor3[address(arg2)].field_1536:
                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                            revert with 0, 'DSMath::div: Invalid divisor zero'
                        if stor3[address(arg2)].field_1280 + arg3:
                            return (0 / stor3[address(arg2)].field_1280 + arg3)
                    else:
                        if stor3[address(arg2)].field_1536:
                            if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg2)].field_1280 + arg3:
                                return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                else:
                    if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                        revert with 0, 'DSMath::add: Integer overflow'
                    if not arg2:
                        if not stor3[address(arg1)].field_1280:
                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg1)].field_1536 + arg3:
                                return (0 / stor3[address(arg1)].field_1536 + arg3)
                        else:
                            if stor3[address(arg1)].field_1280:
                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                    else:
                        if not stor3[address(arg1)].field_1280:
                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg1)].field_1536 + arg3:
                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not stor3[address(arg2)].field_1280:
                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                        return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                else:
                                    if stor3[address(arg2)].field_1280:
                                        if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                            return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                        else:
                            if stor3[address(arg1)].field_1280:
                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1280:
                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                            return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg2)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
            else:
                if 0 == accounts[address(arg2)][msg.sender].field_256:
                    if accounts[address(arg2)][msg.sender].field_0 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                    if arg1 == arg2:
                        return arg3
                    if not arg1:
                        if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                            revert with 0, 'DSMath::add: Integer overflow'
                        if not stor3[address(arg2)].field_1536:
                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg2)].field_1280 + arg3:
                                return (0 / stor3[address(arg2)].field_1280 + arg3)
                        else:
                            if stor3[address(arg2)].field_1536:
                                if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1280 + arg3:
                                    return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                    else:
                        if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::add: Integer overflow'
                        if not arg2:
                            if not stor3[address(arg1)].field_1280:
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    return (0 / stor3[address(arg1)].field_1536 + arg3)
                            else:
                                if stor3[address(arg1)].field_1280:
                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                        else:
                            if not stor3[address(arg1)].field_1280:
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1280:
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                            return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg2)].field_1280:
                                            if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                            else:
                                if stor3[address(arg1)].field_1280:
                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1280:
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg2)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                else:
                    if block.timestamp - accounts[address(arg2)][msg.sender].field_256 > block.timestamp:
                        revert with 0, 'DSMath::sub: Integer underflow'
                    if not block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                        if accounts[address(arg2)][msg.sender].field_0 <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                        if arg1 == arg2:
                            return arg3
                        if not arg1:
                            if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not stor3[address(arg2)].field_1536:
                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1280 + arg3:
                                    return (0 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg2)].field_1536:
                                    if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                        else:
                            if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not arg2:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        return (0 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                            else:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1280:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg2)].field_1280:
                                                if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                    else:
                        if block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                            if (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / block.timestamp - accounts[address(arg2)][msg.sender].field_256 != 10^16:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if accounts[address(arg2)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 720 * 24 * 3600:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                            if arg1 == arg2:
                                return arg3
                            if not arg1:
                                if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not stor3[address(arg2)].field_1536:
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (0 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg2)].field_1536:
                                        if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not arg2:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (0 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
        else:
            if 0 == accounts[address(arg1)][msg.sender].field_256:
                if accounts[address(arg1)][msg.sender].field_0 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                if not arg2:
                    if arg1 == arg2:
                        return arg3
                    if not arg1:
                        if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                            revert with 0, 'DSMath::add: Integer overflow'
                        if not stor3[address(arg2)].field_1536:
                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                revert with 0, 'DSMath::div: Invalid divisor zero'
                            if stor3[address(arg2)].field_1280 + arg3:
                                return (0 / stor3[address(arg2)].field_1280 + arg3)
                        else:
                            if stor3[address(arg2)].field_1536:
                                if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1280 + arg3:
                                    return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                    else:
                        if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::add: Integer overflow'
                        if not arg2:
                            if not stor3[address(arg1)].field_1280:
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    return (0 / stor3[address(arg1)].field_1536 + arg3)
                            else:
                                if stor3[address(arg1)].field_1280:
                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                        else:
                            if not stor3[address(arg1)].field_1280:
                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg1)].field_1536 + arg3:
                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1280:
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                            return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg2)].field_1280:
                                            if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                            else:
                                if stor3[address(arg1)].field_1280:
                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1280:
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg2)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                else:
                    if 0 == accounts[address(arg2)][msg.sender].field_256:
                        if accounts[address(arg2)][msg.sender].field_0 <= 0:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                        if arg1 == arg2:
                            return arg3
                        if not arg1:
                            if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not stor3[address(arg2)].field_1536:
                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1280 + arg3:
                                    return (0 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg2)].field_1536:
                                    if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                        else:
                            if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not arg2:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        return (0 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                            else:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1280:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg2)].field_1280:
                                                if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                    else:
                        if block.timestamp - accounts[address(arg2)][msg.sender].field_256 > block.timestamp:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if not block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                            if accounts[address(arg2)][msg.sender].field_0 <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                            if arg1 == arg2:
                                return arg3
                            if not arg1:
                                if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not stor3[address(arg2)].field_1536:
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (0 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg2)].field_1536:
                                        if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not arg2:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (0 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                        else:
                            if block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                                if (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / block.timestamp - accounts[address(arg2)][msg.sender].field_256 != 10^16:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if accounts[address(arg2)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 720 * 24 * 3600:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                if arg1 == arg2:
                                    return arg3
                                if not arg1:
                                    if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1536:
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (0 / stor3[address(arg2)].field_1280 + arg3)
                                    else:
                                        if stor3[address(arg2)].field_1536:
                                            if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1280 + arg3:
                                                return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not arg2:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (0 / stor3[address(arg1)].field_1536 + arg3)
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                        revert with 0, 'DSMath::add: Integer overflow'
                                                    if not stor3[address(arg2)].field_1280:
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                    else:
                                                        if stor3[address(arg2)].field_1280:
                                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                revert with 0, 'DSMath::mul: Integer overflow'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
            else:
                if block.timestamp - accounts[address(arg1)][msg.sender].field_256 > block.timestamp:
                    revert with 0, 'DSMath::sub: Integer underflow'
                if not block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                    if accounts[address(arg1)][msg.sender].field_0 <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                    if not arg2:
                        if arg1 == arg2:
                            return arg3
                        if not arg1:
                            if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not stor3[address(arg2)].field_1536:
                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                if stor3[address(arg2)].field_1280 + arg3:
                                    return (0 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg2)].field_1536:
                                    if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                        else:
                            if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                revert with 0, 'DSMath::add: Integer overflow'
                            if not arg2:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        return (0 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                            else:
                                if not stor3[address(arg1)].field_1280:
                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg1)].field_1536 + arg3:
                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1280:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg2)].field_1280:
                                                if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                else:
                                    if stor3[address(arg1)].field_1280:
                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                    else:
                        if 0 == accounts[address(arg2)][msg.sender].field_256:
                            if accounts[address(arg2)][msg.sender].field_0 <= 0:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                            if arg1 == arg2:
                                return arg3
                            if not arg1:
                                if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not stor3[address(arg2)].field_1536:
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (0 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg2)].field_1536:
                                        if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not arg2:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (0 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                        else:
                            if block.timestamp - accounts[address(arg2)][msg.sender].field_256 > block.timestamp:
                                revert with 0, 'DSMath::sub: Integer underflow'
                            if not block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                                if accounts[address(arg2)][msg.sender].field_0 <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                if arg1 == arg2:
                                    return arg3
                                if not arg1:
                                    if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1536:
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (0 / stor3[address(arg2)].field_1280 + arg3)
                                    else:
                                        if stor3[address(arg2)].field_1536:
                                            if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1280 + arg3:
                                                return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not arg2:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (0 / stor3[address(arg1)].field_1536 + arg3)
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                        revert with 0, 'DSMath::add: Integer overflow'
                                                    if not stor3[address(arg2)].field_1280:
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                    else:
                                                        if stor3[address(arg2)].field_1280:
                                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                revert with 0, 'DSMath::mul: Integer overflow'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                            else:
                                if block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                                    if (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / block.timestamp - accounts[address(arg2)][msg.sender].field_256 != 10^16:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if accounts[address(arg2)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 720 * 24 * 3600:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                    if arg1 == arg2:
                                        return arg3
                                    if not arg1:
                                        if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1536:
                                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1280 + arg3:
                                                return (0 / stor3[address(arg2)].field_1280 + arg3)
                                        else:
                                            if stor3[address(arg2)].field_1536:
                                                if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1280 + arg3:
                                                    return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not arg2:
                                            if not stor3[address(arg1)].field_1280:
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    return (0 / stor3[address(arg1)].field_1536 + arg3)
                                            else:
                                                if stor3[address(arg1)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                        else:
                                            if not stor3[address(arg1)].field_1280:
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                        revert with 0, 'DSMath::add: Integer overflow'
                                                    if not stor3[address(arg2)].field_1280:
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                    else:
                                                        if stor3[address(arg2)].field_1280:
                                                            if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                                revert with 0, 'DSMath::mul: Integer overflow'
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg1)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                            revert with 0, 'DSMath::add: Integer overflow'
                                                        if not stor3[address(arg2)].field_1280:
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                        else:
                                                            if stor3[address(arg2)].field_1280:
                                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                else:
                    if block.timestamp - accounts[address(arg1)][msg.sender].field_256:
                        if (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / block.timestamp - accounts[address(arg1)][msg.sender].field_256 != 10^16:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if accounts[address(arg1)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg1)][msg.sender].field_256) / 720 * 24 * 3600:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                        if not arg2:
                            if arg1 == arg2:
                                return arg3
                            if not arg1:
                                if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not stor3[address(arg2)].field_1536:
                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                    if stor3[address(arg2)].field_1280 + arg3:
                                        return (0 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg2)].field_1536:
                                        if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                            else:
                                if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                    revert with 0, 'DSMath::add: Integer overflow'
                                if not arg2:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            return (0 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                else:
                                    if not stor3[address(arg1)].field_1280:
                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg1)].field_1536 + arg3:
                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1280:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                    return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg2)].field_1280:
                                                    if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                    else:
                                        if stor3[address(arg1)].field_1280:
                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                        else:
                            if 0 == accounts[address(arg2)][msg.sender].field_256:
                                if accounts[address(arg2)][msg.sender].field_0 <= 0:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                if arg1 == arg2:
                                    return arg3
                                if not arg1:
                                    if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not stor3[address(arg2)].field_1536:
                                        if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                        if stor3[address(arg2)].field_1280 + arg3:
                                            return (0 / stor3[address(arg2)].field_1280 + arg3)
                                    else:
                                        if stor3[address(arg2)].field_1536:
                                            if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1280 + arg3:
                                                return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                else:
                                    if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    if not arg2:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                return (0 / stor3[address(arg1)].field_1536 + arg3)
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                    else:
                                        if not stor3[address(arg1)].field_1280:
                                            if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg1)].field_1536 + arg3:
                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                if not stor3[address(arg2)].field_1280:
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                        return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg2)].field_1280:
                                                        if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                        else:
                                            if stor3[address(arg1)].field_1280:
                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                        revert with 0, 'DSMath::add: Integer overflow'
                                                    if not stor3[address(arg2)].field_1280:
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                    else:
                                                        if stor3[address(arg2)].field_1280:
                                                            if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                revert with 0, 'DSMath::mul: Integer overflow'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                            else:
                                if block.timestamp - accounts[address(arg2)][msg.sender].field_256 > block.timestamp:
                                    revert with 0, 'DSMath::sub: Integer underflow'
                                if not block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                                    if accounts[address(arg2)][msg.sender].field_0 <= 0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                    if arg1 == arg2:
                                        return arg3
                                    if not arg1:
                                        if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not stor3[address(arg2)].field_1536:
                                            if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                            if stor3[address(arg2)].field_1280 + arg3:
                                                return (0 / stor3[address(arg2)].field_1280 + arg3)
                                        else:
                                            if stor3[address(arg2)].field_1536:
                                                if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1280 + arg3:
                                                    return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                    else:
                                        if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                            revert with 0, 'DSMath::add: Integer overflow'
                                        if not arg2:
                                            if not stor3[address(arg1)].field_1280:
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    return (0 / stor3[address(arg1)].field_1536 + arg3)
                                            else:
                                                if stor3[address(arg1)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                        else:
                                            if not stor3[address(arg1)].field_1280:
                                                if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg1)].field_1536 + arg3:
                                                    if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                        revert with 0, 'DSMath::add: Integer overflow'
                                                    if not stor3[address(arg2)].field_1280:
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                            return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                    else:
                                                        if stor3[address(arg2)].field_1280:
                                                            if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                                revert with 0, 'DSMath::mul: Integer overflow'
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                            else:
                                                if stor3[address(arg1)].field_1280:
                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                            revert with 0, 'DSMath::add: Integer overflow'
                                                        if not stor3[address(arg2)].field_1280:
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                        else:
                                                            if stor3[address(arg2)].field_1280:
                                                                if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                    return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                else:
                                    if block.timestamp - accounts[address(arg2)][msg.sender].field_256:
                                        if (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / block.timestamp - accounts[address(arg2)][msg.sender].field_256 != 10^16:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if accounts[address(arg2)][msg.sender].field_0 <= (10^16 * block.timestamp) - (10^16 * accounts[address(arg2)][msg.sender].field_256) / 720 * 24 * 3600:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'UniswapPriceOracle::getDestAmount: Not subscribed'
                                        if arg1 == arg2:
                                            return arg3
                                        if not arg1:
                                            if stor3[address(arg2)].field_1280 + arg3 < stor3[address(arg2)].field_1280:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not stor3[address(arg2)].field_1536:
                                                if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                if stor3[address(arg2)].field_1280 + arg3:
                                                    return (0 / stor3[address(arg2)].field_1280 + arg3)
                                            else:
                                                if stor3[address(arg2)].field_1536:
                                                    if arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1536 != arg3:
                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                    if stor3[address(arg2)].field_1280 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg2)].field_1280 + arg3:
                                                        return (arg3 * stor3[address(arg2)].field_1536 / stor3[address(arg2)].field_1280 + arg3)
                                        else:
                                            if stor3[address(arg1)].field_1536 + arg3 < stor3[address(arg1)].field_1536:
                                                revert with 0, 'DSMath::add: Integer overflow'
                                            if not arg2:
                                                if not stor3[address(arg1)].field_1280:
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        return (0 / stor3[address(arg1)].field_1536 + arg3)
                                                else:
                                                    if stor3[address(arg1)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg1)].field_1536 + arg3:
                                                            return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3)
                                            else:
                                                if not stor3[address(arg1)].field_1280:
                                                    if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                    if stor3[address(arg1)].field_1536 + arg3:
                                                        if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                            revert with 0, 'DSMath::add: Integer overflow'
                                                        if not stor3[address(arg2)].field_1280:
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                revert with 0, 'DSMath::div: Invalid divisor zero'
                                                            if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                                return (0 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                        else:
                                                            if stor3[address(arg2)].field_1280:
                                                                if 0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != 0 / stor3[address(arg1)].field_1536 + arg3:
                                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                                if stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3):
                                                                    return (0 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (0 / stor3[address(arg1)].field_1536 + arg3))
                                                else:
                                                    if stor3[address(arg1)].field_1280:
                                                        if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1280 != arg3:
                                                            revert with 0, 'DSMath::mul: Integer overflow'
                                                        if stor3[address(arg1)].field_1536 + arg3 <= 0:
                                                            revert with 0, 'DSMath::div: Invalid divisor zero'
                                                        if stor3[address(arg1)].field_1536 + arg3:
                                                            if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) < stor3[address(arg2)].field_1536:
                                                                revert with 0, 'DSMath::add: Integer overflow'
                                                            if not stor3[address(arg2)].field_1280:
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                    revert with 0, 'DSMath::div: Invalid divisor zero'
                                                                if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                    return (0 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
                                                            else:
                                                                if stor3[address(arg2)].field_1280:
                                                                    if arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1280 != arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3:
                                                                        revert with 0, 'DSMath::mul: Integer overflow'
                                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3) <= 0:
                                                                        revert with 0, 'DSMath::div: Invalid divisor zero'
                                                                    if stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3):
                                                                        return (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3 * stor3[address(arg2)].field_1280 / stor3[address(arg2)].field_1536 + (arg3 * stor3[address(arg1)].field_1280 / stor3[address(arg1)].field_1536 + arg3))
    revert
}

function sub_25b07a43(?) {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[228] = arg1
    require ext_code.size(uniswapAddress)
    staticcall uniswapAddress.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 224] = eth.balance(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 292] = address(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 288] = 0
    mem[(2 * ceil32(return_data.size)) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + 352] = 0
    mem[(2 * ceil32(return_data.size)) + 384] = 96
    mem[(2 * ceil32(return_data.size)) + 416] = 96
    mem[(2 * ceil32(return_data.size)) + 512] = 0
    mem[(2 * ceil32(return_data.size)) + 544] = 0
    mem[(2 * ceil32(return_data.size)) + 448] = (2 * ceil32(return_data.size)) + 512
    mem[0] = arg1
    mem[32] = 3
    mem[(2 * ceil32(return_data.size)) + 576] = stor3[address(arg1)].field_0
    mem[(2 * ceil32(return_data.size)) + 608] = stor3[address(arg1)].field_256
    mem[(2 * ceil32(return_data.size)) + 640] = stor3[address(arg1)].field_512
    mem[64] = (2 * ceil32(return_data.size)) + (32 * stor3[address(arg1)].field_768) + 800
    mem[(2 * ceil32(return_data.size)) + 768] = stor3[address(arg1)].field_768
    s = (2 * ceil32(return_data.size)) + 800
    idx = 0
    while idx < stor3[address(arg1)].field_768:
        mem[0] = sha3(address(arg1), 3) + 3
        _1521 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1521] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_1521 + 32] = stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _1521
        s = s + 32
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 672] = (2 * ceil32(return_data.size)) + 768
    _1519 = mem[64]
    mem[64] = mem[64] + (32 * stor3[address(arg1)].field_1024) + 32
    mem[_1519] = stor3[address(arg1)].field_1024
    s = _1519 + 32
    idx = 0
    while idx < stor3[address(arg1)].field_1024:
        mem[0] = sha3(address(arg1), 3) + 4
        _3023 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3023] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_0
        mem[_3023 + 32] = stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))) + (2 * idx)].field_256
        mem[s] = _3023
        s = s + 32
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 704] = _1519
    _3021 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3021] = stor3[address(arg1)].field_1280
    mem[_3021 + 32] = stor3[address(arg1)].field_1536
    mem[(2 * ceil32(return_data.size)) + 736] = _3021
    _3024 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3024] = 0
    mem[_3024 + 32] = 0
    if mem[_1519] - 1 > mem[_1519]:
        revert with 0, 'DSMath::sub: Integer underflow'
    require mem[_1519] - 1 < mem[_1519]
    if mem[mem[(2 * ceil32(return_data.size)) + 672]] < 15:
        mem[mem[64]] = mem[mem[(2 * ceil32(return_data.size)) + 672]] < 15
    else:
        if block.timestamp - mem[(2 * ceil32(return_data.size)) + 640] > block.timestamp:
            revert with 0, 'DSMath::sub: Integer underflow'
        if block.timestamp - mem[(2 * ceil32(return_data.size)) + 640] >= 3 * 3600:
            mem[mem[64]] = block.timestamp - mem[(2 * ceil32(return_data.size)) + 640] >= 3 * 3600
        else:
            if block.timestamp - mem[(2 * ceil32(return_data.size)) + 608] > block.timestamp:
                revert with 0, 'DSMath::sub: Integer underflow'
            if block.timestamp - mem[(2 * ceil32(return_data.size)) + 608] < 210:
                require mem[(2 * ceil32(return_data.size)) + 607 len 1] < mem[mem[(2 * ceil32(return_data.size)) + 672]]
                if not mem[ceil32(return_data.size) + 256]:
                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'DSMath::mul: Integer overflow'
                    if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                        if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > 0:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::add: Integer overflow'
                    else:
                        if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::add: Integer overflow'
                    revert
                require mem[ceil32(return_data.size) + 256]
                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]]:
                    revert with 0, 'DSMath::mul: Integer overflow'
                if not mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                        if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                        if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                    else:
                        if -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                        if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                else:
                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'DSMath::mul: Integer overflow'
                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                        if (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) / 10^18 != (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]):
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                        if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                    else:
                        if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]):
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                        if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                    if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                    mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
            else:
                if not mem[ceil32(return_data.size) + 256]:
                    require stor3[address(arg1)].field_1536
                    require stor3[address(arg1)].field_1536
                    if mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 / stor3[address(arg1)].field_1536 != mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'DSMath::mul: Integer overflow'
                    if 0 > mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                        if -1 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 > 0:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::add: Integer overflow'
                    else:
                        if mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 > mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 / 10^18 != mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 < 10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::add: Integer overflow'
                    revert
                require mem[ceil32(return_data.size) + 256]
                if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != stor3[address(arg1)].field_1280:
                    revert with 0, 'DSMath::mul: Integer overflow'
                if not stor3[address(arg1)].field_1536:
                    if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] > 0:
                        if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] > stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 10^18 != stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]
                        if (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            require mem[(2 * ceil32(return_data.size)) + 607 len 1] < mem[mem[(2 * ceil32(return_data.size)) + 672]]
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) / 10^18 != (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                    else:
                        if -1 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] > 0:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if -1 * 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if (-1 * 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]
                        if (-1 * 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (-1 * 10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            require mem[(2 * ceil32(return_data.size)) + 607 len 1] < mem[mem[(2 * ceil32(return_data.size)) + 672]]
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) / 10^18 != (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                else:
                    require stor3[address(arg1)].field_1536
                    if mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536 / stor3[address(arg1)].field_1536 != mem[ceil32(return_data.size) + 224]:
                        revert with 0, 'DSMath::mul: Integer overflow'
                    if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                        if (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) > stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) / 10^18 != (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536):
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2 < 0:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]
                        if (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            require mem[(2 * ceil32(return_data.size)) + 607 len 1] < mem[mem[(2 * ceil32(return_data.size)) + 672]]
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) / 10^18 != (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                    else:
                        if (mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) - (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536:
                            revert with 0, 'DSMath::sub: Integer underflow'
                        if (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) - (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) - (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]):
                            revert with 0, 'DSMath::mul: Integer overflow'
                        if stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2 < 0:
                            revert with 0, 'DSMath::add: Integer overflow'
                        require stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]
                        if (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) - (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16:
                            mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * stor3[address(arg1)].field_1536) - (10^18 * stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256]) + (stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] / 2) / stor3[address(arg1)].field_1280 * mem[ceil32(return_data.size) + 256] >= 10^16
                        else:
                            require mem[(2 * ceil32(return_data.size)) + 607 len 1] < mem[mem[(2 * ceil32(return_data.size)) + 672]]
                            if not mem[ceil32(return_data.size) + 256]:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                else:
                                    if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                revert
                            require mem[ceil32(return_data.size) + 256]
                            if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]]:
                                revert with 0, 'DSMath::mul: Integer overflow'
                            if not mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                            else:
                                require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]
                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                    revert with 0, 'DSMath::mul: Integer overflow'
                                if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                    if (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) > mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) / 10^18 != (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                else:
                                    if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]:
                                        revert with 0, 'DSMath::sub: Integer underflow'
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]):
                                        revert with 0, 'DSMath::mul: Integer overflow'
                                    if mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                        revert with 0, 'DSMath::add: Integer overflow'
                                    require mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]
                                    if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16:
                                        mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32] + 32]) - (10^18 * mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * uint8(mem[(2 * ceil32(return_data.size)) + 576])) + mem[(2 * ceil32(return_data.size)) + 672] + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                    else:
                                        if not mem[ceil32(return_data.size) + 256]:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if 0 > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != -1 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < -1 * 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            else:
                                                if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / 10^18 != mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] < 10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                            revert
                                        require mem[ceil32(return_data.size) + 256]
                                        if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / mem[ceil32(return_data.size) + 256] != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]]:
                                            revert with 0, 'DSMath::mul: Integer overflow'
                                        if not mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > 0:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 10^18 != -1 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) < -1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (-1 * 10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                        else:
                                            require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]
                                            if mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32] != mem[ceil32(return_data.size) + 224]:
                                                revert with 0, 'DSMath::mul: Integer overflow'
                                            if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                if (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) > mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) / 10^18 != (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) - (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
                                            else:
                                                if (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) > mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]:
                                                    revert with 0, 'DSMath::sub: Integer underflow'
                                                if (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) / 10^18 != (mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]):
                                                    revert with 0, 'DSMath::mul: Integer overflow'
                                                if mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2 < 0:
                                                    revert with 0, 'DSMath::add: Integer overflow'
                                                require mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]
                                                mem[mem[64]] = (10^18 * mem[ceil32(return_data.size) + 224] * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32] + 32]) - (10^18 * mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256]) + (mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] / 2) / mem[mem[(32 * mem[_1519] - 1) + _1519 + 32]] * mem[ceil32(return_data.size) + 256] >= 10^16
    return memory
      from mem[64]
       len 32
}



}
