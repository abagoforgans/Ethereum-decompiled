contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
uint256 stor109;
uint256 stor211;
uint256 stor460;
uint256 stor461;
mapping of uint256 stor1130;
uint256 stor46C;
uint256 stor475;
uint256 stor477;
uint256 stor4DB7;

function _fallback() payable {
    mem[96 len -8176] = code.data[8897 len -8176]
    mem[64] = -8016
    stor4DB7 = 1
    stor1 = mem[96]
    stor2 = tx.origin or Mask(96, 160, stor2)
    bool(stor3.length) = 0
    uint255(stor3.length.field_1) = 7
    Mask(248, 0, stor3.length.field_8) = 'company' / 256
    idx = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor475 = 1
    stor46A[tx.origin] = 1
    stor46C = tx.origin or Mask(96, 160, stor46C)
    stor211 = mem[192]
    stor460 = mem[192]
    stor461 = mem[224]
    stor8[0] = 1
    stor109 = 1
    if mem[160] <= 0:
        stor7 = 0
    else:
        stor6[mem[160]] = 1
        stor7 = 1
    stor477 = mem[256]
    return code.data[721 len 8176]
}



// =====================  Runtime code  =====================


const getVersion = 1


mapping of uint256 stor0;
array of address stor1;
address owner;
uint256 stor2;
array of uint256 sub_a1d602e3;
array of uint256 sub_a1973084;
array of uint256 stor5;
mapping of uint256 stor6;
uint256 sub_b8a99f45;
mapping of uint256 stor8;
address stor9;
array of uint256 stor10;
uint256 sub_ca0e6145;
array of uint256 stor110;
array of uint256 stor210;
array of uint256 stor1110;
array of uint256 stor1121;
mapping of uint256 stor1130;
array of address stor1131;
array of struct stor1132;
uint256 sub_bcc04eb2;
mapping of uint256 stor1142;
uint256 sub_8959ddeb;

function sub_8666ea1d(?) payable {
    return address(stor1.length)
}

function getOwner() payable {
    return address(owner)
}

function sub_8959ddeb(?) payable {
    return sub_8959ddeb
}

function sub_a1973084(?) payable {
    return sub_a1973084[0 len sub_a1973084.length]
}

function sub_a1d602e3(?) payable {
    return sub_a1d602e3[0 len sub_a1d602e3.length]
}

function sub_b8a99f45(?) payable {
    return sub_b8a99f45
}

function sub_bcc04eb2(?) payable {
    return sub_bcc04eb2
}

function sub_ca0e6145(?) payable {
    return sub_ca0e6145
}

function remove(address arg1) payable {
    if stor476[address(arg1)] != 0:
        emit 0x3ad36fc8: 0, 64, 64, '[Company][remove] Duplicate reso', ', already used this reso before.'
    stor476[address(arg1)] = 1
    call arg1.getState() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0] != 2:
        emit 0x3ad36fc8: 0, 64, 43, '[Company][remove] Error: Not Dir', 'ector/Owner'
    call arg1.getResoMethod() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[0] != 1:
        emit 0x3ad36fc8: 0, 64, 43, '[Company][remove] Error: Not Dir', 'ector/Owner'
    emit 0x3ad36fc8: 1, Array(len=41, data='[Company][remove] Result: Compan', 'y Removed')
    if address(owner) != tx.origin:
        selfdestruct(tx.origin)
    emit 0x3ad36fc8: 1, Array(len=35, data='[Identity][remove] Identity Remo', 'ved')
    selfdestruct(address(owner))
}

function remove() payable {
    if address(owner) != tx.origin:
    emit 0x3ad36fc8: 1, Array(len=35, data='[Identity][remove] Identity Remo', 'ved')
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function sub_cc4bd7c1(?) payable {
    call arg1.0x1d6df939 with:
         gas gas_remaining - 25050 wei
        args address(owner)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_fc080f62(?) payable {
    if 1 == stor0[tx.origin]:
        stor0[arg1] = arg2
        emit 0x3ad36fc8: 1, Array(len=51, data='[Identity][amendOtoVEAdmin] amen', 'dOtoVEAdmin changed')
}

function sub_c2a0f88f(?) payable {
    call address(stor1.length).0x1d6df939 with:
         gas gas_remaining - 25050 wei
        args address(owner)
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_538de0ec(?) payable {
    if 1 == stor0[tx.origin]:
        stor1.length = arg1 or Mask(96, 160, stor1.length)
        emit 0x3ad36fc8: 1, Array(len=45, data='[Identity][setDefaultVE] setDefa', 'ultVE changed')
}

function sub_afaab462(?) payable {
    idx = 3296
    s = 9
    while 6496 > idx + 32:
        mem[idx + 32] = address(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return stor9, mem[3328 len 3168]
}

function setOwner(address arg1) payable {
    if tx.origin == address(owner):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
        emit 0x3ad36fc8: 1, Array(len=37, data='[Identity][setOwner] setOwner ch', 'anged')
}

function sub_87bb4fe9(?) payable {
    idx = 448
    s = 1132
    while 736 > idx + 32:
        mem[idx + 32] = address(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    return stor46B.length, address(stor46C.length), mem[480 len 256]
}

function sub_ff3214af(?) payable {
    if tx.origin == address(owner):
        if not arg1:
            stor5[] = Array(len=arg2.length, data=arg2[all])
        else:
            sub_a1973084[] = Array(len=arg2.length, data=arg2[all])
            emit 0x3ad36fc8: 1, Array(len=42, data='[Identity][setData] setData idDa', 'ta changed')
}

function sub_b731fcbf(?) payable {
    mem[64] = 1056
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 736
    if var6002 - 1:
        mem[64] = 1376
        var5001 = 1056
        var5002 = 10
        continue 
    mem[64] = 1120
    s = 1056
    idx = 0
    while idx < 2:
        _7 = mem[64]
        mem[64] = mem[64] + 320
        mem[_7] = stor456[idx]
        t = _7
        u = (10 * idx) + 1110
        while _7 + 320 > t + 32:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _7
        s = s + 32
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 2:
        mem[s len 320] = mem[mem[(32 * idx) + 1056] len 320]
        s = s + 320
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 640
}

function sub_2191f795(?) payable {
    mem[64] = 35296
    mem[var5001] = 0
    if var5002 - 1:
        var5001 = var5001 + 32
        var5002 = var5002 - 1
        continue 
    mem[var6001] = 32096
    if var6002 - 1:
        mem[64] = 38496
        var5001 = 35296
        var5002 = 100
        continue 
    mem[64] = 35616
    s = 35296
    idx = 0
    while idx < 10:
        _7 = mem[64]
        mem[64] = mem[64] + 3200
        mem[_7] = stor110[idx]
        t = _7
        u = (100 * idx) + 110
        while _7 + 3200 > t + 32:
            mem[t + 32] = uint256(stor1[u])
            t = t + 32
            u = u + 1
            continue 
        mem[s] = _7
        s = s + 32
        idx = idx + 1
        continue 
    s = mem[64]
    idx = 0
    while idx < 10:
        mem[s len 3200] = mem[mem[(32 * idx) + 35296] len 3200]
        s = s + 3200
        idx = idx + 1
        continue 
    return memory
      from mem[64]
       len 32000
}

function sub_f6331609(?) payable {
    if stor476[address(arg2)] != 0:
        emit 0x3ad36fc8: 0, 64, 69, '[Company][addDirector] Duplicate', ' reso, already used this reso be', 'fore.'
    else:
        stor476[address(arg2)] = 1
        call arg2.getState() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if ext_call.return_data[0] != 2:
            emit 0x3ad36fc8: 0, 64, 42, '[Company][addDirector] Error: No', 't director'
        else:
            call arg2.getResoMethod() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            if ext_call.return_data[0] != 2:
                emit 0x3ad36fc8: 0, 64, 42, '[Company][addDirector] Error: No', 't director'
            else:
                sub_bcc04eb2++
                stor46A[address(arg1)] = sub_bcc04eb2 + 1
                require sub_bcc04eb2 + 1 < 10
                stor46C[stor475].field_0 = Mask(96, 0, stor46C[stor475].field_160)
                emit 0x3ad36fc8: 1, Array(len=45, data='[Company][addDirector] Result: D', 'irector added')
}

function sub_329127ca(?) payable {
    if stor476[address(arg2)] != 0:
        emit 0x3ad36fc8: 0, 64, 72, '[Company][removeDirector] Duplic', 'ate reso, already used this reso', 0x206265666f72652e000000000000000000000000000000000000000000000000
    else:
        stor476[address(arg2)] = 1
        call arg2.getState() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if ext_call.return_data[0] != 2:
            emit 0x3ad36fc8: 0, 64, 84, '[Company][removeDirector] Error:', ' Not Director or trying to remov', 'e only/last director'
        else:
            call arg2.getResoMethod() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            if ext_call.return_data[0] != 3:
                emit 0x3ad36fc8: 0, 64, 84, '[Company][removeDirector] Error:', ' Not Director or trying to remov', 'e only/last director'
            else:
                if sub_bcc04eb2 <= 1:
                    emit 0x3ad36fc8: 0, 64, 84, '[Company][removeDirector] Error:', ' Not Director or trying to remov', 'e only/last director'
                else:
                    sub_bcc04eb2--
                    require stor46A[address(arg1)] < 10
                    stor46B[stor46A[address(arg1)]] = 0
                    stor46A[address(arg1)] = 0
                    emit 0x3ad36fc8: 1, Array(len=50, data='[Company][removeDirector] Result', ': Director removed')
}

function sub_071e24fe(?) payable {
    if stor8[address(msg.sender)] <= 0:
        emit 0x3ad36fc8: 0, 64, 71, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Shareholder does not exist in C', 'apTable'
    else:
        if stor8[arg1]:
            require stor8[address(msg.sender)] < 10
            if 0 == arg2:
                require stor8[arg1] < 10
                s = (100 * stor8[arg1]) + 110
                idx = (100 * stor8[address(msg.sender)]) + 110
                while (100 * stor8[address(msg.sender)]) + 210 > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = (100 * stor8[arg1]) + 210
                while (100 * stor8[arg1]) + 210 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                require stor8[address(msg.sender)] < 10
                idx = (100 * stor8[address(msg.sender)]) + 110
                while (100 * stor8[address(msg.sender)]) + 210 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                emit 0x3ad36fc8: 1, Array(len=56, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': All Assets Transferred')
            else:
                require stor6[arg2] < 100
                if stor[stor6[arg2] + (100 * stor8[address(msg.sender)]) + 110] < arg3:
                    emit 0x3ad36fc8: 0, 64, 71, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Shareholder does not have enoug', 'h asset'
                else:
                    require stor8[address(msg.sender)] < 10
                    require stor6[arg2] < 100
                    require stor8[address(msg.sender)] < 10
                    require stor6[arg2] < 100
                    stor[stor6[arg2] + (100 * stor8[address(msg.sender)]) + 110] -= arg3
                    require stor8[arg1] < 10
                    require stor6[arg2] < 100
                    require stor8[arg1] < 10
                    require stor6[arg2] < 100
                    stor[stor6[arg2] + (100 * stor8[arg1]) + 110] += arg3
                    emit 0x3ad36fc8: 1, Array(len=51, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset Transferred')
        else:
            sub_ca0e6145++
            stor8[arg1] = sub_ca0e6145 + 1
            require sub_ca0e6145 + 1 < 100
            stor10[stor109] = arg1 or Mask(96, 160, stor10[stor109])
            require stor8[address(msg.sender)] < 10
            if 0 == arg2:
                require sub_ca0e6145 + 1 < 10
                s = (100 * sub_ca0e6145) + 210
                idx = (100 * stor8[address(msg.sender)]) + 110
                while (100 * stor8[address(msg.sender)]) + 210 > idx:
                    stor[s] = stor[idx]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = (100 * sub_ca0e6145) + 310
                while (100 * sub_ca0e6145) + 310 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                require stor8[address(msg.sender)] < 10
                idx = (100 * stor8[address(msg.sender)]) + 110
                while (100 * stor8[address(msg.sender)]) + 210 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                emit 0x3ad36fc8: 1, Array(len=56, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': All Assets Transferred')
            else:
                require stor6[arg2] < 100
                if stor[stor6[arg2] + (100 * stor8[address(msg.sender)]) + 110] < arg3:
                    emit 0x3ad36fc8: 0, 64, 71, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Shareholder does not have enoug', 'h asset'
                else:
                    require stor8[address(msg.sender)] < 10
                    require stor6[arg2] < 100
                    require stor8[address(msg.sender)] < 10
                    require stor6[arg2] < 100
                    stor[stor6[arg2] + (100 * stor8[address(msg.sender)]) + 110] -= arg3
                    require sub_ca0e6145 + 1 < 10
                    require stor6[arg2] < 100
                    require sub_ca0e6145 + 1 < 10
                    require stor6[arg2] < 100
                    stor[stor6[arg2] + (100 * stor109) + 210] += arg3
                    emit 0x3ad36fc8: 1, Array(len=51, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset Transferred')
}

function sub_b67a5f9a(?) payable {
    if stor476[address(arg5)] != 0:
        emit 0x3ad36fc8: 0, 64, 72, '[Company][transferAssets] Duplic', 'ate reso, already used this reso', 0x206265666f72652e000000000000000000000000000000000000000000000000
    else:
        stor476[address(arg5)] = 1
        call arg5.getState() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        if ext_call.return_data[0] != 2:
            emit 0x3ad36fc8: 0, 64, 81, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Not Director or assetClassCurre', 'ncy=0 or amount=0'
        else:
            call arg5.getResoMethod() with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            if ext_call.return_data[0] < 4:
                emit 0x3ad36fc8: 0, 64, 81, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Not Director or assetClassCurre', 'ncy=0 or amount=0'
            else:
                if arg2 <= 0:
                    emit 0x3ad36fc8: 0, 64, 81, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Not Director or assetClassCurre', 'ncy=0 or amount=0'
                else:
                    if arg3 <= 0:
                        emit 0x3ad36fc8: 0, 64, 81, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Not Director or assetClassCurre', 'ncy=0 or amount=0'
                    else:
                        if stor6[arg2]:
                            if stor8[address(arg1)]:
                                call arg5.getResoMethod() with:
                                     gas gas_remaining - 25050 wei
                                require ext_call.success
                                if 4 == ext_call.return_data[0]:
                                    require stor8[address(arg1)] < 10
                                    require stor6[arg2] < 100
                                    require sub_ca0e6145 < 10
                                    require stor6[arg2] < 100
                                    stor[stor6[arg2] + (100 * stor109) + 110] = arg3 + stor[stor6[arg2] + (100 * stor8[address(arg1)]) + 110]
                                    require stor6[arg2] < 2
                                    stor456[stor6[arg2]] += arg3
                                    emit 0x3ad36fc8: 1, Array(len=85, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset issued to Treasury or di', 'rectly to Shareholder')
                                else:
                                    call arg5.getResoMethod() with:
                                         gas gas_remaining - 25050 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != 5:
                                        call arg5.getResoMethod() with:
                                             gas gas_remaining - 25050 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != 6:
                                            emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                        else:
                                            require stor6[arg2] < 100
                                            if stor210[stor6[arg2]] < arg3:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require stor6[arg2] < 2
                                                stor456[stor6[arg2]] -= arg3
                                                require stor6[arg2] < 100
                                                stor210[stor6[arg2]] -= arg3
                                                emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                                    else:
                                        require stor6[arg2] < 100
                                        if stor210[stor6[arg2]] >= arg3:
                                            require stor6[arg2] < 100
                                            stor210[stor6[arg2]] -= arg3
                                            require stor8[address(arg1)] < 10
                                            require stor6[arg2] < 100
                                            require stor8[address(arg1)] < 10
                                            require stor6[arg2] < 100
                                            stor[stor6[arg2] + (100 * stor8[address(arg1)]) + 110] += arg3
                                            emit 0x3ad36fc8: 1, Array(len=65, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset transferred from Treasur', 'y')
                                        else:
                                            call arg5.getResoMethod() with:
                                                 gas gas_remaining - 25050 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != 6:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require stor6[arg2] < 100
                                                if stor210[stor6[arg2]] < arg3:
                                                    emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                                else:
                                                    require stor6[arg2] < 2
                                                    stor456[stor6[arg2]] -= arg3
                                                    require stor6[arg2] < 100
                                                    stor210[stor6[arg2]] -= arg3
                                                    emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                            else:
                                sub_ca0e6145++
                                stor8[address(arg1)] = sub_ca0e6145 + 1
                                require sub_ca0e6145 + 1 < 100
                                stor10[stor109] = arg1 or Mask(96, 160, stor10[stor109])
                                call arg5.getResoMethod() with:
                                     gas gas_remaining - 25050 wei
                                require ext_call.success
                                if 4 == ext_call.return_data[0]:
                                    require sub_ca0e6145 + 1 < 10
                                    require stor6[arg2] < 100
                                    require sub_ca0e6145 < 10
                                    require stor6[arg2] < 100
                                    stor[stor6[arg2] + (100 * stor109) + 110] = arg3 + stor[stor6[arg2] + (100 * stor109) + 210]
                                    require stor6[arg2] < 2
                                    stor456[stor6[arg2]] += arg3
                                    emit 0x3ad36fc8: 1, Array(len=85, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset issued to Treasury or di', 'rectly to Shareholder')
                                else:
                                    call arg5.getResoMethod() with:
                                         gas gas_remaining - 25050 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != 5:
                                        call arg5.getResoMethod() with:
                                             gas gas_remaining - 25050 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != 6:
                                            emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                        else:
                                            require stor6[arg2] < 100
                                            if stor210[stor6[arg2]] < arg3:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require stor6[arg2] < 2
                                                stor456[stor6[arg2]] -= arg3
                                                require stor6[arg2] < 100
                                                stor210[stor6[arg2]] -= arg3
                                                emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                                    else:
                                        require stor6[arg2] < 100
                                        if stor210[stor6[arg2]] >= arg3:
                                            require stor6[arg2] < 100
                                            stor210[stor6[arg2]] -= arg3
                                            require sub_ca0e6145 + 1 < 10
                                            require stor6[arg2] < 100
                                            require sub_ca0e6145 + 1 < 10
                                            require stor6[arg2] < 100
                                            stor[stor6[arg2] + (100 * stor109) + 210] += arg3
                                            emit 0x3ad36fc8: 1, Array(len=65, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset transferred from Treasur', 'y')
                                        else:
                                            call arg5.getResoMethod() with:
                                                 gas gas_remaining - 25050 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != 6:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require stor6[arg2] < 100
                                                if stor210[stor6[arg2]] < arg3:
                                                    emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                                else:
                                                    require stor6[arg2] < 2
                                                    stor456[stor6[arg2]] -= arg3
                                                    require stor6[arg2] < 100
                                                    stor210[stor6[arg2]] -= arg3
                                                    emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                        else:
                            sub_b8a99f45++
                            stor6[arg2] = sub_b8a99f45 + 1
                            require sub_b8a99f45 + 1 < 2
                            stor461[stor7] = arg4
                            if stor8[address(arg1)]:
                                call arg5.getResoMethod() with:
                                     gas gas_remaining - 25050 wei
                                require ext_call.success
                                if 4 == ext_call.return_data[0]:
                                    require stor8[address(arg1)] < 10
                                    require sub_b8a99f45 < 100
                                    require sub_ca0e6145 < 10
                                    require sub_b8a99f45 < 100
                                    stor[stor7 + (100 * stor109) + 110] = arg3 + stor[stor7 + (100 * stor8[address(arg1)]) + 110]
                                    require sub_b8a99f45 < 2
                                    stor456[stor7] += arg3
                                    emit 0x3ad36fc8: 1, Array(len=85, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset issued to Treasury or di', 'rectly to Shareholder')
                                else:
                                    call arg5.getResoMethod() with:
                                         gas gas_remaining - 25050 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != 5:
                                        call arg5.getResoMethod() with:
                                             gas gas_remaining - 25050 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != 6:
                                            emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                        else:
                                            require sub_b8a99f45 < 100
                                            if stor210[stor7] < arg3:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require sub_b8a99f45 < 2
                                                stor456[stor7] -= arg3
                                                require sub_b8a99f45 < 100
                                                stor210[stor7] -= arg3
                                                emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                                    else:
                                        require sub_b8a99f45 < 100
                                        if stor210[stor7] >= arg3:
                                            require sub_b8a99f45 < 100
                                            stor210[stor7] -= arg3
                                            require stor8[address(arg1)] < 10
                                            require sub_b8a99f45 < 100
                                            require stor8[address(arg1)] < 10
                                            require sub_b8a99f45 < 100
                                            stor[stor7 + (100 * stor8[address(arg1)]) + 110] += arg3
                                            emit 0x3ad36fc8: 1, Array(len=65, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset transferred from Treasur', 'y')
                                        else:
                                            call arg5.getResoMethod() with:
                                                 gas gas_remaining - 25050 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != 6:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require sub_b8a99f45 < 100
                                                if stor210[stor7] < arg3:
                                                    emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                                else:
                                                    require sub_b8a99f45 < 2
                                                    stor456[stor7] -= arg3
                                                    require sub_b8a99f45 < 100
                                                    stor210[stor7] -= arg3
                                                    emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                            else:
                                sub_ca0e6145++
                                stor8[address(arg1)] = sub_ca0e6145 + 1
                                require sub_ca0e6145 + 1 < 100
                                stor10[stor109] = arg1 or Mask(96, 160, stor10[stor109])
                                call arg5.getResoMethod() with:
                                     gas gas_remaining - 25050 wei
                                require ext_call.success
                                if 4 == ext_call.return_data[0]:
                                    require sub_ca0e6145 + 1 < 10
                                    require sub_b8a99f45 < 100
                                    require sub_ca0e6145 < 10
                                    require sub_b8a99f45 < 100
                                    stor[stor7 + (100 * stor109) + 110] = arg3 + stor[stor7 + (100 * stor109) + 210]
                                    require sub_b8a99f45 < 2
                                    stor456[stor7] += arg3
                                    emit 0x3ad36fc8: 1, Array(len=85, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset issued to Treasury or di', 'rectly to Shareholder')
                                else:
                                    call arg5.getResoMethod() with:
                                         gas gas_remaining - 25050 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] != 5:
                                        call arg5.getResoMethod() with:
                                             gas gas_remaining - 25050 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] != 6:
                                            emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                        else:
                                            require sub_b8a99f45 < 100
                                            if stor210[stor7] < arg3:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require sub_b8a99f45 < 2
                                                stor456[stor7] -= arg3
                                                require sub_b8a99f45 < 100
                                                stor210[stor7] -= arg3
                                                emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
                                    else:
                                        require sub_b8a99f45 < 100
                                        if stor210[stor7] >= arg3:
                                            require sub_b8a99f45 < 100
                                            stor210[stor7] -= arg3
                                            require sub_ca0e6145 + 1 < 10
                                            require sub_b8a99f45 < 100
                                            require sub_ca0e6145 + 1 < 10
                                            require sub_b8a99f45 < 100
                                            stor[stor7 + (100 * stor109) + 210] += arg3
                                            emit 0x3ad36fc8: 1, Array(len=65, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Asset transferred from Treasur', 'y')
                                        else:
                                            call arg5.getResoMethod() with:
                                                 gas gas_remaining - 25050 wei
                                            require ext_call.success
                                            if ext_call.return_data[0] != 6:
                                                emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                            else:
                                                require sub_b8a99f45 < 100
                                                if stor210[stor7] < arg3:
                                                    emit 0x3ad36fc8: 0, 64, 66, 0x565b436f6d70616e795d5b7472616e736665724173736574735d204572726f72, ' Check Reso Method and/or captab', 'le'
                                                else:
                                                    require sub_b8a99f45 < 2
                                                    stor456[stor7] -= arg3
                                                    require sub_b8a99f45 < 100
                                                    stor210[stor7] -= arg3
                                                    emit 0x3ad36fc8: 1, Array(len=57, data=0xff5b436f6d70616e795d5b7472616e736665724173736574735d20526573756c, ': Treasury shares reduced')
}



}
