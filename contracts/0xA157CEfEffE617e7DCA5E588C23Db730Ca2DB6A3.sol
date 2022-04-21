contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 10
    stor3 = 300
    stor4 = 0
    require not msg.value
    stor5 = msg.sender
    return code.data[120 len 4149]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 stor2; offset 1
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
array of struct stor6;

function totalParticipants() {
    return stor6.length
}

function feesSeperateFromBalanceApproximately() {
    return (stor1 / 10^18)
}

function numberOfParticipantsWaitingForPayout() {
    return (stor6.length - stor4)
}

function changeOwner(address arg1) {
    if msg.sender == stor5:
        stor5 = arg1
}

function nextPayoutWhenPyramidBalanceTotalsApproximately() {
    require stor4 < stor6.length
    return (stor6[stor4].field_256 / 10^18)
}

function changeFeePercentage(uint256 arg1) {
    if msg.sender == stor5:
        require arg1 <= 10
        uint256(stor2.field_0) = arg1
}

function changeMultiplier(uint256 arg1) {
    if msg.sender == stor5:
        require arg1 <= 300
        require arg1 >= 120
        stor3 = arg1
}

function participantDetails(uint256 arg1) {
    if arg1 > stor6.length:
        return 0
    require arg1 < stor6.length
    return stor6[arg1].field_0, stor6[arg1].field_256 / 10^18
}

function collectAllFees() {
    if msg.sender == stor5:
        require stor1
        call stor5 with:
           value stor1 wei
             gas 2300 * is_zero(value) wei
        stor1 = 0
}

function collectPercentOfFees(uint256 arg1) {
    if msg.sender == stor5:
        require stor1
        require arg1 <= 100
        call stor5 with:
           value stor1 / 100 * arg1 wei
             gas 2300 * is_zero(value) wei
        stor1 += -1 * stor1 / 100 * arg1
}

function currentFeePercentage() {
    return uint256(stor2.field_0), 
           Array(len=132, data=0x53686f776e20696e202520666f726d2e204665652069732068616c766564283530252920666f7220616d6f756e747320657175616c206f722067726561746572207468616e203530206574686572732e2028466565206d6179206368616e67652c206275742069732063617070656420746f2061206d6178696d756d206f662031302500, mem[292 len 28] >> 768, mem[316 len 4])
}

function collectFeesInEther(uint256 arg1) {
    if msg.sender == stor5:
        require stor1
        if 10^18 * arg1 <= stor1:
        else:
            if stor5 != msg.sender:
            else:
                call stor5 with:
                   value stor1 wei
                     gas 2300 * is_zero(value) wei
                stor1 = 0
        call stor5 with:
           value 10^18 * arg1 wei
             gas 2300 * is_zero(value) wei
        stor1 += -1 * 10^18 * arg1
}

function currentPyramidBalanceApproximately() {
    return stor0 / 10^18, 
           Array(len=202, data=0x29416c6c2062616c616e63652076616c75657320617265206d6561737572656420696e204574686572732c206e6f746520746861742064756520746f206e6f20646563696d616c20706c6163696e672c2074686573652076616c7565732073686f7720757020617320696e746567657273206f6e6c792c2077697468696e2074686520636f6e747261637420697473656c6620796f752077696c6c206765742074686520657861637420646563696d616c2076616c756520796f752061726520737570706f7365642074, mem[362 len 22] >> 1280, mem[438 len 10])
}

function currentMultiplier() {
    return stor3, 
           Array(len=287, data=0x6f54686973206d756c7469706c696572206170706c69657320746f20796f7520617320736f6f6e206173207472616e73616374696f6e2069732072656365697665642c206d6179206265206c6f776572656420746f2068617374656e207061796f757473206f7220696e63726561736564206966207061796f75747320617265206661737420656e6f7567682e2044756520746f206e6f20666c6f6174206f7220646563696d616c732c206d756c7469706c696572206973207831303020666f722061206672616374696f6e616c206d756c7469706c69657220652e672e203235302069732061637475616c6c79206120322e3578206d756c7469706c6965722e20436170706564206174203378206d617820616e6420312e3278206d696e, mem[447 len 1] >> 1792, Mask(248, -2048, mem[447 len 1]) << 2048)
}

function _fallback() {
    if msg.value < 10^18:
        stor1 += msg.value
    else:
        stor6.length++
        if msg.value < 50 * 10^18:
            if not stor6.length > stor6.length + 1:
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = msg.value * stor3 / 100
                if stor6.length == 10:
                    stor3 = 200
                    stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                    stor1 += msg.value * uint256(stor2.field_0) / 100
                    if stor0 > stor6[stor4].field_256:
                        require stor4 < stor6.length
                        call stor6[stor4].field_0 with:
                           value stor6[stor4].field_256 wei
                             gas 2300 * is_zero(value) wei
                        stor0 -= stor6[stor4].field_256
                        stor4++
                        s = var25001
                        while stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            mem[0] = 6
                            s = stor6[stor4].field_256
                            continue 
                else:
                    if stor6.length != 25:
                        stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                        stor1 += msg.value * uint256(stor2.field_0) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var26001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
                    else:
                        stor3 = 150
                        stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                        stor1 += msg.value * uint256(stor2.field_0) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var27001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
            else:
                idx = 2 * stor6.length + 1
                while 2 * stor6.length > idx:
                    stor6[idx].field_0 = 0
                    stor6[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = msg.value * stor3 / 100
                if stor6.length == 10:
                    stor3 = 200
                    stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                    stor1 += msg.value * uint256(stor2.field_0) / 100
                    if stor0 > stor6[stor4].field_256:
                        require stor4 < stor6.length
                        call stor6[stor4].field_0 with:
                           value stor6[stor4].field_256 wei
                             gas 2300 * is_zero(value) wei
                        stor0 -= stor6[stor4].field_256
                        stor4++
                        s = var32001
                        while stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            mem[0] = 6
                            s = stor6[stor4].field_256
                            continue 
                else:
                    if stor6.length != 25:
                        stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                        stor1 += msg.value * uint256(stor2.field_0) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var33001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
                    else:
                        stor3 = 150
                        stor0 += (100 * msg.value) - (uint256(stor2.field_0) * msg.value) / 100
                        stor1 += msg.value * uint256(stor2.field_0) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var34001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
        else:
            if not stor6.length > stor6.length + 1:
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = msg.value * stor3 / 100
                if stor6.length == 10:
                    stor3 = 200
                    stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                    stor1 += msg.value * uint255(stor2.field_1) / 100
                    if stor0 > stor6[stor4].field_256:
                        require stor4 < stor6.length
                        call stor6[stor4].field_0 with:
                           value stor6[stor4].field_256 wei
                             gas 2300 * is_zero(value) wei
                        stor0 -= stor6[stor4].field_256
                        stor4++
                        s = var27001
                        while stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            mem[0] = 6
                            s = stor6[stor4].field_256
                            continue 
                else:
                    if stor6.length != 25:
                        stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                        stor1 += msg.value * uint255(stor2.field_1) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var28001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
                    else:
                        stor3 = 150
                        stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                        stor1 += msg.value * uint255(stor2.field_1) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var29001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
            else:
                idx = 2 * stor6.length + 1
                while 2 * stor6.length > idx:
                    stor6[idx].field_0 = 0
                    stor6[idx].field_256 = 0
                    idx = idx + 2
                    continue 
                stor6[stor6.length].field_0 = msg.sender
                stor6[stor6.length].field_256 = msg.value * stor3 / 100
                if stor6.length == 10:
                    stor3 = 200
                    stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                    stor1 += msg.value * uint255(stor2.field_1) / 100
                    if stor0 > stor6[stor4].field_256:
                        require stor4 < stor6.length
                        call stor6[stor4].field_0 with:
                           value stor6[stor4].field_256 wei
                             gas 2300 * is_zero(value) wei
                        stor0 -= stor6[stor4].field_256
                        stor4++
                        s = var34001
                        while stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            mem[0] = 6
                            s = stor6[stor4].field_256
                            continue 
                else:
                    if stor6.length != 25:
                        stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                        stor1 += msg.value * uint255(stor2.field_1) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var35001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
                    else:
                        stor3 = 150
                        stor0 += (100 * msg.value) - (uint255(stor2.field_1) * msg.value) / 100
                        stor1 += msg.value * uint255(stor2.field_1) / 100
                        if stor0 > stor6[stor4].field_256:
                            require stor4 < stor6.length
                            call stor6[stor4].field_0 with:
                               value stor6[stor4].field_256 wei
                                 gas 2300 * is_zero(value) wei
                            stor0 -= stor6[stor4].field_256
                            stor4++
                            s = var36001
                            while stor0 > stor6[stor4].field_256:
                                require stor4 < stor6.length
                                call stor6[stor4].field_0 with:
                                   value stor6[stor4].field_256 wei
                                     gas 2300 * is_zero(value) wei
                                stor0 -= stor6[stor4].field_256
                                stor4++
                                mem[0] = 6
                                s = stor6[stor4].field_256
                                continue 
}



}
