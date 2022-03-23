contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor14;

function _fallback() payable {
    stor0 = 10000
    stor1 = 100000
    stor4 = msg.sender or Mask(96, 160, stor4)
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor7 = 10000
    stor8 = block.number
    stor14 = 1
    require 0 == msg.value
    return code.data[94 len 5413]
}



// =====================  Runtime code  =====================


uint256 sub_2d2d7298;
uint256 sub_bb2c1147;
array of struct stor2;
uint256 sub_9fcc64ea;
address owner;
uint256 stor4;
address sub_4d86003eAddress;
uint256 stor5;
address winnerAddress;
uint256 sub_616a4a75;
uint256 sub_fd1d78a8;
uint256 sub_a94360b7;
uint256 stor10;
array of struct stor11;
mapping of uint256 stor12;
uint256 stor13;
uint256 roundNumber;
uint256 stor15;
array of uint256 sub_d848ca91;
uint256 sub_cf7901b2;
mapping of uint8 stor18;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884730;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;

function sub_2d2d7298(?) payable {
    return sub_2d2d7298
}

function sub_4d86003e(?) payable {
    return address(sub_4d86003eAddress)
}

function sub_5e23a542(?) payable {
    return bool(stor18[arg1])
}

function sub_616a4a75(?) payable {
    return sub_616a4a75
}

function RoundNumber() payable {
    return roundNumber
}

function sub_8c6730e1(?) payable {
    require 0 == msg.value
    return stor11.length
}

function sub_9fcc64ea(?) payable {
    return sub_9fcc64ea
}

function sub_a94360b7(?) payable {
    return sub_a94360b7
}

function Winner() payable {
    return winnerAddress
}

function Owner() payable {
    return address(owner)
}

function sub_bb2c1147(?) payable {
    return sub_bb2c1147
}

function sub_cf7901b2(?) payable {
    return sub_cf7901b2
}

function sub_d848ca91(?) payable {
    return sub_d848ca91[arg1][0 len sub_d848ca91[arg1].length]
}

function sub_fd1d78a8(?) payable {
    return sub_fd1d78a8
}

function Destroy(uint256 arg1) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    require arg1 == 3141526535897932
    if sub_fd1d78a8 <= 0:
        if sub_a94360b7 <= 0:
            selfdestruct(address(owner))
        if block.number >= sub_a94360b7 + sub_616a4a75 + 50000:
            selfdestruct(address(owner))
    else:
        if block.number >= sub_fd1d78a8 + sub_616a4a75 + 50000:
            if sub_a94360b7 <= 0:
                selfdestruct(address(owner))
            if block.number >= sub_a94360b7 + sub_616a4a75 + 50000:
                selfdestruct(address(owner))
}

function _fallback() payable {
    require msg.value >= stor10
    emit 0x776b37f6: msg.sender, msg.value
}

function sub_7d02227a(?) payable {
    require 0 == msg.value
    if stor15 > stor13:
        return (stor15 - stor13)
    else:
        return 0
}

function sub_b401da74(?) payable {
    require arg1 < stor11.length
    return address(stor[code.data[5381 len 32] + (2 * arg1)]), stor175B[arg1]
}

function SetName(string arg1) payable {
    require 0 == msg.value
    sub_d848ca91[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    sub_cf7901b2 = block.number
}

function sub_a6dc440c(?) payable {
    require 0 == msg.value
    if arg1 >= sub_9fcc64ea:
        return 0
    require arg1 < stor2.length
    return address(stor2[arg1].field_0)
}

function sub_364cd7af(?) payable {
    require 0 == msg.value
    if stor15 > stor13:
        return ((stor15 * sub_2d2d7298) - (stor13 * sub_2d2d7298) / 10^6)
    else:
        return 0
}

function sub_1e9987a1(?) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    require arg2 == 3141526535897932
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
}

function sub_41faec24(?) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    require arg2 == 3141526535897932
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function sub_36fac9ea(?) payable {
    require 0 == msg.value
    if block.number < sub_616a4a75 + sub_a94360b7:
        return (sub_616a4a75 + sub_a94360b7 - block.number)
    else:
        return 0
}

function sub_5af403e2(?) payable {
    require 0 == msg.value
    if arg1 >= sub_9fcc64ea:
        return 0
    if 0 == arg1:
        require 0 < stor2.length
        return stor5640.length
    require arg1 - 1 < stor2.length
    require arg1 < stor2.length
    return (stor5640[arg1] - stor5640[arg1 - 1])
}

function sub_ee3af6a7(?) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    if stor15 <= stor13:
        require arg2 == 3141526535897932
        sub_2d2d7298 = arg1
    else:
        if 0 == stor15 - stor13:
            require arg2 == 3141526535897932
            sub_2d2d7298 = arg1
}

function sub_c5ac7770(?) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    if stor15 <= stor13:
        require arg2 == 3141526535897932
        if arg1 >= 2:
            sub_616a4a75 = arg1
    else:
        if 0 == stor15 - stor13:
            require arg2 == 3141526535897932
            if arg1 >= 2:
                sub_616a4a75 = arg1
}

function sub_f0fa36f0(?) payable {
    require 0 == msg.value
    require msg.sender == address(owner)
    if stor15 <= stor13:
        require arg2 == 3141526535897932
        require arg1 <= 10^6
        sub_bb2c1147 = arg1
    else:
        if 0 == stor15 - stor13:
            require arg2 == 3141526535897932
            require arg1 <= 10^6
            sub_bb2c1147 = arg1
}

function sub_53957e2a(?) payable {
    require 0 == msg.value
    if sub_a94360b7 <= sub_fd1d78a8:
        if block.number < sub_616a4a75 + sub_fd1d78a8 + 50000:
            return (sub_616a4a75 + sub_fd1d78a8 + -block.number + 50000)
    else:
        if block.number < sub_616a4a75 + sub_a94360b7 + 50000:
            return (sub_616a4a75 + sub_a94360b7 + -block.number + 50000)
    return 0
}

function sub_2538782b(?) payable {
    require 0 == msg.value
    if not stor12[address(arg1)]:
    require stor12[address(arg1)] - 1 < stor11.length
    if stor12[address(arg1)] == stor11.length:
        stor12[address(arg1)] = 0
        stor11.length--
        if not stor11.length <= stor11.length - 1:
            idx = 2 * stor11.length - 1
            while 2 * stor11.length > idx:
                address(stor11[idx].field_0) = 0
                uint256(stor11[idx].field_256) = 0
                idx = idx + 2
                continue 
        if 0 == stor175B[stor12[address(arg1)] - 1]:
        if stor13 >= stor175B[stor12[address(arg1)] - 1]:
            if stor15 >= stor175B[stor12[address(arg1)] - 1]:
                stor15 -= stor175B[stor12[address(arg1)] - 1]
                stor13 -= stor175B[stor12[address(arg1)] - 1]
                call arg1 with:
                   value stor175B[stor12[address(arg1)] - 1] wei
                     gas 0 wei
            else:
                stor15 = 0
                stor13 -= stor15
                call arg1 with:
                   value stor15 wei
                     gas 0 wei
        else:
            if stor15 >= stor13:
                stor15 -= stor13
                stor13 = 0
                call arg1 with:
                   value stor13 wei
                     gas 0 wei
            else:
                stor15 = 0
                stor13 -= stor15
                call arg1 with:
                   value stor15 wei
                     gas 0 wei
        if ext_call.success:
    else:
        if stor11.length - 1 < stor11.length:
            if stor12[address(arg1)] - 1 < stor11.length:
                address(stor[code.data[5381 len 32] + (2 * stor12[address(arg1)] - 1)]) = address(stor[code.data[5381 len 32] + (2 * stor11.length - 1)])
                uint256(stor[code.data[5381 len 32] + (2 * stor12[address(arg1)] - 1) + 1]) = uint256(stor[code.data[5381 len 32] + (2 * stor11.length - 1) + 1])
                stor12[address(stor[code.data[5381 len 32] + (2 * stor12[address(arg1)] - 1)])] = stor12[address(arg1)]
                stor12[address(arg1)] = 0
                stor11.length--
                if not stor11.length <= stor11.length - 1:
                    idx = 2 * stor11.length - 1
                    while 2 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        uint256(stor11[idx].field_256) = 0
                        idx = idx + 2
                        continue 
                if 0 == stor175B[stor12[address(arg1)] - 1]:
                if stor13 >= stor175B[stor12[address(arg1)] - 1]:
                    if stor15 >= stor175B[stor12[address(arg1)] - 1]:
                        stor15 -= stor175B[stor12[address(arg1)] - 1]
                        stor13 -= stor175B[stor12[address(arg1)] - 1]
                        call arg1 with:
                           value stor175B[stor12[address(arg1)] - 1] wei
                             gas 0 wei
                    else:
                        stor15 = 0
                        stor13 -= stor15
                        call arg1 with:
                           value stor15 wei
                             gas 0 wei
                else:
                    if stor15 >= stor13:
                        stor15 -= stor13
                        stor13 = 0
                        call arg1 with:
                           value stor13 wei
                             gas 0 wei
                    else:
                        stor15 = 0
                        stor13 -= stor15
                        call arg1 with:
                           value stor15 wei
                             gas 0 wei
                if ext_call.success:
    revert 
}

function Withdraw() payable {
    require 0 == msg.value
    if not stor12[address(msg.sender)]:
    require stor12[address(msg.sender)] - 1 < stor11.length
    if stor12[address(msg.sender)] == stor11.length:
        stor12[address(msg.sender)] = 0
        stor11.length--
        if not stor11.length <= stor11.length - 1:
            idx = 2 * stor11.length - 1
            while 2 * stor11.length > idx:
                address(stor11[idx].field_0) = 0
                uint256(stor11[idx].field_256) = 0
                idx = idx + 2
                continue 
        if 0 == stor175B[stor12[address(msg.sender)] - 1]:
        if stor13 >= stor175B[stor12[address(msg.sender)] - 1]:
            if stor15 >= stor175B[stor12[address(msg.sender)] - 1]:
                stor15 -= stor175B[stor12[address(msg.sender)] - 1]
                stor13 -= stor175B[stor12[address(msg.sender)] - 1]
                call msg.sender with:
                   value stor175B[stor12[address(msg.sender)] - 1] wei
                     gas 0 wei
            else:
                stor15 = 0
                stor13 -= stor15
                call msg.sender with:
                   value stor15 wei
                     gas 0 wei
        else:
            if stor15 >= stor13:
                stor15 -= stor13
                stor13 = 0
                call msg.sender with:
                   value stor13 wei
                     gas 0 wei
            else:
                stor15 = 0
                stor13 -= stor15
                call msg.sender with:
                   value stor15 wei
                     gas 0 wei
        if ext_call.success:
    else:
        if stor11.length - 1 < stor11.length:
            if stor12[address(msg.sender)] - 1 < stor11.length:
                address(stor[code.data[5381 len 32] + (2 * stor12[address(msg.sender)] - 1)]) = address(stor[code.data[5381 len 32] + (2 * stor11.length - 1)])
                uint256(stor[code.data[5381 len 32] + (2 * stor12[address(msg.sender)] - 1) + 1]) = uint256(stor[code.data[5381 len 32] + (2 * stor11.length - 1) + 1])
                stor12[address(stor[code.data[5381 len 32] + (2 * stor12[address(msg.sender)] - 1)])] = stor12[address(msg.sender)]
                stor12[address(msg.sender)] = 0
                stor11.length--
                if not stor11.length <= stor11.length - 1:
                    idx = 2 * stor11.length - 1
                    while 2 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        uint256(stor11[idx].field_256) = 0
                        idx = idx + 2
                        continue 
                if 0 == stor175B[stor12[address(msg.sender)] - 1]:
                if stor13 >= stor175B[stor12[address(msg.sender)] - 1]:
                    if stor15 >= stor175B[stor12[address(msg.sender)] - 1]:
                        stor15 -= stor175B[stor12[address(msg.sender)] - 1]
                        stor13 -= stor175B[stor12[address(msg.sender)] - 1]
                        call msg.sender with:
                           value stor175B[stor12[address(msg.sender)] - 1] wei
                             gas 0 wei
                    else:
                        stor15 = 0
                        stor13 -= stor15
                        call msg.sender with:
                           value stor15 wei
                             gas 0 wei
                else:
                    if stor15 >= stor13:
                        stor15 -= stor13
                        stor13 = 0
                        call msg.sender with:
                           value stor13 wei
                             gas 0 wei
                    else:
                        stor15 = 0
                        stor13 -= stor15
                        call msg.sender with:
                           value stor15 wei
                             gas 0 wei
                if ext_call.success:
    revert 
}

function Pay() payable {
    require 0 == msg.value
    if sub_9fcc64ea != 0:
        if block.number >= sub_616a4a75 + sub_a94360b7:
            if winnerAddress != 0:
                if stor15 > stor13:
                    if stor15 - stor13 != 0:
                        stor10 = 0
                        sub_a94360b7 = 0
                        winnerAddress = 0
                        sub_9fcc64ea = 0
                        roundNumber++
                        sub_fd1d78a8 = block.number
                        if stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) != 0:
                            require stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) <= stor15
                            stor15 = stor13 + ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                            call winnerAddress with:
                               value stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) wei
                                 gas 0 wei
                            if not ext_call.success:
                                if stor12[stor6] > 0:
                                    require stor12[stor6] - 1 < stor11.length
                                    stor175B[stor12[stor6] - 1] = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) + stor175B[stor12[stor6] - 1]
                                else:
                                    stor11.length++
                                    if not stor11.length <= stor11.length + 1:
                                        idx = 2 * stor11.length + 1
                                        while 2 * stor11.length > idx:
                                            address(stor11[idx].field_0) = 0
                                            uint256(stor11[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                    address(stor11[stor11.length].field_0) = winnerAddress
                                    uint256(stor11[stor11.length].field_256) = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                                    stor12[stor6] = stor11.length
                                stor13 = stor15 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                        if (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 != 0:
                            require (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 <= stor15
                            stor15 -= (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                            call address(owner) with:
                               value (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 wei
                                 gas 0 wei
                            if not ext_call.success:
                                if stor12[address(stor4)] > 0:
                                    require stor12[address(stor4)] - 1 < stor11.length
                                    stor175B[stor12[address(stor4)] - 1] += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                else:
                                    stor11.length++
                                    if not stor11.length <= stor11.length + 1:
                                        idx = 2 * stor11.length + 1
                                        while 2 * stor11.length > idx:
                                            address(stor11[idx].field_0) = 0
                                            uint256(stor11[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                    address(stor11[stor11.length].field_0) = address(owner)
                                    uint256(stor11[stor11.length].field_256) = (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                    stor12[address(stor4)] = stor11.length
                                stor13 += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                        emit 0x7350d68e: roundNumber, winnerAddress, stor15 - stor13
}

function sub_a43628f6(?) payable {
    mem[64] = 96
    require 0 == msg.value
    if 0 == winnerAddress:
        if sub_9fcc64ea:
            if block.number >= sub_a94360b7 + 1:
                if block.number - 250 <= sub_a94360b7 + 1:
                    if stor15 > stor13:
                        if stor15 - stor13 != 0:
                            stor10 = (stor15 * sub_2d2d7298) - (stor13 * sub_2d2d7298) / 10^6
                            require var19003 <= sub_9fcc64ea - 1
                            require (sub_9fcc64ea + -var19003 - 1 / 2) + var19003 < stor2.length
                            mem[0] = 2
                            if block.hash(sub_a94360b7 + 1) % stor15 - stor13 >= stor5640[(0.5 / stor3 + -var19003 - 1) + var19003]:
                                var19001 = (sub_9fcc64ea + -var19003 - 1 / 2) + var19003
                                var19003 = (sub_9fcc64ea + -var19003 - 1 / 2) + var19003 + 1
                                continue 
                            if (sub_9fcc64ea + -var19003 - 1 / 2) + var19003 != 0:
                                require (sub_9fcc64ea + -var19003 - 1 / 2) + var19003 - 1 < stor2.length
                                mem[0] = 2
                                if block.hash(sub_a94360b7 + 1) % stor15 - stor13 < stor5640[(0.5 / stor3 + -var19003 - 1) + var19003 - 1]:
                                    var19001 = (sub_9fcc64ea + -var19003 - 1 / 2) + var19003
                                    var19003 = var19003
                                    continue 
                            require (sub_9fcc64ea + -var19003 - 1 / 2) + var19003 < stor2.length
                            winnerAddress = address(stor2[(0.5 / stor3 + -var19003 - 1) + var19003].field_0)
                            emit 0xc9348680: roundNumber, address(stor2[(0.5 / stor3 + -var19003 - 1) + var19003].field_0), stor15 - stor13
                else:
                    if block.number <= 250:
                        if stor15 > stor13:
                            if stor15 - stor13 != 0:
                                stor10 = (stor15 * sub_2d2d7298) - (stor13 * sub_2d2d7298) / 10^6
                                require var20003 <= sub_9fcc64ea - 1
                                require (sub_9fcc64ea + -var20003 - 1 / 2) + var20003 < stor2.length
                                mem[0] = 2
                                if block.hash(sub_a94360b7 + 1) % stor15 - stor13 >= stor5640[(0.5 / stor3 + -var20003 - 1) + var20003]:
                                    var20001 = (sub_9fcc64ea + -var20003 - 1 / 2) + var20003
                                    var20003 = (sub_9fcc64ea + -var20003 - 1 / 2) + var20003 + 1
                                    continue 
                                if (sub_9fcc64ea + -var20003 - 1 / 2) + var20003 != 0:
                                    require (sub_9fcc64ea + -var20003 - 1 / 2) + var20003 - 1 < stor2.length
                                    mem[0] = 2
                                    if block.hash(sub_a94360b7 + 1) % stor15 - stor13 < stor5640[(0.5 / stor3 + -var20003 - 1) + var20003 - 1]:
                                        var20001 = (sub_9fcc64ea + -var20003 - 1 / 2) + var20003
                                        var20003 = var20003
                                        continue 
                                require (sub_9fcc64ea + -var20003 - 1 / 2) + var20003 < stor2.length
                                winnerAddress = address(stor2[(0.5 / stor3 + -var20003 - 1) + var20003].field_0)
                                emit 0xc9348680: roundNumber, address(stor2[(0.5 / stor3 + -var20003 - 1) + var20003].field_0), stor15 - stor13
                    else:
                        if stor15 > stor13:
                            if stor15 - stor13 != 0:
                                stor10 = (stor15 * sub_2d2d7298) - (stor13 * sub_2d2d7298) / 10^6
                                require var21003 <= sub_9fcc64ea - 1
                                require (sub_9fcc64ea + -var21003 - 1 / 2) + var21003 < stor2.length
                                mem[0] = 2
                                if block.hash(sub_a94360b7 + (250 * block.number + -sub_a94360b7 - 2 / 250) + 1) % stor15 - stor13 >= stor5640[(0.5 / stor3 + -var21003 - 1) + var21003]:
                                    var21001 = (sub_9fcc64ea + -var21003 - 1 / 2) + var21003
                                    var21003 = (sub_9fcc64ea + -var21003 - 1 / 2) + var21003 + 1
                                    continue 
                                if (sub_9fcc64ea + -var21003 - 1 / 2) + var21003 != 0:
                                    require (sub_9fcc64ea + -var21003 - 1 / 2) + var21003 - 1 < stor2.length
                                    mem[0] = 2
                                    if block.hash(sub_a94360b7 + (250 * block.number + -sub_a94360b7 - 2 / 250) + 1) % stor15 - stor13 < stor5640[(0.5 / stor3 + -var21003 - 1) + var21003 - 1]:
                                        var21001 = (sub_9fcc64ea + -var21003 - 1 / 2) + var21003
                                        var21003 = var21003
                                        continue 
                                require (sub_9fcc64ea + -var21003 - 1 / 2) + var21003 < stor2.length
                                winnerAddress = address(stor2[(0.5 / stor3 + -var21003 - 1) + var21003].field_0)
                                emit 0xc9348680: roundNumber, address(stor2[(0.5 / stor3 + -var21003 - 1) + var21003].field_0), stor15 - stor13
}

function sub_b3de5de9(?) payable {
    require arg1 != 0
    require arg1 != this.address
    if msg.value < stor10:
        if msg.value <= 0:
        call arg1 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    if sub_a94360b7 > 0:
        if block.number >= sub_a94360b7 + sub_616a4a75:
            if msg.value <= 0:
            call arg1 with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
    if stor15 <= stor13:
        if sub_9fcc64ea > 0:
            if msg.value <= 0:
            call arg1 with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
        sub_9fcc64ea++
        if not stor2.length - sub_9fcc64ea:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = 2 * stor2.length + 1
                while 2 * stor2.length > idx:
                    address(stor2[idx].field_0) = 0
                    uint256(stor2[idx].field_256) = 0
                    idx = idx + 2
                    continue 
            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
            uint256(stor2[stor2.length].field_256) = msg.value
        else:
            require sub_9fcc64ea < stor2.length
            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
            uint256(stor2[stor3].field_256) = msg.value
            if stor2.length - sub_9fcc64ea > 6:
                stor2.length -= 5
                if not stor2.length <= stor2.length - 5:
                    idx = 2 * stor2.length - 5
                    while 2 * stor2.length > idx:
                        address(stor2[idx].field_0) = 0
                        uint256(stor2[idx].field_256) = 0
                        idx = idx + 2
                        continue 
    else:
        if 0 == stor15 - stor13:
            if sub_9fcc64ea > 0:
                if msg.value <= 0:
                call arg1 with:
                   value msg.value wei
                     gas 0 wei
                require ext_call.success
            sub_9fcc64ea++
            if not stor2.length - sub_9fcc64ea:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = 2 * stor2.length + 1
                    while 2 * stor2.length > idx:
                        address(stor2[idx].field_0) = 0
                        uint256(stor2[idx].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
            else:
                require sub_9fcc64ea < stor2.length
                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                if stor2.length - sub_9fcc64ea > 6:
                    stor2.length -= 5
                    if not stor2.length <= stor2.length - 5:
                        idx = 2 * stor2.length - 5
                        while 2 * stor2.length > idx:
                            address(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 2
                            continue 
        else:
            if sub_9fcc64ea <= 0:
                sub_9fcc64ea++
                if not stor2.length - sub_9fcc64ea:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = 2 * stor2.length + 1
                        while 2 * stor2.length > idx:
                            address(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 2
                            continue 
                    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                    uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
                else:
                    require sub_9fcc64ea < stor2.length
                    uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                    uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                    if stor2.length - sub_9fcc64ea > 6:
                        stor2.length -= 5
                        if not stor2.length <= stor2.length - 5:
                            idx = 2 * stor2.length - 5
                            while 2 * stor2.length > idx:
                                address(stor2[idx].field_0) = 0
                                uint256(stor2[idx].field_256) = 0
                                idx = idx + 2
                                continue 
            else:
                require sub_9fcc64ea - 1 < stor2.length
                if address(stor2[stor3 - 1].field_0) == arg1:
                    require sub_9fcc64ea - 1 < stor2.length
                    stor5640[stor3 - 1] = msg.value + stor15 - stor13
                else:
                    sub_9fcc64ea++
                    if not stor2.length - sub_9fcc64ea:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = 2 * stor2.length + 1
                            while 2 * stor2.length > idx:
                                address(stor2[idx].field_0) = 0
                                uint256(stor2[idx].field_256) = 0
                                idx = idx + 2
                                continue 
                        uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                        uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
                    else:
                        require sub_9fcc64ea < stor2.length
                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                        uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                        if stor2.length - sub_9fcc64ea > 6:
                            stor2.length -= 5
                            if not stor2.length <= stor2.length - 5:
                                idx = 2 * stor2.length - 5
                                while 2 * stor2.length > idx:
                                    address(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 2
                                    continue 
    winnerAddress = 0
    stor15 += msg.value
    sub_a94360b7 = block.number
    emit 0x71237963: roundNumber, address(arg1), msg.value
}

function sub_57e28b8a(?) payable {
    require msg.sender != 0
    require this.address != msg.sender
    if msg.value < stor10:
        if msg.value <= 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    if sub_a94360b7 > 0:
        if block.number >= sub_a94360b7 + sub_616a4a75:
            if msg.value <= 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
    if stor15 <= stor13:
        if sub_9fcc64ea > 0:
            if msg.value <= 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
        sub_9fcc64ea++
        if not stor2.length - sub_9fcc64ea:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = 2 * stor2.length + 1
                while 2 * stor2.length > idx:
                    address(stor2[idx].field_0) = 0
                    uint256(stor2[idx].field_256) = 0
                    idx = idx + 2
                    continue 
            uint256(stor2[stor2.length].field_0) = msg.sender or Mask(96, 160, uint256(stor2[stor2.length].field_0))
            uint256(stor2[stor2.length].field_256) = msg.value
        else:
            require sub_9fcc64ea < stor2.length
            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
            uint256(stor2[stor3].field_256) = msg.value
            if stor2.length - sub_9fcc64ea > 6:
                stor2.length -= 5
                if not stor2.length <= stor2.length - 5:
                    idx = 2 * stor2.length - 5
                    while 2 * stor2.length > idx:
                        address(stor2[idx].field_0) = 0
                        uint256(stor2[idx].field_256) = 0
                        idx = idx + 2
                        continue 
    else:
        if 0 == stor15 - stor13:
            if sub_9fcc64ea > 0:
                if msg.value <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                require ext_call.success
            sub_9fcc64ea++
            if not stor2.length - sub_9fcc64ea:
                stor2.length++
                if not stor2.length <= stor2.length + 1:
                    idx = 2 * stor2.length + 1
                    while 2 * stor2.length > idx:
                        address(stor2[idx].field_0) = 0
                        uint256(stor2[idx].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor2[stor2.length].field_0) = msg.sender or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
            else:
                require sub_9fcc64ea < stor2.length
                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                if stor2.length - sub_9fcc64ea > 6:
                    stor2.length -= 5
                    if not stor2.length <= stor2.length - 5:
                        idx = 2 * stor2.length - 5
                        while 2 * stor2.length > idx:
                            address(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 2
                            continue 
        else:
            if sub_9fcc64ea <= 0:
                sub_9fcc64ea++
                if not stor2.length - sub_9fcc64ea:
                    stor2.length++
                    if not stor2.length <= stor2.length + 1:
                        idx = 2 * stor2.length + 1
                        while 2 * stor2.length > idx:
                            address(stor2[idx].field_0) = 0
                            uint256(stor2[idx].field_256) = 0
                            idx = idx + 2
                            continue 
                    uint256(stor2[stor2.length].field_0) = msg.sender or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                    uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
                else:
                    require sub_9fcc64ea < stor2.length
                    uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                    uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                    if stor2.length - sub_9fcc64ea > 6:
                        stor2.length -= 5
                        if not stor2.length <= stor2.length - 5:
                            idx = 2 * stor2.length - 5
                            while 2 * stor2.length > idx:
                                address(stor2[idx].field_0) = 0
                                uint256(stor2[idx].field_256) = 0
                                idx = idx + 2
                                continue 
            else:
                require sub_9fcc64ea - 1 < stor2.length
                if address(stor2[stor3 - 1].field_0) == msg.sender:
                    require sub_9fcc64ea - 1 < stor2.length
                    stor5640[stor3 - 1] = msg.value + stor15 - stor13
                else:
                    sub_9fcc64ea++
                    if not stor2.length - sub_9fcc64ea:
                        stor2.length++
                        if not stor2.length <= stor2.length + 1:
                            idx = 2 * stor2.length + 1
                            while 2 * stor2.length > idx:
                                address(stor2[idx].field_0) = 0
                                uint256(stor2[idx].field_256) = 0
                                idx = idx + 2
                                continue 
                        uint256(stor2[stor2.length].field_0) = msg.sender or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                        uint256(stor2[stor2.length].field_256) = msg.value + stor15 - stor13
                    else:
                        require sub_9fcc64ea < stor2.length
                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                        uint256(stor2[stor3].field_256) = msg.value + stor15 - stor13
                        if stor2.length - sub_9fcc64ea > 6:
                            stor2.length -= 5
                            if not stor2.length <= stor2.length - 5:
                                idx = 2 * stor2.length - 5
                                while 2 * stor2.length > idx:
                                    address(stor2[idx].field_0) = 0
                                    uint256(stor2[idx].field_256) = 0
                                    idx = idx + 2
                                    continue 
    winnerAddress = 0
    stor15 += msg.value
    sub_a94360b7 = block.number
    emit 0x71237963: roundNumber, msg.sender, msg.value
}

function sub_aff31ce2(?) payable {
    require 0 == msg.value
    if sub_9fcc64ea != 0:
        if block.number >= sub_616a4a75 + sub_a94360b7:
            if winnerAddress != 0:
                if stor15 > stor13:
                    if stor15 - stor13 != 0:
                        stor10 = 0
                        sub_a94360b7 = 0
                        winnerAddress = 0
                        sub_9fcc64ea = 0
                        roundNumber++
                        sub_fd1d78a8 = block.number
                        if stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) != 0:
                            if not arg1:
                                if stor12[stor6] > 0:
                                    require stor12[stor6] - 1 < stor11.length
                                    stor175B[stor12[stor6] - 1] = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) + stor175B[stor12[stor6] - 1]
                                else:
                                    stor11.length++
                                    if not stor11.length <= stor11.length + 1:
                                        idx = 2 * stor11.length + 1
                                        while 2 * stor11.length > idx:
                                            address(stor11[idx].field_0) = 0
                                            uint256(stor11[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                    address(stor11[stor11.length].field_0) = winnerAddress
                                    uint256(stor11[stor11.length].field_256) = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                                    stor12[stor6] = stor11.length
                                stor13 = stor15 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                            else:
                                require stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) <= stor15
                                stor15 = stor13 + ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                                call winnerAddress with:
                                   value stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) wei
                                     gas 0 wei
                                if not ext_call.success:
                                    if stor12[stor6] > 0:
                                        require stor12[stor6] - 1 < stor11.length
                                        stor175B[stor12[stor6] - 1] = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6) + stor175B[stor12[stor6] - 1]
                                    else:
                                        stor11.length++
                                        if not stor11.length <= stor11.length + 1:
                                            idx = 2 * stor11.length + 1
                                            while 2 * stor11.length > idx:
                                                address(stor11[idx].field_0) = 0
                                                uint256(stor11[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        address(stor11[stor11.length].field_0) = winnerAddress
                                        uint256(stor11[stor11.length].field_256) = stor15 - stor13 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                                        stor12[stor6] = stor11.length
                                    stor13 = stor15 - ((stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6)
                        if (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 != 0:
                            if not arg1:
                                if stor12[address(stor4)] > 0:
                                    require stor12[address(stor4)] - 1 < stor11.length
                                    stor175B[stor12[address(stor4)] - 1] += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                else:
                                    stor11.length++
                                    if not stor11.length <= stor11.length + 1:
                                        idx = 2 * stor11.length + 1
                                        while 2 * stor11.length > idx:
                                            address(stor11[idx].field_0) = 0
                                            uint256(stor11[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                    address(stor11[stor11.length].field_0) = address(owner)
                                    uint256(stor11[stor11.length].field_256) = (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                    stor12[address(stor4)] = stor11.length
                                stor13 += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                            else:
                                require (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 <= stor15
                                stor15 -= (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                call address(owner) with:
                                   value (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    if stor12[address(stor4)] > 0:
                                        require stor12[address(stor4)] - 1 < stor11.length
                                        stor175B[stor12[address(stor4)] - 1] += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                    else:
                                        stor11.length++
                                        if not stor11.length <= stor11.length + 1:
                                            idx = 2 * stor11.length + 1
                                            while 2 * stor11.length > idx:
                                                address(stor11[idx].field_0) = 0
                                                uint256(stor11[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        address(stor11[stor11.length].field_0) = address(owner)
                                        uint256(stor11[stor11.length].field_256) = (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                                        stor12[address(stor4)] = stor11.length
                                    stor13 += (stor15 * sub_bb2c1147) - (stor13 * sub_bb2c1147) / 10^6
                        emit 0x7350d68e: roundNumber, winnerAddress, stor15 - stor13
}

function sub_44cad0a2(?) payable {
    require 0 == msg.value
    if address(sub_4d86003eAddress) != msg.sender:
        require msg.sender == address(owner)
    if arg2 != 0:
        if arg4 <= 0:
            if not stor18[arg3]:
                stor18[arg3] = 1
                require eth.balance(this.address) >= stor15
                require eth.balance(this.address) - stor15 >= arg2
                require arg1 != 0
                require arg1 != this.address
                if stor15 <= stor13:
                    if arg2 < stor10:
                        if arg2 > 0:
                            call arg1 with:
                               value arg2 wei
                                 gas 0 wei
                            if not ext_call.success:
                                if arg2 != 0:
                                    if stor12[address(arg1)] > 0:
                                        require stor12[address(arg1)] - 1 < stor11.length
                                        stor175B[stor12[address(arg1)] - 1] += arg2
                                    else:
                                        stor11.length++
                                        if not stor11.length <= stor11.length + 1:
                                            idx = 2 * stor11.length + 1
                                            while 2 * stor11.length > idx:
                                                address(stor11[idx].field_0) = 0
                                                uint256(stor11[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                        uint256(stor11[stor11.length].field_256) = arg2
                                        stor12[address(arg1)] = stor11.length
                                    stor13 += arg2
                    else:
                        if sub_a94360b7 <= 0:
                            if sub_9fcc64ea > 0:
                                if arg2 > 0:
                                    call arg1 with:
                                       value arg2 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        if arg2 != 0:
                                            if stor12[address(arg1)] > 0:
                                                require stor12[address(arg1)] - 1 < stor11.length
                                                stor175B[stor12[address(arg1)] - 1] += arg2
                                            else:
                                                stor11.length++
                                                if not stor11.length <= stor11.length + 1:
                                                    idx = 2 * stor11.length + 1
                                                    while 2 * stor11.length > idx:
                                                        address(stor11[idx].field_0) = 0
                                                        uint256(stor11[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                uint256(stor11[stor11.length].field_256) = arg2
                                                stor12[address(arg1)] = stor11.length
                                            stor13 += arg2
                            else:
                                sub_9fcc64ea++
                                if not stor2.length - sub_9fcc64ea:
                                    stor2.length++
                                    if not stor2.length <= stor2.length + 1:
                                        idx = 2 * stor2.length + 1
                                        while 2 * stor2.length > idx:
                                            address(stor2[idx].field_0) = 0
                                            uint256(stor2[idx].field_256) = 0
                                            idx = idx + 2
                                            continue 
                                    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                    uint256(stor2[stor2.length].field_256) = arg2
                                else:
                                    require sub_9fcc64ea < stor2.length
                                    uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                    uint256(stor2[stor3].field_256) = arg2
                                    if stor2.length - sub_9fcc64ea > 6:
                                        stor2.length -= 5
                                        if not stor2.length <= stor2.length - 5:
                                            idx = 2 * stor2.length - 5
                                            while 2 * stor2.length > idx:
                                                address(stor2[idx].field_0) = 0
                                                uint256(stor2[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                winnerAddress = 0
                                stor15 += arg2
                                sub_a94360b7 = block.number
                                emit 0x71237963: roundNumber, address(arg1), arg2
                        else:
                            if block.number >= sub_a94360b7 + sub_616a4a75:
                                if arg2 > 0:
                                    call arg1 with:
                                       value arg2 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        if arg2 != 0:
                                            if stor12[address(arg1)] > 0:
                                                require stor12[address(arg1)] - 1 < stor11.length
                                                stor175B[stor12[address(arg1)] - 1] += arg2
                                            else:
                                                stor11.length++
                                                if not stor11.length <= stor11.length + 1:
                                                    idx = 2 * stor11.length + 1
                                                    while 2 * stor11.length > idx:
                                                        address(stor11[idx].field_0) = 0
                                                        uint256(stor11[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                uint256(stor11[stor11.length].field_256) = arg2
                                                stor12[address(arg1)] = stor11.length
                                            stor13 += arg2
                            else:
                                if sub_9fcc64ea > 0:
                                    if arg2 > 0:
                                        call arg1 with:
                                           value arg2 wei
                                             gas 0 wei
                                        if not ext_call.success:
                                            if arg2 != 0:
                                                if stor12[address(arg1)] > 0:
                                                    require stor12[address(arg1)] - 1 < stor11.length
                                                    stor175B[stor12[address(arg1)] - 1] += arg2
                                                else:
                                                    stor11.length++
                                                    if not stor11.length <= stor11.length + 1:
                                                        idx = 2 * stor11.length + 1
                                                        while 2 * stor11.length > idx:
                                                            address(stor11[idx].field_0) = 0
                                                            uint256(stor11[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                    uint256(stor11[stor11.length].field_256) = arg2
                                                    stor12[address(arg1)] = stor11.length
                                                stor13 += arg2
                                else:
                                    sub_9fcc64ea++
                                    if not stor2.length - sub_9fcc64ea:
                                        stor2.length++
                                        if not stor2.length <= stor2.length + 1:
                                            idx = 2 * stor2.length + 1
                                            while 2 * stor2.length > idx:
                                                address(stor2[idx].field_0) = 0
                                                uint256(stor2[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                        uint256(stor2[stor2.length].field_256) = arg2
                                    else:
                                        require sub_9fcc64ea < stor2.length
                                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                        uint256(stor2[stor3].field_256) = arg2
                                        if stor2.length - sub_9fcc64ea > 6:
                                            stor2.length -= 5
                                            if not stor2.length <= stor2.length - 5:
                                                idx = 2 * stor2.length - 5
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                    winnerAddress = 0
                                    stor15 += arg2
                                    sub_a94360b7 = block.number
                                    emit 0x71237963: roundNumber, address(arg1), arg2
                else:
                    if arg2 < stor10:
                        if arg2 > 0:
                            call arg1 with:
                               value arg2 wei
                                 gas 0 wei
                            if not ext_call.success:
                                if arg2 != 0:
                                    if stor12[address(arg1)] > 0:
                                        require stor12[address(arg1)] - 1 < stor11.length
                                        stor175B[stor12[address(arg1)] - 1] += arg2
                                    else:
                                        stor11.length++
                                        if not stor11.length <= stor11.length + 1:
                                            idx = 2 * stor11.length + 1
                                            while 2 * stor11.length > idx:
                                                address(stor11[idx].field_0) = 0
                                                uint256(stor11[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                        uint256(stor11[stor11.length].field_256) = arg2
                                        stor12[address(arg1)] = stor11.length
                                    stor13 += arg2
                    else:
                        if sub_a94360b7 <= 0:
                            if 0 == stor15 - stor13:
                                if sub_9fcc64ea > 0:
                                    if arg2 > 0:
                                        call arg1 with:
                                           value arg2 wei
                                             gas 0 wei
                                        if not ext_call.success:
                                            if arg2 != 0:
                                                if stor12[address(arg1)] > 0:
                                                    require stor12[address(arg1)] - 1 < stor11.length
                                                    stor175B[stor12[address(arg1)] - 1] += arg2
                                                else:
                                                    stor11.length++
                                                    if not stor11.length <= stor11.length + 1:
                                                        idx = 2 * stor11.length + 1
                                                        while 2 * stor11.length > idx:
                                                            address(stor11[idx].field_0) = 0
                                                            uint256(stor11[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                    uint256(stor11[stor11.length].field_256) = arg2
                                                    stor12[address(arg1)] = stor11.length
                                                stor13 += arg2
                                else:
                                    sub_9fcc64ea++
                                    if not stor2.length - sub_9fcc64ea:
                                        stor2.length++
                                        if not stor2.length <= stor2.length + 1:
                                            idx = 2 * stor2.length + 1
                                            while 2 * stor2.length > idx:
                                                address(stor2[idx].field_0) = 0
                                                uint256(stor2[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                        uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                    else:
                                        require sub_9fcc64ea < stor2.length
                                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                        uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                        if stor2.length - sub_9fcc64ea > 6:
                                            stor2.length -= 5
                                            if not stor2.length <= stor2.length - 5:
                                                idx = 2 * stor2.length - 5
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                    winnerAddress = 0
                                    stor15 += arg2
                                    sub_a94360b7 = block.number
                                    emit 0x71237963: roundNumber, address(arg1), arg2
                            else:
                                if sub_9fcc64ea <= 0:
                                    sub_9fcc64ea++
                                    if not stor2.length - sub_9fcc64ea:
                                        stor2.length++
                                        if not stor2.length <= stor2.length + 1:
                                            idx = 2 * stor2.length + 1
                                            while 2 * stor2.length > idx:
                                                address(stor2[idx].field_0) = 0
                                                uint256(stor2[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                        uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                    else:
                                        require sub_9fcc64ea < stor2.length
                                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                        uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                        if stor2.length - sub_9fcc64ea > 6:
                                            stor2.length -= 5
                                            if not stor2.length <= stor2.length - 5:
                                                idx = 2 * stor2.length - 5
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                else:
                                    require sub_9fcc64ea - 1 < stor2.length
                                    if address(stor2[stor3 - 1].field_0) == arg1:
                                        require sub_9fcc64ea - 1 < stor2.length
                                        stor5640[stor3 - 1] = arg2 + stor15 - stor13
                                    else:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                winnerAddress = 0
                                stor15 += arg2
                                sub_a94360b7 = block.number
                                emit 0x71237963: roundNumber, address(arg1), arg2
                        else:
                            if block.number >= sub_a94360b7 + sub_616a4a75:
                                if arg2 > 0:
                                    call arg1 with:
                                       value arg2 wei
                                         gas 0 wei
                                    if not ext_call.success:
                                        if arg2 != 0:
                                            if stor12[address(arg1)] > 0:
                                                require stor12[address(arg1)] - 1 < stor11.length
                                                stor175B[stor12[address(arg1)] - 1] += arg2
                                            else:
                                                stor11.length++
                                                if not stor11.length <= stor11.length + 1:
                                                    idx = 2 * stor11.length + 1
                                                    while 2 * stor11.length > idx:
                                                        address(stor11[idx].field_0) = 0
                                                        uint256(stor11[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                uint256(stor11[stor11.length].field_256) = arg2
                                                stor12[address(arg1)] = stor11.length
                                            stor13 += arg2
                            else:
                                if 0 == stor15 - stor13:
                                    if sub_9fcc64ea > 0:
                                        if arg2 > 0:
                                            call arg1 with:
                                               value arg2 wei
                                                 gas 0 wei
                                            if not ext_call.success:
                                                if arg2 != 0:
                                                    if stor12[address(arg1)] > 0:
                                                        require stor12[address(arg1)] - 1 < stor11.length
                                                        stor175B[stor12[address(arg1)] - 1] += arg2
                                                    else:
                                                        stor11.length++
                                                        if not stor11.length <= stor11.length + 1:
                                                            idx = 2 * stor11.length + 1
                                                            while 2 * stor11.length > idx:
                                                                address(stor11[idx].field_0) = 0
                                                                uint256(stor11[idx].field_256) = 0
                                                                idx = idx + 2
                                                                continue 
                                                        uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                        uint256(stor11[stor11.length].field_256) = arg2
                                                        stor12[address(arg1)] = stor11.length
                                                    stor13 += arg2
                                    else:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                        winnerAddress = 0
                                        stor15 += arg2
                                        sub_a94360b7 = block.number
                                        emit 0x71237963: roundNumber, address(arg1), arg2
                                else:
                                    if sub_9fcc64ea <= 0:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                    else:
                                        require sub_9fcc64ea - 1 < stor2.length
                                        if address(stor2[stor3 - 1].field_0) == arg1:
                                            require sub_9fcc64ea - 1 < stor2.length
                                            stor5640[stor3 - 1] = arg2 + stor15 - stor13
                                        else:
                                            sub_9fcc64ea++
                                            if not stor2.length - sub_9fcc64ea:
                                                stor2.length++
                                                if not stor2.length <= stor2.length + 1:
                                                    idx = 2 * stor2.length + 1
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                                uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                            else:
                                                require sub_9fcc64ea < stor2.length
                                                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                                uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                                if stor2.length - sub_9fcc64ea > 6:
                                                    stor2.length -= 5
                                                    if not stor2.length <= stor2.length - 5:
                                                        idx = 2 * stor2.length - 5
                                                        while 2 * stor2.length > idx:
                                                            address(stor2[idx].field_0) = 0
                                                            uint256(stor2[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                    winnerAddress = 0
                                    stor15 += arg2
                                    sub_a94360b7 = block.number
                                    emit 0x71237963: roundNumber, address(arg1), arg2
        else:
            if arg5 == block.hash(arg4):
                if not stor18[arg3]:
                    stor18[arg3] = 1
                    require eth.balance(this.address) >= stor15
                    require eth.balance(this.address) - stor15 >= arg2
                    require arg1 != 0
                    require arg1 != this.address
                    if stor15 <= stor13:
                        if arg2 < stor10:
                            if arg2 > 0:
                                call arg1 with:
                                   value arg2 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    if arg2 != 0:
                                        if stor12[address(arg1)] > 0:
                                            require stor12[address(arg1)] - 1 < stor11.length
                                            stor175B[stor12[address(arg1)] - 1] += arg2
                                        else:
                                            stor11.length++
                                            if not stor11.length <= stor11.length + 1:
                                                idx = 2 * stor11.length + 1
                                                while 2 * stor11.length > idx:
                                                    address(stor11[idx].field_0) = 0
                                                    uint256(stor11[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                            uint256(stor11[stor11.length].field_256) = arg2
                                            stor12[address(arg1)] = stor11.length
                                        stor13 += arg2
                        else:
                            if sub_a94360b7 <= 0:
                                if sub_9fcc64ea > 0:
                                    if arg2 > 0:
                                        call arg1 with:
                                           value arg2 wei
                                             gas 0 wei
                                        if not ext_call.success:
                                            if arg2 != 0:
                                                if stor12[address(arg1)] > 0:
                                                    require stor12[address(arg1)] - 1 < stor11.length
                                                    stor175B[stor12[address(arg1)] - 1] += arg2
                                                else:
                                                    stor11.length++
                                                    if not stor11.length <= stor11.length + 1:
                                                        idx = 2 * stor11.length + 1
                                                        while 2 * stor11.length > idx:
                                                            address(stor11[idx].field_0) = 0
                                                            uint256(stor11[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                    uint256(stor11[stor11.length].field_256) = arg2
                                                    stor12[address(arg1)] = stor11.length
                                                stor13 += arg2
                                else:
                                    sub_9fcc64ea++
                                    if not stor2.length - sub_9fcc64ea:
                                        stor2.length++
                                        if not stor2.length <= stor2.length + 1:
                                            idx = 2 * stor2.length + 1
                                            while 2 * stor2.length > idx:
                                                address(stor2[idx].field_0) = 0
                                                uint256(stor2[idx].field_256) = 0
                                                idx = idx + 2
                                                continue 
                                        uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                        uint256(stor2[stor2.length].field_256) = arg2
                                    else:
                                        require sub_9fcc64ea < stor2.length
                                        uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                        uint256(stor2[stor3].field_256) = arg2
                                        if stor2.length - sub_9fcc64ea > 6:
                                            stor2.length -= 5
                                            if not stor2.length <= stor2.length - 5:
                                                idx = 2 * stor2.length - 5
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                    winnerAddress = 0
                                    stor15 += arg2
                                    sub_a94360b7 = block.number
                                    emit 0x71237963: roundNumber, address(arg1), arg2
                            else:
                                if block.number >= sub_a94360b7 + sub_616a4a75:
                                    if arg2 > 0:
                                        call arg1 with:
                                           value arg2 wei
                                             gas 0 wei
                                        if not ext_call.success:
                                            if arg2 != 0:
                                                if stor12[address(arg1)] > 0:
                                                    require stor12[address(arg1)] - 1 < stor11.length
                                                    stor175B[stor12[address(arg1)] - 1] += arg2
                                                else:
                                                    stor11.length++
                                                    if not stor11.length <= stor11.length + 1:
                                                        idx = 2 * stor11.length + 1
                                                        while 2 * stor11.length > idx:
                                                            address(stor11[idx].field_0) = 0
                                                            uint256(stor11[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                    uint256(stor11[stor11.length].field_256) = arg2
                                                    stor12[address(arg1)] = stor11.length
                                                stor13 += arg2
                                else:
                                    if sub_9fcc64ea > 0:
                                        if arg2 > 0:
                                            call arg1 with:
                                               value arg2 wei
                                                 gas 0 wei
                                            if not ext_call.success:
                                                if arg2 != 0:
                                                    if stor12[address(arg1)] > 0:
                                                        require stor12[address(arg1)] - 1 < stor11.length
                                                        stor175B[stor12[address(arg1)] - 1] += arg2
                                                    else:
                                                        stor11.length++
                                                        if not stor11.length <= stor11.length + 1:
                                                            idx = 2 * stor11.length + 1
                                                            while 2 * stor11.length > idx:
                                                                address(stor11[idx].field_0) = 0
                                                                uint256(stor11[idx].field_256) = 0
                                                                idx = idx + 2
                                                                continue 
                                                        uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                        uint256(stor11[stor11.length].field_256) = arg2
                                                        stor12[address(arg1)] = stor11.length
                                                    stor13 += arg2
                                    else:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                        winnerAddress = 0
                                        stor15 += arg2
                                        sub_a94360b7 = block.number
                                        emit 0x71237963: roundNumber, address(arg1), arg2
                    else:
                        if arg2 < stor10:
                            if arg2 > 0:
                                call arg1 with:
                                   value arg2 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    if arg2 != 0:
                                        if stor12[address(arg1)] > 0:
                                            require stor12[address(arg1)] - 1 < stor11.length
                                            stor175B[stor12[address(arg1)] - 1] += arg2
                                        else:
                                            stor11.length++
                                            if not stor11.length <= stor11.length + 1:
                                                idx = 2 * stor11.length + 1
                                                while 2 * stor11.length > idx:
                                                    address(stor11[idx].field_0) = 0
                                                    uint256(stor11[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                            uint256(stor11[stor11.length].field_256) = arg2
                                            stor12[address(arg1)] = stor11.length
                                        stor13 += arg2
                        else:
                            if sub_a94360b7 <= 0:
                                if 0 == stor15 - stor13:
                                    if sub_9fcc64ea > 0:
                                        if arg2 > 0:
                                            call arg1 with:
                                               value arg2 wei
                                                 gas 0 wei
                                            if not ext_call.success:
                                                if arg2 != 0:
                                                    if stor12[address(arg1)] > 0:
                                                        require stor12[address(arg1)] - 1 < stor11.length
                                                        stor175B[stor12[address(arg1)] - 1] += arg2
                                                    else:
                                                        stor11.length++
                                                        if not stor11.length <= stor11.length + 1:
                                                            idx = 2 * stor11.length + 1
                                                            while 2 * stor11.length > idx:
                                                                address(stor11[idx].field_0) = 0
                                                                uint256(stor11[idx].field_256) = 0
                                                                idx = idx + 2
                                                                continue 
                                                        uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                        uint256(stor11[stor11.length].field_256) = arg2
                                                        stor12[address(arg1)] = stor11.length
                                                    stor13 += arg2
                                    else:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                        winnerAddress = 0
                                        stor15 += arg2
                                        sub_a94360b7 = block.number
                                        emit 0x71237963: roundNumber, address(arg1), arg2
                                else:
                                    if sub_9fcc64ea <= 0:
                                        sub_9fcc64ea++
                                        if not stor2.length - sub_9fcc64ea:
                                            stor2.length++
                                            if not stor2.length <= stor2.length + 1:
                                                idx = 2 * stor2.length + 1
                                                while 2 * stor2.length > idx:
                                                    address(stor2[idx].field_0) = 0
                                                    uint256(stor2[idx].field_256) = 0
                                                    idx = idx + 2
                                                    continue 
                                            uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                            uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                        else:
                                            require sub_9fcc64ea < stor2.length
                                            uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                            uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                            if stor2.length - sub_9fcc64ea > 6:
                                                stor2.length -= 5
                                                if not stor2.length <= stor2.length - 5:
                                                    idx = 2 * stor2.length - 5
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                    else:
                                        require sub_9fcc64ea - 1 < stor2.length
                                        if address(stor2[stor3 - 1].field_0) == arg1:
                                            require sub_9fcc64ea - 1 < stor2.length
                                            stor5640[stor3 - 1] = arg2 + stor15 - stor13
                                        else:
                                            sub_9fcc64ea++
                                            if not stor2.length - sub_9fcc64ea:
                                                stor2.length++
                                                if not stor2.length <= stor2.length + 1:
                                                    idx = 2 * stor2.length + 1
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                                uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                            else:
                                                require sub_9fcc64ea < stor2.length
                                                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                                uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                                if stor2.length - sub_9fcc64ea > 6:
                                                    stor2.length -= 5
                                                    if not stor2.length <= stor2.length - 5:
                                                        idx = 2 * stor2.length - 5
                                                        while 2 * stor2.length > idx:
                                                            address(stor2[idx].field_0) = 0
                                                            uint256(stor2[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                    winnerAddress = 0
                                    stor15 += arg2
                                    sub_a94360b7 = block.number
                                    emit 0x71237963: roundNumber, address(arg1), arg2
                            else:
                                if block.number >= sub_a94360b7 + sub_616a4a75:
                                    if arg2 > 0:
                                        call arg1 with:
                                           value arg2 wei
                                             gas 0 wei
                                        if not ext_call.success:
                                            if arg2 != 0:
                                                if stor12[address(arg1)] > 0:
                                                    require stor12[address(arg1)] - 1 < stor11.length
                                                    stor175B[stor12[address(arg1)] - 1] += arg2
                                                else:
                                                    stor11.length++
                                                    if not stor11.length <= stor11.length + 1:
                                                        idx = 2 * stor11.length + 1
                                                        while 2 * stor11.length > idx:
                                                            address(stor11[idx].field_0) = 0
                                                            uint256(stor11[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                    uint256(stor11[stor11.length].field_256) = arg2
                                                    stor12[address(arg1)] = stor11.length
                                                stor13 += arg2
                                else:
                                    if 0 == stor15 - stor13:
                                        if sub_9fcc64ea > 0:
                                            if arg2 > 0:
                                                call arg1 with:
                                                   value arg2 wei
                                                     gas 0 wei
                                                if not ext_call.success:
                                                    if arg2 != 0:
                                                        if stor12[address(arg1)] > 0:
                                                            require stor12[address(arg1)] - 1 < stor11.length
                                                            stor175B[stor12[address(arg1)] - 1] += arg2
                                                        else:
                                                            stor11.length++
                                                            if not stor11.length <= stor11.length + 1:
                                                                idx = 2 * stor11.length + 1
                                                                while 2 * stor11.length > idx:
                                                                    address(stor11[idx].field_0) = 0
                                                                    uint256(stor11[idx].field_256) = 0
                                                                    idx = idx + 2
                                                                    continue 
                                                            uint256(stor11[stor11.length].field_0) = arg1 or Mask(96, 160, uint256(stor11[stor11.length].field_0))
                                                            uint256(stor11[stor11.length].field_256) = arg2
                                                            stor12[address(arg1)] = stor11.length
                                                        stor13 += arg2
                                        else:
                                            sub_9fcc64ea++
                                            if not stor2.length - sub_9fcc64ea:
                                                stor2.length++
                                                if not stor2.length <= stor2.length + 1:
                                                    idx = 2 * stor2.length + 1
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                                uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                            else:
                                                require sub_9fcc64ea < stor2.length
                                                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                                uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                                if stor2.length - sub_9fcc64ea > 6:
                                                    stor2.length -= 5
                                                    if not stor2.length <= stor2.length - 5:
                                                        idx = 2 * stor2.length - 5
                                                        while 2 * stor2.length > idx:
                                                            address(stor2[idx].field_0) = 0
                                                            uint256(stor2[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                            winnerAddress = 0
                                            stor15 += arg2
                                            sub_a94360b7 = block.number
                                            emit 0x71237963: roundNumber, address(arg1), arg2
                                    else:
                                        if sub_9fcc64ea <= 0:
                                            sub_9fcc64ea++
                                            if not stor2.length - sub_9fcc64ea:
                                                stor2.length++
                                                if not stor2.length <= stor2.length + 1:
                                                    idx = 2 * stor2.length + 1
                                                    while 2 * stor2.length > idx:
                                                        address(stor2[idx].field_0) = 0
                                                        uint256(stor2[idx].field_256) = 0
                                                        idx = idx + 2
                                                        continue 
                                                uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                                uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                            else:
                                                require sub_9fcc64ea < stor2.length
                                                uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                                uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                                if stor2.length - sub_9fcc64ea > 6:
                                                    stor2.length -= 5
                                                    if not stor2.length <= stor2.length - 5:
                                                        idx = 2 * stor2.length - 5
                                                        while 2 * stor2.length > idx:
                                                            address(stor2[idx].field_0) = 0
                                                            uint256(stor2[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                        else:
                                            require sub_9fcc64ea - 1 < stor2.length
                                            if address(stor2[stor3 - 1].field_0) == arg1:
                                                require sub_9fcc64ea - 1 < stor2.length
                                                stor5640[stor3 - 1] = arg2 + stor15 - stor13
                                            else:
                                                sub_9fcc64ea++
                                                if not stor2.length - sub_9fcc64ea:
                                                    stor2.length++
                                                    if not stor2.length <= stor2.length + 1:
                                                        idx = 2 * stor2.length + 1
                                                        while 2 * stor2.length > idx:
                                                            address(stor2[idx].field_0) = 0
                                                            uint256(stor2[idx].field_256) = 0
                                                            idx = idx + 2
                                                            continue 
                                                    uint256(stor2[stor2.length].field_0) = arg1 or Mask(96, 160, uint256(stor2[stor2.length].field_0))
                                                    uint256(stor2[stor2.length].field_256) = arg2 + stor15 - stor13
                                                else:
                                                    require sub_9fcc64ea < stor2.length
                                                    uint256(stor2[stor3].field_0) = Mask(96, 0, stor2[stor3].field_160)
                                                    uint256(stor2[stor3].field_256) = arg2 + stor15 - stor13
                                                    if stor2.length - sub_9fcc64ea > 6:
                                                        stor2.length -= 5
                                                        if not stor2.length <= stor2.length - 5:
                                                            idx = 2 * stor2.length - 5
                                                            while 2 * stor2.length > idx:
                                                                address(stor2[idx].field_0) = 0
                                                                uint256(stor2[idx].field_256) = 0
                                                                idx = idx + 2
                                                                continue 
                                        winnerAddress = 0
                                        stor15 += arg2
                                        sub_a94360b7 = block.number
                                        emit 0x71237963: roundNumber, address(arg1), arg2
}



}
