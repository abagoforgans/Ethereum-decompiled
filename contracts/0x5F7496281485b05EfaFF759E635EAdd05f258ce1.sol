contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2608]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address stor1;
mapping of struct stor2;
array of struct stor3;
uint256 stor4;
array of struct stor5;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor39242276188594799690162040385371932227836366301296949569053664044882731168248;

function _fallback() payable {
  stop
}

function collect() payable {
    call stor0 with:
       value 10^18 wei
         gas 0 wei
}

function cancel(uint256 arg1) payable {
    if address(stor1[arg1]) == msg.sender:
        address(stor1[arg1]) = 0
        call msg.sender with:
           value 1 wei
             gas 0 wei
}

function poll(uint32 arg1) payable {
    require arg1 < stor3.length
    if address(stor1[stor56C2[arg1]]) != 0:
        return 1
    if not stor2[stor56C2[arg1]].field_0:
        return 0
    return 2
}

function timeout(uint256 arg1) payable {
    if stor2[arg1].field_0:
        if uint32(stor2[arg1].field_424 + 20) <= block.number:
            call stor2[arg1].field_256 with:
               value 1 wei
                 gas 0 wei
            emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, 3, stor2[arg1].field_256
            stor2[arg1].field_0 = 0
            stor2[arg1].field_256 = 0
}

function reply(uint256 arg1, uint8 arg2) payable {
    if address(stor1[arg1]):
        if not stor2[arg1].field_0:
            if msg.value >= 1:
                if arg2 < 3:
                    stor2[arg1].field_0 = address(stor1[arg1])
                    stor2[arg1].field_256 = msg.sender
                    stor2[arg1].field_416 = arg2
                    stor2[arg1].field_424 = Mask(88, 0, block.number)
                    stor2[arg1].field_456 = Mask(56, 200, msg.sender) >> 200
                    stor2[arg1].field_456 = Mask(56, 40, arg2) >> 40
                    address(stor1[arg1]) = 0
}

function start(uint256 arg1) payable {
    if msg.value >= 1:
        if not address(stor1[arg1]):
            if not stor2[arg1].field_0:
                uint256(stor1[arg1]) = msg.sender or Mask(96, 160, uint256(stor1[arg1]))
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor3.length - 1 < stor3.length
                stor3[stor3.length].field_0 = arg1
}

function cleanLog() payable {
    idx = 0
    s = 0
    while uint32(idx) < stor3.length:
        require idx < stor3.length
        mem[32] = 1
        if 0 == address(stor1[stor56C2[idx]]):
            mem[0] = stor56C2[idx]
            mem[32] = 2
            if not stor2[stor56C2[idx]].field_0:
                idx = idx + 1
                s = s
                continue 
        require idx < stor3.length
        require s < stor3.length
        mem[0] = 3
        stor56C2[s] = stor56C2[idx]
        idx = idx + 1
        s = s + 1
        continue 
    stor4 = s or Mask(224, 32, stor4)
    if stor3.length:
        mem[160] = uint256(stor3.field_0)
        idx = 160
        s = 0
        while (32 * stor3.length) + 128 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
}

function getLog() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = uint255(stor3.length)
    if not stor5.length <= 2 * stor3.length:
        idx = 2 * stor3.length
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while uint32(idx) < stor3.length:
        require idx < stor3.length
        require 2 * idx < stor5.length
        stor36B6[idx] = stor56C2[idx]
        require idx < stor3.length
        mem[32] = 1
        if address(stor1[stor56C2[idx]]) != 0:
            require (2 * idx) + 1 < stor5.length
            mem[0] = 5
            stor36B6[idx] = 1
        else:
            mem[32] = 2
            require (2 * idx) + 1 < stor5.length
            mem[0] = 5
            if not stor2[stor56C2[idx]].field_0:
                stor36B6[idx] = 0
            else:
                stor36B6[idx] = 2
        idx = idx + 1
        continue 
    if stor5.length:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while (32 * stor5.length) + 128 > idx:
            mem[idx + 32] = stor5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor5.length, data=mem[160 len 32 * stor5.length])
}

function show(uint256 arg1, uint256 arg2) payable {
    if stor2[arg1].field_0 != 0:
        if arg1 == sha3(arg2):
            if stor2[arg1].field_416 == uint8(uint8(arg2) % 3):
                call stor2[arg1].field_0 with:
                   value 1 wei
                     gas 0 wei
                call stor2[arg1].field_256 with:
                   value 1 wei
                     gas 0 wei
                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 0, uint8(uint8(arg2) % 3), stor2[arg1].field_256
            else:
                if uint8(uint8(arg2) % 3) != 0:
                    if uint8(uint8(arg2) % 3) != 1:
                        if uint8(uint8(arg2) % 3) != 2:
                            call stor2[arg1].field_256 with:
                               value 2 wei
                                 gas 0 wei
                            emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                        else:
                            if stor2[arg1].field_416 != 1:
                                call stor2[arg1].field_256 with:
                                   value 2 wei
                                     gas 0 wei
                                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                            else:
                                call stor2[arg1].field_0 with:
                                   value 2 wei
                                     gas 0 wei
                                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                    else:
                        if 0 == stor2[arg1].field_416:
                            call stor2[arg1].field_0 with:
                               value 2 wei
                                 gas 0 wei
                            emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                        else:
                            if uint8(uint8(arg2) % 3) != 2:
                                call stor2[arg1].field_256 with:
                                   value 2 wei
                                     gas 0 wei
                                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                            else:
                                if stor2[arg1].field_416 != 1:
                                    call stor2[arg1].field_256 with:
                                       value 2 wei
                                         gas 0 wei
                                    emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                                else:
                                    call stor2[arg1].field_0 with:
                                       value 2 wei
                                         gas 0 wei
                                    emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                else:
                    if 2 == stor2[arg1].field_416:
                        call stor2[arg1].field_0 with:
                           value 2 wei
                             gas 0 wei
                        emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                    else:
                        if uint8(uint8(arg2) % 3) != 1:
                            if uint8(uint8(arg2) % 3) != 2:
                                call stor2[arg1].field_256 with:
                                   value 2 wei
                                     gas 0 wei
                                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                            else:
                                if stor2[arg1].field_416 != 1:
                                    call stor2[arg1].field_256 with:
                                       value 2 wei
                                         gas 0 wei
                                    emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                                else:
                                    call stor2[arg1].field_0 with:
                                       value 2 wei
                                         gas 0 wei
                                    emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                        else:
                            if 0 == stor2[arg1].field_416:
                                call stor2[arg1].field_0 with:
                                   value 2 wei
                                     gas 0 wei
                                emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                            else:
                                if uint8(uint8(arg2) % 3) != 2:
                                    call stor2[arg1].field_256 with:
                                       value 2 wei
                                         gas 0 wei
                                    emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                                else:
                                    if stor2[arg1].field_416 != 1:
                                        call stor2[arg1].field_256 with:
                                           value 2 wei
                                             gas 0 wei
                                        emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 2, uint8(uint8(arg2) % 3), stor2[arg1].field_256
                                    else:
                                        call stor2[arg1].field_0 with:
                                           value 2 wei
                                             gas 0 wei
                                        emit code.data[2576 len 32]: arg1, stor2[arg1].field_0, stor2[arg1].field_256, 1, uint8(uint8(arg2) % 3), stor2[arg1].field_256
            stor2[arg1].field_0 = 0
            stor2[arg1].field_256 = 0
}



}
