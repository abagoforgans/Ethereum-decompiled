contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[64 len 1780]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 stor1;
address stor2;
uint256 stor2;

function kill() payable {
    if address(stor2) != msg.sender:
    selfdestruct(address(stor2))
}

function _fallback() payable {
  stop
}

function calculatePayment(uint256 arg1) payable {
    return ((stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536))
}

function sub_4c9b7c6c(?) payable {
    stor1++
    stor0[stor1].field_0 = arg1
    stor0[stor1].field_256 = arg2
    stor0[stor1].field_512 = arg3
    stor0[stor1].field_768 = arg4
    stor0[stor1].field_1024 = arg5
    stor0[stor1].field_2048 = block.number
    stor0[stor1].field_1536 = 0
    stor0[stor1].field_2304 = 0
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
}

function sub_387a2b5e(?) payable {
    if stor0[arg1].field_2304:
        if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
            s = 0
            idx = 0
            while idx < stor0[arg1].field_1536:
                mem[0] = stor0[arg1][11][idx].field_0
                mem[32] = sha3(arg1, 0) + 10
                if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                    mem[0] = arg1
                    mem[32] = 0
                    call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                       value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                         gas 0 wei
                    stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                idx = idx + 1
                continue 
            stor0[arg1].field_2304 += stor0[arg1].field_1024
    else:
        if block.number > stor0[arg1].field_2048 + stor0[arg1].field_0:
            stor0[arg1].field_2304 = stor0[arg1].field_2048 + stor0[arg1].field_0
        else:
            if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
                s = 0
                idx = 0
                while idx < stor0[arg1].field_1536:
                    mem[0] = stor0[arg1][11][idx].field_0
                    mem[32] = sha3(arg1, 0) + 10
                    if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                        mem[0] = arg1
                        mem[32] = 0
                        call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                           value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                             gas 0 wei
                        stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                    s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                    idx = idx + 1
                    continue 
                stor0[arg1].field_2304 += stor0[arg1].field_1024
    return 1
}

function payPremium(uint256 arg1) payable {
    if block.number < stor0[arg1].field_2304 + stor0[arg1].field_1024:
        stor0[arg1].field_1280 += msg.value
        stor0[arg1][10][address(msg.sender)].field_256 = block.number
    if stor0[arg1].field_2304:
        if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
            s = 0
            idx = 0
            while idx < stor0[arg1].field_1536:
                mem[0] = stor0[arg1][11][idx].field_0
                mem[32] = sha3(arg1, 0) + 10
                if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                    mem[0] = arg1
                    mem[32] = 0
                    call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                       value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                         gas 0 wei
                    stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                idx = idx + 1
                continue 
            stor0[arg1].field_2304 += stor0[arg1].field_1024
    else:
        if block.number > stor0[arg1].field_2048 + stor0[arg1].field_0:
            stor0[arg1].field_2304 = stor0[arg1].field_2048 + stor0[arg1].field_0
        else:
            if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
                s = 0
                idx = 0
                while idx < stor0[arg1].field_1536:
                    mem[0] = stor0[arg1][11][idx].field_0
                    mem[32] = sha3(arg1, 0) + 10
                    if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                        mem[0] = arg1
                        mem[32] = 0
                        call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                           value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                             gas 0 wei
                        stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                    s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                    idx = idx + 1
                    continue 
                stor0[arg1].field_2304 += stor0[arg1].field_1024
    return 0
}

function sub_ec831a8e(?) payable {
    if stor0[arg1].field_2304:
        if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
            s = 0
            idx = 0
            while idx < stor0[arg1].field_1536:
                mem[0] = stor0[arg1][11][idx].field_0
                mem[32] = sha3(arg1, 0) + 10
                if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                    mem[0] = arg1
                    mem[32] = 0
                    call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                       value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                         gas 0 wei
                    stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                idx = idx + 1
                continue 
            stor0[arg1].field_2304 += stor0[arg1].field_1024
        if block.number >= stor0[arg1].field_2048 + stor0[arg1].field_0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            stor0[arg1].field_1280 += msg.value
            stor0[arg1].field_1536++
            stor0[arg1][10][address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[arg1][10][address(msg.sender)].field_0)
    else:
        if block.number > stor0[arg1].field_2048 + stor0[arg1].field_0:
            stor0[arg1].field_2304 = stor0[arg1].field_2048 + stor0[arg1].field_0
            if block.number >= stor0[arg1].field_2048 + stor0[arg1].field_0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor0[arg1].field_1280 += msg.value
                stor0[arg1].field_1536++
                stor0[arg1][10][address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[arg1][10][address(msg.sender)].field_0)
        else:
            if block.number > stor0[arg1].field_2304 + stor0[arg1].field_1024:
                s = 0
                idx = 0
                while idx < stor0[arg1].field_1536:
                    mem[0] = stor0[arg1][11][idx].field_0
                    mem[32] = sha3(arg1, 0) + 10
                    if stor0[arg1][10][stor0[arg1][11][idx].field_0].field_256 > stor0[arg1].field_2304:
                        mem[0] = arg1
                        mem[32] = 0
                        call stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0 with:
                           value (stor0[arg1].field_1280 / stor0[arg1].field_1536) - (stor0[arg1].field_1536 / stor0[arg1].field_1792 * stor0[arg1].field_1280 / stor0[arg1].field_1536) wei
                             gas 0 wei
                        stor0[arg1][10][stor0[arg1][10][stor0[arg1][11][idx].field_0].field_0].field_512 = 0
                    s = sha3(stor0[arg1][11][idx].field_0, sha3(arg1, 0) + 10)
                    idx = idx + 1
                    continue 
                stor0[arg1].field_2304 += stor0[arg1].field_1024
            if block.number >= stor0[arg1].field_2048 + stor0[arg1].field_0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                stor0[arg1].field_1280 += msg.value
                stor0[arg1].field_1536++
                stor0[arg1][10][address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor0[arg1][10][address(msg.sender)].field_0)
    return 0
}



}
