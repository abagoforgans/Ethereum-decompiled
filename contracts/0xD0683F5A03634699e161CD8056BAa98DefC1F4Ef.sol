contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    mem[96 len -467] = code.data[2214 len -467]
    _2 = mem[96]
    _3 = mem[128]
    _4 = mem[160]
    _5 = mem[192]
    _6 = mem[224]
    mem[-371] = 0
    mem[-339 len 288] = 0
    mem[64] = 35149
    mem[var8001] = 0
    if var8002 - 1:
        var8001 = var8001 + 32
        var8002 = var8002 - 1
        continue 
    mem[var9001] = 31949
    if var9002 - 1:
        mem[64] = 38349
        var8001 = 35149
        var8002 = 100
        continue 
    mem[35149] = 0
    mem[35181 len 288] = 0
    stor1 = _2
    stor2 = _3
    _12 = mem[_4 + 96]
    mem[0] = 3
    stor3[] = Array(len=_12, data=mem[_4 + 128 len _12])
    stor0 = _6 or Mask(96, 160, stor0)
    stor5 = _5
    stor6 = 0
    stor7 = 1
    stor8 = block.timestamp
    if stor1 == 1:
        call address(_6).0x8959ddeb with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        stor4 = ext_call.return_data[0]
        call address(_6).0xbcc04eb2 with:
             gas gas_remaining - 25050 wei
        call address(_6).0x87bb4fe9 with:
             gas gas_remaining - 25050 wei
        mem[35469 len 320] = ext_call.return_data[0 len 320]
        idx = 1
        while idx <= ext_call.return_data[0]:
            require idx < 10
            mem[0] = mem[(32 * idx) + 35481 len 20]
            mem[32] = 9
            stor9[mem[(32 * idx) + 35481 len 20]] = 1
            idx = idx + 1
            continue 
        if stor9[address(msg.sender)] <= 0:
            emit onResult(uint256 rg1, string rg2):
                          0,
                          64,
                          60,
                          '[Reso][sign] Error: Not authoriz',
                          'ed to sign or already signed',
        else:
            if stor10[address(msg.sender)]:
                emit onResult(uint256 rg1, string rg2):
                              0,
                              64,
                              60,
                              '[Reso][sign] Error: Not authoriz',
                              'ed to sign or already signed',
            else:
                stor10[address(msg.sender)] = stor9[address(msg.sender)]
                stor6 += stor9[address(msg.sender)]
                if stor9[address(msg.sender)] + stor6 >= stor4:
                    stor7 = 2
    else:
        if 2 == stor1:
            call address(_6).0xca0e6145 with:
                 gas gas_remaining - 25050 wei
            require ext_call.success
            call address(_6).0xb8a99f45 with:
                 gas gas_remaining - 25050 wei
            call address(_6).0x2191f795 with:
                 gas gas_remaining - 25050 wei
            mem[35469 len 32000] = ext_call.return_data[0 len 32000]
            call address(_6) with:
               funct ext_call.return_data[0 len 4]
                 gas gas_remaining - 25050 wei
            mem[35789 len 640] = ext_call.return_data[0 len 640]
            mem[64] = 35853
            s = 0
            idx = 2
            while idx <= ext_call.return_data[0]:
                s = 1
                t = 0
                while s <= ext_call.return_data[0]:
                    require idx < 10
                    require s < 100
                    s = s + 1
                    t = t + (mem[(32 * s) + mem[(32 * idx) + 35469]] * mem[(32 * idx) + ext_call.return_data[32]])
                    continue 
                call address(_6).0xafaab462 with:
                     gas gas_remaining - 25050 wei
                mem[mem[64] len 3200] = ext_call.return_data[0 len 3200]
                require ext_call.success
                _1024 = mem[64]
                mem[64] = mem[64] + 3200
                require idx < 100
                mem[0] = mem[_1024 + (32 * idx) + 12 len 20]
                mem[32] = 9
                stor9[mem[0]] = t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                s = ext_call.return_data[0] + 1
                idx = idx + 1
                continue 
            if 2 == stor1:
                stor4 = 1
                if stor9[address(msg.sender)] <= 0:
                    emit onResult(uint256 rg1, string rg2):
                                  0,
                                  64,
                                  60,
                                  '[Reso][sign] Error: Not authoriz',
                                  'ed to sign or already signed',
                else:
                    if stor10[address(msg.sender)]:
                        emit onResult(uint256 rg1, string rg2):
                                      0,
                                      64,
                                      60,
                                      '[Reso][sign] Error: Not authoriz',
                                      'ed to sign or already signed',
                    else:
                        stor10[address(msg.sender)] = stor9[address(msg.sender)]
                        stor6 += stor9[address(msg.sender)]
                        if stor9[address(msg.sender)] + stor6 >= stor4:
                            stor7 = 2
            else:
                if 3 == stor1:
                    stor4 = 1
                if stor9[address(msg.sender)] <= 0:
                    emit onResult(uint256 rg1, string rg2):
                                  0,
                                  64,
                                  60,
                                  '[Reso][sign] Error: Not authoriz',
                                  'ed to sign or already signed',
                else:
                    if stor10[address(msg.sender)]:
                        emit onResult(uint256 rg1, string rg2):
                                      0,
                                      64,
                                      60,
                                      '[Reso][sign] Error: Not authoriz',
                                      'ed to sign or already signed',
                    else:
                        stor10[address(msg.sender)] = stor9[address(msg.sender)]
                        stor6 += stor9[address(msg.sender)]
                        if stor9[address(msg.sender)] + stor6 >= stor4:
                            stor7 = 2
        else:
            if 3 == stor1:
                call address(_6).0xca0e6145 with:
                     gas gas_remaining - 25050 wei
                require ext_call.success
                call address(_6).0xb8a99f45 with:
                     gas gas_remaining - 25050 wei
                call address(_6).0x2191f795 with:
                     gas gas_remaining - 25050 wei
                mem[35469 len 32000] = ext_call.return_data[0 len 32000]
                call address(_6) with:
                   funct ext_call.return_data[0 len 4]
                     gas gas_remaining - 25050 wei
                mem[35789 len 640] = ext_call.return_data[0 len 640]
                mem[64] = 35853
                s = 0
                idx = 2
                while idx <= ext_call.return_data[0]:
                    s = 1
                    t = 0
                    while s <= ext_call.return_data[0]:
                        require idx < 10
                        require s < 100
                        s = s + 1
                        t = t + (mem[(32 * s) + mem[(32 * idx) + 35469]] * mem[(32 * idx) + ext_call.return_data[32]])
                        continue 
                    call address(_6).0xafaab462 with:
                         gas gas_remaining - 25050 wei
                    mem[mem[64] len 3200] = ext_call.return_data[0 len 3200]
                    require ext_call.success
                    _1026 = mem[64]
                    mem[64] = mem[64] + 3200
                    require idx < 100
                    mem[0] = mem[_1026 + (32 * idx) + 12 len 20]
                    mem[32] = 9
                    stor9[mem[0]] = t * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]
                    s = ext_call.return_data[0] + 1
                    idx = idx + 1
                    continue 
                if 2 == stor1:
                    stor4 = 1
                    if stor9[address(msg.sender)] <= 0:
                        emit onResult(uint256 rg1, string rg2):
                                      0,
                                      64,
                                      60,
                                      '[Reso][sign] Error: Not authoriz',
                                      'ed to sign or already signed',
                    else:
                        if stor10[address(msg.sender)]:
                            emit onResult(uint256 rg1, string rg2):
                                          0,
                                          64,
                                          60,
                                          '[Reso][sign] Error: Not authoriz',
                                          'ed to sign or already signed',
                        else:
                            stor10[address(msg.sender)] = stor9[address(msg.sender)]
                            stor6 += stor9[address(msg.sender)]
                            if stor9[address(msg.sender)] + stor6 >= stor4:
                                stor7 = 2
                else:
                    if 3 == stor1:
                        stor4 = 1
                    if stor9[address(msg.sender)] <= 0:
                        emit onResult(uint256 rg1, string rg2):
                                      0,
                                      64,
                                      60,
                                      '[Reso][sign] Error: Not authoriz',
                                      'ed to sign or already signed',
                    else:
                        if stor10[address(msg.sender)]:
                            emit onResult(uint256 rg1, string rg2):
                                          0,
                                          64,
                                          60,
                                          '[Reso][sign] Error: Not authoriz',
                                          'ed to sign or already signed',
                        else:
                            stor10[address(msg.sender)] = stor9[address(msg.sender)]
                            stor6 += stor9[address(msg.sender)]
                            if stor9[address(msg.sender)] + stor6 >= stor4:
                                stor7 = 2
    return code.data[1747 len 467]
}



// =====================  Runtime code  =====================


address sub_66a3c5dfAddress;
uint256 resoType;
uint256 resoMethod;
uint256 requiredSigs;
uint256 stor6;
uint256 state;
mapping of uint256 stor9;
mapping of uint256 stor10;

function getState() payable {
    return state
}

function getRequiredSigs() payable {
    return requiredSigs
}

function sub_66a3c5df(?) payable {
    return sub_66a3c5dfAddress
}

function getResoType() payable {
    return resoType
}

function getResoMethod() payable {
    return resoMethod
}

function _fallback() payable {
  stop
}

function sign() payable {
    if stor9[address(msg.sender)] <= 0:
        emit onResult(uint256 rg1, string rg2):
                      0,
                      64,
                      60,
                      '[Reso][sign] Error: Not authoriz',
                      'ed to sign or already signed',
    else:
        if stor10[address(msg.sender)]:
            emit onResult(uint256 rg1, string rg2):
                          0,
                          64,
                          60,
                          '[Reso][sign] Error: Not authoriz',
                          'ed to sign or already signed',
        else:
            stor10[address(msg.sender)] = stor9[address(msg.sender)]
            stor6 += stor9[address(msg.sender)]
            if stor9[address(msg.sender)] + stor6 >= requiredSigs:
                state = 2
}



}
