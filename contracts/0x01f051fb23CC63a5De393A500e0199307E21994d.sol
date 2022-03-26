contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    return code.data[60 len 12144]
}



// =====================  Runtime code  =====================


#
#  - sub_9a59b6da(?)
#
uint256 numberOfRequests;
array of struct stor1;
mapping of struct sub_07673ffc;
array of struct sub_5127c79d;

function sub_07673ffc(?) {
    return sub_07673ffc[arg1].field_2560
}

function sub_11f7c705(?) {
    return sub_07673ffc[arg1].field_256
}

function sub_34d105ea(?) {
    return sub_07673ffc[arg1].field_1024
}

function sub_38e47f47(?) {
    return sub_07673ffc[arg1].field_1288
}

function sub_3bc45e61(?) {
    return sub_07673ffc[arg1].field_2304
}

function sub_3ffaa2f3(?) {
    return sub_07673ffc[arg1].field_1536
}

function sub_5127c79d(?) {
    require arg2 < sub_5127c79d[arg1].field_0
    return sub_5127c79d[arg1][arg2].field_0
}

function sub_55a79ceb(?) {
    return sub_07673ffc[arg1].field_2056
}

function sub_5681a433(?) {
    return stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 4][0 len stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 4].length].field_0
}

function sub_5c47cd21(?) {
    require arg2 < sub_5127c79d[arg1].field_0
    return sub_5127c79d[arg1][arg2].field_1536
}

function sub_86bae08e(?) {
    return sub_07673ffc[arg1].field_512
}

function sub_8df170b1(?) {
    return sub_07673ffc[arg1].field_2048
}

function sub_927bf691(?) {
    return stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 3][0 len stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 3].length].field_0
}

function getNumberOfRequests() {
    return numberOfRequests
}

function sub_98cbe541(?) {
    require arg2 < sub_5127c79d[arg1].field_0
    return sub_5127c79d[arg1][arg2].field_1792
}

function sub_9e67786b(?) {
    require arg2 < sub_5127c79d[arg1].field_0
    return sub_5127c79d[arg1][arg2].field_256
}

function sub_ce53e4dc(?) {
    return sub_07673ffc[arg1].field_1280
}

function sub_dfb92b39(?) {
    return sub_07673ffc[arg1].field_264
}

function sub_e5a73e27(?) {
    return stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 5][0 len stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 5].length].field_0
}

function sub_e9d77598(?) {
    return stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 2][0 len stor[(8 * arg2) + ('map', ('param', 'arg1'), ('name', 'sub_5127c79d', 3)) + 2].length].field_0
}

function sub_ed48e545(?) {
    return sub_07673ffc[arg1].field_0
}

function sub_f2f88614(?) {
    return sub_07673ffc[arg1][7][0 len sub_07673ffc[arg1][7].length].field_0
}

function sub_f2fa80f0(?) {
    return sub_07673ffc[arg1].field_768
}

function sub_fa662ae2(?) {
    return sub_5127c79d[arg1].field_0
}

function _fallback() payable {
    revert 
}

function sub_cd0b71a8(?) {
    if stor1[address(msg.sender)].field_0:
        mem[160] = stor1[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * stor1[address(msg.sender)].field_0) + 128 > idx:
            mem[idx + 32] = stor1[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1[address(msg.sender)].field_0, data=mem[160 len 32 * stor1[address(msg.sender)].field_0])
}

function sub_4ad2c928(?) {
    if arg1 <= block.timestamp:
        emit 0x9e609148: 0, 64, 43, 'The start date for this journey ', 'is invalid.', msg.sender
    else:
        if not arg3:
            emit 0x9e609148: 0, 64, 22, 'Insurance amount is 0.', msg.sender
        else:
            if arg2 < arg1:
                emit 0x9e609148: 0, 64, 55, 'The end date for this journey is', ' before the start date.', msg.sender
            else:
                if arg6 > 4:
                    emit 0x9e609148: 0, 64, 26, 'Insurance Type is invalid.', msg.sender
                else:
                    if arg5 > 3:
                        emit 0x9e609148: 0, 64, 23, 'Travel Type is invalid.', msg.sender
                    else:
                        if arg11 > 1:
                            emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                        else:
                            if arg10 > 120:
                                emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                            else:
                                if arg9 > 4:
                                    emit 0x9e609148: 0, 64, 29, 'Traveller parameters invalid.', msg.sender
                                else:
                                    if arg12 > 2:
                                        emit 0x9e609148: 0, 64, 25, 'Invalid auction duration.', msg.sender
                                    else:
                                        if arg7 > 4:
                                            emit 0x9e609148: 0, 64, 28, 'Invalid destination country.', msg.sender
                                        else:
                                            emit 0x9e609148: 1, Array(len=7, data='Success'), msg.sender
                                            numberOfRequests++
                                            sub_07673ffc[stor0].field_0 = block.timestamp
                                            sub_07673ffc[stor0].field_256 = uint8(arg12)
                                            sub_07673ffc[stor0].field_264 = msg.sender
                                            sub_07673ffc[stor0].field_512 = arg1
                                            sub_07673ffc[stor0].field_768 = arg2
                                            sub_07673ffc[stor0].field_1024 = arg8
                                            sub_07673ffc[stor0].field_1280 = uint8(arg7)
                                            sub_07673ffc[stor0].field_1288 = uint8(arg5)
                                            sub_07673ffc[stor0].field_1536 = arg3
                                            sub_07673ffc[stor0][7][].field_0 = Array(len=arg4.length, data=arg4[all])
                                            sub_07673ffc[stor0].field_2048 = uint8(arg6)
                                            sub_07673ffc[stor0].field_2056 = uint8(arg11)
                                            sub_07673ffc[stor0].field_2304 = arg10
                                            sub_07673ffc[stor0].field_2560 = uint8(arg9)
                                            stor1[address(msg.sender)].field_0++
                                            if not stor1[address(msg.sender)].field_0 <= stor1[address(msg.sender)].field_0 + 1:
                                                idx = stor1[address(msg.sender)].field_0 + 1
                                                while stor1[address(msg.sender)].field_0 > idx:
                                                    stor1[address(msg.sender)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(msg.sender)].field_0 < stor1[address(msg.sender)].field_0
                                            stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = numberOfRequests
                                            if not stor1[address(msg.sender)].field_0:
                                                idx = 0
                                                while stor1[address(msg.sender)].field_0 > idx:
                                                    stor1[address(msg.sender)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = 0
                                                while stor1[address(msg.sender)].field_0 > idx:
                                                    stor1[address(msg.sender)][s].field_0 = stor1[address(msg.sender)][idx].field_0
                                                    s = s + 1
                                                    idx = idx + 1
                                                    continue 
                                                idx = stor1[address(msg.sender)].field_0
                                                while stor1[address(msg.sender)].field_0 > idx:
                                                    stor1[address(msg.sender)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
}



}
