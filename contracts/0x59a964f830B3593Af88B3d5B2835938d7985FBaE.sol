contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2156;
uint8 stor2A63;

function _fallback() payable {
    mem[96 len -4148] = code.data[4474 len -4148]
    mem[64] = -4052
    stor0 = mem[96]
    stor1 = mem[mem[128] + 96]
    if not mem[mem[128] + 96]:
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        while (stor1 + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
        idx = mem[128] + 128
        while mem[128] + mem[mem[128] + 96] + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
        while (stor1 + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2156 = 1
    stor2A63 = 1
    return code.data[326 len 4148]
}



// =====================  Runtime code  =====================


address operatorAddress;
array of struct stor1;
mapping of struct sub_39846902;
mapping of uint8 sub_c0e9c1fd;
mapping of uint8 isReviewer;

function sub_39846902(?) payable {
    return sub_39846902[arg1].field_512
}

function operator() payable {
    return operatorAddress
}

function sub_5d75135a(?) payable {
    return sub_39846902[arg1].field_1792
}

function sub_c0e9c1fd(?) payable {
    return sub_c0e9c1fd[arg1]
}

function isReviewer(address arg1) payable {
    return isReviewer[arg1]
}

function kill() payable {
    if operatorAddress != msg.sender:
    selfdestruct(operatorAddress)
}

function _fallback() payable {
  stop
}

function sub_c0a93615(?) payable {
    if msg.value > 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
}

function sub_73a82b5f(?) payable {
    if msg.sender == operatorAddress:
        if not isReviewer[address(arg1)]:
            isReviewer[address(arg1)] = 1
}

function sub_c9442dac(?) payable {
    if msg.sender == operatorAddress:
        if not isReviewer[address(arg1)]:
            isReviewer[address(arg1)] = 0
}

function sub_d82ca226(?) payable {
    if stor1.length:
        mem[128] = uint256(stor1.field_0)
        idx = 128
        s = 0
        while stor1.length + 96 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length])
}

function sub_598bf048(?) payable {
    if msg.sender == operatorAddress:
        if sub_c0e9c1fd[arg1]:
            if sub_39846902[arg1].field_768:
                call sub_39846902[arg1].field_776 with:
                   value sub_39846902[arg1].field_1024 wei
                     gas 0 wei
                emit 0x42ed4d3f: arg1
            call sub_39846902[arg1].field_256 with:
               value sub_39846902[arg1].field_512 wei
                 gas 0 wei
            sub_39846902[arg1].field_0 = 0
            sub_39846902[arg1].field_256 = 0
            sub_39846902[arg1].field_512 = 0
            sub_39846902[arg1].field_768 = 0
            sub_39846902[arg1].field_1024 = 0
            sub_39846902[arg1].field_1280 = 0
            sub_39846902[arg1].field_1536 = 0
            sub_39846902[arg1].field_1792 = 0
            sub_c0e9c1fd[arg1] = 0
            emit 0x6c692d39: arg1
}

function sub_86c0e67c(?) payable {
    if sub_c0e9c1fd[arg1]:
        if msg.sender == operatorAddress:
            idx = 416
            s = 6
            while 448 > idx + 32:
                mem[idx + 32] = sub_39846902[arg1][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[640] = 0
            mem[672] = 0
            sub_39846902[arg1].field_256 = sub_39846902[arg1].field_256
            sub_39846902[arg1].field_768 = 0
            sub_39846902[arg1].field_776 = 0
            sub_39846902[arg1].field_936 = 0
            sub_39846902[arg1].field_1024 = 0
            s = 5
            idx = 640
            while 704 > idx:
                sub_39846902[arg1][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 7
            while 7 > idx:
                sub_39846902[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_39846902[arg1].field_1792 = 0
            call operatorAddress with:
               value sub_39846902[arg1].field_1024 wei
                 gas 0 wei
            emit 0x42ed4d3f: arg1
}

function sub_2c4b8aa5(?) payable {
    if isReviewer[address(msg.sender)]:
        if sub_c0e9c1fd[arg1]:
            if sub_39846902[arg1].field_768:
                idx = 0
                while uint8(idx) < 2:
                    require idx < 2
                    if sub_39846902[arg1][idx].field_1280 != msg.sender:
                        idx = idx + 1
                        continue 
                emit 0x65c25c5e: msg.sender, arg2 > 0, arg1
                if 0 == arg2:
                    call sub_39846902[arg1].field_776 with:
                       value sub_39846902[arg1].field_1024 wei
                         gas 0 wei
                    idx = 384
                    s = 5
                    while 448 > idx + 32:
                        mem[idx + 32] = sub_39846902[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[640] = 0
                    mem[672] = 0
                    sub_39846902[arg1].field_256 = sub_39846902[arg1].field_256
                    sub_39846902[arg1].field_768 = 0
                    sub_39846902[arg1].field_776 = 0
                    sub_39846902[arg1].field_936 = 0
                    sub_39846902[arg1].field_1024 = 0
                    s = 5
                    idx = 640
                    while 704 > idx:
                        sub_39846902[arg1][s].field_0 = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 7
                    while 7 > idx:
                        sub_39846902[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    sub_39846902[arg1].field_1792 = 0
                    emit 0x2eb58077: sub_39846902[arg1].field_776, arg1
                else:
                    require sub_39846902[arg1].field_1792 < 2
                    sub_39846902[arg1][sub_39846902[arg1].field_1792].field_1280 = msg.sender or Mask(96, 160, sub_39846902[arg1][sub_39846902[arg1].field_1792].field_1280)
                    sub_39846902[arg1].field_1792++
                    if 2 == sub_39846902[arg1].field_1792 + 1:
                        call sub_39846902[arg1].field_776 with:
                           value sub_39846902[arg1].field_512 - (20 * sub_39846902[arg1].field_512 / 100) + sub_39846902[arg1].field_1024 wei
                             gas 0 wei
                        idx = 0
                        while uint8(idx) < 2:
                            require idx < 2
                            call sub_39846902[arg1][idx].field_1280 with:
                               value 10 * sub_39846902[arg1].field_512 / 100 wei
                                 gas 0 wei
                            idx = idx + 1
                            continue 
                        sub_39846902[arg1].field_0 = 0
                        sub_39846902[arg1].field_256 = 0
                        sub_39846902[arg1].field_512 = 0
                        sub_39846902[arg1].field_768 = 0
                        sub_39846902[arg1].field_1024 = 0
                        sub_39846902[arg1].field_1280 = 0
                        sub_39846902[arg1].field_1536 = 0
                        sub_39846902[arg1].field_1792 = 0
                        sub_c0e9c1fd[arg1] = 0
                        emit 0x1d108c0f: sub_39846902[arg1].field_512, arg1, sub_39846902[arg1].field_776
}

function sub_0b8183c7(?) payable {
    mem[576] = 0
    mem[608] = 0
    if not sub_c0e9c1fd[arg1]:
        if msg.value > 0:
            sub_39846902[arg1].field_0 = arg2
            sub_39846902[arg1].field_256 = msg.sender
            sub_39846902[arg1].field_512 = msg.value
            sub_39846902[arg1].field_768 = 0
            sub_39846902[arg1].field_776 = 0
            sub_39846902[arg1].field_936 = 0
            sub_39846902[arg1].field_1024 = 0
            s = 5
            idx = 576
            while 640 > idx:
                sub_39846902[arg1][s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 7
            while 7 > idx:
                sub_39846902[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_39846902[arg1].field_1792 = 0
            sub_c0e9c1fd[arg1] = 1
            emit 0x2c69be41: arg1, msg.sender, arg2, msg.value
    else:
        if 0 == sub_39846902[arg1].field_0:
            if msg.value > 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
        else:
            if sub_39846902[arg1].field_0 >= block.timestamp:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if sub_39846902[arg1].field_768:
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    mem[640] = sub_39846902[arg1].field_0
                    idx = 928
                    s = 5
                    while 992 > idx + 32:
                        mem[idx + 32] = sub_39846902[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call sub_39846902[arg1].field_256 with:
                       value sub_39846902[arg1].field_512 wei
                         gas 0 wei
                    sub_39846902[arg1].field_0 = 0
                    sub_39846902[arg1].field_256 = 0
                    sub_39846902[arg1].field_512 = 0
                    sub_39846902[arg1].field_768 = 0
                    sub_39846902[arg1].field_1024 = 0
                    sub_39846902[arg1].field_1280 = 0
                    sub_39846902[arg1].field_1536 = 0
                    sub_39846902[arg1].field_1792 = 0
                    sub_c0e9c1fd[arg1] = 0
                    emit 0x6c692d39: arg1
                    if msg.value > 0:
                        sub_39846902[arg1].field_0 = arg2
                        sub_39846902[arg1].field_256 = msg.sender
                        sub_39846902[arg1].field_512 = msg.value
                        sub_39846902[arg1].field_768 = 0
                        sub_39846902[arg1].field_776 = 0
                        sub_39846902[arg1].field_936 = 0
                        sub_39846902[arg1].field_1024 = 0
                        s = 5
                        idx = 576
                        while 640 > idx:
                            sub_39846902[arg1][s].field_0 = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 7
                        while 7 > idx:
                            sub_39846902[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        sub_39846902[arg1].field_1792 = 0
                        sub_c0e9c1fd[arg1] = 1
                        emit 0x2c69be41: arg1, msg.sender, arg2, msg.value
}

function claimBounty(uint256 arg1) payable {
    if not sub_c0e9c1fd[arg1]:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == sub_39846902[arg1].field_0:
            if msg.value < 10 * 10^18:
                if msg.value > 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
            else:
                if sub_39846902[arg1].field_768:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                else:
                    sub_39846902[arg1].field_768 = 1
                    sub_39846902[arg1].field_776 = Mask(248, 0, msg.sender)
                    sub_39846902[arg1].field_1024 = 0
                    sub_39846902[arg1].field_1024 = msg.value
                    sub_39846902[arg1].field_256 = sub_39846902[arg1].field_256
                    sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                    sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                    sub_39846902[arg1].field_776 = sub_39846902[arg1].field_776
                    sub_39846902[arg1].field_936 = 0
                    s = 5
                    idx = 5
                    while 7 > idx:
                        sub_39846902[arg1][s].field_0 = sub_39846902[arg1][idx].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = 7
                    while 7 > idx:
                        sub_39846902[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    emit 0x99f348f3: msg.sender, arg1
        else:
            if sub_39846902[arg1].field_0 >= block.timestamp:
                if msg.value < 10 * 10^18:
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                else:
                    if sub_39846902[arg1].field_768:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                    else:
                        sub_39846902[arg1].field_768 = 1
                        sub_39846902[arg1].field_776 = Mask(248, 0, msg.sender)
                        sub_39846902[arg1].field_1024 = 0
                        sub_39846902[arg1].field_1024 = msg.value
                        sub_39846902[arg1].field_256 = sub_39846902[arg1].field_256
                        sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                        sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                        sub_39846902[arg1].field_776 = sub_39846902[arg1].field_776
                        sub_39846902[arg1].field_936 = 0
                        s = 5
                        idx = 5
                        while 7 > idx:
                            sub_39846902[arg1][s].field_0 = sub_39846902[arg1][idx].field_0
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = 7
                        while 7 > idx:
                            sub_39846902[arg1][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        emit 0x99f348f3: msg.sender, arg1
            else:
                if sub_39846902[arg1].field_768:
                    if msg.value < 10 * 10^18:
                        if msg.value > 0:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                    else:
                        if sub_39846902[arg1].field_768:
                            call msg.sender with:
                               value msg.value wei
                                 gas 0 wei
                        else:
                            sub_39846902[arg1].field_768 = 1
                            sub_39846902[arg1].field_776 = Mask(248, 0, msg.sender)
                            sub_39846902[arg1].field_1024 = 0
                            sub_39846902[arg1].field_1024 = msg.value
                            sub_39846902[arg1].field_256 = sub_39846902[arg1].field_256
                            sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                            sub_39846902[arg1].field_768 = sub_39846902[arg1].field_768
                            sub_39846902[arg1].field_776 = sub_39846902[arg1].field_776
                            sub_39846902[arg1].field_936 = 0
                            s = 5
                            idx = 5
                            while 7 > idx:
                                sub_39846902[arg1][s].field_0 = sub_39846902[arg1][idx].field_0
                                s = s + 1
                                idx = idx + 1
                                continue 
                            idx = 7
                            while 7 > idx:
                                sub_39846902[arg1][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            emit 0x99f348f3: msg.sender, arg1
                else:
                    idx = 384
                    s = 5
                    while 448 > idx + 32:
                        mem[idx + 32] = sub_39846902[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    call sub_39846902[arg1].field_256 with:
                       value sub_39846902[arg1].field_512 wei
                         gas 0 wei
                    sub_39846902[arg1].field_0 = 0
                    sub_39846902[arg1].field_256 = 0
                    sub_39846902[arg1].field_512 = 0
                    sub_39846902[arg1].field_768 = 0
                    sub_39846902[arg1].field_1024 = 0
                    sub_39846902[arg1].field_1280 = 0
                    sub_39846902[arg1].field_1536 = 0
                    sub_39846902[arg1].field_1792 = 0
                    sub_c0e9c1fd[arg1] = 0
                    emit 0x6c692d39: arg1
                    if msg.value > 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
}



}
