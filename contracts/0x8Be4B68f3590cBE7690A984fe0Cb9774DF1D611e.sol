contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor5 = 10^18 * code.data[2773 len 32]
    stor6 = 2 * 10^18 * code.data[2773 len 32]
    stor7 = code.data[2805 len 32] / 2 * code.data[2773 len 32]
    if code.data[2741 len 32]:
        stor8 = code.data[2741 len 32]
    else:
        stor8 = block.timestamp
    stor9 = stor8 + (336 * 24 * 3600)
    stor10 = code.data[2805 len 32] / 14
    if msg.sender == address(stor0):
        if code.data[2721 len 20] != 0:
            if 0 == address(stor1):
                call address(code.data[2709 len 32]).0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 'tokenswap', this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = code.data[2709 len 32] or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 'tokenswap'
                require ext_call.success
                if not ext_call.return_data[0]:
                    call address(code.data[2709 len 32]).0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 'tokenswap', this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = code.data[2709 len 32] or Mask(96, 160, uint256(stor1))
    return code.data[588 len 2121]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint8 stor4; offset 8
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of struct stor11;

function _fallback() payable {
    revert 
}

function sub_0c2f9cfe(?) payable {
    if msg.sender == stor0:
        uint8(stor4.field_0) = 1
}

function sub_201d6986(?) payable {
    return (arg1 + stor3 / stor10) + 1, stor10 + (arg1 + stor3 / stor10 * stor10) - arg1 - stor3
}

function sub_826d3d13(?) payable {
    if not stor11[address(arg1)].field_512:
        return stor11[address(arg1)].field_256
    else:
        return 0
}

function sub_b1aeaa78(?) payable {
    if stor0 == msg.sender:
        if uint8(stor4.field_0):
            if stor2 >= stor5:
                uint8(stor4.field_8) = 1
}

function getRewardRate(uint256 arg1) payable {
    if 1 == arg1:
        return (15 * stor7 / 10)
    if 2 == arg1:
        return (12 * stor7 / 10)
    if arg1 <= 10:
        return stor7
    return (100 * stor7 / 105)
}

function sub_905b03e5(?) payable {
    if stor0 == msg.sender:
        if block.timestamp > stor9 + (672 * 24 * 3600):
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 0 wei
}

function sub_4bd15dac(?) payable {
    if not uint8(stor4.field_0):
    if stor2 >= stor5:
    if stor11[address(msg.sender)].field_512:
    stor11[address(msg.sender)].field_512 = 1
    call msg.sender with:
       value stor11[address(msg.sender)].field_0 wei
         gas 0 wei
    require ext_call.success
}

function sub_6f449fa7(?) payable {
    if stor0 == msg.sender:
        if uint8(stor4.field_0):
            if stor2 >= stor5:
                call address(stor1).0x21f8a721 with:
                     gas gas_remaining - 25050 wei
                    args 'dao'
                require ext_call.success
                call ext_call.return_data[12 len 20] with:
                   value eth.balance(this.address) wei
                     gas 0 wei
}

function Claim() payable {
    if not stor11[address(msg.sender)].field_512:
        if uint8(stor4.field_8):
            stor11[address(msg.sender)].field_512 = 1
            call address(stor1).0x21f8a721 with:
                 gas gas_remaining - 25050 wei
                args 'token'
            require ext_call.success
            call address(ext_call.return_data[0]).0x9b5254eb with:
                 gas gas_remaining - 25050 wei
                args msg.sender, 10000 * stor11[address(msg.sender)].field_256
}

function setCoordinator(address arg1) payable {
    if stor0 == msg.sender:
        if arg1 != 0:
            if 0 == address(stor1):
                call arg1.0xe001f841 with:
                     gas gas_remaining - 25050 wei
                    args 0x746f6b656e737761700000000000000000000000000000000000000000000000, this.address
                require ext_call.success
                if ext_call.return_data[0]:
                    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
            else:
                call address(stor1).0x32a16f4e with:
                     gas gas_remaining - 25050 wei
                    args 0x746f6b656e737761700000000000000000000000000000000000000000000000
                require ext_call.success
                if not ext_call.return_data[0]:
                    call arg1.0xe001f841 with:
                         gas gas_remaining - 25050 wei
                        args 0x746f6b656e737761700000000000000000000000000000000000000000000000, this.address
                    require ext_call.success
                    if ext_call.return_data[0]:
                        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function Swap() payable {
    if block.timestamp < stor8:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if uint8(stor4.field_0):
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if block.timestamp > stor9:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
            else:
                if msg.value <= stor6 - stor2:
                    idx = msg.value
                    s = 0
                    t = 0
                    t = 0
                    t = 0
                    while idx > 0:
                        if 1 == (s + stor3 / stor10) + 1:
                            if idx * 15 * stor7 / 10 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 15 * stor7 / 10)
                                s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                t = 15 * stor7 / 10
                                t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                t = (s + stor3 / stor10) + 1
                                continue 
                            stor11[address(msg.sender)].field_0 += msg.value
                            stor11[address(msg.sender)].field_256 = s + (15 * stor7 / 10 * idx / 10^18) + stor11[address(msg.sender)].field_256
                            stor2 += msg.value
                            stor3 = s + (15 * stor7 / 10 * idx / 10^18) + stor3
                        else:
                            if 2 == (s + stor3 / stor10) + 1:
                                if idx * 12 * stor7 / 10 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                    idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 12 * stor7 / 10)
                                    s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                    t = 12 * stor7 / 10
                                    t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                    t = (s + stor3 / stor10) + 1
                                    continue 
                                stor11[address(msg.sender)].field_0 += msg.value
                                stor11[address(msg.sender)].field_256 = s + (12 * stor7 / 10 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                stor2 += msg.value
                                stor3 = s + (12 * stor7 / 10 * idx / 10^18) + stor3
                            else:
                                if (s + stor3 / stor10) + 1 <= 10:
                                    if idx * stor7 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                        idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / stor7)
                                        s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                        t = stor7
                                        t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                        t = (s + stor3 / stor10) + 1
                                        continue 
                                    stor11[address(msg.sender)].field_0 += msg.value
                                    stor11[address(msg.sender)].field_256 = s + (stor7 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                    stor2 += msg.value
                                    stor3 = s + (stor7 * idx / 10^18) + stor3
                                else:
                                    if idx * 100 * stor7 / 105 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                        idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 100 * stor7 / 105)
                                        s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                        t = 100 * stor7 / 105
                                        t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                        t = (s + stor3 / stor10) + 1
                                        continue 
                                    stor11[address(msg.sender)].field_0 += msg.value
                                    stor11[address(msg.sender)].field_256 = s + (100 * stor7 / 105 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                    stor2 += msg.value
                                    stor3 = s + (100 * stor7 / 105 * idx / 10^18) + stor3
                        if msg.value + stor2 >= stor6:
                            uint8(stor4.field_0) = 1
                    stor11[address(msg.sender)].field_0 += msg.value
                    stor11[address(msg.sender)].field_256 += s
                    stor2 += msg.value
                    stor3 += s
                    if msg.value + stor2 >= stor6:
                        uint8(stor4.field_0) = 1
                else:
                    call msg.sender with:
                       value msg.value - stor6 + stor2 wei
                         gas 0 wei
                    require ext_call.success
                    idx = stor6 - stor2
                    s = 0
                    t = 0
                    t = 0
                    t = 0
                    while idx > 0:
                        if 1 == (s + stor3 / stor10) + 1:
                            if idx * 15 * stor7 / 10 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 15 * stor7 / 10)
                                s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                t = 15 * stor7 / 10
                                t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                t = (s + stor3 / stor10) + 1
                                continue 
                            stor11[address(msg.sender)].field_0 = stor6 - stor2 + stor11[address(msg.sender)].field_0
                            stor11[address(msg.sender)].field_256 = s + (15 * stor7 / 10 * idx / 10^18) + stor11[address(msg.sender)].field_256
                            stor2 = stor6
                            stor3 = s + (15 * stor7 / 10 * idx / 10^18) + stor3
                        else:
                            if 2 == (s + stor3 / stor10) + 1:
                                if idx * 12 * stor7 / 10 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                    idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 12 * stor7 / 10)
                                    s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                    t = 12 * stor7 / 10
                                    t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                    t = (s + stor3 / stor10) + 1
                                    continue 
                                stor11[address(msg.sender)].field_0 = stor6 - stor2 + stor11[address(msg.sender)].field_0
                                stor11[address(msg.sender)].field_256 = s + (12 * stor7 / 10 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                stor2 = stor6
                                stor3 = s + (12 * stor7 / 10 * idx / 10^18) + stor3
                            else:
                                if (s + stor3 / stor10) + 1 <= 10:
                                    if idx * stor7 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                        idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / stor7)
                                        s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                        t = stor7
                                        t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                        t = (s + stor3 / stor10) + 1
                                        continue 
                                    stor11[address(msg.sender)].field_0 = stor6 - stor2 + stor11[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_256 = s + (stor7 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                    stor2 = stor6
                                    stor3 = s + (stor7 * idx / 10^18) + stor3
                                else:
                                    if idx * 100 * stor7 / 105 / 10^18 > stor10 + (s + stor3 / stor10 * stor10) - s - stor3:
                                        idx = idx - (10^15 * (1000 * stor10) + (1000 * s + stor3 / stor10 * stor10) - (1000 * s) - (1000 * stor3) / 100 * stor7 / 105)
                                        s = stor10 + (s + stor3 / stor10 * stor10) - stor3
                                        t = 100 * stor7 / 105
                                        t = stor10 + (s + stor3 / stor10 * stor10) - s - stor3
                                        t = (s + stor3 / stor10) + 1
                                        continue 
                                    stor11[address(msg.sender)].field_0 = stor6 - stor2 + stor11[address(msg.sender)].field_0
                                    stor11[address(msg.sender)].field_256 = s + (100 * stor7 / 105 * idx / 10^18) + stor11[address(msg.sender)].field_256
                                    stor2 = stor6
                                    stor3 = s + (100 * stor7 / 105 * idx / 10^18) + stor3
                        if stor6 >= stor6:
                            uint8(stor4.field_0) = 1
                    stor11[address(msg.sender)].field_0 = stor6 - stor2 + stor11[address(msg.sender)].field_0
                    stor11[address(msg.sender)].field_256 += s
                    stor2 = stor6
                    stor3 += s
                    if stor6 >= stor6:
                        uint8(stor4.field_0) = 1
}



}
