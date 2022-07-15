contract main {




// =====================  Runtime code  =====================


address sub_c56d4088Address;
uint256 sub_69c957c1;
uint256 sub_1b39926d;
uint256 sub_e45e6411;
array of uint256 sub_8c3d8df3;
address sub_8f4da2fdAddress;
uint256 sub_e2314675;
uint256 sub_7857a2b7;
uint256 sub_da7a6e3c;
uint256 sub_cf0bf2f1;
array of struct stor10;
array of struct stor11;
array of uint256 sub_151c04f4;
uint256 sub_974c78c2;
array of uint256 sub_1139c7f8;
uint256 sub_abd95b95;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_1139c7f8(?) {
    return sub_1139c7f8[0 len sub_1139c7f8.length]
}

function sub_151c04f4(?) {
    return sub_151c04f4[0 len sub_151c04f4.length]
}

function sub_1b39926d(?) {
    return sub_1b39926d
}

function sub_69c957c1(?) {
    return sub_69c957c1
}

function sub_7857a2b7(?) {
    return sub_7857a2b7
}

function sub_8c3d8df3(?) {
    return sub_8c3d8df3[0 len sub_8c3d8df3.length]
}

function sub_8f4da2fd(?) {
    return sub_8f4da2fdAddress
}

function sub_974c78c2(?) {
    return sub_974c78c2
}

function sub_abd95b95(?) {
    return sub_abd95b95
}

function sub_c56d4088(?) {
    return sub_c56d4088Address
}

function sub_cf0bf2f1(?) {
    return sub_cf0bf2f1
}

function sub_da7a6e3c(?) {
    return sub_da7a6e3c
}

function sub_e2314675(?) {
    return sub_e2314675
}

function sub_e45e6411(?) {
    return sub_e45e6411
}

function _fallback() payable {
    revert
}

function sub_0b28de02(?) payable {
    if sub_abd95b95:
        revert with 0, 'Contract is terminated.'
    emit 0x2c0b7e44: msg.value
}

function Terminate() {
    sub_abd95b95 = 1
    call sub_c56d4088Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2c0b7e44: -eth.balance(this.address)
}

function sub_447ddd46(?) {
    require calldata.size - 4 >= 64
    if sub_abd95b95:
        emit 0xbe8abb97: -1
    else:
        if sub_e2314675 * sub_1b39926d > eth.balance(this.address):
            emit 0xbe8abb97: -2
        else:
            call sub_8f4da2fdAddress with:
               value sub_e2314675 * sub_1b39926d wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor10.length++
            stor10[stor10.length].field_0 = arg1
            stor11.length++
            stor175B[stor11.length] = arg2
            if sub_cf0bf2f1 >= 0:
                if arg2 * sub_e2314675 * sub_1b39926d >= sub_7857a2b7:
                    sub_abd95b95 = 1
                    call sub_c56d4088Address with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x2c0b7e44: -eth.balance(this.address)
                sub_7857a2b7 += -1 * arg2 * sub_e2314675 * sub_1b39926d
            emit 0x13e15553: arg1, sub_e2314675 * sub_1b39926d, sub_7857a2b7
}

function sub_89017cb8(?) {
    if stor10.length:
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while (32 * stor10.length) + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor11.length:
        mem[(32 * stor10.length) + 160] = uint256(stor11.field_0)
        idx = (32 * stor10.length) + 160
        s = 0
        while (32 * stor10.length) + (32 * stor11.length) + 128 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor10.length) + (32 * stor11.length) + 288 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    mem[(64 * stor10.length) + (32 * stor11.length) + 288] = stor11.length
    mem[(64 * stor10.length) + (32 * stor11.length) + 320 len floor32(stor11.length)] = mem[(32 * stor10.length) + 160 len floor32(stor11.length)]
    return Array(len=stor10.length, data=mem[128 len floor32(stor10.length)], mem[(32 * stor10.length) + (32 * stor11.length) + floor32(stor10.length) + 288 len (32 * stor10.length) + (32 * stor11.length) + -floor32(stor10.length) + 32]), 
           sub_e2314675 * sub_1b39926d,
           (32 * stor10.length) + 128
}

function sub_4b01ed7e(?) {
    require calldata.size - 4 >= 64
    if sub_abd95b95:
        emit 0xbe8abb97: -1
    else:
        if arg2 <= sub_da7a6e3c:
            if sub_abd95b95:
                emit 0xbe8abb97: -1
            else:
                if sub_e2314675 * sub_1b39926d > eth.balance(this.address):
                    emit 0xbe8abb97: -2
                else:
                    call sub_8f4da2fdAddress with:
                       value sub_e2314675 * sub_1b39926d wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10.length++
                    stor10[stor10.length].field_0 = arg1
                    stor11.length++
                    stor175B[stor11.length] = arg2
                    if sub_cf0bf2f1 >= 0:
                        if arg2 * sub_e2314675 * sub_1b39926d >= sub_7857a2b7:
                            sub_abd95b95 = 1
                            call sub_c56d4088Address with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2c0b7e44: -eth.balance(this.address)
                        sub_7857a2b7 += -1 * arg2 * sub_e2314675 * sub_1b39926d
                    emit 0x13e15553: arg1, sub_e2314675 * sub_1b39926d, sub_7857a2b7
        else:
            if sub_abd95b95:
                emit 0xbe8abb97: -1
            else:
                if sub_e2314675 * sub_1b39926d > eth.balance(this.address):
                    emit 0xbe8abb97: -2
                else:
                    call sub_8f4da2fdAddress with:
                       value sub_e2314675 * sub_1b39926d wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10.length++
                    stor10[stor10.length].field_0 = arg1
                    stor11.length++
                    stor175B[stor11.length] = sub_da7a6e3c
                    if sub_cf0bf2f1 >= 0:
                        if sub_da7a6e3c * sub_e2314675 * sub_1b39926d >= sub_7857a2b7:
                            sub_abd95b95 = 1
                            call sub_c56d4088Address with:
                               value eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x2c0b7e44: -eth.balance(this.address)
                        sub_7857a2b7 += -1 * sub_da7a6e3c * sub_e2314675 * sub_1b39926d
                    emit 0x13e15553: arg1, sub_e2314675 * sub_1b39926d, sub_7857a2b7
}



}
